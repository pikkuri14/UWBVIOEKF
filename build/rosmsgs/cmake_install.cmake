# Install script for directory: /root/uwbvio_ws/src/rosmsgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/uwbvio_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gtec_msgs/msg" TYPE FILE FILES
    "/root/uwbvio_ws/src/rosmsgs/msg/GenericRanging.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/Ranging.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/UWBRanging.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/DWRanging.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/PozyxRanging.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/RangingDiff.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/PozyxRangingWithCir.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/ESP32S2FTMFrame.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/ESP32S2FTMRanging.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/ESP32S2FTMRangingExtra.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/RadarCube.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/RadarRangeAzimuth.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/RadarRangeDoppler.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/RadarFusedPointStamped.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/DoorCounterEvent.msg"
    "/root/uwbvio_ws/src/rosmsgs/msg/ZoneOccupancy.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gtec_msgs/cmake" TYPE FILE FILES "/root/uwbvio_ws/build/rosmsgs/catkin_generated/installspace/gtec_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/root/uwbvio_ws/devel/include/gtec_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/root/uwbvio_ws/devel/share/roseus/ros/gtec_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/root/uwbvio_ws/devel/share/common-lisp/ros/gtec_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/root/uwbvio_ws/devel/share/gennodejs/ros/gtec_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/root/uwbvio_ws/devel/lib/python3/dist-packages/gtec_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/root/uwbvio_ws/devel/lib/python3/dist-packages/gtec_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/uwbvio_ws/build/rosmsgs/catkin_generated/installspace/gtec_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gtec_msgs/cmake" TYPE FILE FILES "/root/uwbvio_ws/build/rosmsgs/catkin_generated/installspace/gtec_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gtec_msgs/cmake" TYPE FILE FILES
    "/root/uwbvio_ws/build/rosmsgs/catkin_generated/installspace/gtec_msgsConfig.cmake"
    "/root/uwbvio_ws/build/rosmsgs/catkin_generated/installspace/gtec_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gtec_msgs" TYPE FILE FILES "/root/uwbvio_ws/src/rosmsgs/package.xml")
endif()

