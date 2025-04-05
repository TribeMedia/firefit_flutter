#!/usr/bin/env ruby

require 'xcodeproj'

def add_flutter_frameworks_phase(project_path)
  puts "Adding Flutter frameworks fix build phase to: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Check if the build phase already exists
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == 'Fix Flutter Frameworks' }
      
      if existing_phase
        puts "Updating existing Fix Flutter Frameworks build phase"
        existing_phase.shell_script = <<~SCRIPT
          "${SRCROOT}/fix_flutter_frameworks.sh"
        SCRIPT
      else
        puts "Adding new Fix Flutter Frameworks build phase"
        new_phase = runner_target.new_shell_script_build_phase('Fix Flutter Frameworks')
        new_phase.shell_script = <<~SCRIPT
          "${SRCROOT}/fix_flutter_frameworks.sh"
        SCRIPT
        
        # We'll just add it at the end, no need to move it
      end
      
      # Save the project
      project.save
      puts "Successfully added Flutter frameworks fix build phase"
    else
      puts "Error: Could not find Runner target"
    end
  rescue => e
    puts "Error adding Flutter frameworks fix build phase: #{e.message}"
    puts e.backtrace
  end
end

# Add the build phase to the Runner.xcodeproj
add_flutter_frameworks_phase("Runner.xcodeproj")
