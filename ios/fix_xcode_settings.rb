#!/usr/bin/env ruby

require 'xcodeproj'

def fix_xcode_settings(project_path)
  puts "Modifying Xcode project settings at: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Modify build settings for all configurations
      runner_target.build_configurations.each do |config|
        puts "Modifying build settings for configuration: #{config.name}"
        
        # Set targeted device family to iPhone only (1)
        config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'
        
        # Disable iPad support
        config.build_settings['SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        config.build_settings['SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        
        # Exclude iPad assets
        config.build_settings['ASSETCATALOG_COMPILER_APPICON_NAME'] = 'AppIcon'
        config.build_settings['ASSETCATALOG_COMPILER_INCLUDE_ALL_APPICON_ASSETS'] = 'NO'
        
        # Disable asset catalog compilation warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        config.build_settings['ASSETCATALOG_COMPILER_WARNINGS'] = 'NO'
        
        # Set deployment target to latest iOS version
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '14.0'
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
fix_xcode_settings("Runner.xcodeproj")

puts "Xcode settings fix completed!"
