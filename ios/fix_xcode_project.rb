#!/usr/bin/env ruby

# This script modifies the Xcode project to disable asset catalog compilation
# for problematic targets

require 'xcodeproj'

project_path = '/Users/gqadonis/Projects/TribeMedia/firefit_flutter/ios/Pods/Pods.xcodeproj'
project = Xcodeproj::Project.open(project_path)

problematic_targets = ['StripeUICore', 'DKPhotoGallery']

project.targets.each do |target|
  if problematic_targets.include?(target.name)
    puts "Modifying target: #{target.name}"
    
    # Find and remove asset catalog build phases
    target.build_phases.each do |phase|
      if phase.is_a?(Xcodeproj::Project::Object::PBXResourcesBuildPhase)
        phase.files.each do |file|
          if file.file_ref && file.file_ref.path && file.file_ref.path.end_with?('.xcassets')
            puts "  Removing asset catalog: #{file.file_ref.path}"
            phase.remove_file_reference(file.file_ref)
          end
        end
      end
    end
  end
end

# Save the project
project.save
puts "Xcode project modifications completed"
