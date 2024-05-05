FROM nvidia/cuda:11.7.1-base-ubuntu22.04

# Minimal setup
RUN apt update \
 && apt install -y locales lsb-release
ARG DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US en_US.UTF-8 && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
ENV LANG en_US.UTF-8

# Install ROS2 Humble
RUN apt update \
 && apt install -y --no-install-recommends curl \
 && apt install -y --no-install-recommends gnupg2
RUN curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/ros2.list > /dev/null

RUN apt update \
# && apt upgrade \
 && apt install -y ros-humble-desktop \
 && apt install -y ros-humble-gazebo-ros-pkgs
 
# Install development tools and colcon
RUN apt-get update && apt-get install -y \
    build-essential \
    ros-humble-xacro\
    ros-humble-joint-state-publisher\
    python3-pip \
    python3-colcon-common-extensions \
    && rm -rf /var/lib/apt/lists/*

RUN echo "source /opt/ros/humble/setup.bash" >> ~/.bashrc

# Set the working directory
WORKDIR /root/ros2_ws

# Copy the entry.sh script into the container at /usr/src/app
COPY ./entry.sh /usr/src/app/entry.sh

# Run entry.sh when the container launches
ENTRYPOINT ["/usr/src/app/entry.sh"]
