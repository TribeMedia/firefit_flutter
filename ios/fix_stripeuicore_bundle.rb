#!/usr/bin/env ruby

require 'xcodeproj'
require 'fileutils'

def find_and_remove_contents_json(directory)
  puts "Searching for StripeUICoreBundle.bundle/Contents.json in #{directory}..."
  
  # Find all StripeUICoreBundle.bundle directories
  Dir.glob("#{directory}/**/StripeUICoreBundle.bundle").each do |bundle_dir|
    contents_json = File.join(bundle_dir, "Contents.json")
    if File.exist?(contents_json)
      puts "Found and removing: #{contents_json}"
      FileUtils.rm_f(contents_json)
    end
  end
end

def modify_pods_project(project_path)
  puts "Modifying Pods project at #{project_path} to exclude Contents.json from StripeUICore..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the StripeUICore target
    stripe_target = project.targets.find { |t| t.name == 'StripeUICore' }
    
    if stripe_target
      puts "Found StripeUICore target"
      
      # Find all build phases
      stripe_target.build_phases.each do |phase|
        if phase.is_a?(Xcodeproj::Project::Object::PBXResourcesBuildPhase)
          puts "Found Resources build phase"
          
          # Find and remove Contents.json files
          files_to_remove = []
          
          phase.files.each do |build_file|
            if build_file.file_ref && build_file.file_ref.path && 
               (build_file.file_ref.path.include?('Contents.json') || 
                build_file.file_ref.path.include?('StripeUICoreBundle.bundle'))
              puts "  Found file to exclude: #{build_file.file_ref.path}"
              files_to_remove << build_file
            end
          end
          
          # Remove the files
          files_to_remove.each do |build_file|
            puts "  Removing #{build_file.file_ref.path} from resources"
            phase.remove_build_file(build_file)
          end
        end
      end
      
      # Add a script build phase to remove Contents.json files
      existing_phase = stripe_target.shell_script_build_phases.find { |phase| phase.name == 'Remove Contents.json' }
      
      if existing_phase
        puts "Updating existing Remove Contents.json build phase"
        existing_phase.shell_script = <<~SCRIPT
          find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
        SCRIPT
      else
        puts "Adding new Remove Contents.json build phase"
        new_phase = stripe_target.new_shell_script_build_phase('Remove Contents.json')
        new_phase.shell_script = <<~SCRIPT
          find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
        SCRIPT
      end
      
      # Save the project
      project.save
      puts "Successfully modified Pods project"
    else
      puts "StripeUICore target not found"
    end
  rescue => e
    puts "Error modifying Pods project: #{e.message}"
    puts e.backtrace
  end
end

# Remove any existing Contents.json files
find_and_remove_contents_json("../build/ios")
find_and_remove_contents_json("Pods")

# Modify the Pods project
modify_pods_project("Pods/Pods.xcodeproj") if File.exist?("Pods/Pods.xcodeproj")
