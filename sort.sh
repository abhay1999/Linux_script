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

# Print the original list of dog names
echo "Original list of dog names:"
echo "$dog_names"
echo "----------------------------------"

# Sort in ascending order (-n option)
echo "Sorted in ascending order (-n):"
echo "$dog_names" | sort -n
echo "----------------------------------"

# Sort uniquely (-u option), removing duplicates
echo "Sorted in ascending order, unique entries only (-u):"
echo "$dog_names" | sort -u
echo "----------------------------------"

# Sort in descending order (-r option)
echo "Sorted in descending order (-r):"
echo "$dog_names" | sort -r
echo "----------------------------------"

