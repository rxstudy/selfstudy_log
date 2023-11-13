import bpy
import logging
from mathutils import Vector
from math import radians
import bmesh
from collections import deque
from collections import namedtuple

# Uses BFS to generate window from a single tiling element.
TARGET_COLLECTION = bpy.data.collections["windows"]
PANE_UNIT = bpy.data.objects["PaneUnit"]
MAX_DEPTH = 6

OFFSET = PANE_UNIT.dimensions.x / 2
ADJUSTMENT_OFFSET_Y = 1
ADJUSTMENT_OFFSET_X = 1

OFFSET_BY_DEPTH = {
    1: [Vector((0, -OFFSET - ADJUSTMENT_OFFSET_Y, 0)), Vector((0, OFFSET + ADJUSTMENT_OFFSET_Y, 0))],
    0: [Vector((-OFFSET - ADJUSTMENT_OFFSET_X, 0, 0)), Vector((OFFSET + ADJUSTMENT_OFFSET_X, 0, 0))]}


# Make sure it is under Object mode
bpy.context.view_layer.objects.active = PANE_UNIT
bpy.ops.object.mode_set(mode='OBJECT')

# Clear objects in target collection
for obj in bpy.context.selected_objects:
    obj.select_set(False)
for c in TARGET_COLLECTION.objects:
    c.select_set(True)

bpy.ops.object.delete()


traversed_points = set([])
BfsNode = namedtuple("BfsNode", ["point", "depth"])


def bfs_replicate(starting_mesh):
    queue = deque([BfsNode(starting_mesh.location.copy(), 1)])
    while len(queue) > 0:
        current_node = queue.popleft()
        traversed_points.add(current_node.point[:])
        offsets = OFFSET_BY_DEPTH[current_node.depth % 2]
        for i in [0, 1]:
            p = current_node.point + offsets[i]
            round_to_int(p)
            tuple_point = p[:]
            if tuple_point not in traversed_points and current_node.depth <= MAX_DEPTH:
                m = shallow_clone(PANE_UNIT)
                m.location = p.copy()
                maybe_rotate(m, current_node.depth)
                queue.append(
                    BfsNode(m.location.copy(), current_node.depth + 1))


def maybe_rotate(mesh, depth):
    if depth % 2 == 1:
        mesh.rotation_euler = (0, 0, radians(90))


def join_meshes():
    for obj in bpy.context.selected_objects:
        obj.select_set(False)
    for c in TARGET_COLLECTION.objects:
        c.select_set(True)
    bpy.context.view_layer.objects.active = TARGET_COLLECTION.objects[0]
    bpy.ops.object.join()
    my_mesh = bpy.context.view_layer.objects.active.data
    bm = bmesh.new()
    bm.from_mesh(my_mesh)
    bmesh.ops.remove_doubles(bm, verts=bm.verts, dist=0.001)
    bm.to_mesh(my_mesh)
    bm.free()
    my_mesh.validate()


def shallow_clone(obj):
    o = obj.copy()
    o.data = obj.data.copy()
    TARGET_COLLECTION.objects.link(o)
    return o


def round_to_int(vec):
    vec.x = round(vec.x)
    vec.y = round(vec.y)
    vec.z = round(vec.z)


m = shallow_clone(PANE_UNIT)
bfs_replicate(m)
join_meshes()
