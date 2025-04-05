#!/bin/bash

# Create Flutter frameworks directory if it doesn't exist
mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"

# Create dummy Flutter.framework to satisfy the null check
mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"

# Create dummy App.framework to satisfy the null check
mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"

echo "Created dummy Flutter frameworks"
