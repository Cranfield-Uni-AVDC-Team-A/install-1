# Install script for directory: /home/nbrooke/gdp/src/behaviour

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nbrooke/gdp/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/behaviour/msg" TYPE FILE FILES
    "/home/nbrooke/gdp/src/behaviour/msg/drone_geometry.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/drone_state.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/mission.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/score.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/task.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/task_geometry.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/drone_hello.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/members.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/swarmstate.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/target.msg"
    "/home/nbrooke/gdp/src/behaviour/msg/targetlist.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/behaviour/srv" TYPE FILE FILES
    "/home/nbrooke/gdp/src/behaviour/srv/swarmstatereq.srv"
    "/home/nbrooke/gdp/src/behaviour/srv/swarmstatereqRESPONSE.srv"
    "/home/nbrooke/gdp/src/behaviour/srv/cleanreq.srv"
    "/home/nbrooke/gdp/src/behaviour/srv/areareq.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/behaviour/cmake" TYPE FILE FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/behaviour-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nbrooke/gdp/devel/include/behaviour")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nbrooke/gdp/devel/share/roseus/ros/behaviour")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nbrooke/gdp/devel/share/common-lisp/ros/behaviour")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nbrooke/gdp/devel/share/gennodejs/ros/behaviour")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nbrooke/gdp/devel/lib/python3/dist-packages/behaviour")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nbrooke/gdp/devel/lib/python3/dist-packages/behaviour")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/behaviour.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/behaviour/cmake" TYPE FILE FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/behaviour-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/behaviour/cmake" TYPE FILE FILES
    "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/behaviourConfig.cmake"
    "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/behaviourConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/behaviour" TYPE FILE FILES "/home/nbrooke/gdp/src/behaviour/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/mission_upload.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/stateheartbeat.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/stateheartbeat3.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/faketask.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/task_state_monitor.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/task_allocation.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/param_clean.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/drone_state_monitor.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/stateheartbeat2.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/param_updater.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/swarm_state.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/swarmstateclienttest.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/behaviour" TYPE PROGRAM FILES "/home/nbrooke/gdp/build/behaviour/catkin_generated/installspace/area_allocation.py")
endif()

