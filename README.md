# ROS2 TortoiseBot Docker For Real 🐢bot

## Overview 🌟
Welcome, This repository setsup containerized Docker environment for ROS2 Galactic Simultaneous launching of SLAM, RVIZ2 etc.
## Installation 🛠️

### Connect to your Raspberry Pi
```bash
#Here -X is to pass display, -C is for compression, aka better frame rate
ssh -X -C tortoisebot@master
```

### Install Docker Compose 2🐳

```
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
```
### Setupdocker 
```
sudo usermod -aG docker $USER
newgrp docker
```
### Verify Installation
```
docker --version
docker compose version
```

### Clone Repo
```
#change it to your own workspace
cd PATH_TO_WS
git clone --branch real https://github.com/tianyaohu/tortoisebot_ros2_docker.git 
```

## Build and Run Containers
### If you are comming back remember to use -X and -C
```bash
#Here -X is to pass display, -C is for compression, aka better frame rate
ssh -X -C tortoisebot@master
```
```
cd ./tortoisebot_ros1_docker/
#pull remote images from docker hub (4min~)
docker compose up
```
For This please add /map and camera to RVIZ

The camera may not work properly, when rviz launch for the first time. Please check/uncheck/add the image topic again, to see the image to render properly

Expected Result:
![docker-compose pull](media/real_ros2_docker_compose_up_speed.gif)






