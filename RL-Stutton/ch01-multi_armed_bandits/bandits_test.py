import unittest
from bandits_env import StationaryBandits
from e_greedy_agent import EpsilonGreedyAgent


class StationaryBanditsTest(unittest.TestCase):
    def test_play(self):
        rounds = 10
        bandit = StationaryBandits(rounds=10)
        assert type(bandit.action_space[0]) == int
        observation, reward, done, _ = bandit.step(2)
        assert observation[0] == 1
        assert observation[1] == rounds
        assert type(reward) == float
        assert done == False

        observation, reward, done, _ = bandit.step(
            len(bandit.action_space) - 1)
        assert observation[0] == 2
        assert observation[1] == rounds
        assert type(reward) == float
        assert done == False

    def test_play_whole_game(self):
        rounds = 10
        bandit = StationaryBandits(rounds=10)
        for _ in range(rounds):
            observation, reward, done, _ = bandit.step(2)

        assert observation[0] == rounds
        assert observation[1] == rounds
        assert done == True

        observation, reward, done, _ = bandit.step(2)
        assert observation == None
        assert done == True
        assert reward == None


class EpsilonGreedyAgentTest(unittest.TestCase):
    def test_greedy_play(self):
        bandit = StationaryBandits(rounds=10)
        agent = EpsilonGreedyAgent(
            epsilon=0, action_space=bandit.action_space)

        obs = bandit.get_observation()
        done = False
        while not done:
            action = agent.choose_action(
                obs, bandit.action_space, bandit.optimal_action)
            obs, reward, done, _ = bandit.step(action)
            agent.receive_reward(reward)

        agent.on_game_finished(obs, bandit.action_space)

    def test_exploration_play(self):
        bandit = StationaryBandits(rounds=10)
        agent = EpsilonGreedyAgent(
            epsilon=1, action_space=bandit.action_space)
        for _ in range(3):
            obs = bandit.get_observation()
            done = False
            while not done:
                action = agent.choose_action(
                    obs, bandit.action_space, bandit.optimal_action)
                obs, reward, done, _ = bandit.step(action)
                agent.receive_reward(reward)
            bandit.reset()
            agent.on_game_finished(obs, bandit.action_space)


if __name__ == '__main__':
    unittest.main()
