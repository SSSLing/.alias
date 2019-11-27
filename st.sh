source $CodeDir/code/HorizonAD/catkin_ws/devel/setup.zsh
roscd simulator
export GAZEBO_MODEL_PATH=$PWD/models:$GAZEBO_MODEL_PATH
cd $CodeDir/code/HorizonAD