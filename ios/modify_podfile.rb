#!/usr/bin/env ruby

podfile_path = 'Podfile'
podfile_content = File.read(podfile_path)

# Check if post_install hook already exists
if podfile_content.include?('post_install do |installer|')
  # Modify existing post_install hook
  modified_content = podfile_content.gsub(/(post_install do \|installer\|.*?)end/m) do |match|
    post_install_block = $1
    
    # Check if the fix is already included
    if post_install_block.include?('# Fix for asset catalog issues')
      puts "Post-install hook already contains asset catalog fixes"
      match
    else
      # Add our fixes to the existing post_install hook
      post_install_block + <<-RUBY
  # Fix for asset catalog issues
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
      config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
      if config.build_settings['OTHER_CFLAGS']
        config.build_settings['OTHER_CFLAGS'] << ' -Wno-error=asset-catalog-compilation'
      else
        config.build_settings['OTHER_CFLAGS'] = '-Wno-error=asset-catalog-compilation'
      end
    end
  end
end
      RUBY
    end
  end
else
  # Add new post_install hook
  modified_content = podfile_content + <<-RUBY

post_install do |installer|
  # Fix for asset catalog issues
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ASSETCATALOG_COMPILER_NOTICES'] = 'NO'
      config.build_settings['ASSETCATALOG_COMPILER_OPTIMIZATION'] = 'space'
      if config.build_settings['OTHER_CFLAGS']
        config.build_settings['OTHER_CFLAGS'] << ' -Wno-error=asset-catalog-compilation'
      else
        config.build_settings['OTHER_CFLAGS'] = '-Wno-error=asset-catalog-compilation'
      end
    end
  end
end
  RUBY
end

File.write(podfile_path, modified_content)
puts "Modified Podfile with asset catalog fixes"
