import numpy as np

rng = np.random.default_rng()
CARDS = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]


def dealer_draw():
    card = rng.choice(CARDS, replace=True)
    return card


def player_draw():
    card = rng.choice(CARDS, replace=True)
    return card


def sample_starting_states(size):
    # each row is (p_sum, d_showing, ace)
    states = []
    hands = rng.choice(CARDS, size=(size, 3))  # (p_c1, p_c2, d_c1)
    for i in range(size):
        p_sum = hands[i, 0] + hands[i, 1]
        has_ace = False
        if hands[i, 0] == 1 or hands[i, 1] == 1:
            p_sum += 10
            has_ace = True
        states.append((p_sum, hands[i, 2], has_ace))
    return  states


class BlackJack:
    def __init__(self):
        self.game_ended = False
        self.dealer_sum = 0
        self.player_sum = 0
        self.player_usable_ace = False
        self.dealer_usable_ace = False
        self.dealer_showing = None

    def get_observation(self):
        return (self.player_sum, self.dealer_showing, int(self.player_usable_ace)), self.game_ended

    def apply_action(self, hit):
        # Player's turn
        if hit:
            card = player_draw()
            self.player_sum += card
            if self.player_sum > 21:
                if self.player_usable_ace:
                    self.player_sum -= 10
                    self.player_usable_ace = False

            if self.player_sum > 21:
                self.game_ended = True
                return -1

        # Dealer's turn
        should_dealer_hit = self.dealer_sum < 17
        if should_dealer_hit:
            card = dealer_draw()
            self.dealer_sum += card
            if self.dealer_sum > 21:
                if self.dealer_usable_ace:
                    self.dealer_sum -= 10
                    self.dealer_usable_ace = False

            if self.dealer_sum > 21:
                self.game_ended = True
                return 1

        # Resume game if anyone hits
        if hit or should_dealer_hit:
            return 0

        # Both stop hitting, end the game.
        self.game_ended = True
        # Here both player and dealer haven't gone bust.
        if self.player_sum > self.dealer_sum:
            return 1
        elif self.player_sum < self.dealer_sum:
            return -1
        else:
            return 0  # draw


class BlackJackSim(BlackJack):
    def __init__(self):
        self.reset()

    def reset(self):
        self.game_ended = False
        self.dealer_sum = 0
        self.player_sum = 0
        self.player_usable_ace = False
        self.dealer_usable_ace = False
        self.dealer_showing = None

        player_hand = [player_draw(), player_draw()]
        self.player_usable_ace = 1 in player_hand
        self.player_sum = np.sum(player_hand) + (10 if self.player_usable_ace else 0)

        dealer_hand = [dealer_draw(), dealer_draw()]
        self.dealer_usable_ace = 1 in dealer_hand
        self.dealer_sum = np.sum(dealer_hand) + (10 if self.dealer_usable_ace else 0)
        self.dealer_showing = dealer_hand[0]


class BlackJackES(BlackJack):
    def __init__(self, player_sum, dealer_showing, usable_ace):
        self.game_ended = False

        self.player_sum = player_sum
        self.player_usable_ace = usable_ace

        self.dealer_showing = dealer_showing
        dealer_hand = [dealer_showing, dealer_draw()]
        self.dealer_usable_ace = 1 in dealer_hand
        self.dealer_sum = np.sum(dealer_hand) + (10 if self.dealer_usable_ace else 0)
