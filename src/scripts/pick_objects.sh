#!/bin/sh
xterm -e "export ROBOT_INITIAL_POSE='-x -0 -y -0 -z 0 -R 0 -P 0 -Y 0';
roslaunch turtlebot_gazebo turtlebot_world.launch" & 
sleep 5
xterm -e "roslaunch turtlebot_gazebo amcl_demo.launch" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch rviz_config_file:=$(pwd)/../rvizConfig/home_service.rviz"&
sleep 15 
xterm -e "cd ~/Home-service-Robot;rosrun pick_objects pick_objects" 
