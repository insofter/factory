#!/bin/bash

cd ${ICDTCP3_DIR}/arm_icd_compilation

cat << ICD_TOOLCHAINFILE > icd_toolchainfile.cmake
set(CMAKE_C_COMPILER ${ICDTCP3_DIR}/buildroot/output/host/usr/bin/arm-unknown-linux-uclibcgnueabi-gcc)
set(CMAKE_CXX_COMPILER ${ICDTCP3_DIR}/buildroot/output/host/usr/bin/arm-unknown-linux-uclibcgnueabi-g++)
set(CMAKE_C_FLAGS "\${CMAKE_C_FLAGS} -pipe -Os " CACHE STRING "Icd CFLAGS" FORCE)
set(CMAKE_CXX_FLAGS "\${CMAKE_CXX_FLAGS} -pipe -Os " CACHE STRING "Icd CXXFLAGS" FORCE)
set(CMAKE_INSTALL_SO_NO_EXE 0)
set(CMAKE_PROGRAM_PATH "${ICDTCP3_DIR}/buildroot/output/host/usr/bin")
set(CMAKE_FIND_ROOT_PATH "${ICDTCP3_DIR}/buildroot/output/host/usr/arm-unknown-linux-uclibcgnueabi/sysroot")
set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(ENV{PKG_CONFIG_SYSROOT_DIR} "${ICDTCP3_DIR}/buildroot/output/host/usr/arm-unknown-linux-uclibcgnueabi/sysroot")
ICD_TOOLCHAINFILE


cmake ../icd/ -DCMAKE_INSTALL_PREFIX=/usr -DCMAKE_TOOLCHAIN_FILE=icd_toolchainfile.cmake

