#!/bin/bash

echo "Fixing StripeUICoreBundle.bundle Contents.json issue..."

# Function to find and remove Contents.json from StripeUICoreBundle.bundle
fix_stripe_bundle() {
  local build_dir="$1"
  
  if [ -d "$build_dir" ]; then
    echo "Searching in $build_dir..."
    
    # Find all StripeUICoreBundle.bundle directories
    find "$build_dir" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
      echo "Found bundle: $bundle_dir"
      
      # Check if Contents.json exists
      if [ -f "$bundle_dir/Contents.json" ]; then
        echo "Removing $bundle_dir/Contents.json"
        rm -f "$bundle_dir/Contents.json"
      fi
    done
  else
    echo "Directory $build_dir does not exist, skipping"
  fi
}

# Check common build directories
fix_stripe_bundle "${BUILT_PRODUCTS_DIR}"
fix_stripe_bundle "${PROJECT_DIR}/build/ios/Release-iphoneos"
fix_stripe_bundle "${PROJECT_DIR}/build/ios/Debug-iphoneos"
fix_stripe_bundle "${PROJECT_DIR}/build/ios/Release-iphonesimulator"
fix_stripe_bundle "${PROJECT_DIR}/build/ios/Debug-iphonesimulator"
fix_stripe_bundle "${PROJECT_DIR}/../build/ios/Release-iphoneos"
fix_stripe_bundle "${PROJECT_DIR}/../build/ios/Debug-iphoneos"
fix_stripe_bundle "${PROJECT_DIR}/../build/ios/Release-iphonesimulator"
fix_stripe_bundle "${PROJECT_DIR}/../build/ios/Debug-iphonesimulator"

echo "StripeUICoreBundle.bundle Contents.json fix completed!"
