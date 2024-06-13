FROM ubuntu:22.04

RUN apt update && apt -y install build-essential gcc g++ make libtool texinfo dpkg-dev pkg-config
RUN apt install -y python3 git git-lfs
RUN mkdir /blender-git
RUN cd /blender-git && \
    git clone https://projects.blender.org/blender/blender.git
# RUN cd /blender-git/blender/ && \
#     ./build_files/build_environment/install_linux_packages.py
RUN  apt update && \
    apt install -y build-essential git git-lfs subversion cmake libx11-dev libxxf86vm-dev libxcursor-dev libxi-dev libxrandr-dev libxinerama-dev libegl-dev && \
    apt install -y libwayland-dev wayland-protocols libxkbcommon-dev libdbus-1-dev linux-libc-dev
RUN cd /blender-git/blender && \
    ./build_files/utils/make_update.py --use-linux-libraries
RUN cd /blender-git/blender && \
    make update && \
    make -j 8
RUN apt install -y libsm6