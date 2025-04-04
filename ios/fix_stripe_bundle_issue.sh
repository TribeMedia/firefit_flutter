#!/bin/bash

echo "Running comprehensive fix for Stripe bundle issues..."

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

# Step 5: Create a script to remove Contents.json files
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

# Step 6: Get Flutter dependencies and install pods
echo "Getting Flutter dependencies..."
cd ..
flutter pub get

echo "Installing pods..."
cd ios
pod install

# Step 7: Run the Pods project modification script
echo "Running Pods project modification script..."
ruby modify_pods_project.rb "Pods/Pods.xcodeproj"

# Step 8: Run the Contents.json removal script
echo "Running Contents.json removal script..."
./remove_contents_json.sh

echo "All fixes completed! Try building the app now."
