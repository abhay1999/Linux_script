#!/bin/bash

# Option 1: Basic usage to print a simple message
echo "Option 1: Basic usage"
echo "Hello, World!"
echo "----------------------------------"

# Option 2: Printing without newline (using -n option)
echo "Option 2: Printing without newline (-n)"
echo -n "Hello, "
echo "World!"
echo "----------------------------------"

# Option 3: Printing to standard error (using >&2)
echo "Option 3: Printing to standard error (stderr)"
echo "This is an error message" >&2
echo "----------------------------------"

# Option 4: Printing text to a file (using redirection)
echo "Option 4: Printing text to a file (redirection)"
echo "This is some text that will be saved in a file." > output.txt
echo "Check the file 'output.txt' for the content."
echo "----------------------------------"

# Option 5: Printing command line arguments (using $@)
echo "Option 5: Printing command line arguments (\$@)"
echo "Arguments provided to the script are: $@"
echo "----------------------------------"

# Displaying the PATH variable
echo "Displaying the PATH variable:"
echo "$PATH"
echo "----------------------------------"

# Using echo* to match files starting with echo in the current directory
echo "Using echo* files in the current directory:"
echo *
echo "----------------------------------"

# Using echo o* to match files starting with 'o' in the current directory
echo "Using echo s* to match files starting with 's' in the current directory:"
echo s*
echo "----------------------------------"

# Using echo ~ to print the home directory of the current user
echo "Using echo ~ to print the home directory of the current user:"
echo ~
echo "----------------------------------"

