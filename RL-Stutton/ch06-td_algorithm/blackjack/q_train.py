import numpy as np
import matplotlib.pyplot as plt
from tqdm import tqdm
from collections import defaultdict
import blackjack_env

rng = np.random.default_rng()


def policy(pi, epsilon, s):
    if rng.random() < epsilon:
        return rng.choice([0, 1])

    return pi[s[0], s[1], s[2]]


if __name__ == "__main__":
    epochs = 20000
    # player_sum, dealer_sum, usable_ace, stick:0/hit:1. We need to make terminal states return 0 q value.
    q = np.zeros((32, 32, 2, 2))
    pi = np.zeros((32, 32, 2), dtype=int)  # player_sum, dealer_sum usable_ace ->  stick:0/hit:1
    N = defaultdict(int)
    lr = 0.01
    epsilon = 1.0
    N = defaultdict(int)
    win_rates = []
    wins = 0
    env = blackjack_env.BlackJackSim()

    for epoch in tqdm(range(1, epochs + 1)):
        s, game_ended = env.get_observation()
        r = 0
        while not game_ended:
            a = policy(pi, epsilon / epoch, s)
            r = env.apply_action(a)
            sp, game_ended = env.get_observation()
            N[(s, a)] += 1
            update_delta = (r + np.max(q[sp[0], sp[1], sp[2], :]) - q[s[0], s[1], s[2], a]) / N[(s, a)]
            q[s[0], s[1], s[2], a] += update_delta
            pi[s[0], s[1], s[2]] = np.argmax(q[s[0], s[1], s[2], :])
            s = sp

        if r > 0:
            wins += 1

        win_rates.append(wins / epoch)
        env.reset()

    #  Save plots
    fig = plt.figure(1)
    plt.ylim(0.3, 0.5)
    plt.plot(win_rates, label="Win Rate")
    plt.xlabel('Episodes')
    plt.ylabel('Win Rate')
    fig.savefig('q_win_rate.png')

    fig = plt.figure(2)
    plt.ylim(12, 21)
    plt.xlim(1, 10)
    plt.pcolor(pi[:, :, 0])
    plt.colorbar()
    fig.savefig('q_pi_no_ace.png')
    print(pi[12:22, 1:11, 0])

    fig = plt.figure(3)
    plt.ylim(12, 21)
    plt.xlim(1, 10)
    plt.pcolor(pi[:, :, 1])
    plt.colorbar()
    fig.savefig('q_pi_with_ace.png')
    print(pi[12:22, 1:11, 1])

    # 200000 episodes avg 42.153% win rate.
    print("Accumulated win rate is : ", win_rates[-1])
