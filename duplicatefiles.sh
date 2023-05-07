#!/bin/bash

#set te directory to searchfor duplicates in 
DIRECTORY="/home/shellScripts"

#Find all duplicate files in the directory and its subdirectories
DUPLICATES=$(find  "$DIRECTORY" -type f -exec md5sum {} \; | sort | uniq -D -w 32 | cut -f3 -d ' ')

#print a message if no duplicates were found
if [ -z "$DUPLICATES" ]; then 
	echo "No duplicates found."
	exit 0
fi

#Prompt the user to confirm before deleting duplicate files 
read -p "Are you sure you want to delete ${DULPLICATES} (y/n)?" CHOICE
case "$CHOICE" in 
	y|Y)
	#Delete duplicate files
	echo "Deleting duplictae files..."
	rm $DUPLICATES
	echo "Duplicate files deleted."
	;;
	n|N)
	#Do nothing 
	echo "Operation cancelled."
	;;
	*)
	echo "Invalid choice."
esac

exit 0 
