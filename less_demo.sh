#!/bin/bash

# Create a sample text file
echo "Creating a sample text file..."
cat <<EOL > sample.txt
Line 1: Hello World
Line 2: This is a test file
Line 3: Demonstrating less command functionalities
Line 4: You can navigate through the file
Line 5: Press 'q' to quit
Line 6: Use 'Space' to scroll down a page
Line 7: Use 'b' to scroll up a page
Line 8: Use 'g' to go to the beginning of the file
Line 9: Use 'G' to go to the end of the file
Line 10: Use '/' to search forward
Line 11: Use '?' to search backward
Line 12: Use 'n' to repeat the search in the same direction
Line 13: Use 'N' to repeat the search in the opposite direction
Line 14: Use '-N' to display line numbers
Line 15: Use '-i' for case-insensitive search
Line 16: Use '-S' to avoid wrapping long lines
Line 17: Use '-X' to avoid clearing the screen on exit
Line 18: Use '-r' to display raw control characters
Line 19: Use '+F' to follow the file as it grows (like tail -f)
Line 20: Use '+<number>' to start at a specific line number
EOL

# Function to demonstrate less command usage
demonstrate_less() {
	    echo "Opening 'sample.txt' with less. Press 'q' to quit and continue..."
	        less sample.txt
	}

# Function to demonstrate less command with line numbers
demonstrate_less_with_line_numbers() {
	    echo "Opening 'sample.txt' with line numbers. Press 'q' to quit and continue..."
	        less -N sample.txt
	}

# Function to demonstrate case-insensitive search
demonstrate_case_insensitive_search() {
	    echo "Opening 'sample.txt' with case-insensitive search. Try searching for 'hello' and 'HELLO'. Press 'q' to quit and continue..."
	        less -i sample.txt
	}

# Function to demonstrate starting at a specific line
demonstrate_start_at_line() {
	    echo "Opening 'sample.txt' starting at line 10. Press 'q' to quit and continue..."
	        less +10 sample.txt
	}

# Function to demonstrate avoiding line wrapping
demonstrate_no_line_wrap() {
	    echo "Opening 'sample.txt' without wrapping long lines. Press 'q' to quit and continue..."
	        less -S sample.txt
	}

# Function to demonstrate following the file
demonstrate_follow_file() {
	    echo "Opening 'sample.txt' with follow mode. Press 'Ctrl+C' to exit..."
	        less +F sample.txt
	}

# Main script
echo "Demonstrating basic usage of less command:"
demonstrate_less

echo "Demonstrating less command with line numbers:"
demonstrate_less_with_line_numbers

echo "Demonstrating case-insensitive search in less command:"
demonstrate_case_insensitive_search

echo "Demonstrating less command starting at a specific line:"
demonstrate_start_at_line

echo "Demonstrating less command without wrapping long lines:"
demonstrate_no_line_wrap

echo "Demonstrating less command in follow mode:"
demonstrate_follow_file

# Clean up
echo "Cleaning up the sample text file..."
rm sample.txt

echo "Script demonstration completed!"

