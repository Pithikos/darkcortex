#! /bin/bash

# 1. Anonymise all pictures in /uploads/*.png|jpg to use the md5 hash of the filename as the new filename
# 2. At the same time replace all index.html with pattern "/uploads/<filename>"
for file in ./uploads/*.{png,jpg,JPG}; do
    new_basename=$(md5sum "$file" | cut -d ' ' -f 1)
    file_extension="${file##*.}"
    file_extension_lower=$(echo "$file_extension" | tr '[:upper:]' '[:lower:]')
    new_filename="$new_basename.$file_extension_lower"

    # Replace all index.html with pattern "/uploads/<filename>"
    old_filename=$(basename "$file")
    target="/uploads/$old_filename"
    replacement="/uploads/$new_filename"
    perl -pi -e "s|$target|$replacement|g" ./index.html
    
    # Move the file to the new filename
    mv "$file" "./uploads/$new_filename"
done