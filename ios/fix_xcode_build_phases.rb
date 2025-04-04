#!/usr/bin/env ruby

require 'xcodeproj'
require 'fileutils'

def fix_xcode_build_phases(project_path)
  puts "Directly modifying Xcode project build phases at #{project_path}..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Add a Run Script build phase that will run BEFORE the Copy Bundle Resources phase
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == 'Remove Problematic Contents.json' }
      
      if existing_phase
        puts "Updating existing Remove Problematic Contents.json build phase"
      else
        puts "Adding new Remove Problematic Contents.json build phase"
        new_phase = runner_target.new_shell_script_build_phase('Remove Problematic Contents.json')
        
        # Move the phase to be the first build phase
        runner_target.build_phases.insert(0, runner_target.build_phases.pop)
        
        # Set the script content
        new_phase.shell_script = <<~SCRIPT
          # This script removes the problematic Contents.json file from the build directory
          # to prevent the "Multiple commands produce" error
          
          # Find and remove any existing Contents.json files in StripeUICoreBundle.bundle
          find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
            contents_json="${bundle_dir}/Contents.json"
            if [ -f "$contents_json" ]; then
              echo "Removing $contents_json"
              rm -f "$contents_json"
            fi
          done
          
          echo "Removed problematic Contents.json files"
        SCRIPT
      end
      
      # Find the Copy Bundle Resources phase
      copy_bundle_phase = runner_target.build_phases.find { |phase| phase.display_name.include?('Copy Bundle Resources') }
      
      if copy_bundle_phase
        puts "Found Copy Bundle Resources phase"
        
        # Find and remove any references to Contents.json files
        files_to_remove = []
        
        copy_bundle_phase.files.each do |build_file|
          if build_file.file_ref && build_file.file_ref.path && build_file.file_ref.path.include?('Contents.json')
            puts "  Found Contents.json file: #{build_file.file_ref.path}"
            files_to_remove << build_file
          end
        end
        
        # Remove the files
        files_to_remove.each do |build_file|
          puts "  Removing #{build_file.file_ref.path} from Copy Bundle Resources phase"
          copy_bundle_phase.remove_build_file(build_file)
        end
      else
        puts "No Copy Bundle Resources phase found"
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project build phases"
    else
      puts "Error: Could not find Runner target in the project"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_xcode_build_phases("Runner.xcodeproj")
