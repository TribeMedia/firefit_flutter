#!/usr/bin/env ruby

require 'fileutils'
require 'json'

def fix_ipad_assets(assets_path)
  puts "Fixing iPad assets in: #{assets_path}"
  
  # Process all imageset directories
  Dir.glob(File.join(assets_path, '**', '*.imageset')).each do |imageset_dir|
    contents_json = File.join(imageset_dir, 'Contents.json')
    
    if File.exist?(contents_json)
      puts "Processing: #{contents_json}"
      
      begin
        # Read and parse the Contents.json file
        content = File.read(contents_json)
        json_data = JSON.parse(content)
        
        # Remove iPad3x entries
        if json_data['images']
          original_count = json_data['images'].size
          json_data['images'].reject! do |img|
            img['idiom'] == 'ipad' && img['scale'] == '3x'
          end
          
          if json_data['images'].size < original_count
            puts "  Removed iPad3x entries"
            
            # Write the modified JSON back to the file
            File.write(contents_json, JSON.pretty_generate(json_data))
          end
        end
      rescue => e
        puts "  Error processing JSON: #{e.message}"
      end
    end
  end
  
  # Create a minimal AppIcon.appiconset if it doesn't exist
  app_icon_path = File.join(assets_path, 'AppIcon.appiconset')
  if !Dir.exist?(app_icon_path)
    puts "Creating AppIcon.appiconset"
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
      "filename" : "Icon-App-20x20@1x.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "20x20"
    },
    {
      "filename" : "Icon-App-20x20@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "20x20"
    },
    {
      "filename" : "Icon-App-29x29@1x.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "29x29"
    },
    {
      "filename" : "Icon-App-29x29@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "29x29"
    },
    {
      "filename" : "Icon-App-40x40@1x.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "40x40"
    },
    {
      "filename" : "Icon-App-40x40@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "40x40"
    },
    {
      "filename" : "Icon-App-76x76@1x.png",
      "idiom" : "ipad",
      "scale" : "1x",
      "size" : "76x76"
    },
    {
      "filename" : "Icon-App-76x76@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "76x76"
    },
    {
      "filename" : "Icon-App-83.5x83.5@2x.png",
      "idiom" : "ipad",
      "scale" : "2x",
      "size" : "83.5x83.5"
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
      ["Icon-App-20x20@1x.png", 20],
      ["Icon-App-20x20@2x.png", 40],
      ["Icon-App-20x20@3x.png", 60],
      ["Icon-App-29x29@1x.png", 29],
      ["Icon-App-29x29@2x.png", 58],
      ["Icon-App-29x29@3x.png", 87],
      ["Icon-App-40x40@1x.png", 40],
      ["Icon-App-40x40@2x.png", 80],
      ["Icon-App-40x40@3x.png", 120],
      ["Icon-App-60x60@2x.png", 120],
      ["Icon-App-60x60@3x.png", 180],
      ["Icon-App-76x76@1x.png", 76],
      ["Icon-App-76x76@2x.png", 152],
      ["Icon-App-83.5x83.5@2x.png", 167],
      ["Icon-App-1024x1024@1x.png", 1024]
    ]
    
    icon_sizes.each do |icon_name, size|
      create_placeholder_icon(File.join(app_icon_path, icon_name), size)
    end
  end
  
  puts "iPad assets fix completed"
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

# Fix the Runner's Assets.xcassets
fix_ipad_assets("Runner/Assets.xcassets")
