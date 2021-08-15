import numpy as np
import matplotlib.pyplot as plt
from tqdm import tqdm
from collections import defaultdict
import blackjack_env

if __name__ == "__main__":
    use_first_visit = True
    use_every_visit = not use_first_visit
    errs = []
    N = defaultdict(int)
    q = np.zeros((22, 22, 2, 2))  # q: (player_sum, dealer_showing, ace,  0/1:stick/hit) -> R
    pi = np.zeros((22, 22, 2), dtype=np.uint)  # pi: (player_sum, dealer_showing, ace) -> (0:stick, 1:hit)
    episodes = 400000

    ui_progress_bar = tqdm(total=episodes)
    # Generate starting states
    starting_states = blackjack_env.sample_starting_states(episodes)
    for (init_p_sum, init_d_showing, init_usable_ace) in starting_states:
        ui_progress_bar.update(1)
        for init_action in [0, 1]: # 0:stick, 1:hit
            # For each episode
            ep_trajectory = [] # (s, a, r) tuples trajectory of an episode
            state_action_counter = defaultdict(int) # count (s,a) occurrence in an episode
            time_step = 0  # time step in a ep

            env = blackjack_env.BlackJackES(init_p_sum, init_d_showing, init_usable_ace)
            s, game_ended = env.get_observation()
            while not game_ended:
                # start following policy after init_action is performed.
                if time_step == 0:
                    a = init_action
                else:
                    a = pi[s[0], s[1], s[2]]

                state_action_counter[(s, a)] += 1
                r = env.apply_action(a)
                ep_trajectory.append((s, a, r))
                s, game_ended = env.get_observation()
                time_step += 1

            # Update q(s,a)
            g = 0
            error_bound_per_ep = -1
            while len(ep_trajectory) > 0:
                s, a, r = ep_trajectory.pop()
                g += r  # aggregate the reward to get return for each (s,a) in trajectory

                if (use_first_visit and state_action_counter[(s, a)] == 1) or use_every_visit:
                    N[(s, a)] += 1
                    q_val = q[s[0], s[1], s[2], a]
                    q[s[0], s[1], s[2], a] = q_val + (g - q_val) / N[(s, a)]
                    pi[s[0], s[1], s[2]] = np.argmax(q[s[0], s[1], s[2], :])
                    # record max error bound after every ep
                    tmp_error = np.abs(q_val - q[s[0], s[1], s[2], a])
                    if tmp_error > error_bound_per_ep:
                        error_bound_per_ep = tmp_error

                state_action_counter[(s, a)] -= 1

            errs.append(error_bound_per_ep)

    print("Error: ", errs[-1], " after ", episodes, " episodes")

    #  Save plots
    fig = plt.figure(1)
    plt.plot(errs, label="Error Bound")
    plt.xlabel('Episodes')
    plt.ylabel('Error Bound')
    fig.savefig('mces_err.png')

    fig = plt.figure(2)
    plt.ylim(12, 21)
    plt.xlim(1, 10)
    plt.pcolor(pi[:, :, 0])
    plt.colorbar()
    fig.savefig('mces_pi_no_ace.png')
    print(pi[12:22, 1:11, 0])

    fig = plt.figure(3)
    plt.ylim(12, 21)
    plt.xlim(1, 10)
    plt.pcolor(pi[:, :, 1])
    plt.colorbar()
    fig.savefig('mces_pi_with_ace.png')
    print(pi[12:22, 1:11, 1])