#!/bin/bash

echo "Fixing duplicate Contents.json files..."

# Find all Contents.json files in bundle directories
find "${BUILT_PRODUCTS_DIR:-./build/ios}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \; | sort > all_contents_files.txt

# Check for duplicates
if [ -f all_contents_files.txt ]; then
  echo "Found the following Contents.json files:"
  cat all_contents_files.txt
  
  # Specifically target StripeUICoreBundle.bundle/Contents.json
  grep "StripeUICoreBundle.bundle/Contents.json" all_contents_files.txt > stripe_contents_files.txt
  
  if [ -s stripe_contents_files.txt ]; then
    echo "Found duplicate StripeUICoreBundle.bundle/Contents.json files:"
    cat stripe_contents_files.txt
    
    # Keep only the first one, remove others
    head -n 1 stripe_contents_files.txt > keep_file.txt
    tail -n +2 stripe_contents_files.txt > remove_files.txt
    
    if [ -s remove_files.txt ]; then
      echo "Keeping:"
      cat keep_file.txt
      
      echo "Removing:"
      cat remove_files.txt
      
      # Remove duplicate files
      while read file; do
        echo "Removing: $file"
        rm -f "$file"
      done < remove_files.txt
    fi
  fi
  
  # Clean up temporary files
  rm -f all_contents_files.txt stripe_contents_files.txt keep_file.txt remove_files.txt
fi

echo "Duplicate Contents.json fix completed!"
