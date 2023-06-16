# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


set(CPACK_ARCHIVE_COMPONENT_INSTALL "ON")
set(CPACK_ARCHIVE_PORTABLE_FILE_NAME "fng-0.6.5-linux_x86_64")
set(CPACK_BUILD_SOURCE_DIRS "/home/h99hood/Рабочий стол/newfng backup/refng;/home/h99hood/Рабочий стол/newfng backup/refng/build")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "portable")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "fng built using CMake")
set(CPACK_GENERATOR "TGZ;TXZ")
set(CPACK_INSTALL_CMAKE_PROJECTS "/home/h99hood/Рабочий стол/newfng backup/refng/build;fng;ALL;/")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/home/h99hood/Рабочий стол/newfng backup/refng/cmake")
set(CPACK_NSIS_DISPLAY_NAME "fng 0.6.5")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "fng 0.6.5")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "/home/h99hood/Рабочий стол/newfng backup/refng/build/CPackConfig.cmake")
set(CPACK_PACKAGE_DEFAULT_LOCATION "/")
set(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "fng built using CMake")
set(CPACK_PACKAGE_FILE_NAME "fng-0.6.5-linux_x86_64")
set(CPACK_PACKAGE_INSTALL_DIRECTORY "fng 0.6.5")
set(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "fng 0.6.5")
set(CPACK_PACKAGE_NAME "fng")
set(CPACK_PACKAGE_RELOCATABLE "true")
set(CPACK_PACKAGE_VENDOR "Humanity")
set(CPACK_PACKAGE_VERSION "0.6.5")
set(CPACK_PACKAGE_VERSION_MAJOR "0")
set(CPACK_PACKAGE_VERSION_MINOR "6")
set(CPACK_PACKAGE_VERSION_PATCH "5")
set(CPACK_RESOURCE_FILE_LICENSE "/usr/share/cmake-3.22/Templates/CPack.GenericLicense.txt")
set(CPACK_RESOURCE_FILE_README "/usr/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
set(CPACK_RESOURCE_FILE_WELCOME "/usr/share/cmake-3.22/Templates/CPack.GenericWelcome.txt")
set(CPACK_SET_DESTDIR "OFF")
set(CPACK_SOURCE_GENERATOR "ZIP;TGZ;TBZ2;TXZ")
set(CPACK_SOURCE_IGNORE_FILES "\\.o$;\\.pyc$;/\\.git;/__pycache__/;/home/h99hood/Рабочий стол/newfng backup/refng/([^Cbccdlorsss]|$);/home/h99hood/Рабочий стол/newfng backup/refng/C([^M]|$);/home/h99hood/Рабочий стол/newfng backup/refng/b([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/c([^mo]|$);/home/h99hood/Рабочий стол/newfng backup/refng/d([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/l([^i]|$);/home/h99hood/Рабочий стол/newfng backup/refng/o([^t]|$);/home/h99hood/Рабочий стол/newfng backup/refng/r([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/s([^crt]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CM([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/ba([^m]|$);/home/h99hood/Рабочий стол/newfng backup/refng/cm([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/co([^n]|$);/home/h99hood/Рабочий стол/newfng backup/refng/da([^t]|$);/home/h99hood/Рабочий стол/newfng backup/refng/li([^c]|$);/home/h99hood/Рабочий стол/newfng backup/refng/ot([^h]|$);/home/h99hood/Рабочий стол/newfng backup/refng/re([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/sc([^r]|$);/home/h99hood/Рабочий стол/newfng backup/refng/sr([^c]|$);/home/h99hood/Рабочий стол/newfng backup/refng/st([^o]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMa([^k]|$);/home/h99hood/Рабочий стол/newfng backup/refng/bam([^.]|$);/home/h99hood/Рабочий стол/newfng backup/refng/cma([^k]|$);/home/h99hood/Рабочий стол/newfng backup/refng/con([^f]|$);/home/h99hood/Рабочий стол/newfng backup/refng/dat([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/lic([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/oth([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/rea([^d]|$);/home/h99hood/Рабочий стол/newfng backup/refng/scr([^i]|$);/home/h99hood/Рабочий стол/newfng backup/refng/src([^/]|$);/home/h99hood/Рабочий стол/newfng backup/refng/sto([^r]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMak([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/bam\\.([^l]|$);/home/h99hood/Рабочий стол/newfng backup/refng/cmak([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/conf([^i]|$);/home/h99hood/Рабочий стол/newfng backup/refng/data([^s]|$);/home/h99hood/Рабочий стол/newfng backup/refng/lice([^n]|$);/home/h99hood/Рабочий стол/newfng backup/refng/othe([^r]|$);/home/h99hood/Рабочий стол/newfng backup/refng/read([^m]|$);/home/h99hood/Рабочий стол/newfng backup/refng/scri([^p]|$);/home/h99hood/Рабочий стол/newfng backup/refng/stor([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMake([^L]|$);/home/h99hood/Рабочий стол/newfng backup/refng/bam\\.l([^u]|$);/home/h99hood/Рабочий стол/newfng backup/refng/cmake([^/]|$);/home/h99hood/Рабочий стол/newfng backup/refng/confi([^g]|$);/home/h99hood/Рабочий стол/newfng backup/refng/datas([^r]|$);/home/h99hood/Рабочий стол/newfng backup/refng/licen([^s]|$);/home/h99hood/Рабочий стол/newfng backup/refng/other([^/]|$);/home/h99hood/Рабочий стол/newfng backup/refng/readm([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/scrip([^t]|$);/home/h99hood/Рабочий стол/newfng backup/refng/stora([^g]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeL([^i]|$);/home/h99hood/Рабочий стол/newfng backup/refng/bam\\.lu([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/config([^u]|$);/home/h99hood/Рабочий стол/newfng backup/refng/datasr([^c]|$);/home/h99hood/Рабочий стол/newfng backup/refng/licens([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/readme([^.]|$);/home/h99hood/Рабочий стол/newfng backup/refng/script([^s]|$);/home/h99hood/Рабочий стол/newfng backup/refng/storag([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeLi([^s]|$);/home/h99hood/Рабочий стол/newfng backup/refng/configu([^r]|$);/home/h99hood/Рабочий стол/newfng backup/refng/datasrc([^/]|$);/home/h99hood/Рабочий стол/newfng backup/refng/license([^.]|$);/home/h99hood/Рабочий стол/newfng backup/refng/readme\\.([^m]|$);/home/h99hood/Рабочий стол/newfng backup/refng/scripts([^/]|$);/home/h99hood/Рабочий стол/newfng backup/refng/storage([^.]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeLis([^t]|$);/home/h99hood/Рабочий стол/newfng backup/refng/configur([^e]|$);/home/h99hood/Рабочий стол/newfng backup/refng/license\\.([^t]|$);/home/h99hood/Рабочий стол/newfng backup/refng/readme\\.m([^d]|$);/home/h99hood/Рабочий стол/newfng backup/refng/storage\\.([^c]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeList([^s]|$);/home/h99hood/Рабочий стол/newfng backup/refng/configure([^.]|$);/home/h99hood/Рабочий стол/newfng backup/refng/license\\.t([^x]|$);/home/h99hood/Рабочий стол/newfng backup/refng/storage\\.c([^f]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeLists([^.]|$);/home/h99hood/Рабочий стол/newfng backup/refng/configure\\.([^l]|$);/home/h99hood/Рабочий стол/newfng backup/refng/license\\.tx([^t]|$);/home/h99hood/Рабочий стол/newfng backup/refng/storage\\.cf([^g]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeLists\\.([^t]|$);/home/h99hood/Рабочий стол/newfng backup/refng/configure\\.l([^u]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeLists\\.t([^x]|$);/home/h99hood/Рабочий стол/newfng backup/refng/configure\\.lu([^a]|$);/home/h99hood/Рабочий стол/newfng backup/refng/CMakeLists\\.tx([^t]|$)")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/h99hood/Рабочий стол/newfng backup/refng/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "fng-0.6.5-src")
set(CPACK_STRIP_FILES "TRUE")
set(CPACK_SYSTEM_NAME "linux_x86_64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "linux_x86_64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/h99hood/Рабочий стол/newfng backup/refng/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
