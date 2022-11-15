# Install script for directory: /media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/src/examples/rclcpp/actions/minimal_action_server

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/install/examples_rclcpp_minimal_action_server")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_not_composable" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_not_composable")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_not_composable"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/action_server_not_composable")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_not_composable" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_not_composable")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_not_composable"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_not_composable")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_member_functions" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_member_functions")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_member_functions"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/action_server_member_functions")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_member_functions" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_member_functions")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_member_functions"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_action_server/action_server_member_functions")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/examples_rclcpp_minimal_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/examples_rclcpp_minimal_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server/environment" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server/environment" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_index/share/ament_index/resource_index/packages/examples_rclcpp_minimal_action_server")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server/cmake" TYPE FILE FILES
    "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_core/examples_rclcpp_minimal_action_serverConfig.cmake"
    "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/ament_cmake_core/examples_rclcpp_minimal_action_serverConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_action_server" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/src/examples/rclcpp/actions/minimal_action_server/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_action_server/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
