#!/bin/bash

# Enable alias expansion in the script
shopt -s expand_aliases

# Define aliases equivalent to the functions
alias ll='ls -la'
alias cat='command cat --number'
alias sort='command sort -n'

# Print a message indicating the aliases have been set
echo "Aliases have been set:"
echo "  ll: Lists files with detailed information, including hidden files"
echo "  cat: Displays file content with line numbers"
echo "  sort: Sorts lines of text files numerically"
echo "--------------------------------------------------------------------------------"

# Demonstrate the use of the aliases

# Create a sample text file for demonstration
echo -e "\nStep 1: Creating a sample file named 'sample.txt' with some sample numbers..."
echo -e "10\n2\n30\n4" > sample.txt
echo -e "Sample file 'sample.txt' created with the following content:"
cat sample.txt
echo "--------------------------------------------------------------------------------------"

# Use the ll alias to list files
echo -e "\nStep 2: Listing files in the current directory using the 'll' alias:"
ll
echo "--------------------------------------------------------------------------------------"

# Use the cat alias to display the content of 'sample.txt'
echo -e "\nStep 3: Displaying the content of 'sample.txt' with line numbers using the 'cat' alias:"
cat sample.txt
echo "--------------------------------------------------------------------------------------"

# Use the sort alias to sort 'sample.txt' and display the result
echo -e "\nStep 4: Sorting the content of 'sample.txt' numerically and displaying the result using the 'sort' alias:"
sort sample.txt
echo "--------------------------------------------------------------------------------------"
