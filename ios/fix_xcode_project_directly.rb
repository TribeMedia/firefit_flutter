#!/usr/bin/env ruby

require 'xcodeproj'
require 'fileutils'

def fix_xcode_project(project_path)
  puts "Directly modifying Xcode project at #{project_path} to exclude StripeUICoreBundle.bundle..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Add a Run Script build phase that will run BEFORE the Copy Bundle Resources phase
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == 'Remove StripeUICoreBundle.bundle' }
      
      if existing_phase
        puts "Updating existing Remove StripeUICoreBundle.bundle build phase"
      else
        puts "Adding new Remove StripeUICoreBundle.bundle build phase"
        new_phase = runner_target.new_shell_script_build_phase('Remove StripeUICoreBundle.bundle')
        
        # Move the phase to be the first build phase
        runner_target.build_phases.insert(0, runner_target.build_phases.pop)
        
        # Set the script content
        new_phase.shell_script = <<~SCRIPT
          # This script removes the StripeUICoreBundle.bundle from the build directory
          # to prevent the "Multiple commands produce" error
          
          echo "Removing StripeUICoreBundle.bundle from build directory..."
          
          # Find and remove any StripeUICoreBundle.bundle directories
          find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
            echo "Removing $bundle_dir"
            rm -rf "$bundle_dir"
          done
          
          echo "Removed StripeUICoreBundle.bundle"
        SCRIPT
      end
      
      # Modify build settings for all configurations
      runner_target.build_configurations.each do |config|
        puts "Configuring #{config.name} build configuration"
        
        # Exclude StripeUICoreBundle.bundle from the build
        config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = '**/StripeUICoreBundle.bundle'
        puts "  Set EXCLUDED_SOURCE_FILE_NAMES to **/StripeUICoreBundle.bundle"
        
        # Disable asset catalog compiler warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        puts "  Set ASSETCATALOG_COMPILER_NOTICES to NO"
        
        # Set asset catalog compiler optimization to space
        config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
        puts "  Set ASSETCATALOG_COMPILER_OPTIMIZATION to space"
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project"
    else
      puts "Error: Could not find Runner target in the project"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_xcode_project("Runner.xcodeproj")
