# Use a custom ROS 2 image as the base
FROM ros2_gazebo:latest

# Make sure the package lists are up-to-date
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    ros-humble-cartographer \
    ros-humble-cartographer-ros && \
    rm -rf /var/lib/apt/lists/*

# Add sourcing to .bashrc (considered best practice for interactive use, not always for Docker containers)
RUN echo "source /opt/ros/humble/setup.bash" >> /root/.bashrc

# Set the working directory to /root/catkin_ws
# Consider using /root/ros2_ws if you are working with ROS 2
WORKDIR /root/catkin_ws

# Copy the entry.sh script into the container at /usr/src/app
COPY ./entry.sh /usr/src/app/entry.sh

# Make the entry.sh script executable
RUN chmod +x /usr/src/app/entry.sh

# Set entry.sh as the entrypoint
ENTRYPOINT ["/usr/src/app/entry.sh"]
