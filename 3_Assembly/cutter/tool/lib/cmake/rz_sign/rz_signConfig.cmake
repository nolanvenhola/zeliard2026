################################################################################
#
# This module provides the following imported targets, if found:
#
#  rz_sign::rz_sign
#
# This file is intended to be consumed by clients who wish to use rz_sign from CMake.
# The recommended way to use find this module is using `find_package(Rizin COMPONENTS ...)`.
#
# Provides the following variables
# rz_sign_FOUND        - Flag for indicating that rz_sign package has been found
# rz_sign_VERSION      - Version of rz_sign
# rz_sign_INCLUDE_DIRS - Directories to include
# rz_sign_LIBRARY      - Path to the single library that this module represents, without dependencies
# rz_sign_LIBRARIES    - Libraries to link
# rz_sign_LIBRARY_DIRS - Library directories to search for link libraries
# rz_sign_PLUGINDIR    - Directory where plugins are placed, without the prefix part
#
################################################################################

set(RIZIN_MODULE_PREFIXED rz_sign)
set(rz_sign_VERSION 0.9.0)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set(rz_sign_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include\\librz" "${PACKAGE_PREFIX_DIR}/include\\librz/sdb")
set_and_check(rz_sign_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib")
find_library(rz_sign_LIBRARY NAMES rz_sign HINTS "${rz_sign_LIBRARY_DIRS}" NO_DEFAULT_PATH REQUIRED)
set(rz_sign_LIBRARIES "${rz_sign_LIBRARY}")
set(_rz_sign_DEPENDENCIES rz_util rz_arch rz_diff rz_hash rz_type rz_search rz_flag)
set(rz_sign_PLUGINDIR lib\\rizin\\plugins)

include(CMakeFindDependencyMacro)
get_filename_component(_rizin_cmake_path "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(_rz_sign_DEPENDENCY_TARGETS)
foreach(_module_dep ${_rz_sign_DEPENDENCIES})
  if (NOT ${_module_dep}_FOUND)
    find_dependency(${_module_dep} PATHS ${_rizin_cmake_path} NO_DEFAULT_PATH)
  endif()

  if (NOT ${_module_dep}_FOUND)
    set(rz_sign_FOUND False)
    return()
  endif()

  list(APPEND rz_sign_INCLUDE_DIRS "${${_module_dep}_INCLUDE_DIRS}")
  list(APPEND rz_sign_LIBRARIES "${${_module_dep}_LIBRARIES}")
  list(APPEND _rz_sign_DEPENDENCY_TARGETS "${_module_dep}::${_module_dep}")
endforeach()

list(REMOVE_DUPLICATES rz_sign_INCLUDE_DIRS)
list(REMOVE_DUPLICATES rz_sign_LIBRARIES)

if(NOT TARGET rz_sign::rz_sign)
  add_library(rz_sign::rz_sign SHARED IMPORTED)
  target_link_libraries(rz_sign::rz_sign INTERFACE ${_rz_sign_DEPENDENCY_TARGETS})
  set_target_properties(rz_sign::rz_sign PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${rz_sign_INCLUDE_DIRS}")
  set_target_properties(rz_sign::rz_sign PROPERTIES
    IMPORTED_LOCATION "${rz_sign_LIBRARY}")
endif()
set(rz_sign_TARGET rz_sign::rz_sign)
