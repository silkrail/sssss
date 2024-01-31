execute_process(COMMAND "/home/jk/catkin_ws/build/practice/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/jk/catkin_ws/build/practice/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
