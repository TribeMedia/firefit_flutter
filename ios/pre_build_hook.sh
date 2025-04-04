#!/bin/bash

# This script is intended to be run right before building the app
# It will remove the problematic Contents.json file from the StripeUICoreBundle.bundle directory

echo "Running pre-build hook to remove problematic Contents.json files..."

# Function to find and remove Contents.json from StripeUICoreBundle.bundle
remove_contents_json() {
  local search_dir="$1"
  
  if [ -d "$search_dir" ]; then
    echo "Searching in $search_dir..."
    
    # Find all StripeUICoreBundle.bundle directories
    find "$search_dir" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
      echo "Found bundle: $bundle_dir"
      
      # Check if Contents.json exists
      if [ -f "$bundle_dir/Contents.json" ]; then
        echo "Removing $bundle_dir/Contents.json"
        rm -f "$bundle_dir/Contents.json"
      fi
    done
  else
    echo "Directory $search_dir does not exist, skipping"
  fi
}

# Check common build directories
remove_contents_json "build/ios/Debug-iphoneos"
remove_contents_json "build/ios/Release-iphoneos"
remove_contents_json "build/ios/Debug-iphonesimulator"
remove_contents_json "build/ios/Release-iphonesimulator"
remove_contents_json "../build/ios/Debug-iphoneos"
remove_contents_json "../build/ios/Release-iphoneos"
remove_contents_json "../build/ios/Debug-iphonesimulator"
remove_contents_json "../build/ios/Release-iphonesimulator"

# Also check Pods directory
remove_contents_json "Pods"

echo "Pre-build hook completed!"
