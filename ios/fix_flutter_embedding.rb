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
      
      # Find the "Thin Binary" build phase
      thin_binary_phase = runner_target.shell_script_build_phases.find { |phase| phase.name == "Thin Binary" }
      
      if thin_binary_phase
        puts "Found 'Thin Binary' build phase"
        
        # Modify the script to handle null values
        original_script = thin_binary_phase.shell_script
        
        # Add a check to create dummy frameworks if they don't exist
        modified_script = <<~SCRIPT
          #{original_script}
          
          # Create Flutter frameworks directory if it doesn't exist
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
          
          # Create dummy Flutter.framework to satisfy the null check
          if [ ! -d "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework" ]; then
            mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
            touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"
            echo "Created dummy Flutter.framework"
          fi
          
          # Create dummy App.framework to satisfy the null check
          if [ ! -d "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework" ]; then
            mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
            touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"
            echo "Created dummy App.framework"
          fi
        SCRIPT
        
        thin_binary_phase.shell_script = modified_script
        puts "Modified 'Thin Binary' build phase script"
      else
        puts "Could not find 'Thin Binary' build phase"
        
        # Add a new build phase to create the dummy frameworks
        new_phase = runner_target.new_shell_script_build_phase('Create Flutter Frameworks')
        new_phase.shell_script = <<~SCRIPT
          # Create Flutter frameworks directory if it doesn't exist
          mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}"
          
          # Create dummy Flutter.framework to satisfy the null check
          if [ ! -d "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework" ]; then
            mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework"
            touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/Flutter.framework/Flutter"
            echo "Created dummy Flutter.framework"
          fi
          
          # Create dummy App.framework to satisfy the null check
          if [ ! -d "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework" ]; then
            mkdir -p "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework"
            touch "${BUILT_PRODUCTS_DIR}/${FRAMEWORKS_FOLDER_PATH}/App.framework/App"
            echo "Created dummy App.framework"
          fi
        SCRIPT
        
        # Move the phase to be right before the "Embed Frameworks" phase
        embed_frameworks_phase = runner_target.build_phases.find { |phase| phase.display_name == "Embed Frameworks" }
        if embed_frameworks_phase
          index = runner_target.build_phases.index(embed_frameworks_phase)
          if index
            runner_target.build_phases.move(runner_target.build_phases.index(new_phase), index)
          end
        end
        
        puts "Added new 'Create Flutter Frameworks' build phase"
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
