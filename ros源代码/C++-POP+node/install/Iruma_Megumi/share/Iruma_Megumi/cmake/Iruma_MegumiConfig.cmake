# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_Iruma_Megumi_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED Iruma_Megumi_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(Iruma_Megumi_FOUND FALSE)
  elseif(NOT Iruma_Megumi_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(Iruma_Megumi_FOUND FALSE)
  endif()
  return()
endif()
set(_Iruma_Megumi_CONFIG_INCLUDED TRUE)

# output package information
if(NOT Iruma_Megumi_FIND_QUIETLY)
  message(STATUS "Found Iruma_Megumi: 0.0.0 (${Iruma_Megumi_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'Iruma_Megumi' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${Iruma_Megumi_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(Iruma_Megumi_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${Iruma_Megumi_DIR}/${_extra}")
endforeach()
