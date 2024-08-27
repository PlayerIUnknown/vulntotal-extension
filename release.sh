#!/bin/bash

# Variables
CHROME_BASED_BROWSER="chrome"
PEM_FILE="dist/vulntotal-extension.pem"
OUTPUT="dist/vulntotal-extension.crx"
SRC_DIR="$(pwd)/src"

mkdir -p "dist"

echo "Packing the vulntotal extension into a .crx file..."
$CHROME_BASED_BROWSER --pack-extension="$SRC_DIR"

if [ -f "$SRC_DIR.crx" ]; then
    mv "$SRC_DIR.crx" "$OUTPUT"
    mv "$SRC_DIR.pem" "$PEM_FILE"
    echo "Vulntotal Extension is packaged as $OUTPUT"
else
    echo "Error: Failed to create the .crx file. Check Chrome output for errors."
fi
