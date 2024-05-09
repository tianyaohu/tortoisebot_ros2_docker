#!/bin/bash

# Source ROS environment
source /opt/ros/galactic/setup.bash

# Navigate to the workspace
cd /root/ros2_ws

# Build the workspace 
# Here we are skipping build within container, to save time
# colcon build --symlink-install

# Source the local setup script
source install/setup.bash

# Keep the container running or execute a given command
exec "$@"
