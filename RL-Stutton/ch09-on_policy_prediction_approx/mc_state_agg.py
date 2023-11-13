import numpy as np
from tqdm import tqdm
from random_walk import RandomWalk1D
import matplotlib.pyplot as plt

rng = np.random.default_rng()
WALK_RANGE = 1000
STEP_SIZE = 100
WEIGHTS_CNT = 10


# map a state (0 to 1000) to a feature 0~ 9  (one hot vector of size 10)
def state_to_feature(state):
    group = int(state / STEP_SIZE)
    feature = np.zeros((WEIGHTS_CNT,))
    feature[group] = 1
    return feature


def v_hat_vec(s_range, weights):
    x_domain = np.floor(s_range / STEP_SIZE).astype(np.int)
    return weights[x_domain]


def state_to_feature_index(state):
    return int(state / STEP_SIZE)


if __name__ == "__main__":
    env = RandomWalk1D(l=WALK_RANGE, step_size=STEP_SIZE)
    w = np.zeros((WEIGHTS_CNT,))
    s_range = np.arange(0, 1000)
    mu = np.zeros((WALK_RANGE,))
    episodes = 100000
    errors = []
    lr = 0.001
    for _ in tqdm(range(episodes)):
        # linear approximation
        ep = []
        state, game_ended = env.get_obs()
        while not game_ended:
            r = env.step()
            ep.append((state, r))
            state, game_ended = env.get_obs()

        g = 0
        delta = -1
        while len(ep) > 0:
            s, r = ep.pop()
            idx = state_to_feature_index(s)
            g += r  # gamma is 1
            mu[s] += 1
            prob_s = 1 # mu[s] / np.sum(mu)
            # calculate gradient
            grad_err = 2 * (g - w[idx])  # v(s, w) = w[idx] and grad Err / grad w  = 1
            past_w = w[idx]
            w[idx] += lr * prob_s * grad_err
            delta = max(delta, abs(past_w - w[idx]))

        errors.append(delta)

        env.reset()

    fig = plt.figure(1)
    plt.plot(errors)
    plt.title("Errors of Weights")
    plt.xlabel('Episodes')
    plt.ylabel('Err')
    fig.savefig('mc_state_agg_err.png')

    fig = plt.figure(2)
    v_range = v_hat_vec(s_range, w)
    plt.plot(s_range, v_range)
    plt.title((str(episodes) + " Episodes State Function"))
    plt.xlabel('State')
    plt.ylabel('V')
    fig.savefig('mc_state_agg_v.png')
