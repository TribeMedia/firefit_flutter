#!/bin/bash
docker build --platform linux/arm64 -t tribehealth/flutter-apk-builder:latest -f Dockerfile-flutter-build .
