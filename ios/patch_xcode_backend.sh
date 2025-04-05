#!/bin/bash

echo "Creating patch for xcode_backend.dart..."

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

# Create a patch file
cat > xcode_backend.patch << 'EOL'
--- xcode_backend.dart.orig
+++ xcode_backend.dart
@@ -217,7 +217,12 @@
   final String frameworksPath = environment['FRAMEWORKS_FOLDER_PATH']!;
   final String builtProductsPath = environment['BUILT_PRODUCTS_DIR']!;
   final Directory frameworksDirectory = Directory(path.join(builtProductsPath, frameworksPath));
+  
+  // Create the frameworks directory if it doesn't exist
+  frameworksDirectory.createSync(recursive: true);
+  
   final String flutterFrameworkPath = path.join(frameworksDirectory.path, 'Flutter.framework');
+  
   final String appFrameworkPath = path.join(frameworksDirectory.path, 'App.framework');
   final String flutterAssetsPath = path.join(appFrameworkPath, 'flutter_assets');
 
EOL

# Apply the patch
patch -p0 "$XCODE_BACKEND_PATH" < xcode_backend.patch

if [ $? -eq 0 ]; then
  echo "Successfully patched xcode_backend.dart"
else
  echo "Failed to patch xcode_backend.dart"
  
  # Try a direct edit approach
  echo "Trying direct edit approach..."
  
  # Create a temporary file
  TMP_FILE=$(mktemp)
  
  # Find the line to modify
  LINE_NUM=$(grep -n "final Directory frameworksDirectory = Directory(path.join(builtProductsPath, frameworksPath));" "$XCODE_BACKEND_PATH" | cut -d: -f1)
  
  if [ -z "$LINE_NUM" ]; then
    echo "Could not find the line to modify"
    exit 1
  fi
  
  # Add the fix after the line
  head -n $LINE_NUM "$XCODE_BACKEND_PATH" > "$TMP_FILE"
  echo "  // Create the frameworks directory if it doesn't exist" >> "$TMP_FILE"
  echo "  frameworksDirectory.createSync(recursive: true);" >> "$TMP_FILE"
  echo "" >> "$TMP_FILE"
  tail -n +$((LINE_NUM + 1)) "$XCODE_BACKEND_PATH" >> "$TMP_FILE"
  
  # Replace the original file
  mv "$TMP_FILE" "$XCODE_BACKEND_PATH"
  
  echo "Direct edit completed"
fi

echo "Patch completed!"
