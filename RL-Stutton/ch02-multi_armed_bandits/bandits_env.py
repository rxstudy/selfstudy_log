import numpy as np
rng = np.random.default_rng()


class StationaryBandits:
    def __init__(self, rounds=1000):
        self.action_space = [i for i in range(10)]
        self._mu = 10 * np.random.random((10,)) - 2
        self._sig = np.ones((10,)) * 1.5
        self.optimal_action = np.argmax(self._mu)
        self._game_rounds = rounds
        self.reset()

    def reset(self):
        self._game_phase = 0

    def get_observation(self):
        return [self._game_phase, self._game_rounds]

    def step(self, action: int) -> list:
        if self._game_phase >= self._game_rounds:
            return [None, None, True, None]

        self._game_phase += 1
        observation = [self._game_phase, self._game_rounds]
        reward = rng.normal(self._mu[action], self._sig[action])
        done = self._game_rounds == self._game_phase
        info = None

        self._update_env_state()
        return [observation, reward, done, info]

    def _update_env_state(self):
        pass


class NonStationaryBandit(StationaryBandits):
    def _update_env_state(self):
        for i in range(self._mu.size):
            rand_incr = rng.normal(0, 0.01)
            self._mu[i] += rand_incr
        self.optimal_action = np.argmax(self._mu)
