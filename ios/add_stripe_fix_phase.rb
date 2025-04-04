#!/usr/bin/env ruby

require 'xcodeproj'

def add_build_phase(project_path, script_path)
  puts "Adding build phase to run #{script_path} in #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      # Check if the build phase already exists
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == 'Fix Stripe Bundle Contents.json' }
      
      if existing_phase
        puts "Build phase already exists, updating script..."
        existing_phase.shell_script = "\"${SRCROOT}/#{script_path}\""
      else
        puts "Adding new build phase..."
        # Add a new build phase at the beginning
        new_phase = runner_target.new_shell_script_build_phase('Fix Stripe Bundle Contents.json')
        new_phase.shell_script = "\"${SRCROOT}/#{script_path}\""
        
        # Move the phase to be right before the "Thin Binary" phase
        thin_binary_phase_index = runner_target.build_phases.find_index { |phase| phase.display_name.include?('Thin Binary') }
        
        if thin_binary_phase_index
          # Get the phase we just added (it's at the end)
          phase_to_move = runner_target.build_phases.last
          
          # Remove it from its current position
          runner_target.build_phases.pop
          
          # Insert it before the Thin Binary phase
          runner_target.build_phases.insert(thin_binary_phase_index, phase_to_move)
        end
      end
      
      # Save the project
      project.save
      puts "Successfully added/updated build phase"
    else
      puts "Error: Could not find Runner target in the project"
    end
  rescue => e
    puts "Error adding build phase: #{e.message}"
    puts e.backtrace
  end
end

# Add the build phase to the Runner.xcodeproj
add_build_phase("Runner.xcodeproj", "fix_stripe_bundle.sh")
