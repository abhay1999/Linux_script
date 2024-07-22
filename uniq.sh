#!/bin/bash

# Sample list of dog names (including duplicates)
dog_names="Labrador
Poodle
German Shepherd
Labrador
Beagle
Bulldog
Golden Retriever
Poodle
Chihuahua
Boxer
German Shepherd"

echo "Original list of dog names:"
echo "$dog_names"
echo "----------------------------------"

# Using uniq -d to show duplicate lines
echo "Command: sort | uniq -d"
echo "Duplicate dog names:"
echo "$dog_names" | sort | uniq -d
echo "----------------------------------"

# Using uniq -u to show unique lines
echo "Command: sort | uniq -u"
echo "Unique dog names:"
echo "$dog_names" | sort | uniq -u
echo "----------------------------------"

# Using uniq -c to count occurrences of each dog name
echo "Command: sort | uniq -c"
echo "Count of each dog name:"
echo "$dog_names" | sort | uniq -c
echo "----------------------------------"

# Using sort | uniq -c | sort -nr to sort by occurrence count in descending order
echo "Command: sort | uniq -c | sort -nr"
echo "Sorted by occurrence count (descending):"
echo "$dog_names" | sort | uniq -c | sort -nr
echo "----------------------------------"

