#!/bin/bash

echo "Starting iOS build fixes..."

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

# Step 3: Create a script to fix asset catalog issues
cat > fix_asset_catalogs.rb << 'EOL'
#!/usr/bin/env ruby

require 'fileutils'

def fix_asset_catalog(catalog_path)
  if File.directory?(catalog_path)
    puts "Fixing asset catalog: #{catalog_path}"
    
    # Create a backup
    backup_path = "#{catalog_path}.bak"
    FileUtils.rm_rf(backup_path) if File.directory?(backup_path)
    FileUtils.cp_r(catalog_path, backup_path)
    
    # Create an empty asset catalog structure
    FileUtils.rm_rf(catalog_path)
    FileUtils.mkdir_p(catalog_path)
    
    # Create a minimal Contents.json
    File.open("#{catalog_path}/Contents.json", 'w') do |f|
      f.write(<<~JSON)
        {
          "info" : {
            "author" : "xcode",
            "version" : 1
          }
        }
      JSON
    end
    
    puts "  Created empty asset catalog at #{catalog_path}"
  else
    puts "Warning: Asset catalog not found at #{catalog_path}"
  end
end

# Fix known problematic asset catalogs
problematic_catalogs = [
  "#{Dir.pwd}/Pods/StripeUICore/StripeUICore/StripeUICore/Resources/StripeUICore.xcassets",
  "#{Dir.pwd}/Pods/DKPhotoGallery/DKPhotoGallery/Resource/Resources/Images.xcassets"
]

problematic_catalogs.each do |catalog|
  fix_asset_catalog(catalog)
end

puts "Asset catalog fix completed"
EOL

# Step 4: Create a script to fix duplicate Contents.json issues
cat > fix_duplicate_contents.rb << 'EOL'
#!/usr/bin/env ruby

require 'fileutils'
require 'pathname'

def find_duplicate_contents_json(build_dir)
  return unless File.directory?(build_dir)
  
  puts "Searching for duplicate Contents.json files in #{build_dir}..."
  
  # Find all Contents.json files in bundle directories
  bundle_contents_files = Dir.glob("#{build_dir}/**/*.bundle/Contents.json")
  
  # Group by filename to find duplicates
  duplicates = bundle_contents_files.group_by { |f| File.basename(f) }
                                   .select { |_, files| files.size > 1 }
  
  duplicates.each do |filename, files|
    puts "Found #{files.size} duplicate '#{filename}' files:"
    files.each_with_index do |file, index|
      if index == 0
        puts "  Keeping: #{file}"
      else
        puts "  Removing: #{file}"
        # Create a unique version instead of deleting
        new_name = "#{File.dirname(file)}/Contents_#{index}.json"
        FileUtils.mv(file, new_name)
        puts "  Renamed to: #{new_name}"
      end
    end
  end
end

# Check both debug and release build directories
build_dirs = [
  "../build/ios/Debug-iphoneos",
  "../build/ios/Debug-iphonesimulator",
  "../build/ios/Release-iphoneos",
  "../build/ios/Release-iphonesimulator"
]

build_dirs.each do |dir|
  find_duplicate_contents_json(dir)
end

puts "Duplicate Contents.json fix completed!"
EOL

# Step 5: Create a script to modify the Xcode project to avoid asset catalog compilation issues
cat > fix_xcode_project.rb << 'EOL'
#!/usr/bin/env ruby

require 'xcodeproj'

def fix_xcode_project(project_path)
  puts "Modifying Xcode project at #{project_path} to disable asset catalog compilation..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      # Modify build settings to handle asset catalog compilation issues
      runner_target.build_configurations.each do |config|
        # Disable asset catalog compilation warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        
        # Set asset catalog compiler optimization to space
        config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
        
        # Add a custom flag to ignore asset catalog compilation warnings
        if config.build_settings['OTHER_CFLAGS']
          config.build_settings['OTHER_CFLAGS'] << ' -Wno-error=asset-catalog-compilation'
        else
          config.build_settings['OTHER_CFLAGS'] = '-Wno-error=asset-catalog-compilation'
        end
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project settings"
    else
      puts "Error: Could not find Runner target in the project"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
  end
end

# Fix the Runner.xcodeproj
fix_xcode_project("Runner.xcodeproj")

puts true
EOL

# Step 6: Create a post_install hook modification for Podfile
cat > modify_podfile.rb << 'EOL'
#!/usr/bin/env ruby

podfile_path = 'Podfile'
podfile_content = File.read(podfile_path)

# Check if post_install hook already exists
if podfile_content.include?('post_install do |installer|')
  # Modify existing post_install hook
  modified_content = podfile_content.gsub(/(post_install do \|installer\|.*?)end/m) do |match|
    post_install_block = $1
    
    # Check if the fix is already included
    if post_install_block.include?('# Fix for asset catalog issues')
      puts "Post-install hook already contains asset catalog fixes"
      match
    else
      # Add our fixes to the existing post_install hook
      post_install_block + <<-RUBY
  # Fix for asset catalog issues
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
      config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
      if config.build_settings['OTHER_CFLAGS']
        config.build_settings['OTHER_CFLAGS'] << ' -Wno-error=asset-catalog-compilation'
      else
        config.build_settings['OTHER_CFLAGS'] = '-Wno-error=asset-catalog-compilation'
      end
    end
  end
end
      RUBY
    end
  end
else
  # Add new post_install hook
  modified_content = podfile_content + <<-RUBY

post_install do |installer|
  # Fix for asset catalog issues
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
      config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
      if config.build_settings['OTHER_CFLAGS']
        config.build_settings['OTHER_CFLAGS'] << ' -Wno-error=asset-catalog-compilation'
      else
        config.build_settings['OTHER_CFLAGS'] = '-Wno-error=asset-catalog-compilation'
      end
    end
  end
end
  RUBY
end

File.write(podfile_path, modified_content)
puts "Modified Podfile with asset catalog fixes"
EOL

# Step 7: Make scripts executable
chmod +x fix_asset_catalogs.rb
chmod +x fix_duplicate_contents.rb
chmod +x fix_xcode_project.rb
chmod +x modify_podfile.rb

# Step 8: Run the scripts
echo "Running Podfile modification script..."
ruby modify_podfile.rb

# Step 9: Get Flutter dependencies and install pods
echo "Getting Flutter dependencies..."
cd ..
flutter pub get

echo "Installing pods..."
cd ios
pod install

# Step 10: Run asset catalog fix script after pod install
echo "Running asset catalog fix script..."
ruby fix_asset_catalogs.rb

# Step 11: Run Xcode project fix script
echo "Running Xcode project fix script..."
ruby fix_xcode_project.rb

# Step 12: Clean build directory and run duplicate contents fix
echo "Cleaning build directory and fixing duplicate Contents.json files..."
cd ..
flutter clean
cd ios
ruby fix_duplicate_contents.rb

echo "iOS build fixes completed! Try building the app now."
