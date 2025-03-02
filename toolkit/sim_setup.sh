#!/bin/bash

echo "map_name: $2"
file_name="$2"
home_name="ddrx"

if [ $# -eq 0 ]; then
  echo "Error: No parameters were passed, please provide at least one parameter."
  exit 1
fi

echo "Passed in parameters to execute the program with parameters"

roslaunch f1tenth_simulator pbl_sim.launch map_name:=/home/$home_name/f1tenth_ws/toolkit/maps/$file_name/$file_name.yaml
