#!/bin/bash

# Create a sample log file for demonstration
cat <<EOF > logfile.txt
Line 1: This is the first line of the log.
Line 2: This is the second line of the log.
Line 3: This is the third line of the log.
Line 4: This is the fourth line of the log.
Line 5: This is the fifth line of the log.
Line 6: This is the sixth line of the log.
Line 7: This is the seventh line of the log.
Line 8: This is the eighth line of the log.
Line 9: This is the ninth line of the log.
Line 10: This is the tenth line of the log.
Line 11: This is the eleventh line of the log.
Line 12: This is the twelfth line of the log.
Line 13: This is the thirteenth line of the log.
Line 14: This is the fourteenth line of the log.
Line 15: This is the fifteenth line of the log.
Line 16: This is the sixteenth line of the log.
Line 17: This is the seventeenth line of the log.
Line 18: This is the eighteenth line of the log.
Line 19: This is the nineteenth line of the log.
Line 20: This is the twentieth line of the log.
Line 21: This is the twenty-first line of the log.
Line 22: This is the twenty-second line of the log.
Line 23: This is the twenty-third line of the log.
Line 24: This is the twenty-fourth line of the log.
Line 25: This is the twenty-fifth line of the log.
Line 26: This is the twenty-sixth line of the log.
Line 27: This is the twenty-seventh line of the log.
Line 28: This is the twenty-eighth line of the log.
Line 29: This is the twenty-ninth line of the log.
Line 30: This is the thirtieth line of the log.
EOF

# Option 1: Using tail -f to continuously display new lines added to a file
echo "Option 1: Using tail -f to continuously display new lines added to a file"
echo "Appending additional lines to logfile.txt"

# Append additional 30 lines to the log file
for ((i=31; i<=60; i++))
do
	    echo "Line $i: This is line $i of the log." >> logfile.txt
    done

    # Display the output of tail -f in background to show the continuous output
    tail -f logfile.txt &

    # Wait for a few seconds to demonstrate tail -f output
    sleep 3

    # Option 2: Using tail -n to display last n lines of a file
    echo "----------------------------------"
    echo "Option 2: Using tail -n to display last n lines of a file (n=5)"
    tail -n 5 logfile.txt

    # Option 3: Using tail -n +10 to display lines starting from the 10th line
    echo "----------------------------------"
    echo "Option 3: Using tail -n +10 to display lines starting from the 10th line"
    tail -n +10 logfile.txt

    # Clean up: Remove the sample log file
    rm logfile.txt

