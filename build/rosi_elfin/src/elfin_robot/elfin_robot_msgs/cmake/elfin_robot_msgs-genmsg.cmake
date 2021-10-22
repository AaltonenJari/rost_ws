# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "elfin_robot_msgs: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(elfin_robot_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv" NAME_WE)
add_custom_target(_elfin_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "elfin_robot_msgs" "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv" ""
)

get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv" NAME_WE)
add_custom_target(_elfin_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "elfin_robot_msgs" "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv" ""
)

get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv" NAME_WE)
add_custom_target(_elfin_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "elfin_robot_msgs" "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv" ""
)

get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv" NAME_WE)
add_custom_target(_elfin_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "elfin_robot_msgs" "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv" ""
)

get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv" NAME_WE)
add_custom_target(_elfin_robot_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "elfin_robot_msgs" "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_cpp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_cpp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_cpp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_cpp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs
)

### Generating Module File
_generate_module_cpp(elfin_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(elfin_robot_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(elfin_robot_msgs_generate_messages elfin_robot_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_cpp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_cpp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_cpp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_cpp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_cpp _elfin_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elfin_robot_msgs_gencpp)
add_dependencies(elfin_robot_msgs_gencpp elfin_robot_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elfin_robot_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_eus(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_eus(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_eus(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_eus(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs
)

### Generating Module File
_generate_module_eus(elfin_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(elfin_robot_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(elfin_robot_msgs_generate_messages elfin_robot_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_eus _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_eus _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_eus _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_eus _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_eus _elfin_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elfin_robot_msgs_geneus)
add_dependencies(elfin_robot_msgs_geneus elfin_robot_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elfin_robot_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_lisp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_lisp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_lisp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_lisp(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs
)

### Generating Module File
_generate_module_lisp(elfin_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(elfin_robot_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(elfin_robot_msgs_generate_messages elfin_robot_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_lisp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_lisp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_lisp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_lisp _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_lisp _elfin_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elfin_robot_msgs_genlisp)
add_dependencies(elfin_robot_msgs_genlisp elfin_robot_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elfin_robot_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_nodejs(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_nodejs(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_nodejs(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_nodejs(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs
)

### Generating Module File
_generate_module_nodejs(elfin_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(elfin_robot_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(elfin_robot_msgs_generate_messages elfin_robot_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_nodejs _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_nodejs _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_nodejs _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_nodejs _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_nodejs _elfin_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elfin_robot_msgs_gennodejs)
add_dependencies(elfin_robot_msgs_gennodejs elfin_robot_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elfin_robot_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_py(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_py(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_py(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs
)
_generate_srv_py(elfin_robot_msgs
  "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs
)

### Generating Module File
_generate_module_py(elfin_robot_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(elfin_robot_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(elfin_robot_msgs_generate_messages elfin_robot_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetString.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_py _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetInt16.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_py _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/SetFloat64.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_py _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODRead.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_py _elfin_robot_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jari/rost_ws/src/rosi_elfin/src/elfin_robot/elfin_robot_msgs/srv/ElfinIODWrite.srv" NAME_WE)
add_dependencies(elfin_robot_msgs_generate_messages_py _elfin_robot_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(elfin_robot_msgs_genpy)
add_dependencies(elfin_robot_msgs_genpy elfin_robot_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS elfin_robot_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/elfin_robot_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(elfin_robot_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/elfin_robot_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(elfin_robot_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/elfin_robot_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(elfin_robot_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/elfin_robot_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(elfin_robot_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/elfin_robot_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(elfin_robot_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
