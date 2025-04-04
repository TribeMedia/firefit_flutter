#!/bin/bash

# This script removes the StripeUICore pod from the project

echo "Removing StripeUICore pod from the project..."

# Remove the StripeUICore directory from Pods
if [ -d "Pods/StripeUICore" ]; then
  echo "Removing Pods/StripeUICore"
  rm -rf "Pods/StripeUICore"
fi

# Remove the StripeUICore bundle from the build directory
find "../build" -name "StripeUICore" -type d | while read -r dir; do
  echo "Removing $dir"
  rm -rf "$dir"
done

# Remove the StripeUICoreBundle.bundle from the build directory
find "../build" -name "StripeUICoreBundle.bundle" -type d | while read -r dir; do
  echo "Removing $dir"
  rm -rf "$dir"
done

echo "Removed StripeUICore pod"
