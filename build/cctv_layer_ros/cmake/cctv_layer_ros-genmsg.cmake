# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cctv_layer_ros: 3 messages, 0 services")

set(MSG_I_FLAGS "-Icctv_layer_ros:/home/jk/catkin_ws/src/cctv_layer_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cctv_layer_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg" NAME_WE)
add_custom_target(_cctv_layer_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cctv_layer_ros" "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg" "cctv_layer_ros/Coordinate"
)

get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg" NAME_WE)
add_custom_target(_cctv_layer_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cctv_layer_ros" "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg" ""
)

get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg" NAME_WE)
add_custom_target(_cctv_layer_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cctv_layer_ros" "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg"
  "${MSG_I_FLAGS}"
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_cpp(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_cpp(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cctv_layer_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(cctv_layer_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cctv_layer_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cctv_layer_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cctv_layer_ros_generate_messages cctv_layer_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_cpp _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_cpp _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_cpp _cctv_layer_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cctv_layer_ros_gencpp)
add_dependencies(cctv_layer_ros_gencpp cctv_layer_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cctv_layer_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg"
  "${MSG_I_FLAGS}"
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_eus(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_eus(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cctv_layer_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(cctv_layer_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cctv_layer_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cctv_layer_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cctv_layer_ros_generate_messages cctv_layer_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_eus _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_eus _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_eus _cctv_layer_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cctv_layer_ros_geneus)
add_dependencies(cctv_layer_ros_geneus cctv_layer_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cctv_layer_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg"
  "${MSG_I_FLAGS}"
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_lisp(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_lisp(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cctv_layer_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(cctv_layer_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cctv_layer_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cctv_layer_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cctv_layer_ros_generate_messages cctv_layer_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_lisp _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_lisp _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_lisp _cctv_layer_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cctv_layer_ros_genlisp)
add_dependencies(cctv_layer_ros_genlisp cctv_layer_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cctv_layer_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg"
  "${MSG_I_FLAGS}"
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_nodejs(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_nodejs(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cctv_layer_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cctv_layer_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cctv_layer_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cctv_layer_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cctv_layer_ros_generate_messages cctv_layer_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_nodejs _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_nodejs _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_nodejs _cctv_layer_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cctv_layer_ros_gennodejs)
add_dependencies(cctv_layer_ros_gennodejs cctv_layer_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cctv_layer_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg"
  "${MSG_I_FLAGS}"
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_py(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cctv_layer_ros
)
_generate_msg_py(cctv_layer_ros
  "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cctv_layer_ros
)

### Generating Services

### Generating Module File
_generate_module_py(cctv_layer_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cctv_layer_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cctv_layer_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cctv_layer_ros_generate_messages cctv_layer_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Locations.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_py _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/Coordinate.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_py _cctv_layer_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/jk/catkin_ws/src/cctv_layer_ros/msg/MultiPoint.msg" NAME_WE)
add_dependencies(cctv_layer_ros_generate_messages_py _cctv_layer_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cctv_layer_ros_genpy)
add_dependencies(cctv_layer_ros_genpy cctv_layer_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cctv_layer_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cctv_layer_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cctv_layer_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cctv_layer_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cctv_layer_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cctv_layer_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cctv_layer_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cctv_layer_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cctv_layer_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cctv_layer_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cctv_layer_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cctv_layer_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cctv_layer_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cctv_layer_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cctv_layer_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cctv_layer_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cctv_layer_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
