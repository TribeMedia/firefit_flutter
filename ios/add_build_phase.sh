#!/bin/bash

echo "Adding Create Flutter Frameworks build phase to Xcode project..."

# Path to the project.pbxproj file
PROJECT_FILE="Runner.xcodeproj/project.pbxproj"

# Check if the file exists
if [ ! -f "$PROJECT_FILE" ]; then
  echo "Error: $PROJECT_FILE not found"
  exit 1
fi

# Check if the build phase already exists
if grep -q "Create Flutter Frameworks" "$PROJECT_FILE"; then
  echo "Build phase already exists, skipping..."
  exit 0
fi

# Find the Runner target section
RUNNER_TARGET_LINE=$(grep -n "/* Runner \*/ = {" "$PROJECT_FILE" | cut -d: -f1)

if [ -z "$RUNNER_TARGET_LINE" ]; then
  echo "Error: Could not find Runner target in $PROJECT_FILE"
  exit 1
fi

# Find the buildPhases section
BUILD_PHASES_LINE=$(tail -n +$RUNNER_TARGET_LINE "$PROJECT_FILE" | grep -n "buildPhases = (" | head -n 1 | cut -d: -f1)
BUILD_PHASES_LINE=$((RUNNER_TARGET_LINE + BUILD_PHASES_LINE))

if [ -z "$BUILD_PHASES_LINE" ]; then
  echo "Error: Could not find buildPhases section in $PROJECT_FILE"
  exit 1
fi

# Generate a unique ID for the build phase
BUILD_PHASE_ID=$(uuidgen | tr -d '-' | tr '[:upper:]' '[:lower:]' | head -c 24)

# Create a temporary file
TMP_FILE=$(mktemp)

# Add the build phase reference to the buildPhases section
head -n $BUILD_PHASES_LINE "$PROJECT_FILE" > "$TMP_FILE"
echo "				$BUILD_PHASE_ID /* ShellScript */," >> "$TMP_FILE"
tail -n +$((BUILD_PHASES_LINE + 1)) "$PROJECT_FILE" >> "$TMP_FILE"

# Find a good place to add the build phase definition
SHELL_SCRIPT_SECTION_LINE=$(grep -n "/* ShellScript \*/ = {" "$PROJECT_FILE" | head -n 1 | cut -d: -f1)

if [ -z "$SHELL_SCRIPT_SECTION_LINE" ]; then
  echo "Error: Could not find ShellScript section in $PROJECT_FILE"
  exit 1
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
			name = "Create Flutter Frameworks";
			outputFileListPaths = (
			);
			outputPaths = (
			);
			runOnlyForDeploymentPostprocessing = 0;
			shellPath = /bin/sh;
			shellScript = "\"\${SRCROOT}/create_flutter_frameworks.sh\"\n";
		};
EOF
tail -n +$SHELL_SCRIPT_SECTION_LINE "$TMP_FILE" >> "$TMP_FILE2"

# Replace the original file
mv "$TMP_FILE2" "$PROJECT_FILE"

echo "Successfully added Create Flutter Frameworks build phase to Xcode project"
