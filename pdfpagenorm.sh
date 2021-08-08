#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "usage: $0 PDF-FILE [PAGE]"
    exit 1
fi

FILE=$1
PAGE=${2:-1}
SIZE=${3:-200x271}
PAGE_IMAGE="tmp-pdfpagenorm-$PAGE"
PAGE_IMAGE_RESIZED="tmp-pdfpagenorm-$PAGE-$SIZE.png"

# echo $FILE $PAGE

pdftoppm "$FILE" "$PAGE_IMAGE" -png -f "$PAGE" -singlefile
convert -resize $SIZE\! "$PAGE_IMAGE.png" "$PAGE_IMAGE_RESIZED"

echo "$PAGE_IMAGE_RESIZED"
