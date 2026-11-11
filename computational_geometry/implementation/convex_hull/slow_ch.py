import util

class Program:
    def name(self):
        return f"Naive n^3 Convex Hull Algorithm"
    
    def run(self, points: list):
        edge_list = {}
        
        points_cnt = points.shape[0]
        for i in range(points_cnt):
            for j in range(points_cnt):
                if i == j:
                    continue
                
                add_to_list = True
                for k in range(points_cnt):
                    if k == i or k == j:
                        continue
                    if util.is_left_of(points[i], points[j], points[k]):
                        add_to_list = False
                        break
                    
                if add_to_list:
                    edge_list[i] = j
                    
        start_key = list(edge_list.keys())[0]
        hull = [points[start_key]]
        cursor = start_key
        while edge_list[cursor] != start_key:
            hull.append(points[edge_list[cursor]])
            cursor = edge_list[cursor]
        
        hull.append(points[start_key])
            
        return hull