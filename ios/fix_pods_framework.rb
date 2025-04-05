#!/usr/bin/env ruby

require 'xcodeproj'

def fix_pods_framework(project_path)
  puts "Fixing Pods_Runner framework issue in: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Modify build settings for all configurations
      runner_target.build_configurations.each do |config|
        puts "Modifying build settings for configuration: #{config.name}"
        
        # Make sure the Pods xcconfig file is included
        config_file_path = "Pods/Target Support Files/Pods-Runner/Pods-Runner.#{config.name.downcase}.xcconfig"
        config.base_configuration_reference = project.new_file(config_file_path)
        
        # Add framework search paths
        if config.build_settings['FRAMEWORK_SEARCH_PATHS']
          config.build_settings['FRAMEWORK_SEARCH_PATHS'] << '$(PODS_ROOT)'
          config.build_settings['FRAMEWORK_SEARCH_PATHS'] << '$(PODS_CONFIGURATION_BUILD_DIR)'
        else
          config.build_settings['FRAMEWORK_SEARCH_PATHS'] = ['$(inherited)', '$(PODS_ROOT)', '$(PODS_CONFIGURATION_BUILD_DIR)']
        end
        
        # Add header search paths
        if config.build_settings['HEADER_SEARCH_PATHS']
          config.build_settings['HEADER_SEARCH_PATHS'] << '$(PODS_ROOT)/Headers/Public'
        else
          config.build_settings['HEADER_SEARCH_PATHS'] = ['$(inherited)', '$(PODS_ROOT)/Headers/Public']
        end
        
        # Make sure the pods framework is linked
        config.build_settings['LD_RUNPATH_SEARCH_PATHS'] = ['$(inherited)', '@executable_path/Frameworks']
        
        # Enable modules
        config.build_settings['CLANG_ENABLE_MODULES'] = 'YES'
        
        # Enable bitcode
        config.build_settings['ENABLE_BITCODE'] = 'NO'
        
        # Set other important settings
        config.build_settings['ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES'] = 'YES'
        config.build_settings['SWIFT_VERSION'] = '5.0'
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project settings"
    else
      puts "Error: Could not find Runner target"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_pods_framework("Runner.xcodeproj")
