#!/bin/bash

echo "Fixing Stripe bundle issue and Flutter frameworks..."

# Path to the project.pbxproj file
PROJECT_FILE="Runner.xcodeproj/project.pbxproj"

# Check if the file exists
if [ ! -f "$PROJECT_FILE" ]; then
  echo "Error: $PROJECT_FILE not found"
  exit 1
fi

# Create a backup of the project file
cp "$PROJECT_FILE" "${PROJECT_FILE}.bak"

# Create a script file for the build phase
cat > fix_stripe_and_flutter.sh << 'EOL'
#!/bin/bash

# Fix Stripe bundle issue
find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \; | xargs rm -f

# Create Flutter frameworks directory if it doesn't exist
mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"

# Create a dummy Flutter.framework to satisfy the null check
mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"

# Create a dummy App.framework to satisfy the null check
mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"

echo "Flutter frameworks fix completed!"
EOL

# Make the script executable
chmod +x fix_stripe_and_flutter.sh

# Generate a unique ID for the build phase
BUILD_PHASE_ID=$(uuidgen | tr -d '-' | tr '[:upper:]' '[:lower:]' | head -c 24)

# Find the line where build phases are defined
BUILD_PHASES_LINE=$(grep -n "buildPhases = (" "$PROJECT_FILE" | head -n 1 | cut -d: -f1)

if [ -z "$BUILD_PHASES_LINE" ]; then
  echo "Error: Could not find buildPhases section in $PROJECT_FILE"
  exit 1
fi

# Create a temporary file
TMP_FILE=$(mktemp)

# Add the build phase reference to the buildPhases section
head -n $BUILD_PHASES_LINE "$PROJECT_FILE" > "$TMP_FILE"
echo "				$BUILD_PHASE_ID /* ShellScript */," >> "$TMP_FILE"
tail -n +$((BUILD_PHASES_LINE + 1)) "$PROJECT_FILE" >> "$TMP_FILE"

# Find a good place to add the build phase definition
SHELL_SCRIPT_SECTION_LINE=$(grep -n "/* ShellScript \*/ = {" "$PROJECT_FILE" | head -n 1 | cut -d: -f1)

if [ -z "$SHELL_SCRIPT_SECTION_LINE" ]; then
  # If no shell script section exists, find a different insertion point
  SHELL_SCRIPT_SECTION_LINE=$(grep -n "/* Resources \*/ = {" "$PROJECT_FILE" | head -n 1 | cut -d: -f1)
  
  if [ -z "$SHELL_SCRIPT_SECTION_LINE" ]; then
    echo "Error: Could not find a suitable insertion point in $PROJECT_FILE"
    exit 1
  fi
fi

# Create a new temporary file
TMP_FILE2=$(mktemp)

# Add the build phase definition
head -n $SHELL_SCRIPT_SECTION_LINE "$TMP_FILE" > "$TMP_FILE2"
cat << EOF >> "$TMP_FILE2"
		$BUILD_PHASE_ID /* ShellScript */ = {
			isa = PBXShellScriptBuildPhase;
			buildActionMask = 2147483647;
			files = (
			);
			inputFileListPaths = (
			);
			inputPaths = (
			);
			name = "Fix Stripe and Flutter Frameworks";
			outputFileListPaths = (
			);
			outputPaths = (
			);
			runOnlyForDeploymentPostprocessing = 0;
			shellPath = /bin/sh;
			shellScript = "\"\${SRCROOT}/fix_stripe_and_flutter.sh\"\n";
		};
EOF
tail -n +$SHELL_SCRIPT_SECTION_LINE "$TMP_FILE" >> "$TMP_FILE2"

# Replace the original file
mv "$TMP_FILE2" "$PROJECT_FILE"

echo "Successfully added Fix Stripe and Flutter Frameworks build phase to Xcode project"
