import incremental_ch
import slow_ch
import time
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
import pandas as pd


DATA_POINT_COUNT = 50


if __name__ == "__main__":
    
    points = 100 * np.random.random_sample((DATA_POINT_COUNT, 2)) - 50
    # points = pd.DataFrame({"x": points[:, 0], "y": points[:, 1]})
    # plot points
    fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(8, 4), constrained_layout=True)
    # sns.scatterplot(points, x="x", y = "y", ax=ax)
    axs = [ax1, ax2]
    fig.suptitle(f"Compute convex hull with {points.shape[0]} vertices")
    programs = [slow_ch.Program(), incremental_ch.Program()]
    for i in range(len(programs)):
        start_time = time.perf_counter_ns()
        convex_hull = programs[i].run(points)
        duration = (time.perf_counter_ns() - start_time) * 10**-6
        #takes {duration} ms for {point_count} vertices
        # plot polygon with legend program.name()
        xs, ys = zip(*convex_hull)
        
        axs[i].scatter(x = points[:, 0], y = points[:, 1])
        axs[i].title.set_text(programs[i].name() + f": {round(duration, 2)}ms")
        axs[i].plot(xs, ys)
        
    # save plot to image.
    plt.savefig("./out.png")