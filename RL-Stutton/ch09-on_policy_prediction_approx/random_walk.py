import numpy as np
from tqdm import tqdm

rng = np.random.default_rng()


class RandomWalk1D:
    def __init__(self, l=1000, step_size=100):
        self.left_terminal = 0
        self.right_terminal = l
        self.pos = int(l / 2)
        self.step_size = step_size

    def get_obs(self):
        return self.pos, self.game_ended()

    def step(self):
        s = rng.integers(low=-self.step_size, high=self.step_size + 1)
        self.pos = np.clip(self.pos + s, a_min=self.left_terminal, a_max=self.right_terminal)
        if self.left_terminal == self.pos:
            return -1
        elif self.right_terminal == self.pos:
            return 1
        else:
            return 0

    def game_ended(self):
        return self.pos == self.left_terminal or self.pos == self.right_terminal

    def reset(self):
        self.pos = int((self.right_terminal - 1)/2)


if __name__ == "__main__":
    env = RandomWalk1D(l=1000, step_size=100)
    assert env.pos == 500
    while not env.game_ended():
        r = env.step()
        print(env.pos, env.game_ended(), r)

    env.reset()
    while not env.game_ended():
        r = env.step()
        print(env.pos, env.game_ended(), r)