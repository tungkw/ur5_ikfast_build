rm ./urdf/ur5.urdf
rm ./urdf/ur5.dae

#rosrun xacro xacro --inorder -o ./urdf/ur5.urdf ./urdf/ur5.urdf.xacro
rosrun xacro xacro --inorder -o ./urdf/ur5.urdf `rospack find ur_description`/urdf/ur5_robot.urdf.xacro
rosrun collada_urdf urdf_to_collada ./urdf/ur5.urdf ./urdf/ur5.dae
#rosrun moveit_kinematics round_collada_numbers.py ./urdf/ur5.dae ./urdf/ur5.dae 5
