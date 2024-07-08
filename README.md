# ROS2 TortoiseBot Docker 🌌

## Overview 🌟
Welcome, This repository setsup containerized Docker environment for ROS2 Humble. Simultaneous launching of Simulation, SLAM.

## Installation 🛠️

### Install Docker 🐳
```
sudo apt-get update
sudo apt-get install docker.io docker-compose -y
sudo service docker start
```
To use Docker without sudo:
```
sudo usermod -aG docker $USER
newgrp docker
```

### Clone Repo
In Terminal #1
```
#change it to your own workspace
cd ~/ros2_ws/src
git clone https://github.com/tianyaohu/tortoisebot_ros2_docker.git
```

## Build and Run Containers
In Terminal #1
```
cd ./tortoisebot_ros2_docker/
#pull remote images from docker hub (5min~)
docker-compose up
```
Expected Result:
![docker-compose up](media/ros2_docker-compose-up.gif)
