################################################################################
#
# This module provides the following imported targets, if found:
#
#  rz_main::rz_main
#
# This file is intended to be consumed by clients who wish to use rz_main from CMake.
# The recommended way to use find this module is using `find_package(Rizin COMPONENTS ...)`.
#
# Provides the following variables
# rz_main_FOUND        - Flag for indicating that rz_main package has been found
# rz_main_VERSION      - Version of rz_main
# rz_main_INCLUDE_DIRS - Directories to include
# rz_main_LIBRARY      - Path to the single library that this module represents, without dependencies
# rz_main_LIBRARIES    - Libraries to link
# rz_main_LIBRARY_DIRS - Library directories to search for link libraries
# rz_main_PLUGINDIR    - Directory where plugins are placed, without the prefix part
#
################################################################################

set(RIZIN_MODULE_PREFIXED rz_main)
set(rz_main_VERSION 0.9.0)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set(rz_main_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include\\librz" "${PACKAGE_PREFIX_DIR}/include\\librz/sdb")
set_and_check(rz_main_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib")
find_library(rz_main_LIBRARY NAMES rz_main HINTS "${rz_main_LIBRARY_DIRS}" NO_DEFAULT_PATH REQUIRED)
set(rz_main_LIBRARIES "${rz_main_LIBRARY}")
set(_rz_main_DEPENDENCIES rz_core rz_demangler rz_arch rz_sign rz_diff rz_syscall)
set(rz_main_PLUGINDIR lib\\rizin\\plugins)

include(CMakeFindDependencyMacro)
get_filename_component(_rizin_cmake_path "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(_rz_main_DEPENDENCY_TARGETS)
foreach(_module_dep ${_rz_main_DEPENDENCIES})
  if (NOT ${_module_dep}_FOUND)
    find_dependency(${_module_dep} PATHS ${_rizin_cmake_path} NO_DEFAULT_PATH)
  endif()

  if (NOT ${_module_dep}_FOUND)
    set(rz_main_FOUND False)
    return()
  endif()

  list(APPEND rz_main_INCLUDE_DIRS "${${_module_dep}_INCLUDE_DIRS}")
  list(APPEND rz_main_LIBRARIES "${${_module_dep}_LIBRARIES}")
  list(APPEND _rz_main_DEPENDENCY_TARGETS "${_module_dep}::${_module_dep}")
endforeach()

list(REMOVE_DUPLICATES rz_main_INCLUDE_DIRS)
list(REMOVE_DUPLICATES rz_main_LIBRARIES)

if(NOT TARGET rz_main::rz_main)
  add_library(rz_main::rz_main SHARED IMPORTED)
  target_link_libraries(rz_main::rz_main INTERFACE ${_rz_main_DEPENDENCY_TARGETS})
  set_target_properties(rz_main::rz_main PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${rz_main_INCLUDE_DIRS}")
  set_target_properties(rz_main::rz_main PROPERTIES
    IMPORTED_LOCATION "${rz_main_LIBRARY}")
endif()
set(rz_main_TARGET rz_main::rz_main)
