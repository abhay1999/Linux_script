#!/bin/bash

# Demonstration of chmod command in Unix/Linux systems

# Create example files
touch file1.txt file2.txt file3.txt script.sh

# Example 1: Symbolic Mode
echo "Example 1: Symbolic Mode"

# Add execute permission for the owner
chmod u+x script.sh
echo "Added execute permission for the owner of script.sh"
ls -l script.sh

# Remove write permission for the group
chmod g-w file1.txt
echo "Removed write permission for the group of file1.txt"
ls -l file1.txt

# Set read-only permission for others
chmod o=r file2.txt
echo "Set read-only permission for others for file2.txt"
ls -l file2.txt

# Add read permission for everyone
chmod a+r file3.txt
echo "Added read permission for everyone for file3.txt"
ls -l file3.txt

# Example 2: Numeric (Octal) Mode
echo "Example 2: Numeric (Octal) Mode"

# Set permissions to rwxr-xr-x (755)
chmod 755 script.sh
echo "Set permissions to rwxr-xr-x (755) for script.sh"
ls -l script.sh

# Set permissions to rw-r--r-- (644)
chmod 644 file1.txt
echo "Set permissions to rw-r--r-- (644) for file1.txt"
ls -l file1.txt

# Set permissions to rwx------ (700)
chmod 700 file2.txt
echo "Set permissions to rwx------ (700) for file2.txt"
ls -l file2.txt

# Set permissions to rwxrwxrwx (777)
chmod 777 file3.txt
echo "Set permissions to rwxrwxrwx (777) for file3.txt"
ls -l file3.txt

# Practical Examples
echo "Practical Examples"

# Making a script executable
chmod +x script.sh
echo "Made script.sh executable"
ls -l script.sh

# Setting read and write permissions for the owner only
chmod 600 file1.txt
echo "Set read and write permissions for the owner only for file1.txt"
ls -l file1.txt

# Removing write permissions for group and others
chmod go-w file2.txt
echo "Removed write permissions for group and others for file2.txt"
ls -l file2.txt

# Allowing everyone to read a file
chmod a+r file3.txt
echo "Allowed everyone to read file3.txt"
ls -l file3.txt

# Cleanup
rm file1.txt file2.txt file3.txt script.sh

echo "Script execution completed."

