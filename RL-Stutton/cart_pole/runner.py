import gym
import expected_sarsa


def run_experiment(env, agent):
    observation = env.reset()
    agent.on_start(observation)  # select action
    for _ in range(10000):
        action = agent.last_action
        observation, reward, done, info = env.step(action)
        if done:
            agent.on_terminal(reward)
            return
        agent.on_step(reward, observation)


if __name__ == "__main__":
    env = gym.make("CartPole-v0")
    agent = expected_sarsa.ExpectedSarsa(expected_sarsa.DEFAULT_AGENT_INFO)
    run_experiment(env, agent)