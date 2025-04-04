#!/usr/bin/env ruby

require 'fileutils'

def modify_podfile(podfile_path)
  puts "Modifying Podfile at #{podfile_path} to exclude StripeUICoreBundle.bundle..."
  
  begin
    # Read the Podfile content
    podfile_content = File.read(podfile_path)
    
    # Check if the exclusion is already added
    if podfile_content.include?('# Exclude StripeUICoreBundle.bundle')
      puts "Exclusion already added to Podfile"
      return
    end
    
    # Add the exclusion to the post_install hook
    if podfile_content.include?('post_install do |installer|')
      # Modify existing post_install hook
      modified_content = podfile_content.gsub(/(post_install do \|installer\|.*?)end/m) do |match|
        post_install_block = $1
        
        post_install_block + <<~RUBY
  # Exclude StripeUICoreBundle.bundle
  installer.pods_project.targets.each do |target|
    if target.name == 'StripeUICore'
      target.build_configurations.each do |config|
        # Exclude the bundle from the build
        config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = 'StripeUICoreBundle.bundle'
      end
    end
  end
end
        RUBY
      end
    else
      # Add new post_install hook
      modified_content = podfile_content + <<~RUBY

post_install do |installer|
  # Apply Flutter specific settings
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
  end
  
  # Exclude StripeUICoreBundle.bundle
  installer.pods_project.targets.each do |target|
    if target.name == 'StripeUICore'
      target.build_configurations.each do |config|
        # Exclude the bundle from the build
        config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = 'StripeUICoreBundle.bundle'
      end
    end
  end
end
      RUBY
    end
    
    # Write the modified content back to the Podfile
    File.write(podfile_path, modified_content)
    puts "Successfully modified Podfile"
    
    # Create a script to remove the bundle from the build directory
    remove_script_path = File.join(File.dirname(podfile_path), 'remove_stripe_bundle.sh')
    File.write(remove_script_path, <<~BASH
      #!/bin/bash
      
      # This script removes the StripeUICoreBundle.bundle from the build directory
      
      echo "Removing StripeUICoreBundle.bundle from build directory..."
      
      # Find all StripeUICoreBundle.bundle directories
      find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
        echo "Removing $bundle_dir"
        rm -rf "$bundle_dir"
      done
      
      echo "Removed StripeUICoreBundle.bundle"
    BASH
    )
    
    # Make the script executable
    FileUtils.chmod('+x', remove_script_path)
    puts "Created and made executable: #{remove_script_path}"
    
    # Create a script to run before building
    pre_build_script_path = File.join(File.dirname(podfile_path), 'pre_build.sh')
    File.write(pre_build_script_path, <<~BASH
      #!/bin/bash
      
      # This script runs before building the app
      
      echo "Running pre-build script..."
      
      # Remove the StripeUICoreBundle.bundle from the Pods directory
      find "${SRCROOT}/Pods" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
        echo "Removing $bundle_dir"
        rm -rf "$bundle_dir"
      done
      
      echo "Pre-build script completed"
    BASH
    )
    
    # Make the script executable
    FileUtils.chmod('+x', pre_build_script_path)
    puts "Created and made executable: #{pre_build_script_path}"
    
  rescue => e
    puts "Error modifying Podfile: #{e.message}"
    puts e.backtrace
  end
end

# Modify the Podfile
modify_podfile('Podfile')
