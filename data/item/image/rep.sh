#!/bin/bash

# Loop through all files with the prefix "item_icon_"
for file in item_image_*; do
  # Check if the file exists to avoid issues if there are no matches
  if [[ -e $file ]]; then
    # Remove the prefix "item_icon_" and get the new filename
    new_file="${file#item_image_}"
    
    # Rename the file
    mv "$file" "$new_file"
  fi
done

echo "Prefix 'item_image_' removed from filenames."
