FROM ubuntu:20.04

WORKDIR /app

RUN apt update
RUN apt upgrade -y
RUN apt install -y git
RUN apt install -y make
RUN apt install -y gcc
RUN DEBIAN_FRONTEND=noninteractive apt install -y tzdata
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
		apt xz-utils unzip avahi-utils dbus \
		xserver-xorg-core libgl1-mesa-glx libgl1-mesa-dri libglu1-mesa xfonts-base \
		x11-session-utils x11-utils x11-xfs-utils x11-xserver-utils xauth x11-common
RUN apt install -y libxext-dev
RUN apt install -y libbsd-dev

COPY . .

RUN chmod 777 -R .

CMD ./launcher.sh