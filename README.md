## Notable files:
<ul>
  <li>src/coursework_1/src/kinematics.py</li>
  <li>src/coursework_1/src/config/controller_settings.yaml</li>
</ul>

## Starting ROS:
`killall gzserver gzclient` <br>
`rosrun`<br>
`rosrun gazebo_ros gazebo`<br>
`source devel/setup.bash`<br>
`roslaunch coursework_1 coursework_1.launch`<br>

## For PID tuning;
`rqt_reconfigure rqt_reconfigure`<br>
`rqt_plot`<br>
Use DESE3... whatever in plot command box
