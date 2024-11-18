#!/bin/bash
docker build --platform linux/amd64 -t tribehealth/flutter-apk-builder:latest -f Dockerfile-flutter-build .
