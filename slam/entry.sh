#!/bin/bash

# Source ROS environment
source /opt/ros/humble/setup.bash

# Navigate to the workspace
cd /root/ros2_ws

# Build the workspace
colcon build --symlink-install

# Source the local setup script
source install/setup.bash

# Keep the container running or execute a given command
exec "$@"
