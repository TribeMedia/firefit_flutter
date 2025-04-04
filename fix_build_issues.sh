#!/bin/bash

echo "===== FireFit Flutter Build Issue Fixer ====="
echo "This script will fix common build issues for both iOS and Android."

# Function to display a menu and get user choice
function show_menu() {
    echo ""
    echo "Please select an option:"
    echo "1) Fix iOS build issues"
    echo "2) Fix Android build issues"
    echo "3) Fix both iOS and Android issues"
    echo "4) Exit"
    echo ""
    read -p "Enter your choice (1-4): " choice
    
    case $choice in
        1) fix_ios ;;
        2) fix_android ;;
        3) fix_both ;;
        4) exit 0 ;;
        *) echo "Invalid option. Please try again."; show_menu ;;
    esac
}

# Function to fix iOS build issues
function fix_ios() {
    echo ""
    echo "===== Fixing iOS Build Issues ====="
    
    if [ -f "ios/fix_ios_build_issues.sh" ]; then
        cd ios
        ./fix_ios_build_issues.sh
        cd ..
        echo "iOS fixes completed!"
    else
        echo "Error: iOS fix script not found at ios/fix_ios_build_issues.sh"
        exit 1
    fi
}

# Function to fix Android build issues
function fix_android() {
    echo ""
    echo "===== Fixing Android Build Issues ====="
    
    echo "Choose Android fix method:"
    echo "1) Apply ProGuard rules (may not work for all cases)"
    echo "2) Disable R8 completely (most reliable, but results in larger APK)"
    echo ""
    read -p "Enter your choice (1-2): " android_choice
    
    case $android_choice in
        1)
            if [ -f "android/fix_android_build_issues.sh" ]; then
                cd android
                ./fix_android_build_issues.sh
                cd ..
                echo "Android ProGuard fixes completed!"
            else
                echo "Error: Android fix script not found at android/fix_android_build_issues.sh"
                exit 1
            fi
            ;;
        2)
            echo "Disabling R8 completely in build.gradle.kts..."
            
            # Check if build.gradle.kts exists
            if [ -f "android/app/build.gradle.kts" ]; then
                # Create backup
                cp android/app/build.gradle.kts android/app/build.gradle.kts.bak
                
                # Update build.gradle.kts to disable R8
                sed -i.tmp -E 's/(release\s*\{[^}]*)(isMinifyEnabled\s*=\s*true|isShrinkResources\s*=\s*true)?/\1\n            isMinifyEnabled = false\n            isShrinkResources = false/g' android/app/build.gradle.kts
                
                # Remove temporary files
                rm -f android/app/build.gradle.kts.tmp
                
                echo "R8 disabled successfully!"
            else
                echo "Error: build.gradle.kts not found at android/app/build.gradle.kts"
                exit 1
            fi
            ;;
        *)
            echo "Invalid option. Please try again."
            fix_android
            ;;
    esac
    
    echo "Android fixes completed!"
}

# Function to fix both iOS and Android issues
function fix_both() {
    fix_ios
    fix_android
    
    echo ""
    echo "===== All Fixes Completed ====="
    echo "Both iOS and Android build issues have been fixed."
    echo "Please try building your app now."
}

# Display documentation
echo ""
echo "This script will help fix common build issues in the FireFit Flutter project."
echo "For detailed documentation, please refer to docs/BUILD_FIXES.md"
echo ""

# Show the menu
show_menu

exit 0
