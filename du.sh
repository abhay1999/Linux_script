#!/bin/bash

# Option 1: Using du to display disk usage of current directory
echo "Option 1: Using du to display disk usage of current directory"
du
echo "----------------------------------"

# Option 2: Using du * to display disk usage of files and directories in current directory
echo "Option 2: Using du * to display disk usage of files and directories in current directory"
du *
echo "----------------------------------"

# Option 3: Using du -m to display disk usage in megabytes
echo "Option 3: Using du -m to display disk usage in megabytes"
du -m
echo "----------------------------------"

# Option 4: Using du -g to display disk usage in gigabytes
echo "Option 4: Using du -g to display disk usage in gigabytes"
du -g
echo "----------------------------------"

# Option 5: Using du -h to display disk usage in human-readable format
echo "Option 5: Using du -h to display disk usage in human-readable format"
du -h
echo "----------------------------------"

# Option 6: Using du -a to display disk usage of all files and directories
echo "Option 6: Using du -a to display disk usage of all files and directories"
du -a
echo "----------------------------------"

