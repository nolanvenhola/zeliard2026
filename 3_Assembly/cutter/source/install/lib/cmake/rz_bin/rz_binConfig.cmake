################################################################################
#
# This module provides the following imported targets, if found:
#
#  rz_bin::rz_bin
#
# This file is intended to be consumed by clients who wish to use rz_bin from CMake.
# The recommended way to use find this module is using `find_package(Rizin COMPONENTS ...)`.
#
# Provides the following variables
# rz_bin_FOUND        - Flag for indicating that rz_bin package has been found
# rz_bin_VERSION      - Version of rz_bin
# rz_bin_INCLUDE_DIRS - Directories to include
# rz_bin_LIBRARY      - Path to the single library that this module represents, without dependencies
# rz_bin_LIBRARIES    - Libraries to link
# rz_bin_LIBRARY_DIRS - Library directories to search for link libraries
# rz_bin_PLUGINDIR    - Directory where plugins are placed, without the prefix part
#
################################################################################

set(RIZIN_MODULE_PREFIXED rz_bin)
set(rz_bin_VERSION 0.9.0)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set(rz_bin_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include\\librz" "${PACKAGE_PREFIX_DIR}/include\\librz/sdb")
set_and_check(rz_bin_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib")
find_library(rz_bin_LIBRARY NAMES rz_bin HINTS "${rz_bin_LIBRARY_DIRS}" NO_DEFAULT_PATH REQUIRED)
set(rz_bin_LIBRARIES "${rz_bin_LIBRARY}")
set(_rz_bin_DEPENDENCIES rz_magic rz_util rz_io rz_search rz_socket rz_syscall rz_type)
set(rz_bin_PLUGINDIR lib\\rizin\\plugins)

include(CMakeFindDependencyMacro)
get_filename_component(_rizin_cmake_path "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(_rz_bin_DEPENDENCY_TARGETS)
foreach(_module_dep ${_rz_bin_DEPENDENCIES})
  if (NOT ${_module_dep}_FOUND)
    find_dependency(${_module_dep} PATHS ${_rizin_cmake_path} NO_DEFAULT_PATH)
  endif()

  if (NOT ${_module_dep}_FOUND)
    set(rz_bin_FOUND False)
    return()
  endif()

  list(APPEND rz_bin_INCLUDE_DIRS "${${_module_dep}_INCLUDE_DIRS}")
  list(APPEND rz_bin_LIBRARIES "${${_module_dep}_LIBRARIES}")
  list(APPEND _rz_bin_DEPENDENCY_TARGETS "${_module_dep}::${_module_dep}")
endforeach()

list(REMOVE_DUPLICATES rz_bin_INCLUDE_DIRS)
list(REMOVE_DUPLICATES rz_bin_LIBRARIES)

if(NOT TARGET rz_bin::rz_bin)
  add_library(rz_bin::rz_bin SHARED IMPORTED)
  target_link_libraries(rz_bin::rz_bin INTERFACE ${_rz_bin_DEPENDENCY_TARGETS})
  set_target_properties(rz_bin::rz_bin PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${rz_bin_INCLUDE_DIRS}")
  set_target_properties(rz_bin::rz_bin PROPERTIES
    IMPORTED_LOCATION "${rz_bin_LIBRARY}")
endif()
set(rz_bin_TARGET rz_bin::rz_bin)
