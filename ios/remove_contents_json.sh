#!/bin/bash

echo "Removing all Contents.json files from bundle directories..."

# Find and remove all Contents.json files in bundle directories
find_and_remove_contents_json() {
  local search_dir="$1"
  
  if [ -d "$search_dir" ]; then
    echo "Searching in $search_dir..."
    
    # Find all .bundle directories
    find "$search_dir" -name "*.bundle" -type d | while read -r bundle_dir; do
      contents_json="$bundle_dir/Contents.json"
      
      if [ -f "$contents_json" ]; then
        echo "Removing: $contents_json"
        rm -f "$contents_json"
      fi
    done
  else
    echo "Directory $search_dir does not exist, skipping"
  fi
}

# Check common build directories
find_and_remove_contents_json "build/ios"
find_and_remove_contents_json "../build/ios"
find_and_remove_contents_json "Pods"

echo "Contents.json removal completed!"
