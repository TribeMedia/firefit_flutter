#!/bin/bash

echo "Starting comprehensive iOS signing and build fixes..."

# Change to the iOS directory
cd "$(dirname "$0")"

# Step 1: Make all Ruby scripts executable
echo "Making Ruby scripts executable..."
chmod +x fix_signing.rb
chmod +x fix_duplicate_contents.sh
chmod +x fix_stripe_bundle.sh
chmod +x fix_xcode_settings.rb
chmod +x fix_pods_project.rb
chmod +x add_build_phase.rb
chmod +x add_stripe_fix_phase.rb
chmod +x fix_podfile.rb
chmod +x fix_stripe3ds2_assets.rb
chmod +x fix_stripeuicore_bundle.rb
chmod +x fix_build_settings.rb
chmod +x remove_contents_json.sh
chmod +x fix_stripe_bundle_issue.rb
chmod +x fix_xcode_build_phases.rb
chmod +x fix_stripe_payments_assets.rb

# Step 2: Install xcodeproj gem if not already installed
if ! gem list -i xcodeproj > /dev/null 2>&1; then
  echo "Installing xcodeproj gem..."
  sudo gem install xcodeproj
fi

# Step 3: Fix Info.plist
echo "Fixing Info.plist..."
if grep -q "</dict>\s*</plist>\s*<key>UIDeviceFamily" "../ios/Runner/Info.plist"; then
  echo "Fixing malformed Info.plist..."
  sed -i '' 's|</dict>\s*</plist>\s*<key>UIDeviceFamily|<key>UIDeviceFamily|g' "../ios/Runner/Info.plist"
  sed -i '' 's|</array>\s*$|</array>\n</dict>\n</plist>|g' "../ios/Runner/Info.plist"
  echo "Info.plist fixed"
fi

# Step 4: Configure automatic signing
echo "Configuring automatic signing..."
ruby fix_signing.rb

# Step 5: Modify Xcode project settings
echo "Modifying Xcode project settings..."
ruby fix_xcode_settings.rb
ruby fix_build_settings.rb
ruby fix_stripe_bundle_issue.rb

# Step 6: Add build phases to fix duplicate Contents.json
echo "Adding build phases to fix duplicate Contents.json..."
ruby add_build_phase.rb
ruby add_stripe_fix_phase.rb

# Step 7: Modify Podfile
echo "Modifying Podfile..."
ruby fix_podfile.rb

# Step 8: Clean the build
echo "Cleaning build..."
cd ..
flutter clean

# Step 9: Get dependencies
echo "Getting dependencies..."
flutter pub get

# Step 10: Install pods
echo "Installing pods..."
cd ios
pod install

# Step 11: Fix Pods project
echo "Fixing Pods project..."
ruby fix_pods_project.rb
ruby fix_stripe_payments_assets.rb

# Step 12: Fix Stripe3DS2 assets
echo "Fixing Stripe3DS2 assets..."
ruby fix_stripe3ds2_assets.rb

# Step 13: Fix StripeUICore bundle
echo "Fixing StripeUICore bundle..."
ruby fix_stripeuicore_bundle.rb

# Step 14: Run the fix_stripe_bundle.sh script directly
echo "Running fix_stripe_bundle.sh script..."
./fix_stripe_bundle.sh

# Step 15: Remove Contents.json files
echo "Removing Contents.json files..."
./remove_contents_json.sh

echo "All iOS signing and build fixes completed! Try building the app now with:"
echo "flutter build ios --no-codesign"
echo ""
echo "To run on a device, use:"
echo "flutter run --release"
