#!/usr/bin/env ruby

require 'xcodeproj'

def fix_stripe_bundle_issue(project_path)
  puts "Fixing Stripe bundle issue in: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Remove existing build phases with similar names
      runner_target.shell_script_build_phases.each do |phase|
        if phase.name == 'Fix Stripe Bundle Issue' || phase.name == 'Remove Contents.json' || phase.name == 'Fix Flutter Frameworks'
          puts "Removing existing build phase: #{phase.name}"
          runner_target.build_phases.delete(phase)
        end
      end
      
      # Add a new build phase to fix the Stripe bundle issue
      new_phase = runner_target.new_shell_script_build_phase('Fix Stripe Bundle Issue')
      new_phase.shell_script = <<~SCRIPT
        # Fix Stripe bundle issue
        find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
        
        # Create Flutter frameworks directory if it doesn't exist
        mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
        
        # Create a dummy Flutter.framework to satisfy the null check
        mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
        touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"
        
        # Create a dummy App.framework to satisfy the null check
        mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
        touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"
        
        echo "Flutter frameworks fix completed!"
      SCRIPT
      
      # Move the phase to be the first build phase
      runner_target.build_phases.unshift(runner_target.build_phases.pop)
      
      # Save the project
      project.save
      puts "Successfully added Fix Stripe Bundle Issue build phase"
    else
      puts "Error: Could not find Runner target"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_stripe_bundle_issue("Runner.xcodeproj")
