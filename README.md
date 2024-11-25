# Maze Solver Robot with Charging Station
## Overview

This project involves a robot designed to autonomously navigate and solve unknown mazes with battery constraints while utilizing the charging stations that are scattered around the map.

The robot uses hierarchical planning where on the high-level to select which charging station/goal to go to, and a low-level planning to motion plan to the reach the selected point.
On the high-level planning, it uses POPF planner which is a temporal-numeric planner and a corresponding pddl file. The low-level planning is achieved using move_base package that uses a global path planner (Dijkstra) and a local path planner (DWA), where it uses the hector_slam pkg to map with slam in real time. 

Built on ROS Noetic, this system integrates various sensors and algorithms for effective maze exploration and navigation.

## Table of Contents
* Installation
* Usage
* Video Demonstrations
* License
* Contributors
  

## Installation
(based upon the installation tutorial in cognitive robots course at the Technion university)
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
git clone -b noetic-devel https://github.com/ROBOTIS-GIT/turtlebot3_simulations.git
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

8. Clone the project
    
```
cd ~/catkin_ws/src
git clone https://github.com/edenhindi/MazeNavigator.git
```

9. Install Hector Slam
```
sudo apt-get install ros-noetic-hector-slam
```

10. Additional Installation for ROSPlan

You will also need to install the ROSPlan package. Follow the instructions to install the dependencies in the ROSplan repository and then run the following commands
```
cd ~/catkin_ws/src
git clone -b noetic-devel https://github.com/oscar-lima/ROSPlan.git
```


## Usage
After installation, you can launch the robot simulation and begin exploring mazes. Follow the instructions specific to your scripts for operating the robot and managing its navigation tasks. 

Open 3 windows in wsl/linux (Ideally using Terminator if you are using Windows OS)
```
# first screen
cd catkin_ws
roscore

# second screen
cd catkin_ws
roslaunch final_project master.launch

# third screen
roslaunch final_project robot.launch
```

## Video Demonstrations
we supply 3 videos of us running the robot in different environment and replan strategies, each video demonstrates the code instructions and the full run of the robot
* [small maze denostration with replan every 1000 new discovered maze squares](https://technion.zoom.us/rec/share/U-LGZJFz0aL1HQMjInJ_WjZcg1g3gdB3yTLeH8J8CHurTv4s5sviVIABbqUGWxVB.Mde2hhelcq17XzKu?startTime=1732460844000) password:991^f%t8
* [medium maze denostration with replan every 100s](https://technion.zoom.us/rec/share/pRUdyBw5RsJYV5skkUzshCUPcAWX5RC3qfv2aXEIjy2M3N__wU8_5r2kJBIwoRna.IKRpV-FILxEC30xO?startTime=1732462466000) password:7eF%0TZ=
* [hard medium maze denostration with replan every 80s](https://technion.zoom.us/rec/share/cdENqDnr6n29Aw7qUibNweSde2ps4pe9Cmc1XzRkf9txkKR1CuSKm_T1SnT3UPIA.UiG_9E_bHDgxO595?startTime=1732467186000) password:G0Y821q!


## License
This project is licensed under the MIT License. See the LICENSE file for more details.

## Contributors
* Eden Hindi
* Kfir Eliyahu
