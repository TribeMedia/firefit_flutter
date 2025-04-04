#!/usr/bin/env ruby

require 'fileutils'

def modify_podfile(podfile_path)
  puts "Modifying Podfile at #{podfile_path} to remove StripeUICore..."
  
  begin
    # Read the Podfile content
    podfile_content = File.read(podfile_path)
    
    # Check if the exclusion is already added
    if podfile_content.include?('# Exclude StripeUICore')
      puts "Exclusion already added to Podfile"
      return
    end
    
    # Add a comment at the top of the Podfile
    modified_content = "# Exclude StripeUICore\n" + podfile_content
    
    # Add the exclusion to the post_install hook
    if podfile_content.include?('post_install do |installer|')
      # Modify existing post_install hook
      modified_content = modified_content.gsub(/(post_install do \|installer\|.*?)end/m) do |match|
        post_install_block = $1
        
        post_install_block + <<~RUBY
  # Remove StripeUICore from the build
  installer.pods_project.targets.each do |target|
    if target.name.include?('StripeUICore')
      target.build_configurations.each do |config|
        # Disable the target
        config.build_settings['EXCLUDED_ARCHS'] = 'arm64 armv7 armv7s x86_64 i386'
      end
    end
  end
end
        RUBY
      end
    else
      # Add new post_install hook
      modified_content = modified_content + <<~RUBY

post_install do |installer|
  # Apply Flutter specific settings
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
  end
  
  # Remove StripeUICore from the build
  installer.pods_project.targets.each do |target|
    if target.name.include?('StripeUICore')
      target.build_configurations.each do |config|
        # Disable the target
        config.build_settings['EXCLUDED_ARCHS'] = 'arm64 armv7 armv7s x86_64 i386'
      end
    end
  end
end
      RUBY
    end
    
    # Write the modified content back to the Podfile
    File.write(podfile_path, modified_content)
    puts "Successfully modified Podfile"
    
    # Create a script to physically remove the StripeUICore pod
    remove_script_path = File.join(File.dirname(podfile_path), 'remove_stripe_ui_core.sh')
    File.write(remove_script_path, <<~BASH
      #!/bin/bash
      
      # This script removes the StripeUICore pod from the project
      
      echo "Removing StripeUICore pod from the project..."
      
      # Remove the StripeUICore directory from Pods
      if [ -d "Pods/StripeUICore" ]; then
        echo "Removing Pods/StripeUICore"
        rm -rf "Pods/StripeUICore"
      fi
      
      # Remove the StripeUICore bundle from the build directory
      find "../build" -name "StripeUICore" -type d | while read -r dir; do
        echo "Removing $dir"
        rm -rf "$dir"
      done
      
      echo "Removed StripeUICore pod"
    BASH
    )
    
    # Make the script executable
    FileUtils.chmod('+x', remove_script_path)
    puts "Created and made executable: #{remove_script_path}"
    
  rescue => e
    puts "Error modifying Podfile: #{e.message}"
    puts e.backtrace
  end
end

# Modify the Podfile
modify_podfile('Podfile')
