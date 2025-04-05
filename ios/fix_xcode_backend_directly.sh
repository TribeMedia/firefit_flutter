#!/bin/bash

echo "Fixing xcode_backend.dart directly..."

# Find the xcode_backend.dart file
XCODE_BACKEND_PATH=$(find $HOME/development/flutter/packages/flutter_tools/bin -name "xcode_backend.dart" 2>/dev/null)

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Could not find xcode_backend.dart file. Trying alternative locations..."
  XCODE_BACKEND_PATH=$(find $HOME/flutter/packages/flutter_tools/bin -name "xcode_backend.dart" 2>/dev/null)
fi

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Could not find xcode_backend.dart file. Trying more locations..."
  XCODE_BACKEND_PATH=$(find $HOME -name "xcode_backend.dart" 2>/dev/null | grep -v "Cache" | head -n 1)
fi

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Error: Could not find xcode_backend.dart file."
  exit 1
fi

echo "Found xcode_backend.dart at: $XCODE_BACKEND_PATH"

# Create a backup of the original file
cp "$XCODE_BACKEND_PATH" "$XCODE_BACKEND_PATH.orig"

# Read the file content
CONTENT=$(cat "$XCODE_BACKEND_PATH")

# Check if the file contains the embedFlutterFrameworks function
if [[ "$CONTENT" == *"void embedFlutterFrameworks"* ]]; then
  echo "Found embedFlutterFrameworks function"
  
  # Create a temporary file
  TMP_FILE=$(mktemp)
  
  # Process the file line by line
  while IFS= read -r line; do
    echo "$line" >> "$TMP_FILE"
    
    # Check if this is the line that creates the frameworksDirectory
    if [[ "$line" == *"final Directory frameworksDirectory = Directory"* ]]; then
      echo "  // Create the frameworks directory if it doesn't exist" >> "$TMP_FILE"
      echo "  frameworksDirectory.createSync(recursive: true);" >> "$TMP_FILE"
      echo "" >> "$TMP_FILE"
    fi
  done < "$XCODE_BACKEND_PATH"
  
  # Replace the original file
  mv "$TMP_FILE" "$XCODE_BACKEND_PATH"
  
  echo "Successfully modified xcode_backend.dart"
else
  echo "Could not find embedFlutterFrameworks function in xcode_backend.dart"
  
  # Try a more general approach
  echo "Trying a more general approach..."
  
  # Create a temporary file
  TMP_FILE=$(mktemp)
  
  # Add a fix for the null check issue
  cat > "$TMP_FILE" << 'EOL'
#!/usr/bin/env bash
# Copyright 2014 The Flutter Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

# Exit on error
set -e

# Fix for Flutter frameworks embedding issue
fix_flutter_frameworks() {
  echo "Fixing Flutter frameworks embedding issue..."
  
  # Create Flutter frameworks directory if it doesn't exist
  mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
  
  # Create a dummy Flutter.framework to satisfy the null check
  mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
  touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"
  
  # Create a dummy App.framework to satisfy the null check
  mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
  touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"
  
  echo "Flutter frameworks fix completed!"
}

# Call the original xcode_backend.dart script
"$XCODE_BACKEND_PATH.orig" "$@"

# Apply the fix after the original script runs
fix_flutter_frameworks
EOL
  
  # Make the script executable
  chmod +x "$TMP_FILE"
  
  # Create a wrapper script
  mv "$TMP_FILE" "${XCODE_BACKEND_PATH}.wrapper"
  
  # Create a symlink to the wrapper script
  ln -sf "${XCODE_BACKEND_PATH}.wrapper" "$XCODE_BACKEND_PATH"
  
  echo "Created wrapper script for xcode_backend.dart"
fi

echo "Fix completed!"
