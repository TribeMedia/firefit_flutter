#!/usr/bin/env ruby

require 'fileutils'
require 'xcodeproj'

def fix_stripe_payments_assets(pods_dir)
  puts "Fixing StripePayments assets for non-supported operating systems..."
  
  # Path to the StripePayments assets
  stripe_payments_dir = File.join(pods_dir, 'StripePayments')
  
  if File.directory?(stripe_payments_dir)
    puts "Found StripePayments directory at: #{stripe_payments_dir}"
    
    # Find all .xcassets directories in StripePayments
    Dir.glob("#{stripe_payments_dir}/**/*.xcassets").each do |asset_catalog|
      puts "Processing asset catalog: #{asset_catalog}"
      
      # Find all Contents.json files in the asset catalog
      Dir.glob("#{asset_catalog}/**/Contents.json").each do |contents_json|
        begin
          # Read the Contents.json file
          content = File.read(contents_json)
          
          # Check if it contains iPad or Mac references
          if content.include?('ipad') || content.include?('mac')
            puts "  Found non-supported platform references in: #{contents_json}"
            
            # Create a backup if it doesn't exist
            backup_file = "#{contents_json}.bak"
            if !File.exist?(backup_file)
              FileUtils.cp(contents_json, backup_file)
              puts "  Created backup at: #{backup_file}"
            end
            
            # Parse the JSON content
            require 'json'
            json_data = JSON.parse(content)
            
            # Remove iPad and Mac specific images
            if json_data['images']
              original_count = json_data['images'].size
              json_data['images'].reject! do |img|
                img['idiom'] == 'ipad' || img['idiom'] == 'mac'
              end
              
              # If we removed any images, write the updated JSON back
              if json_data['images'].size < original_count
                File.write(contents_json, JSON.pretty_generate(json_data))
                puts "  Removed #{original_count - json_data['images'].size} non-supported platform images"
              end
            end
          end
        rescue => e
          puts "  Error processing #{contents_json}: #{e.message}"
        end
      end
    end
    
    puts "Successfully processed StripePayments assets"
  else
    puts "StripePayments directory not found at: #{stripe_payments_dir}"
  end
end

# Fix the Pods project to exclude iPad and Mac assets from StripePayments
def fix_pods_project(project_path)
  puts "Modifying Pods project at #{project_path} to exclude non-supported platform assets..."
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the StripePayments target
    stripe_target = project.targets.find { |t| t.name == 'StripePayments' }
    
    if stripe_target
      puts "Found StripePayments target"
      
      # Modify build settings for all configurations
      stripe_target.build_configurations.each do |config|
        puts "Configuring #{config.name} build configuration"
        
        # Exclude iPad and Mac assets
        config.build_settings['EXCLUDED_SOURCE_FILE_NAMES'] = '*~ipad* *~mac*'
        puts "  Set EXCLUDED_SOURCE_FILE_NAMES to exclude iPad and Mac assets"
        
        # Set targeted device family to iPhone only (1)
        config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'
        puts "  Set TARGETED_DEVICE_FAMILY to iPhone only (1)"
        
        # Disable asset catalog compiler warnings
        config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
        puts "  Set ASSETCATALOG_COMPILER_NOTICES to NO"
      end
      
      # Add a Run Script build phase to remove problematic assets
      existing_phase = stripe_target.shell_script_build_phases.find { |phase| phase.name == 'Remove Non-Supported Platform Assets' }
      
      if existing_phase
        puts "Updating existing Remove Non-Supported Platform Assets build phase"
      else
        puts "Adding new Remove Non-Supported Platform Assets build phase"
        new_phase = stripe_target.new_shell_script_build_phase('Remove Non-Supported Platform Assets')
        
        # Set the script content
        new_phase.shell_script = <<~SCRIPT
          # This script removes iPad and Mac specific assets from StripePayments
          
          # Find all Contents.json files in asset catalogs
          find "${PODS_ROOT}/StripePayments" -name "*.xcassets" -type d -exec find {} -name "Contents.json" \\; | while read -r contents_json; do
            # Check if the file contains iPad or Mac references
            if grep -q 'ipad\\|mac' "$contents_json"; then
              echo "Processing: $contents_json"
              
              # Create a temporary file
              temp_file=$(mktemp)
              
              # Use jq to remove iPad and Mac specific images if available
              if command -v jq >/dev/null 2>&1; then
                jq '.images |= map(select(.idiom != "ipad" and .idiom != "mac"))' "$contents_json" > "$temp_file"
                mv "$temp_file" "$contents_json"
              else
                # Fallback to simple grep/sed if jq is not available
                grep -v 'ipad\\|mac' "$contents_json" > "$temp_file"
                mv "$temp_file" "$contents_json"
              fi
            fi
          done
          
          echo "Removed non-supported platform assets"
        SCRIPT
      end
      
      # Save the project
      project.save
      puts "Successfully modified Pods project"
    else
      puts "StripePayments target not found"
    end
  rescue => e
    puts "Error modifying Pods project: #{e.message}"
    puts e.backtrace
  end
end

# Fix StripePayments assets in the Pods directory
fix_stripe_payments_assets("Pods")

# Fix the Pods project
fix_pods_project("Pods/Pods.xcodeproj") if File.exist?("Pods/Pods.xcodeproj")
