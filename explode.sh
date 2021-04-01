#!/bin/bash

FILE="$1"
FOLDER=$(dirname "$1")
FILENAME=$(basename "$1")
OUTPUTFOLDER=exploded_files

mkdir -p $OUTPUTFOLDER

# Get the list of commits for a file
# Print out Hash and Commiter date in ISO8601
# Get Hash, Date, and Time and store it in the COMMITS as a list of strings in the format HASH|DATE|TIME
COMMITS=$(git log \
  --pretty="format:%H %ci" \
  -- "$FILE" | \
  awk 'OFS="|" {print $1,$2,$3}')

echo "Exploding $FILE"


for COMMIT in $COMMITS
do
  # Split the string into an array using the pipe as a delimeter
  IFS='|' read -r -a X <<< "$COMMIT"
  HASH="${X[0]}"
  OUT="$OUTPUTFOLDER/$FILENAME-${X[1]}-${X[2]}.csv"
  echo "writing $HASH => $OUT"
  git show $HASH:$FILE > $OUT
done
