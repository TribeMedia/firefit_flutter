#!/bin/bash

echo "Running pre-build script to fix Stripe bundle issues..."

# Function to find and remove Contents.json from bundle directories
remove_contents_json() {
  local search_dir="$1"
  
  if [ -d "$search_dir" ]; then
    echo "Searching in $search_dir..."
    
    # Find all .bundle directories
    find "$search_dir" -name "*.bundle" -type d | while read -r bundle_dir; do
      contents_json="$bundle_dir/Contents.json"
      
      if [ -f "$contents_json" ]; then
        echo "Removing: $contents_json"
        rm -f "$contents_json"
      fi
    done
  else
    echo "Directory $search_dir does not exist, skipping"
  fi
}

# Check common build directories
remove_contents_json "../build/ios"
remove_contents_json "Pods"

echo "Pre-build fixes completed!"

# Add a build phase script to Runner.xcodeproj
cat > add_build_phase.rb << 'EOL'
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
          find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
        SCRIPT
      else
        puts "Adding new Remove Contents.json build phase"
        new_phase = runner_target.new_shell_script_build_phase('Remove Contents.json')
        new_phase.shell_script = <<~SCRIPT
          find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
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
add_build_phase("Runner.xcodeproj")
EOL

# Make the script executable
chmod +x add_build_phase.rb

# Run the script
ruby add_build_phase.rb

echo "Build phase added to remove Contents.json files during build"
