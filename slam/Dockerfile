# Use a custom ROS 2 image as the base
FROM ros2_gazebo:latest

# Make sure the package lists are up-to-date
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ros-humble-cartographer \
    ros-humble-cartographer-ros && \
    rm -rf /var/lib/apt/lists/*
