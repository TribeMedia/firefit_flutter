#!/usr/bin/env ruby

require 'xcodeproj'

def remove_bundle_from_project(project_path)
  puts "Modifying Xcode project at: #{project_path}"
  
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
    end
    
    # Save the project
    project.save
    puts "Successfully modified Xcode project"
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Modify the Pods project
remove_bundle_from_project("Pods/Pods.xcodeproj")

puts "Bundle removal completed!"
