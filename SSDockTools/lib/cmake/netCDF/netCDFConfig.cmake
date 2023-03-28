# NetCDF Configuration Summary
#
# General
#

####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was netCDFConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

####################################################################################

set(NetCDFVersion "4.8.1")
set_and_check(netCDF_INSTALL_PREFIX "${PACKAGE_PREFIX_DIR}")
set_and_check(netCDF_INCLUDE_DIR "${PACKAGE_PREFIX_DIR}/include")
set_and_check(netCDF_LIB_DIR "${PACKAGE_PREFIX_DIR}/lib")

set(netCDF_LIBRARIES netCDF::netcdf)

# include target information
include("${CMAKE_CURRENT_LIST_DIR}/netCDFTargets.cmake")

# Compiling Options
#
set(netCDF_C_COMPILER "x86_64-conda-linux-gnu-cc")
set(netCDF_C_COMPILER_FLAGS "-march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /home/rbetanzos/git-holcan/enviroments/SSDockTools/include -fdebug-prefix-map=/croot/libnetcdf_1674627944371/work=/usr/local/src/conda/libnetcdf-4.8.1 -fdebug-prefix-map=/home/rbetanzos/git-holcan/enviroments/SSDockTools=/usr/local/src/conda-prefix -fno-strict-aliasing -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -march=nocona -mtune=haswell -ftree-vectorize -fPIC -fstack-protector-strong -fno-plt -O2 -ffunction-sections -pipe -isystem /home/rbetanzos/git-holcan/enviroments/SSDockTools/include -fdebug-prefix-map=/croot/libnetcdf_1674627944371/work=/usr/local/src/conda/libnetcdf-4.8.1 -fdebug-prefix-map=/home/rbetanzos/git-holcan/enviroments/SSDockTools=/usr/local/src/conda-prefix")
set(netCDF_C_CPP_FLAGS " ")
set(netCDF_LDFLAGS "-Wl,-O2 -Wl,--sort-common -Wl,--as-needed -Wl,-z,relro -Wl,-z,now -Wl,--disable-new-dtags -Wl,--gc-sections -Wl,-rpath,/home/rbetanzos/git-holcan/enviroments/SSDockTools/lib -Wl,-rpath-link,/home/rbetanzos/git-holcan/enviroments/SSDockTools/lib -L/home/rbetanzos/git-holcan/enviroments/SSDockTools/lib ")
set(netCDF_AM_CFLAGS "")
set(netCDF_AM_CPPFLAGS "")
set(netCDF_AM_LDFLAGS "")
set(netCDF_SHARED yes)
set(netCDF_STATIC no)

# Features:
#
set(netCDF_HAS_NC2 yes)
set(netCDF_HAS_NC4 yes)
set(netCDF_HAS_HDF4 yes)
set(netCDF_HAS_HDF5 yes)
set(netCDF_HAS_PNETCDF no)
set(netCDF_HAS_PARALLEL no)
set(netCDF_HAS_DAP yes)
set(netCDF_HAS_DAP2 yes)
set(netCDF_HAS_DAP4 yes)
set(netCDF_HAS_DISKLESS yes)
set(netCDF_HAS_MMAP yes)
set(netCDF_HAS_JNA no)
