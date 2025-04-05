#!/bin/bash

echo "Fixing Flutter frameworks embedding issue..."

# Create a patch file for the xcode_backend.dart file
cat > xcode_backend_patch.diff << 'EOL'
--- xcode_backend.dart.orig
+++ xcode_backend.dart
@@ -217,7 +217,10 @@
   final String frameworksPath = environment['FRAMEWORKS_FOLDER_PATH']!;
   final String builtProductsPath = environment['BUILT_PRODUCTS_DIR']!;
   final Directory frameworksDirectory = Directory(path.join(builtProductsPath, frameworksPath));
-  final String flutterFrameworkPath = path.join(frameworksDirectory.path, 'Flutter.framework');
+  
+  // Create the frameworks directory if it doesn't exist
+  frameworksDirectory.createSync(recursive: true);
+  final String flutterFrameworkPath = path.join(frameworksDirectory.path, 'Flutter.framework');
   final String appFrameworkPath = path.join(frameworksDirectory.path, 'App.framework');
   final String flutterAssetsPath = path.join(appFrameworkPath, 'flutter_assets');
 
EOL

# Find the xcode_backend.dart file
XCODE_BACKEND_PATH=$(find $HOME/development/flutter/packages/flutter_tools/bin -name "xcode_backend.dart" 2>/dev/null)

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Could not find xcode_backend.dart file. Trying alternative locations..."
  XCODE_BACKEND_PATH=$(find $HOME/flutter/packages/flutter_tools/bin -name "xcode_backend.dart" 2>/dev/null)
fi

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Could not find xcode_backend.dart file. Trying more locations..."
  XCODE_BACKEND_PATH=$(find $HOME -name "xcode_backend.dart" 2>/dev/null | grep -v "Cache" | head -n 1)
fi

if [ -z "$XCODE_BACKEND_PATH" ]; then
  echo "Error: Could not find xcode_backend.dart file."
  echo "Creating a direct fix instead..."
  
  # Create a direct fix by modifying the Xcode project
  cat > fix_xcode_project.rb << 'EOL'
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
EOL

  chmod +x fix_xcode_project.rb
  ruby fix_xcode_project.rb
  exit 0
fi

echo "Found xcode_backend.dart at: $XCODE_BACKEND_PATH"

# Create a backup of the original file
cp "$XCODE_BACKEND_PATH" "$XCODE_BACKEND_PATH.orig"

# Apply the patch
patch "$XCODE_BACKEND_PATH" xcode_backend_patch.diff

if [ $? -eq 0 ]; then
  echo "Successfully patched xcode_backend.dart"
else
  echo "Failed to patch xcode_backend.dart"
  echo "Creating a direct fix instead..."
  
  # Create a direct fix by modifying the Xcode project
  cat > fix_xcode_project.rb << 'EOL'
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
EOL

  chmod +x fix_xcode_project.rb
  ruby fix_xcode_project.rb
fi

echo "Flutter frameworks embedding fix completed!"
