################################################################################
#
# This module provides the following imported targets, if found:
#
#  rz_il::rz_il
#
# This file is intended to be consumed by clients who wish to use rz_il from CMake.
# The recommended way to use find this module is using `find_package(Rizin COMPONENTS ...)`.
#
# Provides the following variables
# rz_il_FOUND        - Flag for indicating that rz_il package has been found
# rz_il_VERSION      - Version of rz_il
# rz_il_INCLUDE_DIRS - Directories to include
# rz_il_LIBRARY      - Path to the single library that this module represents, without dependencies
# rz_il_LIBRARIES    - Libraries to link
# rz_il_LIBRARY_DIRS - Library directories to search for link libraries
# rz_il_PLUGINDIR    - Directory where plugins are placed, without the prefix part
#
################################################################################

set(RIZIN_MODULE_PREFIXED rz_il)
set(rz_il_VERSION 0.9.0)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set(rz_il_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include\\librz" "${PACKAGE_PREFIX_DIR}/include\\librz/sdb")
set_and_check(rz_il_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib")
find_library(rz_il_LIBRARY NAMES rz_il HINTS "${rz_il_LIBRARY_DIRS}" NO_DEFAULT_PATH REQUIRED)
set(rz_il_LIBRARIES "${rz_il_LIBRARY}")
set(_rz_il_DEPENDENCIES rz_util rz_reg)
set(rz_il_PLUGINDIR lib\\rizin\\plugins)

include(CMakeFindDependencyMacro)
get_filename_component(_rizin_cmake_path "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(_rz_il_DEPENDENCY_TARGETS)
foreach(_module_dep ${_rz_il_DEPENDENCIES})
  if (NOT ${_module_dep}_FOUND)
    find_dependency(${_module_dep} PATHS ${_rizin_cmake_path} NO_DEFAULT_PATH)
  endif()

  if (NOT ${_module_dep}_FOUND)
    set(rz_il_FOUND False)
    return()
  endif()

  list(APPEND rz_il_INCLUDE_DIRS "${${_module_dep}_INCLUDE_DIRS}")
  list(APPEND rz_il_LIBRARIES "${${_module_dep}_LIBRARIES}")
  list(APPEND _rz_il_DEPENDENCY_TARGETS "${_module_dep}::${_module_dep}")
endforeach()

list(REMOVE_DUPLICATES rz_il_INCLUDE_DIRS)
list(REMOVE_DUPLICATES rz_il_LIBRARIES)

if(NOT TARGET rz_il::rz_il)
  add_library(rz_il::rz_il SHARED IMPORTED)
  target_link_libraries(rz_il::rz_il INTERFACE ${_rz_il_DEPENDENCY_TARGETS})
  set_target_properties(rz_il::rz_il PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${rz_il_INCLUDE_DIRS}")
  set_target_properties(rz_il::rz_il PROPERTIES
    IMPORTED_LOCATION "${rz_il_LIBRARY}")
endif()
set(rz_il_TARGET rz_il::rz_il)
