#!/bin/bash

echo "Starting Android build fixes..."

# Step 1: Clean up any previous build artifacts
echo "Cleaning previous build artifacts..."
cd "$(dirname "$0")/.."
flutter clean

# Step 2: Create proguard rules file to fix R8 issues with Stripe
echo "Creating proguard rules for Stripe..."
mkdir -p android/app/src/main/proguard-rules
cat > android/app/src/main/proguard-rules/stripe-rules.pro << 'EOL'
# Keep Stripe classes that are referenced but might be considered unused by R8
-keep class com.stripe.android.pushProvisioning.** { *; }
-keep class com.stripe.android.** { *; }
-dontwarn com.stripe.android.pushProvisioning.**
EOL

# Step 3: Update app/build.gradle to include the proguard rules
echo "Updating build.gradle to include proguard rules..."

# Check if build.gradle or build.gradle.kts exists
GRADLE_FILE=""
if [ -f "android/app/build.gradle" ]; then
    GRADLE_FILE="android/app/build.gradle"
elif [ -f "android/app/build.gradle.kts" ]; then
    GRADLE_FILE="android/app/build.gradle.kts"
else
    echo "Error: Could not find build.gradle or build.gradle.kts in android/app directory"
    exit 1
fi

# Create a backup of the original file
cp "$GRADLE_FILE" "${GRADLE_FILE}.bak"

if [[ "$GRADLE_FILE" == *".kts" ]]; then
    # For Kotlin DSL build.gradle.kts
    if grep -q "proguardFiles" "$GRADLE_FILE"; then
        # If proguardFiles already exists, add our rules file
        sed -i.tmp -E "s|(proguardFiles\([^)]*\))|\1, getDefaultProguardFile(\"proguard-android-optimize.txt\"), \"src/main/proguard-rules/stripe-rules.pro\"|g" "$GRADLE_FILE"
    else
        # If no proguardFiles, add the entire configuration
        sed -i.tmp -E "s|(release\s*\{[^}]*minifyEnabled\s*true)|\1\n            proguardFiles(getDefaultProguardFile(\"proguard-android-optimize.txt\"), \"src/main/proguard-rules/stripe-rules.pro\")|g" "$GRADLE_FILE"
    fi
else
    # For Groovy DSL build.gradle
    if grep -q "proguardFiles" "$GRADLE_FILE"; then
        # If proguardFiles already exists, add our rules file
        sed -i.tmp -E "s|(proguardFiles[^,]*,)|\1 getDefaultProguardFile('proguard-android-optimize.txt'), 'src/main/proguard-rules/stripe-rules.pro',|g" "$GRADLE_FILE"
    else
        # If no proguardFiles, add the entire configuration
        sed -i.tmp -E "s|(release\s*\{[^}]*minifyEnabled\s*true)|\1\n            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt'), 'src/main/proguard-rules/stripe-rules.pro'|g" "$GRADLE_FILE"
    fi
fi

# Remove temporary files
rm -f "${GRADLE_FILE}.tmp"

echo "Android build fixes completed! Try building the app now."
