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
set(CPACK_BUILD_SOURCE_DIRS "/home/h99hood/Рабочий стол/newfng backup 18.06 21:42/refng;/home/h99hood/Рабочий стол/newfng backup 18.06 21:42/refng/build")
set(CPACK_CMAKE_GENERATOR "Unix Makefiles")
set(CPACK_COMPONENTS_ALL "portable")
set(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
set(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-3.22/Templates/CPack.GenericDescription.txt")
set(CPACK_DEFAULT_PACKAGE_DESCRIPTION_SUMMARY "fng built using CMake")
set(CPACK_GENERATOR "TGZ;TXZ")
set(CPACK_INSTALL_CMAKE_PROJECTS "/home/h99hood/Рабочий стол/newfng backup 18.06 21:42/refng/build;fng;ALL;/")
set(CPACK_INSTALL_PREFIX "/usr/local")
set(CPACK_MODULE_PATH "/home/h99hood/Рабочий стол/newfng backup 18.06 21:42/refng/cmake")
set(CPACK_NSIS_DISPLAY_NAME "fng 0.6.5")
set(CPACK_NSIS_INSTALLER_ICON_CODE "")
set(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
set(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
set(CPACK_NSIS_PACKAGE_NAME "fng 0.6.5")
set(CPACK_NSIS_UNINSTALL_NAME "Uninstall")
set(CPACK_OUTPUT_CONFIG_FILE "/home/h99hood/Рабочий стол/newfng backup 18.06 21:42/refng/build/CPackConfig.cmake")
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
set(CPACK_SOURCE_IGNORE_FILES "\\.o$;\\.pyc$;/\\.git;/__pycache__/;/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/([^Cbccdlorsss]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/C([^M]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/b([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/c([^mo]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/d([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/l([^i]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/o([^t]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/r([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/s([^crt]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CM([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/ba([^m]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/cm([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/co([^n]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/da([^t]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/li([^c]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/ot([^h]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/re([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/sc([^r]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/sr([^c]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/st([^o]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMa([^k]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/bam([^.]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/cma([^k]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/con([^f]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/dat([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/lic([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/oth([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/rea([^d]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/scr([^i]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/src([^/]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/sto([^r]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMak([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/bam\\.([^l]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/cmak([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/conf([^i]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/data([^s]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/lice([^n]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/othe([^r]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/read([^m]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/scri([^p]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/stor([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMake([^L]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/bam\\.l([^u]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/cmake([^/]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/confi([^g]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/datas([^r]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/licen([^s]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/other([^/]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/readm([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/scrip([^t]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/stora([^g]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeL([^i]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/bam\\.lu([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/config([^u]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/datasr([^c]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/licens([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/readme([^.]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/script([^s]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/storag([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeLi([^s]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/configu([^r]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/datasrc([^/]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/license([^.]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/readme\\.([^m]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/scripts([^/]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/storage([^.]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeLis([^t]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/configur([^e]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/license\\.([^t]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/readme\\.m([^d]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/storage\\.([^c]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeList([^s]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/configure([^.]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/license\\.t([^x]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/storage\\.c([^f]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeLists([^.]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/configure\\.([^l]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/license\\.tx([^t]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/storage\\.cf([^g]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeLists\\.([^t]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/configure\\.l([^u]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeLists\\.t([^x]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/configure\\.lu([^a]|$);/home/h99hood/Рабочий стол/newfng backup 18\\.06 21:42/refng/CMakeLists\\.tx([^t]|$)")
set(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/h99hood/Рабочий стол/newfng backup 18.06 21:42/refng/build/CPackSourceConfig.cmake")
set(CPACK_SOURCE_PACKAGE_FILE_NAME "fng-0.6.5-src")
set(CPACK_STRIP_FILES "TRUE")
set(CPACK_SYSTEM_NAME "linux_x86_64")
set(CPACK_THREADS "1")
set(CPACK_TOPLEVEL_TAG "linux_x86_64")
set(CPACK_WIX_SIZEOF_VOID_P "8")

if(NOT CPACK_PROPERTIES_FILE)
  set(CPACK_PROPERTIES_FILE "/home/h99hood/Рабочий стол/newfng backup 18.06 21:42/refng/build/CPackProperties.cmake")
endif()

if(EXISTS ${CPACK_PROPERTIES_FILE})
  include(${CPACK_PROPERTIES_FILE})
endif()
