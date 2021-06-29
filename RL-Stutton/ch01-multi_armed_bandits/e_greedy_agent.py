import numpy as np
rng = np.random.default_rng()


class EpsilonGreedyAgent:
    # optimal action is input for analytics
    def __init__(self, epsilon: float, action_space: list, optimal_action: int):
        self._epsilon = epsilon
        self._qa = np.zeros((len(action_space),))
        self._num_a = np.zeros((len(action_space),))
        self._rewards = []
        self._optimal_actions = []
        self._optimal_action = optimal_action
        self._reset_state()

    def choose_action(self, observation, action_space):
        if rng.random() < self._epsilon:
            # exploration
            action = rng.choice(action_space)
        else:
            # greedy
            action = np.argmax(self._qa)

        self._num_a[action] += 1

        # update state
        self._last_action_performed = action
        # analytics
        if action == self._optimal_action:
            self._optimal_action_selected += 1

        game_step = observation[0] + 1  # game_step is 0 at the beginning
        self._optimal_actions.append(
            self._optimal_action_selected / game_step)

        return action

    def receive_reward(self, reward):
        if self._last_action_performed >= 0:
            action = self._last_action_performed
            # Update Q(a)
            step_size = 1.0 / self._num_a[action]
            self._qa[action] += step_size * (reward - self._qa[action])
            self._rewards.append(reward)

    def on_game_finished(self, observation, action_space):
        self._reset_state()

    def get_log(self):
        return {
            "optimal_action_ratio": np.array(self._optimal_actions),
            "avg_reward_per_step": np.array(self._rewards)
        }

    def _reset_state(self):
        self._last_action_performed = -1

        # performance plot data
        self._optimal_action_selected = 0.0
