#!/bin/bash

# This script removes the StripeUICoreBundle.bundle from the build directory

echo "Removing StripeUICoreBundle.bundle from build directory..."

# Find all StripeUICoreBundle.bundle directories
find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
  echo "Removing $bundle_dir"
  rm -rf "$bundle_dir"
done

echo "Removed StripeUICoreBundle.bundle"
