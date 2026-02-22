################################################################################
#
# This module provides the following imported targets, if found:
#
#  rz_debug::rz_debug
#
# This file is intended to be consumed by clients who wish to use rz_debug from CMake.
# The recommended way to use find this module is using `find_package(Rizin COMPONENTS ...)`.
#
# Provides the following variables
# rz_debug_FOUND        - Flag for indicating that rz_debug package has been found
# rz_debug_VERSION      - Version of rz_debug
# rz_debug_INCLUDE_DIRS - Directories to include
# rz_debug_LIBRARY      - Path to the single library that this module represents, without dependencies
# rz_debug_LIBRARIES    - Libraries to link
# rz_debug_LIBRARY_DIRS - Library directories to search for link libraries
# rz_debug_PLUGINDIR    - Directory where plugins are placed, without the prefix part
#
################################################################################

set(RIZIN_MODULE_PREFIXED rz_debug)
set(rz_debug_VERSION 0.9.0)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set(rz_debug_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include\\librz" "${PACKAGE_PREFIX_DIR}/include\\librz/sdb")
set_and_check(rz_debug_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib")
find_library(rz_debug_LIBRARY NAMES rz_debug HINTS "${rz_debug_LIBRARY_DIRS}" NO_DEFAULT_PATH REQUIRED)
set(rz_debug_LIBRARIES "${rz_debug_LIBRARY}")
set(_rz_debug_DEPENDENCIES rz_util rz_hash rz_reg rz_syscall rz_arch rz_io rz_bin rz_cons rz_egg rz_type)
set(rz_debug_PLUGINDIR lib\\rizin\\plugins)

include(CMakeFindDependencyMacro)
get_filename_component(_rizin_cmake_path "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(_rz_debug_DEPENDENCY_TARGETS)
foreach(_module_dep ${_rz_debug_DEPENDENCIES})
  if (NOT ${_module_dep}_FOUND)
    find_dependency(${_module_dep} PATHS ${_rizin_cmake_path} NO_DEFAULT_PATH)
  endif()

  if (NOT ${_module_dep}_FOUND)
    set(rz_debug_FOUND False)
    return()
  endif()

  list(APPEND rz_debug_INCLUDE_DIRS "${${_module_dep}_INCLUDE_DIRS}")
  list(APPEND rz_debug_LIBRARIES "${${_module_dep}_LIBRARIES}")
  list(APPEND _rz_debug_DEPENDENCY_TARGETS "${_module_dep}::${_module_dep}")
endforeach()

list(REMOVE_DUPLICATES rz_debug_INCLUDE_DIRS)
list(REMOVE_DUPLICATES rz_debug_LIBRARIES)

if(NOT TARGET rz_debug::rz_debug)
  add_library(rz_debug::rz_debug SHARED IMPORTED)
  target_link_libraries(rz_debug::rz_debug INTERFACE ${_rz_debug_DEPENDENCY_TARGETS})
  set_target_properties(rz_debug::rz_debug PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${rz_debug_INCLUDE_DIRS}")
  set_target_properties(rz_debug::rz_debug PROPERTIES
    IMPORTED_LOCATION "${rz_debug_LIBRARY}")
endif()
set(rz_debug_TARGET rz_debug::rz_debug)
