rm -rf build
mkdir build
cd build
cmake .. -DCMAKE_TOOLCHAIN_FILE=../utils/cmake_toolchain_gcc.cmake
time cmake --build .
