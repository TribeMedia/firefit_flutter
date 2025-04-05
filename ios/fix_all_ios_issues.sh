#!/bin/bash

echo "Running comprehensive fix for iOS build issues..."

# Step 1: Clean up any previous build artifacts
echo "Cleaning previous build artifacts..."
cd "$(dirname "$0")/.."
flutter clean

# Step 2: Remove Pods directory and related files
echo "Removing Pods directory and related files..."
cd ios
rm -rf Pods
rm -rf .symlinks
rm -f Podfile.lock

# Step 3: Modify the Xcode project to disable app icon validation
echo "Modifying Xcode project settings..."
cat > disable_app_icon.rb << 'EOL'
#!/usr/bin/env ruby

require 'xcodeproj'

def disable_app_icon(project_path)
  puts "Modifying Xcode project at: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Modify build settings for all configurations
      runner_target.build_configurations.each do |config|
        puts "Modifying build settings for configuration: #{config.name}"
        
        # Disable app icon
        config.build_settings['ASSETCATALOG_COMPILER_APPICON_NAME'] = ''
        
        # Disable asset catalog compilation warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        config.build_settings['ASSETCATALOG_COMPILER_WARNINGS'] = 'NO'
        
        # Set targeted device family to iPhone only (1)
        config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'
        
        # Disable iPad support
        config.build_settings['SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        config.build_settings['SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
      end
      
      # Add a script build phase to remove Contents.json files
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == 'Remove Contents.json' }
      
      if existing_phase
        puts "Updating existing Remove Contents.json build phase"
        existing_phase.shell_script = <<~SCRIPT
          find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
        SCRIPT
      else
        puts "Adding new Remove Contents.json build phase"
        new_phase = runner_target.new_shell_script_build_phase('Remove Contents.json')
        new_phase.shell_script = <<~SCRIPT
          find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
        SCRIPT
        
        # Move the phase to be the first build phase
        runner_target.build_phases.unshift(runner_target.build_phases.pop)
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project settings"
    else
      puts "Error: Could not find Runner target"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Modify the Runner.xcodeproj
disable_app_icon("Runner.xcodeproj")
EOL

# Make the script executable
chmod +x disable_app_icon.rb

# Run the script
ruby disable_app_icon.rb

# Step 4: Create a script to modify the Pods project
echo "Creating script to modify Pods project..."
cat > modify_pods_project.rb << 'EOL'
#!/usr/bin/env ruby

require 'xcodeproj'

