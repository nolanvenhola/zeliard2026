################################################################################
#
# This module provides the following imported targets, if found:
#
#  rz_core::rz_core
#
# This file is intended to be consumed by clients who wish to use rz_core from CMake.
# The recommended way to use find this module is using `find_package(Rizin COMPONENTS ...)`.
#
# Provides the following variables
# rz_core_FOUND        - Flag for indicating that rz_core package has been found
# rz_core_VERSION      - Version of rz_core
# rz_core_INCLUDE_DIRS - Directories to include
# rz_core_LIBRARY      - Path to the single library that this module represents, without dependencies
# rz_core_LIBRARIES    - Libraries to link
# rz_core_LIBRARY_DIRS - Library directories to search for link libraries
# rz_core_PLUGINDIR    - Directory where plugins are placed, without the prefix part
#
################################################################################

set(RIZIN_MODULE_PREFIXED rz_core)
set(rz_core_VERSION 0.9.0)

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../.." ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

set(rz_core_INCLUDE_DIRS "${PACKAGE_PREFIX_DIR}/include\\librz" "${PACKAGE_PREFIX_DIR}/include\\librz/sdb")
set_and_check(rz_core_LIBRARY_DIRS "${PACKAGE_PREFIX_DIR}/lib")
find_library(rz_core_LIBRARY NAMES rz_core HINTS "${rz_core_LIBRARY_DIRS}" NO_DEFAULT_PATH REQUIRED)
set(rz_core_LIBRARIES "${rz_core_LIBRARY}")
set(_rz_core_DEPENDENCIES rz_magic rz_util rz_demangler rz_diff rz_reg rz_syscall rz_search rz_cons rz_socket rz_type rz_io rz_lang rz_hash rz_flag rz_mark rz_egg rz_debug rz_crypto rz_config rz_bin rz_arch rz_sign rz_il)
set(rz_core_PLUGINDIR lib\\rizin\\plugins)

include(CMakeFindDependencyMacro)
get_filename_component(_rizin_cmake_path "${CMAKE_CURRENT_LIST_DIR}/.." ABSOLUTE)
set(_rz_core_DEPENDENCY_TARGETS)
foreach(_module_dep ${_rz_core_DEPENDENCIES})
  if (NOT ${_module_dep}_FOUND)
    find_dependency(${_module_dep} PATHS ${_rizin_cmake_path} NO_DEFAULT_PATH)
  endif()

  if (NOT ${_module_dep}_FOUND)
    set(rz_core_FOUND False)
    return()
  endif()

  list(APPEND rz_core_INCLUDE_DIRS "${${_module_dep}_INCLUDE_DIRS}")
  list(APPEND rz_core_LIBRARIES "${${_module_dep}_LIBRARIES}")
  list(APPEND _rz_core_DEPENDENCY_TARGETS "${_module_dep}::${_module_dep}")
endforeach()

list(REMOVE_DUPLICATES rz_core_INCLUDE_DIRS)
list(REMOVE_DUPLICATES rz_core_LIBRARIES)

if(NOT TARGET rz_core::rz_core)
  add_library(rz_core::rz_core SHARED IMPORTED)
  target_link_libraries(rz_core::rz_core INTERFACE ${_rz_core_DEPENDENCY_TARGETS})
  set_target_properties(rz_core::rz_core PROPERTIES
    INTERFACE_INCLUDE_DIRECTORIES "${rz_core_INCLUDE_DIRS}")
  set_target_properties(rz_core::rz_core PROPERTIES
    IMPORTED_LOCATION "${rz_core_LIBRARY}")
endif()
set(rz_core_TARGET rz_core::rz_core)
