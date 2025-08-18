#!/bin/bash

# Usage: ./renumberFileNamesAndContents.sh 2 level_*.txt
# Example: level_2.collection -> level_3.collection, and inside the file every "level_2" becomes "level_3"

start=$1
shift

# Sort input filenames by the number after underscore, descending
files=$(printf '%s\n' "$@" | sort -t_ -k2 -nr)

for file in $files; do
    ext="${file##*.}"       # extension (collection)
    name="${file%.*}"       # filename without extension
    num=${name##*_}         # number after underscore
    base=${name%_*}         # part before number

    if [[ $num -ge $start ]]; then
        new_num=$((num + 1))
        old_name="${base}_${num}"
        new_name="${base}_${new_num}"
        new_file="${new_name}.${ext}"

        echo "Renaming $file -> $new_file"
        mv "$file" "$new_file"

        # Update old_name and new_name to contents after the last slash
        old_name="${old_name##*/}"
        new_name="${new_name##*/}"

        # Replace inside contents (old_name -> new_name)
        echo "Updating contents: $old_name -> $new_name in $new_file"
        sed -i "s!\b${old_name}\b!${new_name}!g" "$new_file"
    fi
done

