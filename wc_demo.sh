
n to create a sample text file
create_sample_file() {
echo "Creating a sample text file..."
cat <<EOL > sample.txt
Line 1: Hello World    # -l (line count)
Line 2: This is a sample file    # -w (word count)
Line 3: It contains multiple lines of text    # -c (byte count)
Line 4: To demonstrate wc command options    # -m (character count)
Line 5: Each line will be counted    # -L (max line length)
Line 6: Words and bytes will also be counted    # -l, -w, -c
Line 7: This file will help in showcasing various wc options    # Multiple options
Line 8: End of the file
EOL
}

# Function to demonstrate wc with default options
demonstrate_wc() {
echo "Using 'wc' with default options:"
wc sample.txt
echo ""
}

# Function to demonstrate wc with line count option
demonstrate_wc_l() {
echo "Using 'wc -l' to count lines in 'sample.txt':"
wc -l sample.txt
echo ""
}

# Function to demonstrate wc with word count option
demonstrate_wc_w() {
echo "Using 'wc -w' to count words in 'sample.txt':"
wc -w sample.txt
echo ""
}

# Function to demonstrate wc with byte count option
demonstrate_wc_c() {
echo "Using 'wc -c' to count bytes in 'sample.txt':"
wc -c sample.txt
echo ""
}

# Function to demonstrate wc with character count option
demonstrate_wc_m() {
echo "Using 'wc -m' to count characters in 'sample.txt':"
wc -m sample.txt
echo ""
}

# Function to demonstrate wc with max line length option
demonstrate_wc_L() {
echo "Using 'wc -L' to find the length of the longest line in 'sample.txt':"
wc -L sample.txt
echo ""
}

# Function to demonstrate wc with multiple files
demonstrate_wc_multiple() {
echo "Using 'wc' with multiple files:"
echo "Contents of sample.txt:"
cat sample.txt
echo ""
echo "Using 'wc' with an additional empty file 'empty.txt':"
touch empty.txt
wc sample.txt empty.txt
echo ""
}

# Function to display menu and handle user input
display_menu() {
echo "Choose an option:"
echo "1. Create sample file"
echo "2. Default wc usage"
echo "3. Line count (-l)"
echo "4. Word count (-w)"
echo "5. Byte count (-c)"
echo "6. Character count (-m)"
echo "7. Max line length (-L)"
echo "8. Multiple files"
echo "9. Clean up files"
echo "10. Exit"

read -p "Enter your choice [1-10]: " choice

case $choice in
1) create_sample_file ;;
2) demonstrate_wc ;;
3) demonstrate_wc_l ;;
4) demonstrate_wc_w ;;
5) demonstrate_wc_c ;;
6) demonstrate_wc_m ;;
7) demonstrate_wc_L ;;
8) demonstrate_wc_multiple ;;
9) rm -f sample.txt empty.txt; echo "Sample files cleaned up." ;;
10) echo "Exiting."; exit 0 ;;
*) echo "Invalid choice. Please select a number between 1 and 10." ;;
esac
}

# Main script
create_sample_file  # Create sample file initially
while true; do
display_menu
done

