# Install script for directory: /media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/src/examples/rclcpp/topics/minimal_subscriber

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/install/examples_rclcpp_minimal_subscriber")
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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/wait_set_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/wait_set_subscriber")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/wait_set_subscriber"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/wait_set_subscriber")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/wait_set_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/wait_set_subscriber")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/wait_set_subscriber"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/wait_set_subscriber")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/static_wait_set_subscriber")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/time_triggered_wait_set_subscriber")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwait_set_subscriber_library.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwait_set_subscriber_library.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwait_set_subscriber_library.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/libwait_set_subscriber_library.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwait_set_subscriber_library.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwait_set_subscriber_library.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwait_set_subscriber_library.so"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libwait_set_subscriber_library.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_lambda" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_lambda")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_lambda"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/subscriber_lambda")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_lambda" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_lambda")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_lambda"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_lambda")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/subscriber_member_function")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_topic_statistics")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_type_adapter")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_member_function_with_unique_network_flow_endpoints")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_not_composable" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_not_composable")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_not_composable"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/subscriber_not_composable")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_not_composable" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_not_composable")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_not_composable"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_not_composable")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_content_filtering" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_content_filtering")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_content_filtering"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/subscriber_content_filtering")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_content_filtering" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_content_filtering")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_content_filtering"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_subscriber/subscriber_content_filtering")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/examples_rclcpp_minimal_subscriber")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/examples_rclcpp_minimal_subscriber")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber/environment" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber/environment" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_index/share/ament_index/resource_index/packages/examples_rclcpp_minimal_subscriber")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/rclcpp_components" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_index/share/ament_index/resource_index/rclcpp_components/examples_rclcpp_minimal_subscriber")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber/cmake" TYPE FILE FILES
    "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_core/examples_rclcpp_minimal_subscriberConfig.cmake"
    "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/ament_cmake_core/examples_rclcpp_minimal_subscriberConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_subscriber" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/src/examples/rclcpp/topics/minimal_subscriber/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_subscriber/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
