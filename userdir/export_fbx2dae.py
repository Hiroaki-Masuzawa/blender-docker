#!/usr/bin/env python3

# /blender-git/build_linux/bin/blender --background --python export_fbx2dae.py 

import bpy
import glob
import os
import time

fbx_files = glob.glob('*.fbx')
for filename in fbx_files:
    bpy.ops.object.select_all(action='SELECT')
    bpy.ops.object.delete(use_global=True)
    bpy.ops.import_scene.fbx(filepath=filename)
    bpy.ops.wm.collada_export(filepath='{}/{}'.format(filename.split('.')[0], filename.replace('fbx', 'dae')))