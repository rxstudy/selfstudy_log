import sys
import numpy as np
import matplotlib.pyplot as plt
from bandits_env import StationaryBandits, NonStationaryBandit
from e_greedy_agent import EpsilonGreedyAgent, ConstantStepSizeAgent


def play(game, agent):
    obs = game.get_observation()
    done = False
    while not done:
        action = agent.choose_action(
            obs, game.action_space, game.optimal_action)
        obs, reward, done, _ = game.step(action)
        agent.receive_reward(reward)
    game.reset()
    agent.on_game_finished(obs, game.action_space)


def add_data(agent, agg_reward, agg_action):
    log = agent.get_log()
    agg_reward += log["avg_reward_per_step"]
    agg_action += log["optimal_action_ratio"]


def stationary_bandit_sim():
    print("Simiulate 3 epsilon-greedy agent against stationary bandits")
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
                epsilon=0, action_space=bandit.action_space),
            EpsilonGreedyAgent(
                epsilon=0.01, action_space=bandit.action_space),
            EpsilonGreedyAgent(
                epsilon=0.1, action_space=bandit.action_space)
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
    plt.savefig("avg_reward_stationary.png")
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
    plt.savefig("optimal_action_selected_stationary.png")
    plt.show()


def nonstationary_bandit_sim():
    print("Avg epsilon greedy agent and constant step size agent against Non stationary bandits")
    games_played = 200
    rounds_per_game = 5000
    agg_reward = [
        np.zeros((rounds_per_game,)),
        np.zeros((rounds_per_game,))
    ]
    agg_action = [
        np.zeros((rounds_per_game,)),
        np.zeros((rounds_per_game,)),
    ]
    for _ in range(games_played):
        bandit = NonStationaryBandit(rounds=rounds_per_game)
        agents = [
            EpsilonGreedyAgent(
                epsilon=0.1, action_space=bandit.action_space),
            ConstantStepSizeAgent(
                epsilon=0.1, action_space=bandit.action_space)
        ]
        for i, agent in enumerate(agents):
            play(bandit, agent)
            add_data(agent, agg_reward[i], agg_action[i])

    x_range = np.arange(rounds_per_game)
    plt.figure(0)
    plt.title(str(games_played) + " runs average")
    plt.plot(x_range,
             agg_reward[0] / games_played,  label="step_size=1/n")
    plt.plot(x_range,
             agg_reward[1] / games_played,  label="step_size=0.1")
    plt.xlabel("Games")
    plt.ylabel("Avg Reward/Step")
    plt.legend()
    plt.savefig("avg_reward_nonstationary.png")
    plt.show()

    plt.figure(1)
    plt.title(str(games_played) + " runs average")
    plt.plot(x_range,
             agg_action[0] / games_played,  label="step_size=1/n")
    plt.plot(x_range,
             agg_action[1] / games_played,  label="step_size=0.1")
    plt.xlabel("Games")
    plt.ylabel("% Optiomal Action Selected")
    plt.legend()
    plt.savefig("optimal_action_selected_nonstationary.png")
    plt.show()


if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Pass argument nonstationary or stationary")
    else:
        if sys.argv[1] == "nonstationary":
            nonstationary_bandit_sim()
        elif sys.argv[1] == "stationary":
            stationary_bandit_sim()
        else:
            print("Pass argument nonstationary or stationary")
