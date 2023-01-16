#!/bin/bash  

# Get the current directory (where this shell script currently is)
dir=$(dirname "$0")

# Loop through the list of URLs 
while read -r url; do   
	# Check the status   
	status=$(curl -s -o /dev/null -w "%{http_code}" $url)
  
	# Print the status   
	echo "$url: $status" 
done < "$dir/prod/urls.txt"


# NOTE: I've put the urls.txt file inside a folder called /prod/ in the same directory where this script is.
# Therefore, your structure will be:
# - link-check.sh
# - /prod/
#      ↳ urls.txt
# Feel free to modify line 13 with the path to your urls file (be sure to put the correct file names and folder names)
