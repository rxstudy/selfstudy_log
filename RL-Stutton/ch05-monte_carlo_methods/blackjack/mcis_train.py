import numpy as np
import matplotlib.pyplot as plt
from tqdm import tqdm
from collections import defaultdict
import blackjack_env

if __name__ == "__main__":
    rng = np.random.default_rng()
    epochs = 1000000
    q = rng.random((22, 22, 2, 2))  # player_sum, dealer_sum, usable_ace, stick:0/hit:1
    pi = np.zeros((22, 22, 2))  # player_sum, dealer_sum usable_ace ->  stick:0/hit:1
    b = lambda _: int(rng.random() > 0.5) # 50% hit/stick
    s_a_visit_counter = defaultdict(int)
    errs = []
    wins = 0
    win_rates = []
    env = blackjack_env.BlackJackSim()
    for epoch in tqdm(range(1, epochs+1)):
        s, game_ended = env.get_observation()
        ep = []
        r = 0
        while not game_ended:
            a = b(s)
            r = env.apply_action(a)
            ep.append((s, a, r))
            s, game_ended = env.get_observation()

        if r > 0:
            wins += 1

        win_rates.append(wins/epoch)

        g = 0
        ro = 1
        delta = -1
        while len(ep) > 0:
            s, a, r = ep.pop()
            g += r
            s_a_visit_counter[(s, a)] += 1
            q_val = q[s[0], s[1], s[2], a]
            q[s[0], s[1], s[2], a] += (ro * g - q_val) / s_a_visit_counter[(s, a)]
            delta = max(delta, abs(q_val - q[s[0], s[1], s[2], a]))
            pi[s[0], s[1], s[2]] = np.argmax(q[s[0], s[1], s[2], :])
            ro *= float(pi[s[0], s[1], s[2]] == a) / 0.5  # pi(a|s) / b(a|s)

        errs.append(delta)
        env.reset()

    #  Save plots
    fig = plt.figure(1)
    plt.plot(errs, label="Error Bound")
    plt.xlabel('Episodes')
    plt.ylabel('Error Bound')
    fig.savefig('mcis_err.png')

    fig = plt.figure(2)
    plt.ylim(12, 21)
    plt.xlim(1, 10)
    plt.pcolor(pi[:, :, 0])
    plt.colorbar()
    fig.savefig('mcis_pi_no_ace.png')
    print(pi[12:22, 1:11, 0])

    fig = plt.figure(3)
    plt.ylim(12, 21)
    plt.xlim(1, 10)
    plt.pcolor(pi[:, :, 1])
    plt.colorbar()
    fig.savefig('mcis_pi_with_ace.png')
    print(pi[12:22, 1:11, 1])


    fig = plt.figure(4)
    plt.plot(win_rates, label="Win Rate")
    plt.xlabel('Episodes')
    plt.ylabel('Win rates')
    fig.savefig('mcis_win_rate.png')
