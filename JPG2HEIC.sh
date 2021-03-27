#! /bin/bash

for x in *.jpg; do
    echo "$x"
    magick "$x" "${x%.jpg}.heic"
    exiftool -overwrite_original -tagsFromFile "$x" -all:all "${x%.jpg}.heic"

    XMP="${x%.jpg}.xmp"
    if test -f "$XMP"; then
        exiftool -overwrite_original -tagsFromFile "$XMP" -all:all "${x%.jpg}.heic"
    fi
done
