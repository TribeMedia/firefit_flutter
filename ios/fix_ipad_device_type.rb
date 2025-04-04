#!/usr/bin/env ruby

require 'xcodeproj'

def fix_ipad_device_type(project_path)
  puts "Fixing iPad 3x device type issues in #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find all targets
    project.targets.each do |target|
      puts "Configuring target: #{target.name}"
      
      # Modify build settings for all targets
      target.build_configurations.each do |config|
        # Set targeted device family to iPhone only (1)
        config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'
        
        # Exclude iPad 3x assets
        config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = '*.imageset/*ipad*3x*'
        
        # Disable iPad support
        config.build_settings['SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        config.build_settings['SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
      end
    end
    
    # Save the project
    project.save
    puts "Successfully fixed iPad device type issues"
  rescue => e
    puts "Error fixing iPad device type issues: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_ipad_device_type("Runner.xcodeproj")

# Fix the Pods project if it exists
if File.exist?("Pods/Pods.xcodeproj")
  fix_ipad_device_type("Pods/Pods.xcodeproj")
end
