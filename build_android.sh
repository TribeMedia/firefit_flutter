#!/bin/bash

# Ensure the output directory exists
mkdir -p ./android-build-output

# Run the container with the current directory mounted
docker run --rm \
  -v "$(pwd):/app/source" \
  -v "$(pwd)/android-build-output:/app/output" \
  tribehealth/flutter-apk-builder:latest $@

echo "Build process completed. Check android-build-output directory for the APK."
