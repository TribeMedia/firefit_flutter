#!/usr/bin/env ruby

require 'xcodeproj'

def add_build_phase(project_path)
  puts "Adding pre-build phase to #{project_path}..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Check if the build phase already exists
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == 'Remove Contents.json' }
      
      if existing_phase
        puts "Updating existing Remove Contents.json build phase"
        existing_phase.shell_script = <<~SCRIPT
          find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \; | xargs rm -f
        SCRIPT
      else
        puts "Adding new Remove Contents.json build phase"
        new_phase = runner_target.new_shell_script_build_phase('Remove Contents.json')
        new_phase.shell_script = <<~SCRIPT
          find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \; | xargs rm -f
        SCRIPT
        
        # Move the phase to be the first build phase
        runner_target.build_phases.unshift(runner_target.build_phases.pop)
      end
      
      # Save the project
      project.save
      puts "Successfully added/updated pre-build phase"
    else
      puts "Error: Could not find Runner target"
    end
  rescue => e
    puts "Error adding build phase: #{e.message}"
    puts e.backtrace
  end
end

# Add the build phase to Runner.xcodeproj
add_build_phase("/Users/gqadonis/Projects/TribeMedia/firefit_flutter/ios/Runner.xcodeproj")
