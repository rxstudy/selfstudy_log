
class IAgent:
    def __init__(self, agent_info):
        pass

    def on_start(self, state):
        pass

    def on_step(self, sp, r):
        pass

    def on_terminal(self, r):
        pass