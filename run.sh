docker run -it --rm \
-u `id -u`:`id -g` \
--volume=/etc/passwd:/etc/passwd:ro \
--volume=/etc/group:/etc/group:ro \
--env DISPLAY=$DISPLAY --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
-v `pwd`/userdir:/userdir -w /userdir \
blender-bpy bash