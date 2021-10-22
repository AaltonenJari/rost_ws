# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_manager;diagnostic_updater;hardware_interface;joint_limits_interface;roscpp;rospy;sensor_msgs;soem;tf;trajectory_msgs;transmission_interface".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lelfin_ethercat_driver".split(';') if "-lelfin_ethercat_driver" != "" else []
PROJECT_NAME = "elfin_ethercat_driver"
PROJECT_SPACE_DIR = "/home/jari/rost_ws/install"
PROJECT_VERSION = "0.0.0"
