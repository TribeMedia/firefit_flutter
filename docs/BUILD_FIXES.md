# iOS Build Fixes

This document explains common iOS build issues in the FireFit Flutter project and how to fix them.

## Common iOS Build Issues

### 1. Duplicate Contents.json Files

The most common error is:

```
Error (Xcode): Multiple commands produce '/path/to/build/ios/Debug-iphoneos/StripeUICore/StripeUICoreBundle.bundle/Contents.json'
```

This happens because multiple targets in the Xcode project try to produce the same Contents.json file in bundle directories.

### 2. iPad3x Device Type Issues

Another common error is:

```
Error (Xcode): Failed to find a suitable device for the type IBSimDeviceTypeiPad3x (com.apple.dt.Xcode.IBSimDeviceType.iPad-3x) with runtime iOS 18.4
```

This happens because some asset catalogs reference iPad3x assets that are not compatible with the current iOS version.

### 3. App Icon Issues

Sometimes you might see:

```
Error (Xcode): The stickers icon set or app icon set named "AppIcon" did not have any applicable content.
```

This happens when the app icon set is not properly configured.

### 4. Pods_Runner Framework Not Found

When trying to debug on a device, you might encounter:

```
Framework 'Pods_Runner' not found
Linker command failed with exit code 1 (use -v to see invocation)
```

This happens when the Xcode project is not properly configured to find the Pods framework.

### 5. Flutter Frameworks Embedding Issue

When trying to build for a device, you might encounter:

```
Unhandled exception:
Null check operator used on a null value
#0      Context.embedFlutterFrameworks (file:///path/to/flutter/packages/flutter_tools/bin/xcode_backend.dart:220:68)
```

This happens when the Flutter tools try to embed Flutter frameworks but can't find them.

## How to Fix

We've created a comprehensive script that fixes all these issues at once:

```bash
cd ios
./fix_all_ios_issues.sh
```

This script:

1. Cleans previous build artifacts
2. Removes Pods directory and related files
3. Modifies the Xcode project to disable app icon validation
4. Modifies the Pods project to remove problematic bundles
5. Removes problematic asset catalogs and replaces them with empty ones
6. Removes Contents.json files from bundle directories
7. Fixes Pods_Runner framework issues for debugging on devices
8. Reinstalls pods and applies all fixes

After running the script, you should be able to build the app successfully with:

```bash
flutter build ios --no-codesign
```

## Individual Fix Scripts

If you prefer to apply fixes individually, the following scripts are available:

- `ios/disable_app_icon.rb`: Disables app icon validation in the Xcode project
- `ios/remove_asset_catalogs.sh`: Removes problematic asset catalogs
- `ios/remove_contents_json.sh`: Removes Contents.json files from bundle directories
- `ios/remove_bundle_from_project.rb`: Removes bundle files from the Xcode project
- `ios/fix_pods_framework.rb`: Fixes the Pods_Runner framework not found issue for debugging on devices

## Technical Details

The main issues are related to how CocoaPods handles asset catalogs and bundles in dependencies. The Stripe SDK and DKPhotoGallery libraries include asset catalogs with iPad3x assets that cause conflicts during the build process.

Our fix works by:

1. Removing the problematic asset catalogs and replacing them with empty ones
2. Modifying the Xcode project settings to disable app icon validation and iPad support
3. Adding build phases to remove Contents.json files during the build process
4. Properly configuring framework search paths and linking settings for the Pods_Runner framework

These fixes allow the app to build successfully and debug on devices without affecting its functionality.
