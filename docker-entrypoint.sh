#!/bin/bash
set -e

# Copy source code to working directory
cp -r /app/source/* /app/

# Get Flutter dependencies
flutter pub get

# Build the APK with any additional arguments passed to the container
flutter build apk $@

# Copy the built APK to the output volume
mkdir -p /app/output
cp build/app/outputs/flutter-apk/app-release.apk /app/output/

echo "Build complete! APK is available in the output directory."
