#!/bin/bash

# File name to change permissions
file="sort.sh"

# Desired permissions (e.g., 755 for read, write, execute for owner and read, execute for group and others)
permissions=644

# Check if the file exists
if [ -f "$file" ]; then
  # Change the permissions of the file
  chmod $permissions $file

  # Check if the chmod command was successful
  if [ $? -eq 0 ]; then
    echo "Permissions of $file have been changed to $permissions."
  else
    echo "Failed to change permissions of $file."
  fi
else
  echo "File $file does not exist."
fi


