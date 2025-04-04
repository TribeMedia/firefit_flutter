#!/usr/bin/env ruby

require 'xcodeproj'

def modify_pods_project(project_path)
  puts "Modifying Pods project at: #{project_path}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find all targets
    project.targets.each do |target|
      puts "Checking target: #{target.name}"
      
      # Find all build phases
      target.build_phases.each do |phase|
        if phase.is_a?(Xcodeproj::Project::Object::PBXResourcesBuildPhase)
          puts "  Checking resources build phase"
          
          # Find and remove bundle files
          files_to_remove = []
          
          phase.files.each do |build_file|
            if build_file.file_ref && build_file.file_ref.path
              path = build_file.file_ref.path
              if path.include?('.bundle') || path.include?('Contents.json')
                puts "    Found bundle to remove: #{path}"
                files_to_remove << build_file
              end
            end
          end
          
          # Remove the files
          files_to_remove.each do |build_file|
            puts "    Removing #{build_file.file_ref.path} from resources"
            phase.remove_build_file(build_file)
          end
        end
      end
      
      # Add a script build phase to remove Contents.json files
      if ['StripeUICore', 'StripePaymentsUI'].include?(target.name)
        existing_phase = target.shell_script_build_phases.find { |phase| phase.name == 'Remove Contents.json' }
        
        if existing_phase
          puts "  Updating existing Remove Contents.json build phase for #{target.name}"
          existing_phase.shell_script = <<~SCRIPT
            find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
          SCRIPT
        else
          puts "  Adding new Remove Contents.json build phase for #{target.name}"
          new_phase = target.new_shell_script_build_phase('Remove Contents.json')
          new_phase.shell_script = <<~SCRIPT
            find "${BUILT_PRODUCTS_DIR}" -name "*.bundle" -type d -exec find {} -name "Contents.json" \\; | xargs rm -f
          SCRIPT
        end
      end
      
      # Modify build settings for all configurations
      target.build_configurations.each do |config|
        # Disable asset catalog compilation warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        config.build_settings['ASSETCATALOG_COMPILER_WARNINGS'] = 'NO'
        
        # Set targeted device family to iPhone only (1)
        config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'
        
        # Disable iPad support
        config.build_settings['SUPPORTS_MAC_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        config.build_settings['SUPPORTS_XR_DESIGNED_FOR_IPHONE_IPAD'] = 'NO'
        
        # Exclude iPad assets
        config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = '*ipad*3x*'
        
        # Completely disable asset catalogs for problematic targets
        if ['StripeUICore', 'StripePaymentsUI', 'StripePayments', 'Stripe'].include?(target.name)
          config.build_settings['ASSETCATALOG_COMPILER_APPICON_NAME'] = ''
          config.build_settings['ASSETCATALOG_COMPILER_LAUNCHIMAGE_NAME'] = ''
          config.build_settings['ASSETCATALOG_COMPILER_GLOBAL_ACCENT_COLOR_NAME'] = ''
          config.build_settings['ASSETCATALOG_COMPILER_STANDALONE_ICON_BEHAVIOR'] = 'none'
          config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
          config.build_settings['ASSETCATALOG_COMPILER_SKIP_APP_STORE_DEPLOYMENT'] = 'YES'
          
          # Exclude bundles from the build
          if target.name == 'StripeUICore'
            config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = 'StripeUICoreBundle.bundle'
          elsif target.name == 'StripePaymentsUI'
            config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = 'StripePaymentsUIBundle.bundle'
          end
        end
      end
    end
    
    # Save the project
    project.save
    puts "Successfully modified Pods project"
  rescue => e
    puts "Error modifying Pods project: #{e.message}"
    puts e.backtrace
  end
end
