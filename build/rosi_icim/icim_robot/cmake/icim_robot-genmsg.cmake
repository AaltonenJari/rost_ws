# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "icim_robot: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(icim_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv" NAME_WE)
add_custom_target(_icim_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "icim_robot" "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(icim_robot
  "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icim_robot
)

### Generating Module File
_generate_module_cpp(icim_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icim_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(icim_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(icim_robot_generate_messages icim_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv" NAME_WE)
add_dependencies(icim_robot_generate_messages_cpp _icim_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icim_robot_gencpp)
add_dependencies(icim_robot_gencpp icim_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icim_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(icim_robot
  "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icim_robot
)

### Generating Module File
_generate_module_eus(icim_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icim_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(icim_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(icim_robot_generate_messages icim_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv" NAME_WE)
add_dependencies(icim_robot_generate_messages_eus _icim_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icim_robot_geneus)
add_dependencies(icim_robot_geneus icim_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icim_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(icim_robot
  "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icim_robot
)

### Generating Module File
_generate_module_lisp(icim_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icim_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(icim_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(icim_robot_generate_messages icim_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv" NAME_WE)
add_dependencies(icim_robot_generate_messages_lisp _icim_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icim_robot_genlisp)
add_dependencies(icim_robot_genlisp icim_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icim_robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(icim_robot
  "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icim_robot
)

### Generating Module File
_generate_module_nodejs(icim_robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icim_robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(icim_robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(icim_robot_generate_messages icim_robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv" NAME_WE)
add_dependencies(icim_robot_generate_messages_nodejs _icim_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icim_robot_gennodejs)
add_dependencies(icim_robot_gennodejs icim_robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icim_robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(icim_robot
  "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icim_robot
)

### Generating Module File
_generate_module_py(icim_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icim_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(icim_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(icim_robot_generate_messages icim_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_icim/icim_robot/srv/ICIM_action.srv" NAME_WE)
add_dependencies(icim_robot_generate_messages_py _icim_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(icim_robot_genpy)
add_dependencies(icim_robot_genpy icim_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS icim_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icim_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/icim_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(icim_robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icim_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/icim_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(icim_robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icim_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/icim_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(icim_robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icim_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/icim_robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(icim_robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icim_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icim_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/icim_robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(icim_robot_generate_messages_py std_msgs_generate_messages_py)
endif()
