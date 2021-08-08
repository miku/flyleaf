#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "usage: $0 PDF-FILE [PAGE]"
    exit 1
fi

FILE=$1
PAGE=${2:-1}
PAGE_IMAGE="tmp-pdfpagenorm-$PAGE"

pdftoppm "$FILE" "$PAGE_IMAGE" -png -f "$PAGE" -singlefile

echo "$PAGE_IMAGE_RESIZED"
