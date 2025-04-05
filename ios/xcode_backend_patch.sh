#!/bin/bash

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
  echo "Skipping xcode_backend.dart patch..."
  exit 0
fi

echo "Found xcode_backend.dart at: $XCODE_BACKEND_PATH"

# Create a backup of the original file
cp "$XCODE_BACKEND_PATH" "$XCODE_BACKEND_PATH.orig"

# Add a check to create the frameworks directory if it doesn't exist
sed -i.bak '/final Directory frameworksDirectory = Directory/a\\
  // Create the frameworks directory if it doesn\\'\''t exist\\
  frameworksDirectory.createSync(recursive: true);\\
' "$XCODE_BACKEND_PATH"

echo "Patched xcode_backend.dart to create frameworks directory if it doesn't exist"
