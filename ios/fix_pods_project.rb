#!/usr/bin/env ruby

require 'xcodeproj'

def fix_pods_project(project_path)
  puts "Modifying Pods project at #{project_path} to remove Contents.json from resources..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the problematic targets
    problematic_targets = ['StripeUICore', 'DKPhotoGallery']
    
    problematic_targets.each do |target_name|
      target = project.targets.find { |t| t.name == target_name }
      
      if target
        puts "Found target: #{target_name}"
        
        # Find the "Copy Bundle Resources" build phase
        resources_phase = target.build_phases.find { |phase| phase.display_name.include?('Copy Bundle Resources') }
        
        if resources_phase
          puts "Found 'Copy Bundle Resources' phase in #{target_name}"
          
          # Find and remove Contents.json files
          files_to_remove = []
          
          resources_phase.files.each do |build_file|
            if build_file.file_ref && build_file.file_ref.path && build_file.file_ref.path.include?('Contents.json')
              puts "  Found Contents.json file: #{build_file.file_ref.path}"
              files_to_remove << build_file
            end
          end
          
          # Remove the files
          files_to_remove.each do |build_file|
            puts "  Removing #{build_file.file_ref.path} from resources"
            resources_phase.remove_build_file(build_file)
          end
          
          puts "Removed #{files_to_remove.count} Contents.json files from #{target_name}"
        else
          puts "No 'Copy Bundle Resources' phase found in #{target_name}"
        end
      else
        puts "Target #{target_name} not found"
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

# Fix the Pods.xcodeproj
fix_pods_project("Pods/Pods.xcodeproj")
