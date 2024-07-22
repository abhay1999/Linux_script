#!/bin/bash

# Create a sample text file for demonstration
cat <<EOF > sample.txt
This is line 1 of the sample text file.
This is line 2 of the sample text file.
This is line 3 of the sample text file.
This is line 4 of the sample text file.
This is line 5 of the sample text file.
EOF

# Option 1: Display contents of a file
echo "Option 1: Display contents of a file"
echo "cat sample.txt:"
cat sample.txt
echo "----------------------------------"

# Option 2: Display line numbers along with contents
echo "Option 2: Display line numbers along with contents"
echo "cat -n sample.txt:"
cat -n sample.txt
echo "----------------------------------"

# Option 3: Display all content in a single line
echo "Option 3: Display all content in a single line"
echo "cat -s sample.txt:"
cat -s sample.txt
echo "----------------------------------"

# Option 4: Redirect output to a new file using '>'
echo "Option 4: Redirect output to a new file using '>"
cat sample.txt > newfile.txt
echo "Contents of newfile.txt:"
cat newfile.txt
echo "----------------------------------"

# Option 5: Append output to an existing file using '>>'
echo "Option 5: Append output to an existing file using '>>'"
cat sample.txt >> newfile.txt
echo "Updated contents of newfile.txt:"
cat newfile.txt
echo "----------------------------------"

# Clean up: Remove the sample text file and the new file
rm sample.txt newfile.txt

