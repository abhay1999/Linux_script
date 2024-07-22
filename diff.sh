#!/bin/bash

# Create two sample files with lists of countries
cat <<EOF > fileA.txt
List of countries in file A:
1. United States
2. Canada
3. United Kingdom
4. Germany
5. France
EOF

cat <<EOF > fileB.txt
List of countries in file B:
1. United States
2. Canada
3. Mexico
4. Germany
5. Spain
6. India
7. Russia
EOF

echo "Original content of fileA.txt:"
cat fileA.txt
echo "----------------------------------"
echo "Original content of fileB.txt:"
cat fileB.txt
echo "----------------------------------"

# Using diff to show differences between fileA.txt and fileB.txt
echo "Command: diff fileA.txt fileB.txt"
echo "Differences between fileA.txt and fileB.txt:"
diff fileA.txt fileB.txt
echo "----------------------------------"

# Using diff -y to show side-by-side differences
echo "Command: diff -y fileA.txt fileB.txt"
echo "Side-by-side differences between fileA.txt and fileB.txt:"
diff -y fileA.txt fileB.txt
echo "----------------------------------"

# Using diff -u to show unified diff
echo "Command: diff -u fileA.txt fileB.txt"
echo "Unified diff between fileA.txt and fileB.txt:"
diff -u fileA.txt fileB.txt
echo "----------------------------------"

# Clean up: Remove sample files created
rm fileA.txt fileB.txt

