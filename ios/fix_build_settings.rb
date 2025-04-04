#!/usr/bin/env ruby

require 'xcodeproj'

def fix_build_settings(project_path)
  puts "Modifying Xcode project at #{project_path} to exclude Contents.json files from build..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      puts "Found Runner target"
      
      # Modify build settings for all configurations
      runner_target.build_configurations.each do |config|
        puts "Configuring #{config.name} build configuration"
        
        # Add excluded file patterns for Contents.json
        excluded_files = [
          "*.bundle/Contents.json",
          "**/StripeUICoreBundle.bundle/Contents.json",
          "**/StripeUICore/StripeUICoreBundle.bundle/Contents.json"
        ]
        
        if config.build_settings['EXCLUDED_SOURCE_FILE_NAMES']
          excluded_files.each do |pattern|
            if !config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'].include?(pattern)
              config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] << " #{pattern}"
              puts "  Added #{pattern} to existing EXCLUDED_SOURCE_FILE_NAMES"
            end
          end
        else
          config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = excluded_files.join(' ')
          puts "  Set EXCLUDED_SOURCE_FILE_NAMES to #{excluded_files.join(' ')}"
        end
        
        # Add a custom flag to ignore asset catalog compilation warnings
        if config.build_settings['OTHER_CFLAGS']
          if !config.build_settings['OTHER_CFLAGS'].include?('-Wno-error=asset-catalog-compilation')
            config.build_settings['OTHER_CFLAGS'] << ' -Wno-error=asset-catalog-compilation'
            puts "  Added -Wno-error=asset-catalog-compilation to existing OTHER_CFLAGS"
          end
        else
          config.build_settings['OTHER_CFLAGS'] = '-Wno-error=asset-catalog-compilation'
          puts "  Set OTHER_CFLAGS to -Wno-error=asset-catalog-compilation"
        end
        
        # Disable asset catalog compiler warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        puts "  Set ASSETCATALOG_COMPILER_NOTICES to NO"
        
        # Set asset catalog compiler optimization to space
        config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
        puts "  Set ASSETCATALOG_COMPILER_OPTIMIZATION to space"
        
        # Add a custom flag to exclude Contents.json files from being copied
        config.build_settings['COPY_PHASE_STRIP'] = 'NO'
        puts "  Set COPY_PHASE_STRIP to NO"
        
        # Exclude specific files from being copied
        if config.build_settings['EXCLUDED_COPYFILES_PATTERNS']
          if !config.build_settings['EXCLUDED_COPYFILES_PATTERNS'].include?('*.bundle/Contents.json')
            config.build_settings['EXCLUDED_COPYFILES_PATTERNS'] << ' *.bundle/Contents.json'
            puts "  Added *.bundle/Contents.json to existing EXCLUDED_COPYFILES_PATTERNS"
          end
        else
          config.build_settings['EXCLUDED_COPYFILES_PATTERNS'] = '*.bundle/Contents.json'
          puts "  Set EXCLUDED_COPYFILES_PATTERNS to *.bundle/Contents.json"
        end
      end
      
      # Save the project
      project.save
      puts "Successfully modified Xcode project settings"
    else
      puts "Error: Could not find Runner target in the project"
    end
  rescue => e
    puts "Error modifying Xcode project: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj
fix_build_settings("Runner.xcodeproj")
