# Install script for directory: /media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/src/examples/rclcpp/composition/minimal_composition

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/install/examples_rclcpp_minimal_composition")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition/environment" TYPE FILE FILES "/opt/ros/humble/lib/python3.10/site-packages/ament_package/template/environment_hook/library_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition/environment" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/library_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcomposition_nodes.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcomposition_nodes.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcomposition_nodes.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/libcomposition_nodes.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcomposition_nodes.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcomposition_nodes.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcomposition_nodes.so"
         OLD_RPATH "/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcomposition_nodes.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_publisher" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_publisher")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_publisher"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/composition_publisher")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_publisher" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_publisher")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_publisher"
         OLD_RPATH "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_publisher")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_subscriber")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_subscriber"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/composition_subscriber")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_subscriber" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_subscriber")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_subscriber"
         OLD_RPATH "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_subscriber")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_composed" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_composed")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_composed"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition" TYPE EXECUTABLE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/composition_composed")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_composed" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_composed")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_composed"
         OLD_RPATH "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition:/opt/ros/humble/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/examples_rclcpp_minimal_composition/composition_composed")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/package_run_dependencies" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_index/share/ament_index/resource_index/package_run_dependencies/examples_rclcpp_minimal_composition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/parent_prefix_path" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_index/share/ament_index/resource_index/parent_prefix_path/examples_rclcpp_minimal_composition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/ament_prefix_path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition/environment" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/ament_prefix_path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition/environment" TYPE FILE FILES "/opt/ros/humble/share/ament_cmake_core/cmake/environment_hooks/environment/path.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition/environment" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/path.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/local_setup.bash")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/local_setup.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/local_setup.zsh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/local_setup.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_environment_hooks/package.dsv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/ament_index/resource_index/packages" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_index/share/ament_index/resource_index/packages/examples_rclcpp_minimal_composition")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition/cmake" TYPE FILE FILES
    "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_core/examples_rclcpp_minimal_compositionConfig.cmake"
    "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/ament_cmake_core/examples_rclcpp_minimal_compositionConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/examples_rclcpp_minimal_composition" TYPE FILE FILES "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/src/examples/rclcpp/composition/minimal_composition/package.xml")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/media/iruma/Data/AIR/ros学习记录_git/ros源代码/colcon_test/build/examples_rclcpp_minimal_composition/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
