#!/bin/bash

# Option 1: Display current umask value
echo "Option 1: Display current umask value"
umask
echo "----------------------------------"

# Option 2: Set umask value and display
echo "Option 2: Set umask value and display"
umask 022
echo "Current umask value: $(umask)"
echo "----------------------------------"

# Option 3: Read umask value from user input
echo "Option 3: Read umask value from user input"
read -p "Enter umask value: " umask_value
umask $umask_value
echo "Current umask value: $(umask)"




















