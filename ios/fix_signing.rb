#!/usr/bin/env ruby

require 'xcodeproj'

def fix_signing(project_path, team_id)
  puts "Configuring automatic signing with team ID: #{team_id}"
  
  begin
    project = Xcodeproj::Project.open(project_path)
    
    # Find the Runner target
    runner_target = project.targets.find { |t| t.name == 'Runner' }
    
    if runner_target
      # Modify build settings for automatic signing
      runner_target.build_configurations.each do |config|
        puts "Configuring #{config.name} build configuration"
        
        # Enable automatic signing
        config.build_settings['CODE_SIGN_STYLE'] = 'Automatic'
        
        # Set development team
        config.build_settings['DEVELOPMENT_TEAM'] = team_id
        
        # Ensure provisioning profile is set to automatic
        config.build_settings['PROVISIONING_PROFILE_SPECIFIER'] = ''
        
        # Set the product bundle identifier if not already set
        if !config.build_settings['PRODUCT_BUNDLE_IDENTIFIER'] || config.build_settings['PRODUCT_BUNDLE_IDENTIFIER'].empty?
          config.build_settings['PRODUCT_BUNDLE_IDENTIFIER'] = 'net.skytok.firefit'
        end
        
        # Fix iPad device type issues
        config.build_settings['TARGETED_DEVICE_FAMILY'] = '1'  # iPhone only
        
        # Disable iPad 3x assets
        if config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]']
          config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] += ' i386'
        else
          config.build_settings['EXCLUDED_ARCHS[sdk=iphonesimulator*]'] = 'i386'
        end
        
        # Set deployment target to iOS 15.0
        config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '15.0'
      end
      
      # Save the project
      project.save
      puts "Successfully configured automatic signing with team ID: #{team_id}"
    else
      puts "Error: Could not find Runner target in the project"
    end
  rescue => e
    puts "Error configuring signing: #{e.message}"
    puts e.backtrace
  end
end

# Fix the Runner.xcodeproj with the specified team ID
fix_signing("Runner.xcodeproj", "48VVJ9AXAR")
