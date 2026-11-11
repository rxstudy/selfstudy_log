import numpy as np
import util

class Program:
    def name(self):
        return f"Incremental Convex Hull Algorithm"
    
    def run(self, points: list):
        x_sorted_points = points[np.lexsort((points[:, 1], points[:, 0]))]
        upper_hull = [x_sorted_points[0], x_sorted_points[1]]
        for i in range(2, x_sorted_points.shape[0]):
            upper_hull.append(x_sorted_points[i])
            # Check for left turn all the way back.
            j = len(upper_hull) - 1
            while len(upper_hull) >= 2 and util.is_left_of(upper_hull[j - 2], upper_hull[j - 1], upper_hull[j]):
                # remove the 2nd last point until there is no left turn
                upper_hull.pop(j - 1)
                j = len(upper_hull) - 1
        
        lower_hull = [x_sorted_points[-1], x_sorted_points[-2]]
        j = x_sorted_points.shape[0] - 3
        while j >= 0:
            lower_hull.append(x_sorted_points[j])
            # Check for left turn all the way back.
            k = len(lower_hull) - 1
            while len(lower_hull) >= 2 and util.is_left_of(lower_hull[k - 2], lower_hull[k - 1], lower_hull[k]):
                # remove the 2nd last point until there is no left turn
                lower_hull.pop(k - 1)
                k = len(lower_hull) - 1
            
            j -= 1
            
        lower_hull.pop(0)
        return upper_hull + lower_hull