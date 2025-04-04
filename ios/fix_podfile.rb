#!/usr/bin/env ruby

podfile_path = 'Podfile'
podfile_content = File.read(podfile_path)

# Check if our specific fix is already in the post_install hook
if podfile_content.include?('# Fix for duplicate Contents.json files')
  puts "Podfile already contains the duplicate Contents.json fix"
else
  # Modify the post_install hook
  if podfile_content.include?('post_install do |installer|')
    # Add our fix to the existing post_install hook
    modified_content = podfile_content.gsub(/(post_install do \|installer\|.*?)end/m) do |match|
      post_install_block = $1
      
      post_install_block + <<-RUBY
  # Fix for duplicate Contents.json files
  installer.pods_project.targets.each do |target|
    if ['StripeUICore', 'DKPhotoGallery'].include?(target.name)
      target.build_phases.each do |build_phase|
        if build_phase.respond_to?(:name) && build_phase.name.include?("Copy Bundle Resources")
          build_phase.files_references.each do |file_ref|
            if file_ref.path.include?("Contents.json")
              puts "Removing \#{file_ref.path} from \#{target.name}'s resources"
              build_phase.remove_file_reference(file_ref)
            end
          end
        end
      end
    end
  end
end
      RUBY
    end
  else
    # Add a new post_install hook
    modified_content = podfile_content + <<-RUBY

post_install do |installer|
  # Apply Flutter specific settings
  installer.pods_project.targets.each do |target|
    flutter_additional_ios_build_settings(target)
    
    # Fix for duplicate Contents.json files
    if ['StripeUICore', 'DKPhotoGallery'].include?(target.name)
      target.build_phases.each do |build_phase|
        if build_phase.respond_to?(:name) && build_phase.name.include?("Copy Bundle Resources")
          build_phase.files_references.each do |file_ref|
            if file_ref.path.include?("Contents.json")
              puts "Removing \#{file_ref.path} from \#{target.name}'s resources"
              build_phase.remove_file_reference(file_ref)
            end
          end
        end
      end
    end
  end
end
    RUBY
  end
  
  # Write the modified content back to the Podfile
  File.write(podfile_path, modified_content)
  puts "Modified Podfile with duplicate Contents.json fix"
end
