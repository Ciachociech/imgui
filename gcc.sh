#!/bin/bash

# Clean and prepare build directory
rm -rf build
mkdir build
cd build

# Configure the project
cmake .. -DCMAKE_TOOLCHAIN_FILE=../utils/cmake_toolchain_gcc.cmake

# Temporary file to capture output
temp_file=$(mktemp)

if [ $# -ge 1 ]; then
    # Use 'time' and save all output to a temporary file
    { time cmake --build .; } 2>&1 | tee -a "$temp_file"
    
    # Extract and save only the last 3 lines (timing information) to the specified file
    tail -n 3 "$temp_file" >> "../$1"
    
    # Remove the temporary file
    rm "$temp_file"
else
    # Just build without 'time' and output to the console
    cmake --build .
fi
