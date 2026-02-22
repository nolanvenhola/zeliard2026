
####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was CutterConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

####################################################################################

set(Cutter_RIZIN_BUNDLED ON)

include(CMakeFindDependencyMacro)
find_dependency(Qt6 COMPONENTS Core;Widgets;Gui;Svg;Network;Core5Compat;SvgWidgets;OpenGLWidgets)
find_dependency(Rizin COMPONENTS Core)

# Make a best guess for a user location from where plugins can be loaded.
# This can be used in Cutter plugins like
# set(CUTTER_INSTALL_PLUGDIR "${Cutter_USER_PLUGINDIR}" CACHE STRING "Directory to install Cutter plugin into")
# see https://doc.qt.io/qt-5/qstandardpaths.html under AppDataLocation
if(APPLE)
    set(Cutter_USER_PLUGINDIR "$ENV{HOME}/Library/Application Support/rizin/cutter/plugins/native")
elseif(WIN32)
    file(TO_CMAKE_PATH "$ENV{APPDATA}" Cutter_USER_PLUGINDIR)
    set(Cutter_USER_PLUGINDIR "${Cutter_USER_PLUGINDIR}/rizin/cutter/plugins/native")
else()
    set(Cutter_USER_PLUGINDIR "$ENV{HOME}/.local/share/rizin/cutter/plugins/native")
endif()

include("${CMAKE_CURRENT_LIST_DIR}/CutterTargets.cmake")
