#!/usr/bin/env ruby

require 'fileutils'

def replace_assets(assets_path)
  puts "Replacing assets catalog at: #{assets_path}"
  
  # Create a backup if it doesn't exist
  backup_path = "#{assets_path}.bak"
  if !Dir.exist?(backup_path) && Dir.exist?(assets_path)
    puts "Creating backup at: #{backup_path}"
    FileUtils.cp_r(assets_path, backup_path)
  end
  
  # Remove the original asset catalog
  if Dir.exist?(assets_path)
    puts "Removing original asset catalog"
    FileUtils.rm_rf(assets_path)
  end
  
  # Create a new empty asset catalog
  puts "Creating new asset catalog"
  FileUtils.mkdir_p(assets_path)
  
  # Create a minimal Contents.json
  contents_json_path = File.join(assets_path, 'Contents.json')
  File.open(contents_json_path, 'w') do |f|
    f.write(<<~JSON)
{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
    JSON
  end
  
  # Create AppIcon.appiconset
  app_icon_path = File.join(assets_path, 'AppIcon.appiconset')
  FileUtils.mkdir_p(app_icon_path)
  
  # Create a minimal Contents.json for the AppIcon
  contents_json_path = File.join(app_icon_path, 'Contents.json')
  File.open(contents_json_path, 'w') do |f|
    f.write(<<~JSON)
{
  "images" : [
    {
      "filename" : "Icon-App-20x20@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "filename" : "Icon-App-20x20@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "20x20"
    },
    {
      "filename" : "Icon-App-29x29@1x.png",
      "idiom" : "iphone",
      "scale" : "1x",
      "size" : "29x29"
    },
    {
      "filename" : "Icon-App-29x29@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "filename" : "Icon-App-29x29@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "29x29"
    },
    {
      "filename" : "Icon-App-40x40@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "filename" : "Icon-App-40x40@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "40x40"
    },
    {
      "filename" : "Icon-App-60x60@2x.png",
      "idiom" : "iphone",
      "scale" : "2x",
      "size" : "60x60"
    },
    {
      "filename" : "Icon-App-60x60@3x.png",
      "idiom" : "iphone",
      "scale" : "3x",
      "size" : "60x60"
    },
    {
      "filename" : "Icon-App-1024x1024@1x.png",
      "idiom" : "ios-marketing",
      "scale" : "1x",
      "size" : "1024x1024"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
    JSON
  end
  
  # Create placeholder icon files
  icon_sizes = [
    ["Icon-App-20x20@2x.png", 40],
    ["Icon-App-20x20@3x.png", 60],
    ["Icon-App-29x29@1x.png", 29],
    ["Icon-App-29x29@2x.png", 58],
    ["Icon-App-29x29@3x.png", 87],
    ["Icon-App-40x40@2x.png", 80],
    ["Icon-App-40x40@3x.png", 120],
    ["Icon-App-60x60@2x.png", 120],
    ["Icon-App-60x60@3x.png", 180],
    ["Icon-App-1024x1024@1x.png", 1024]
  ]
  
  icon_sizes.each do |icon_name, size|
    create_placeholder_icon(File.join(app_icon_path, icon_name), size)
  end
  
  # Create LaunchImage.imageset
  launch_image_path = File.join(assets_path, 'LaunchImage.imageset')
  FileUtils.mkdir_p(launch_image_path)
  
  # Create a minimal Contents.json for the LaunchImage
  contents_json_path = File.join(launch_image_path, 'Contents.json')
  File.open(contents_json_path, 'w') do |f|
    f.write(<<~JSON)
{
  "images" : [
    {
      "idiom" : "universal",
      "scale" : "1x"
    },
    {
      "idiom" : "universal",
      "scale" : "2x"
    },
    {
      "idiom" : "universal",
      "scale" : "3x"
    }
  ],
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}
    JSON
  end
  
  puts "Assets catalog replacement completed"
end

def create_placeholder_icon(path, size)
  # Create a 1x1 transparent PNG
  File.open(path, 'wb') do |f|
    f.write([
      137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82,
      0, 0, 0, 1, 0, 0, 0, 1, 8, 6, 0, 0, 0, 31, 21, 196,
      137, 0, 0, 0, 13, 73, 68, 65, 84, 120, 1, 99, 97, 0, 2, 0,
      0, 25, 0, 5, 144, 240, 54, 245, 0, 0, 0, 0, 73, 69, 78, 68,
      174, 66, 96, 130
    ].pack('C*'))
  end
end

# Replace the Runner's Assets.xcassets
replace_assets("Runner/Assets.xcassets")
