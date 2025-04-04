#!/usr/bin/env ruby

require 'fileutils'
require 'pathname'

def find_duplicate_contents_json(build_dir)
  return unless File.directory?(build_dir)
  
  puts "Searching for duplicate Contents.json files in #{build_dir}..."
  
  # Find all Contents.json files in bundle directories
  bundle_contents_files = Dir.glob("#{build_dir}/**/*.bundle/Contents.json")
  
  # Group by filename to find duplicates
  duplicates = bundle_contents_files.group_by { |f| File.basename(f) }
                                   .select { |_, files| files.size > 1 }
  
  duplicates.each do |filename, files|
    puts "Found #{files.size} duplicate '#{filename}' files:"
    files.each_with_index do |file, index|
      if index == 0
        puts "  Keeping: #{file}"
      else
        puts "  Removing: #{file}"
        # Create a unique version instead of deleting
        new_name = "#{File.dirname(file)}/Contents_#{index}.json"
        FileUtils.mv(file, new_name)
        puts "  Renamed to: #{new_name}"
      end
    end
  end
end

# Check both debug and release build directories
build_dirs = [
  "../build/ios/Debug-iphoneos",
  "../build/ios/Debug-iphonesimulator",
  "../build/ios/Release-iphoneos",
  "../build/ios/Release-iphonesimulator"
]

build_dirs.each do |dir|
  find_duplicate_contents_json(dir)
end

puts "Duplicate Contents.json fix completed!"
