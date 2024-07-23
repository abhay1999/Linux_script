#!/bin/bash

# Demonstration of chown command in Unix/Linux systems

# Create example files and directories
touch file1.txt file2.txt file3.txt
mkdir example_dir

# Example 1: Change owner
echo "Example 1: Change owner"

# Change owner of a file to user 'newuser'
# Note: Replace 'newuser' with an actual username on your system
chown newuser file1.txt
echo "Changed owner of file1.txt to newuser"
ls -l file1.txt

# Example 2: Change owner and group
echo "Example 2: Change owner and group"

# Change owner to 'newuser' and group to 'newgroup'
# Note: Replace 'newuser' and 'newgroup' with actual user and group names on your system
chown newuser:newgroup file2.txt
echo "Changed owner and group of file2.txt to newuser:newgroup"
ls -l file2.txt

# Example 3: Recursive change
echo "Example 3: Recursive change"

# Change owner and group of a directory and its contents recursively
# Note: Replace 'newuser' and 'newgroup' with actual user and group names on your system
chown -R newuser:newgroup example_dir
echo "Changed owner and group of example_dir and its contents recursively to newuser:newgroup"
ls -ld example_dir
ls -l example_dir

# Example 4: Change group only
echo "Example 4: Change group only"

# Change group of a file to 'newgroup'
# Note: Replace 'newgroup' with an actual group name on your system
chown :newgroup file3.txt
echo "Changed group of file3.txt to newgroup"
ls -l file3.txt

# Example 5: Using --reference to apply ownership
echo "Example 5: Using --reference"

# Change owner and group of file1.txt to match those of file3.txt
chown --reference=file3.txt file1.txt
echo "Changed owner and group of file1.txt to match those of file3.txt"
ls -l file1.txt

# Cleanup
rm file1.txt file2.txt file3.txt
rmdir example_dir

echo "Script execution completed."

