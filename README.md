# Maze Solver Robot with Charging Station
## Overview

This project involves a robot designed to autonomously navigate and solve unknown mazes while locating and utilizing the charging stations that are scattered around the map. The robot uses hierarchical planning where on the high-level to select which charging station to go to, and a low-level planning to motion plan to the exit of the maze.
On the high-level planning, it uses POPF planner which is a temporal-numeric planner and a corresponding pddl file. The low-level planning is achieved using move_base package that uses a global path planner and a local path planner, where it uses the gmapping pkg to map with slam in real time. 

Built on ROS Noetic, this system integrates various sensors and algorithms for effective maze exploration and navigation.

## Table of Contents
* Features
* Installation
* Usage
* License
* Contributors
  

## Installation
(based upon the installation tutorial in cognitive robots course in the Technion univeristy)
Follow these steps to set up the project on your machine:

### Prerequisites
ROS Noetic: Ensure you have ROS Noetic installed on Ubuntu 20.04. You can find installation instructions here.
### Step-by-Step Installation
1. Update and Upgrade: Open your terminal in WSL and run the following commands:

```
sudo apt update
sudo apt upgrade
```

2. Install Dependent ROS Packages: Run the following command to install the required packages:

```
sudo apt-get install ros-noetic-joy ros-noetic-teleop-twist-joy \
ros-noetic-teleop-twist-keyboard ros-noetic-laser-proc \
ros-noetic-rgbd-launch ros-noetic-rosserial-arduino \
ros-noetic-rosserial-python ros-noetic-rosserial-client \
ros-noetic-rosserial-msgs ros-noetic-amcl ros-noetic-map-server \
ros-noetic-move-base ros-noetic-urdf ros-noetic-xacro \
ros-noetic-compressed-image-transport ros-noetic-rqt* ros-noetic-rviz \
ros-noetic-gmapping ros-noetic-navigation ros-noetic-interactive-markers
```
3. Install TurtleBot3 Packages: Execute the following commands:

```
sudo apt install ros-noetic-dynamixel-sdk
sudo apt install ros-noetic-turtlebot3-msgs
sudo apt install ros-noetic-turtlebot3
```

4. Set Up Catkin Workspace: Ensure you have a catkin_ws folder with src, devel, etc., inside it in your home directory (~/catkin_ws). If not, create it and follow instructions to set it up.

5. Install Simulation Package: Run the following commands:

```
cd ~/catkin_ws/src/
git clone -b noetic-devel https://github.com/ROBOTISGIT/turtlebot3_simulations.git
```
(If you don't have git, install it with sudo apt install git-all)

6. Initialize ROS: Ensure your ROS environment is sourced. Run:

```
cd ~/catkin_ws
catkin_make
```

7. Set TURTLEBOT3_MODEL: Determine your TurtleBot3 model:

```
export TURTLEBOT3_MODEL=burger
source ~/.bashrc
```

8. Additional Installation for ROSPlan

You will also need to install the ROSPlan package. Follow the instructions to install the dependencies in the ROSplan repository and then run the following commands
```
cd ~/catkin_ws/src
git clone -b noetic-devel https://github.com/oscar-lima/ROSPlan.git
```

## Usage
After installation, you can launch the robot simulation and begin exploring mazes. Follow the instructions specific to your scripts for operating the robot and managing its navigation tasks.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.

## Contributors
* Eden Hindi
* Kfir Eliyahu
