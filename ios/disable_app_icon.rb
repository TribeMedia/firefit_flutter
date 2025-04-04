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
