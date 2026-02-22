################################################################################
#
# This module provides the following imported targets, if found:
#
#  rz_arch::rz_arch
#
# This file is intended to be consumed by clients who wish to use rz_arch from CMake.
# The recommended way to use find this module is using `find_package(Rizin COMPONENTS ...)`.
#
# Provides the following variables
# rz_arch_FOUND        - Flag for indicating that rz_arch package has been found
# rz_arch_VERSION      - Version of rz_arch
# rz_arch_INCLUDE_DIRS - Directories to include
# rz_arch_LIBRARY      - Path to the single library that this module represents, without dependencies
# rz_arch_LIBRARIES    - Libraries to link
# rz_arch_LIBRARY_DIRS - Library directories to search for link libraries
# rz_arch_PLUGINDIR    - Directory where plugins are placed, without the prefix part
#
################################################################################

set(RIZIN_MODULE_PREFIXED rz_arch)
set(rz_arch_VERSION 0.9.0)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set(rz_arch_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include\\librz" "${PACKAGE_PREFIX_DIR}/include\\librz/sdb")
set_and_check(rz_arch_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib")
find_library(rz_arch_LIBRARY NAMES rz_arch HINTS "${rz_arch_LIBRARY_DIRS}" NO_DEFAULT_PATH REQUIRED)
set(rz_arch_LIBRARIES "${rz_arch_LIBRARY}")
set(_rz_arch_DEPENDENCIES rz_bin rz_config rz_cons rz_crypto rz_diff rz_flag rz_hash rz_il rz_reg rz_search rz_syscall rz_type rz_util)
set(rz_arch_PLUGINDIR lib\\rizin\\plugins)

include(CMakeFindDependencyMacro)
get_filename_component(_rizin_cmake_path "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(_rz_arch_DEPENDENCY_TARGETS)
foreach(_module_dep ${_rz_arch_DEPENDENCIES})
  if (NOT ${_module_dep}_FOUND)
    find_dependency(${_module_dep} PATHS ${_rizin_cmake_path} NO_DEFAULT_PATH)
  endif()

  if (NOT ${_module_dep}_FOUND)
    set(rz_arch_FOUND False)
    return()
  endif()

  list(APPEND rz_arch_INCLUDE_DIRS "${${_module_dep}_INCLUDE_DIRS}")
  list(APPEND rz_arch_LIBRARIES "${${_module_dep}_LIBRARIES}")
  list(APPEND _rz_arch_DEPENDENCY_TARGETS "${_module_dep}::${_module_dep}")
endforeach()

list(REMOVE_DUPLICATES rz_arch_INCLUDE_DIRS)
list(REMOVE_DUPLICATES rz_arch_LIBRARIES)

if(NOT TARGET rz_arch::rz_arch)
  add_library(rz_arch::rz_arch SHARED IMPORTED)
  target_link_libraries(rz_arch::rz_arch INTERFACE ${_rz_arch_DEPENDENCY_TARGETS})
  set_target_properties(rz_arch::rz_arch PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${rz_arch_INCLUDE_DIRS}")
  set_target_properties(rz_arch::rz_arch PROPERTIES
    IMPORTED_LOCATION "${rz_arch_LIBRARY}")
endif()
set(rz_arch_TARGET rz_arch::rz_arch)
