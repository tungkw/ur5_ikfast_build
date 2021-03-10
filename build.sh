# clear
rm ./src/ur5_ikfast.cpp
rm ./bin/ikfast

# build file
openrave-robot.py ./urdf/ur5.dae --info links
python `openrave-config --python-dir`/openravepy/_openravepy_/ikfast.py --robot=./urdf/ur5.dae --iktype=transform6d --baselink=0 --eelink=9 --savefile=./src/ur5_ikfast.cpp
g++ ./src/ur5_ikfast.cpp -o ./bin/ikfast -llapack -std=c++11 -I `rospack find ur5_ikfast_plugin`/include/
rosrun moveit_kinematics create_ikfast_moveit_plugin.py ur5 manipulator ur5_ikfast_plugin base_link ee_link ./src/ur5_ikfast.cpp
