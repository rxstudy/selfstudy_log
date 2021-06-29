import numpy as np
import matplotlib.pyplot as plt
from stationary_bandits import StationaryBandits
from e_greedy_agent import EpsilonGreedyAgent


def play(game, agent):
    obs = game.get_observation()
    done = False
    while not done:
        action = agent.choose_action(obs, game.action_space)
        obs, reward, done, _ = game.step(action)
        agent.receive_reward(reward)
    game.reset()
    agent.on_game_finished(obs, game.action_space)


def add_data(agent, agg_reward, agg_action):
    log = agent.get_log()
    agg_reward += log["avg_reward_per_step"]
    agg_action += log["optimal_action_ratio"]


if __name__ == "__main__":
    games_played = 500
    rounds_per_game = 1000
    agg_reward = [
        np.zeros((rounds_per_game,)),
        np.zeros((rounds_per_game,)),
        np.zeros((rounds_per_game,))
    ]
    agg_action = [
        np.zeros((rounds_per_game,)),
        np.zeros((rounds_per_game,)),
        np.zeros((rounds_per_game,)),
    ]
    for _ in range(games_played):
        bandit = StationaryBandits(rounds=rounds_per_game)
        agents = [
            EpsilonGreedyAgent(
                epsilon=0, action_space=bandit.action_space, optimal_action=bandit.optimal_action),
            EpsilonGreedyAgent(
                epsilon=0.01, action_space=bandit.action_space, optimal_action=bandit.optimal_action),
            EpsilonGreedyAgent(
                epsilon=0.01, action_space=bandit.action_space, optimal_action=bandit.optimal_action)
        ]
        for i, agent in enumerate(agents):
            play(bandit, agent)
            add_data(agent, agg_reward[i], agg_action[i])

    x_range = np.arange(rounds_per_game)
    plt.figure(0)
    plt.title(str(games_played) + " runs average")
    plt.plot(x_range,
             agg_reward[0] / games_played,  label="ep=0")
    plt.plot(x_range,
             agg_reward[1] / games_played,  label="ep=0.01")
    plt.plot(x_range,
             agg_reward[2] / games_played,  label="ep=0.1")
    plt.xlabel("Games")
    plt.ylabel("Avg Reward/Step")
    plt.legend()
    plt.savefig("avg_reward.png")
    plt.show()

    plt.figure(1)
    plt.title(str(games_played) + " runs average")
    plt.plot(x_range,
             agg_action[0] / games_played,  label="ep=0")
    plt.plot(x_range,
             agg_action[1] / games_played,  label="ep=0.01")
    plt.plot(x_range,
             agg_action[2] / games_played,  label="ep=0.1")
    plt.xlabel("Games")
    plt.ylabel("% Optiomal Action Selected")
    plt.legend()
    plt.savefig("optimal_action_selected.png")
    plt.show()
