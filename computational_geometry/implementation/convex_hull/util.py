import numpy as np



def is_left_of(p, q, r) -> bool:
   return q[0]*r[1] - q[1]*r[0] - p[0]*r[1] + p[1]*r[0] + p[0]*q[1] - p[1]*q[0] > 0




if __name__ == "__main__":
    assert is_left_of((2, 2), (3, 3), (2.5, 3)) 
    assert not is_left_of((2, 2), (3, 3), (2.5, -1))
    assert is_left_of((3, 3), (2, 2), (2.5, -1))