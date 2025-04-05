#!/usr/bin/env ruby

require 'xcodeproj'

def fix_flutter_embedding(project_path)
  puts "Fixing Flutter frameworks embedding issue in: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Add a new build phase to create the dummy frameworks
      existing_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == "Create Flutter Frameworks" }
      
      if existing_phase
        puts "Updating existing Create Flutter Frameworks build phase"
        existing_phase.shell_script = <<~SCRIPT
          # Create Flutter frameworks directory if it doesn't exist
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
          
          # Create dummy Flutter.framework to satisfy the null check
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
          touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"
          
          # Create dummy App.framework to satisfy the null check
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
          touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"
          
          echo "Created dummy Flutter frameworks"
        SCRIPT
      else
        puts "Adding new Create Flutter Frameworks build phase"
        new_phase = runner_target.new_shell_script_build_phase('Create Flutter Frameworks')
        new_phase.shell_script = <<~SCRIPT
          # Create Flutter frameworks directory if it doesn't exist
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
          
          # Create dummy Flutter.framework to satisfy the null check
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
          touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"
          
          # Create dummy App.framework to satisfy the null check
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
          touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"
          
          echo "Created dummy Flutter frameworks"
        SCRIPT
        
        # Move the phase to be right after the "Thin Binary" phase
        thin_binary_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == "Thin Binary" }
        if thin_binary_phase
          index = runner_target.build_phases.index(thin_binary_phase)
          if index
            runner_target.build_phases.move(runner_target.build_phases.index(new_phase), index + 1)
          end
        end
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project"
    else
      puts "Error: Could not find Runner target"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_flutter_embedding("Runner.xcodeproj")
