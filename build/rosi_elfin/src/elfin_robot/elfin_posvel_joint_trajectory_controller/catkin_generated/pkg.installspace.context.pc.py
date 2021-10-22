# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;elfin_hardware_interface;joint_trajectory_controller;roscpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lelfin_posvel_joint_trajectory_controller".split(';') if "-lelfin_posvel_joint_trajectory_controller" != "" else []
PROJECT_NAME = "elfin_posvel_joint_trajectory_controller"
PROJECT_SPACE_DIR = "/home/jari/rost_ws/install"
PROJECT_VERSION = "0.0.0"
