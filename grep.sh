#!/bin/bash

# Create a sample text file for demonstration
cat <<EOF > sample.txt
This is a sample text file.
It contains multiple lines of text.
This line has the keyword 'sample'.
Another line without the keyword.
EOF

# Option 1: Using grep to search for a keyword
echo "Option 1: Using grep to search for a keyword"
echo "Searching for 'sample':"
grep 'sample' sample.txt
echo "----------------------------------"

# Option 2: Using grep -n to display line numbers
echo "Option 2: Using grep -n to display line numbers"
echo "Searching for 'sample' with line numbers:"
grep -n 'sample' sample.txt
echo "----------------------------------"

# Option 3: Using grep -nC to display context lines
echo "Option 3: Using grep -nC to display context lines"
echo "Searching for 'sample' with context (3 lines before and after):"
grep -nC 3 'sample' sample.txt
echo "----------------------------------"

# Option 4: Using grep -v to invert match
echo "Option 4: Using grep -v to invert match"
echo "Searching for lines NOT containing 'sample':"
grep -v 'sample' sample.txt
echo "----------------------------------"

# Clean up: Remove the sample text file
rm sample.txt