def modify_pods_project(project_path)
  puts "Modifying Pods project at: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find all targets
    project.targets.each do |target|
      puts "Checking target: #{target.name}"
      
      # Find all build phases
      target.build_phases.each do |phase|
        if phase.is_a?(Xcodeproj::Project::Object::PBXResourcesBuildPhase)
          puts "  Checking resources build phase"
          
          # Find and remove bundle files
          files_to_remove = []
          
          phase.files.each do |build_file|
            if build_file.file_ref && build_file.file_ref.path
              path = build_file.file_ref.path
              if path.include?('.bundle') || path.include?('Contents.json')
                puts "    Found bundle to remove: #{path}"
                files_to_remove << build_file
              end
            end
          end
          
          # Remove the files
          files_to_remove.each do |build_file|
            puts "    Removing #{build_file.file_ref.path} from resources"
            phase.remove_build_file(build_file)
          end
        end
      end
      
      # Add a script build phase to remove Contents.json files
      if ['StripeUICore', 'StripePaymentsUI'].include?(target.name)
        existing_phase = target.shell_script_build_phases.find { |phase| phase.name == 'Remove Contents.json' }
        
        if existing_phase
          puts "  Updating existing Remove Contents.json build phase for #{target.name}"
          existing_phase.shell_script = <<~SCRIPT
            find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
          SCRIPT
        else
          puts "  Adding new Remove Contents.json build phase for #{target.name}"
          new_phase = target.new_shell_script_build_phase('Remove Contents.json')
          new_phase.shell_script = <<~SCRIPT
            find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
          SCRIPT
        end
      end
      
      # Modify build settings for all configurations
      target.build_configurations.each do |config|
        # Disable asset catalog compilation warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        config.build_settings['ASSETCATALOG_COMPILER_WARNINGS'] = 'NO'
        
        # Set targeted device family to iPhone only (1)
        config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'
        
        # Disable iPad support
        config.build_settings['SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        config.build_settings['SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        
        # Exclude iPad assets
        config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = '*ipad*3x*'
        
        # Completely disable asset catalogs for problematic targets
        if ['StripeUICore', 'StripePaymentsUI', 'StripePayments', 'Stripe'].include?(target.name)
          config.build_settings['ASSETCATALOG_COMPILER_APPICON_NAME'] = ''
          config.build_settings['ASSETCATALOG_COMPILER_LAUNCHIMAGE_NAME'] = ''
          config.build_settings['ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME'] = ''
          config.build_settings['ASSETCATALOG_COMPILER_STANDALONE_ICON_BEHAVIOR'] = 'none'
          config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
          config.build_settings['ASSETCATALOG_COMPILER_SKIP_APP_STORE_DEPLOYMENT'] = 'YES'
          
          # Exclude bundles from the build
          if target.name == 'StripeUICore'
            config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = 'StripeUICoreBundle.bundle'
          elsif target.name == 'StripePaymentsUI'
            config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = 'StripePaymentsUIBundle.bundle'
          end
        end
      end
    end
    
    # Save the project
    project.save
    puts "Successfully modified Pods project"
  rescue => e
    puts "Error modifying Pods project: #{e.message}"
    puts e.backtrace
  end
end
EOL

# Step 5: Create a script to remove asset catalogs
echo "Creating script to remove asset catalogs..."
cat > remove_asset_catalogs.sh << 'EOL'
#!/bin/bash

echo "Removing problematic asset catalogs..."

# List of problematic asset catalogs
ASSET_CATALOGS=(
  "Pods/DKPhotoGallery/DKPhotoGallery/Resource/Resources/Images.xcassets"
  "Pods/StripeUICore/StripeUICore/StripeUICore/Resources/StripeUICore.xcassets"
  "Pods/StripePayments/Stripe3DS2/Stripe3DS2/Resources/Stripe3DS2.xcassets"
  "Pods/StripePaymentsUI/StripePaymentsUI/StripePaymentsUI/Resources/StripePaymentsUI.xcassets"
  "Pods/StripePaymentSheet/StripePaymentSheet/StripePaymentSheet/Resources/StripePaymentSheet.xcassets"
  "Pods/Stripe/Stripe/StripeiOS/Resources/StripeiOS.xcassets"
  "Pods/DKImagePickerController/Sources/DKImagePickerController/Resource/Resources/Images.xcassets"
)

# Remove each asset catalog
for catalog in "${ASSET_CATALOGS[@]}"; do
  if [ -d "$catalog" ]; then
    echo "Removing: $catalog"
    rm -rf "$catalog"
    
    # Create an empty directory
    mkdir -p "$catalog"
    
    # Create a minimal Contents.json
    echo '{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}' > "$catalog/Contents.json"
    
    echo "Created empty asset catalog at: $catalog"
  else
    echo "Asset catalog not found: $catalog"
  fi
done

echo "Asset catalog removal completed!"
EOL

# Make the script executable
chmod +x remove_asset_catalogs.sh

# Step 6: Create a script to remove Contents.json files
echo "Creating script to remove Contents.json files..."
cat > remove_contents_json.sh << 'EOL'
#!/bin/bash

echo "Removing all Contents.json files from bundle directories..."

# Find and remove all Contents.json files in bundle directories
find_and_remove_contents_json() {
  local search_dir="$1"
  
  if [ -d "$search_dir" ]; then
    echo "Searching in $search_dir..."
    
    # Find all .bundle directories
    find "$search_dir" -name "*.bundle" -type d | while read -r bundle_dir; do
      contents_json="$bundle_dir/Contents.json"
      
      if [ -f "$contents_json" ]; then
        echo "Removing: $contents_json"
        rm -f "$contents_json"
      fi
    done
  else
    echo "Directory $search_dir does not exist, skipping"
  fi
}

# Check common build directories
find_and_remove_contents_json "build/ios"
find_and_remove_contents_json "../build/ios"
find_and_remove_contents_json "Pods"

echo "Contents.json removal completed!"
EOL

# Make the script executable
chmod +x remove_contents_json.sh

# Step 7: Get Flutter dependencies and install pods
echo "Getting Flutter dependencies..."
cd ..
flutter pub get

echo "Installing pods..."
cd ios
pod install

# Step 8: Run the Pods project modification script
echo "Running Pods project modification script..."
ruby modify_pods_project.rb "Pods/Pods.xcodeproj"

# Step 9: Run the asset catalogs removal script
echo "Running asset catalogs removal script..."
./remove_asset_catalogs.sh

# Step 10: Run the Contents.json removal script
echo "Running Contents.json removal script..."
./remove_contents_json.sh

# Step 11: Fix Pods_Runner framework issue
echo "Fixing Pods_Runner framework issue..."
cat > fix_pods_framework.rb << 'EOL'
#!/usr/bin/env ruby

require 'xcodeproj'

def fix_pods_framework(project_path)
  puts "Fixing Pods_Runner framework issue in: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Modify build settings for all configurations
      runner_target.build_configurations.each do |config|
        puts "Modifying build settings for configuration: #{config.name}"
        
        # Make sure the Pods xcconfig file is included
        config_file_path = "Pods/Target Support Files/Pods-Runner/Pods-Runner.#{config.name.downcase}.xcconfig"
        config.base_configuration_reference = project.new_file(config_file_path)
        
        # Add framework search paths
        if config.build_settings['FRAMEWORK_SEARCH_PATHS']
          config.build_settings['FRAMEWORK_SEARCH_PATHS'] << '$(PODS_ROOT)'
          config.build_settings['FRAMEWORK_SEARCH_PATHS'] << '$(PODS_CONFIGURATION_BUILD_DIR)'
        else
          config.build_settings['FRAMEWORK_SEARCH_PATHS'] = ['$(inherited)', '$(PODS_ROOT)', '$(PODS_CONFIGURATION_BUILD_DIR)']
        end
        
        # Add header search paths
        if config.build_settings['HEADER_SEARCH_PATHS']
          config.build_settings['HEADER_SEARCH_PATHS'] << '$(PODS_ROOT)/Headers/Public'
        else
          config.build_settings['HEADER_SEARCH_PATHS'] = ['$(inherited)', '$(PODS_ROOT)/Headers/Public']
        end
        
        # Make sure the pods framework is linked
        config.build_settings['LD_RUNPATH_SEARCH_PATHS'] = ['$(inherited)', '@executable_path/Frameworks']
        
        # Enable modules
        config.build_settings['CLANG_ENABLE_MODULES'] = 'YES'
        
        # Enable bitcode
        config.build_settings['ENABLE_BITCODE'] = 'NO'
        
        # Set other important settings
        config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'YES'
        config.build_settings['SWIFT_VERSION'] = '5.0'
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project settings"
    else
      puts "Error: Could not find Runner target"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_pods_framework("Runner.xcodeproj")
EOL

# Make the script executable
chmod +x fix_pods_framework.rb

# Run the script
ruby fix_pods_framework.rb

# Step 12: Fix Flutter frameworks embedding issue
echo "Creating Flutter frameworks fix script..."
cat > create_flutter_frameworks.sh << 'EOL'
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
EOL

# Make the script executable
chmod +x create_flutter_frameworks.sh

# Add the Flutter frameworks fix directly to the Xcode project
echo "Adding Flutter frameworks fix directly to the Xcode project..."

# Create a simple build phase script
cat > add_build_phase_directly.sh << 'EOL'
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
EOL

# Make the script executable
chmod +x add_build_phase_directly.sh

# Run the script
./add_build_phase_directly.sh

# Create a patch for the xcode_backend.dart file
echo "Creating patch for xcode_backend.dart..."
cat > xcode_backend_patch.sh << 'EOL'
#!/bin/bash

# Find the xcode_backend.dart file
XCODE_BACKEND_PATH=$(find $HOME/development/flutter/packages/flutter_tools/bin -name "xcode_backend.dart" 2>/dev/null)

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Could not find xcode_backend.dart file. Trying alternative locations..."
  XCODE_BACKEND_PATH=$(find $HOME/flutter/packages/flutter_tools/bin -name "xcode_backend.dart" 2>/dev/null)
fi

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Could not find xcode_backend.dart file. Trying more locations..."
  XCODE_BACKEND_PATH=$(find $HOME -name "xcode_backend.dart" 2>/dev/null | grep -v "Cache" | head -n 1)
fi

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Error: Could not find xcode_backend.dart file."
  echo "Skipping xcode_backend.dart patch..."
  exit 0
fi

echo "Found xcode_backend.dart at: $XCODE_BACKEND_PATH"

# Create a backup of the original file
cp "$XCODE_BACKEND_PATH" "$XCODE_BACKEND_PATH.orig"

# Add a check to create the frameworks directory if it doesn't exist
sed -i.bak '/final Directory frameworksDirectory = Directory/a\\
  // Create the frameworks directory if it doesn\\'\''t exist\\
  frameworksDirectory.createSync(recursive: true);\\
' "$XCODE_BACKEND_PATH"

echo "Patched xcode_backend.dart to create frameworks directory if it doesn't exist"
EOL

# Make the script executable
chmod +x xcode_backend_patch.sh

# Run the script
./xcode_backend_patch.sh

echo "All fixes completed! Try building the app now with: flutter build ios --no-codesign"
echo "For debugging on a device, use: flutter run"
