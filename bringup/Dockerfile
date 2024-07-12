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

# workspace was temporarily moved into docker dir to facilitate copying
WORKDIR /root/ros2_ws/
COPY ./ros2_ws/src/ ./src/

# Source the ROS 2 installation
SHELL ["/bin/bash", "-c"]
RUN source /opt/ros/galactic/setup.bash && colcon build

# Set the entrypoint to source the workspace setup file
ENTRYPOINT ["/bin/bash", "-c", "source install/setup.bash && exec \"$@\"", "--"]

# Default command
CMD ["bash"]
