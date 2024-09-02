#!/bin/bash

if [ $# -eq 0 ]; then
   ./gcc.sh
elif [ $# -eq 2 ]; then
   # Define parameters
   log_file=$1
   num_runs=$2
   
   # Run the build script multiple times
   for ((i = 1; i <= num_runs; i++)); do
       echo "Run iteration $i"
       ./gcc.sh $log_file
       sleep 1  # Optional: Add a delay between runs if needed
   done

   echo "All runs completed. Results saved to '$log_file'."
fi



