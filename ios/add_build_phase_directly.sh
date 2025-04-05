#!/bin/bash

# Path to the project.pbxproj file
PROJECT_FILE="Runner.xcodeproj/project.pbxproj"

# Create a backup of the project file
cp "$PROJECT_FILE" "${PROJECT_FILE}.bak"

# Add the build phase script to the project file
sed -i.bak '/shellScript = ".*\\\/bin\\\/sh/a\\
\\t\\t\\t\\tshellScript = "\\"\${SRCROOT}\\/create_flutter_frameworks.sh\\"\\n";\\
\\t\\t\\t\\tname = "Create Flutter Frameworks";\\
' "$PROJECT_FILE"

echo "Added Create Flutter Frameworks build phase to Xcode project"
