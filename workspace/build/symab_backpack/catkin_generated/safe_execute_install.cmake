execute_process(COMMAND "/home/pedroildefonso/baxter_project/workspace/build/symab_backpack/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/pedroildefonso/baxter_project/workspace/build/symab_backpack/catkin_generated/python_distutils_install.sh) returned error code ")
endif()