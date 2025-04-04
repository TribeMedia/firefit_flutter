#!/usr/bin/env ruby

require 'xcodeproj'
require 'fileutils'

def fix_stripe_bundle_issue(project_path)
  puts "Fixing StripeUICore bundle issue in #{project_path}..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Add a Run Script build phase to handle the duplicate Contents.json issue
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == 'Fix Stripe Bundle Issue' }
      
      if existing_phase
        puts "Updating existing Fix Stripe Bundle Issue build phase"
        existing_phase.shell_script = <<~SCRIPT
          # This script fixes the "Multiple commands produce Contents.json" error
          # by ensuring only one Contents.json file exists in the StripeUICoreBundle.bundle
          
          # Find all StripeUICoreBundle.bundle directories
          find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
            # Count how many Contents.json files exist in this bundle
            contents_count=$(find "$bundle_dir" -name "Contents.json" | wc -l)
            
            if [ "$contents_count" -gt 1 ]; then
              echo "Found multiple Contents.json files in $bundle_dir"
              
              # Keep only the first Contents.json file
              find "$bundle_dir" -name "Contents.json" | tail -n +2 | while read -r file; do
                echo "Removing duplicate: $file"
                rm -f "$file"
              done
            fi
          done
          
          echo "Fixed Stripe bundle issue"
        SCRIPT
      else
        puts "Adding new Fix Stripe Bundle Issue build phase"
        new_phase = runner_target.new_shell_script_build_phase('Fix Stripe Bundle Issue')
        
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
        
        # Set the script content
        new_phase.shell_script = <<~SCRIPT
          # This script fixes the "Multiple commands produce Contents.json" error
          # by ensuring only one Contents.json file exists in the StripeUICoreBundle.bundle
          
          # Find all StripeUICoreBundle.bundle directories
          find "${BUILT_PRODUCTS_DIR}" -name "StripeUICoreBundle.bundle" -type d | while read -r bundle_dir; do
            # Count how many Contents.json files exist in this bundle
            contents_count=$(find "$bundle_dir" -name "Contents.json" | wc -l)
            
            if [ "$contents_count" -gt 1 ]; then
              echo "Found multiple Contents.json files in $bundle_dir"
              
              # Keep only the first Contents.json file
              find "$bundle_dir" -name "Contents.json" | tail -n +2 | while read -r file; do
                echo "Removing duplicate: $file"
                rm -f "$file"
              done
            fi
          done
          
          echo "Fixed Stripe bundle issue"
        SCRIPT
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
fix_stripe_bundle_issue("Runner.xcodeproj")
