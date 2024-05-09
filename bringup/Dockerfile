# Build for minimal image
FROM ros:galactic-ros-core

# Minimal setup
RUN apt update \
 && apt install -y locales lsb-release
ARG DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LANG en_US.UTF-8


RUN apt-get update && apt-get install -y \
    build-essential \
    python3-colcon-common-extensions \
    ros-galactic-xacro\
    ros-galactic-robot-state-publisher\
    ros-galactic-joint-state-publisher\
    ros-galactic-navigation2\
    ros-galactic-nav2-bringup\
    ros-galactic-cartographer-ros\
    libraspberrypi-dev\
    && rm -rf /var/lib/apt/lists/*

# Installing RVIZ2
RUN apt-get update && apt-get install ros-galactic-rviz2

#Install rpi
RUN apt-get update && apt-get install -y python3-rpi.gpio

RUN echo "source /opt/ros/galactic/setup.bash" >> ~/.bashrc

# Set the working directory
WORKDIR /root/ros2_ws

# Copy the entry.sh script into the container at /usr/src/app
COPY ./entry.sh /usr/src/app/entry.sh

# Run entry.sh when the container launches
ENTRYPOINT ["/usr/src/app/entry.sh"]
