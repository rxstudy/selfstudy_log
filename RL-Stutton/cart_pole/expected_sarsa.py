from agent_interface import IAgent
import numpy as np
import tensorflow as tf
from collections import deque
from tensorflow.keras import Sequential
from tensorflow.keras.optimizers import Adam
import tensorflow.keras.layers as layers

rng = np.random.default_rng()

DEFAULT_AGENT_INFO = {
    "action_space": [0, 1],
    "batch_size": 32,
    "exp_len": 200,
    "discount": 0.9
}


# state:
# cart pos:0  [-2.4, 2.4]
# cart vel:   [-Inf,  Inf]
# pole angel: [-41.8, 41.8]
# pole vel at Tip: [-Inf, Inf]

# action:
# move left:  0
# move right: 1

class ExpectedSarsa(IAgent):
    def __init__(self, agent_info):
        super().__init__(agent_info)
        self.action_space = agent_info["action_space"]
        self.batch_size = agent_info["batch_size"]
        self.exp_len = agent_info["exp_len"]
        self.gamma = agent_info["discount"]
        # (s, a, sp, r, terminal in {0, 1} )
        self.experience = deque([], maxlen=self.exp_len)

        # this network takes state and output action preference
        # action preference plays the role of q(s, a)
        self.preference_network = Sequential(
            layers=[
                layers.Input(shape=(1, 4), batch_size=self.batch_size),
                layers.Dense(128, activation="relu"),
                layers.Dense(2, activation="tanh")
        ])
        self.optimizer = Adam()
        self.preference_network.compile(optimizer=self.optimizer, loss="mse")
        self.action = None
        self.state = None

    def on_start(self, raw_state):
        self.state = self.convert_raw_state(raw_state)
        self.action = self.choose_action(self.state)
        return self.action

    def on_step(self, raw_sp, r):
        s, a = self.state, self.action
        sp = self.convert_raw_state(raw_sp)
        self.experience.append((s, a, sp, r))
        if len(self.experience) >= self.batch_size:
            # sample experiences
            transitions = self.sample(self.batch_size)
            target_pref = self.compute_target(np.array(transitions))
            t = np.zeros((self.batch_size, 2))
            t[transitions[:, 1]] = target_pref
            self.preference_network.train_on_batch(
                x=transitions[:, 0], y=t)

    def on_terminal(self, r):
        pass

    # pref has shape (batch_size,  action_num)
    def softmax(self, preference):
        max_pref = np.max(preference, axis=1)
        exp_pref = np.exp(preference - max_pref)
        softmax_dist = exp_pref / np.sum(exp_pref, axis=1)
        return softmax_dist

    def choose_action(self, state):
        preference = self.preference_network.predict(state)
        softmax_dist = self.softmax(preference)
        return rng.choice(self.action_space, p=softmax_dist)

    # transitions has shape (batch_size, len(state))
    # returns (batch_size, expected_sarar target)
    def compute_target(self, transitions):
        s = transitions[:, 0]
        sp = transitions[:, 2]
        a = transitions[:, 1]
        r = transitions[:, 3]
        terminal = transitions[:, 4]
        pref = self.preference_network.predict(s, batch_size=self.batch_size)
        prefp = self.preference_network.predict(sp, batch_size=self.batch_size)
        expected_q = np.sum(self.softmax(prefp) * prefp, axis=1)
        # since we use a list of pref instead of a single q(s,a) value.
        # when we update, we need to choose the pref corresponding to the action taken
        # current_q = pref[:, a]
        target = r + (1 - terminal) * expected_q
        return target

    def sample(self, batch_size):
        return np.array(rng.choice(self.experience, size=batch_size))

    def convert_raw_state(self, raw_state):
        return np.array(raw_state)


if __name__ == "__main__":
    agent = ExpectedSarsa(DEFAULT_AGENT_INFO)
