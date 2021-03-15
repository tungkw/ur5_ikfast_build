# CLOSE
failed due to ikfast get no solution for calibrated urdf

# pre
1. github: openrave-installation
2. change /ur_description/ur5_robot.urdf.xacro
	'kinematics_config' set as 'my_robot_calibration.yaml' rather 'ur5_default.yaml'
3. change `openrave-config --python-dir`/openravepy/_openravepy_/ikfast.py
	https://github.com/ros-planning/moveit_tutorials/issues/417
	reason is when closing openrave will get a segmentation fault (try 'openrave' in shell and close it)
4. 
	-*replace "fmauch/universal_robot" by 'ros_industrial/universal_robot'
    		but keep 'ur_msgs' due to "center_of_gravity" error
   	-*or replace "ur5.urdf.xacro" and "ur5_robot.urdf.xacro" in "fmauch/universal_robot/ur_description/urdf/" by corresponding files in ./bac

# build
```
./xacro_to_collada.sh
./build.sh
```




# log
## ur_kinematics
###'ur_kin_py.cpp'
```
#include <boost/numpy.hpp>
#include <boost/scoped_array.hpp>
#include <boost/scoped_array.hpp>

namespace p = boost::python;
namespace np = boost::numpy;
```
```
#include <boost/python.hpp>
#include <boost/python/numpy.hpp>

namespace p = boost::python;
namespace np = boost::python::numpy;
```
### CMakeLists.txt
...
### test...
