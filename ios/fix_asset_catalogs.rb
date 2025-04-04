#!/usr/bin/env ruby
require 'fileutils'

# Paths to problematic asset catalogs
problematic_catalogs = [
  File.expand_path('Pods/StripeUICore/StripeUICore/StripeUICore/Resources/StripeUICore.xcassets'),
  File.expand_path('Pods/DKPhotoGallery/DKPhotoGallery/Resource/Resources/Images.xcassets'),
  File.expand_path('Pods/StripePaymentsUI/StripePaymentsUI/StripePaymentsUI/Resources/StripePaymentsUI.xcassets'),
  File.expand_path('Pods/StripePayments/Stripe3DS2/Stripe3DS2/Resources/Stripe3DS2.xcassets'),
  File.expand_path('Pods/Stripe/Stripe/StripeiOS/Resources/StripeiOS.xcassets')
]

problematic_catalogs.each do |catalog_path|
  if Dir.exist?(catalog_path)
    puts "Removing problematic asset catalog: #{catalog_path}"
    
    # Create a backup
    backup_path = "#{catalog_path}.bak"
    FileUtils.mv(catalog_path, backup_path) if !Dir.exist?(backup_path)
    
    # Create an empty directory structure to replace the asset catalog
    FileUtils.mkdir_p(catalog_path)
    
    # Create an empty Contents.json file
    contents_json = File.join(catalog_path, 'Contents.json')
    File.write(contents_json, '{"info":{"author":"xcode","version":1}}')
    
    puts "  Created empty asset catalog at #{catalog_path}"
  else
    puts "Asset catalog not found: #{catalog_path}"
  end
end

# Also check for any iPad3x assets in other catalogs
Dir.glob(File.expand_path('Pods/**/*.xcassets/**/*.imageset')).each do |imageset_dir|
  contents_json = File.join(imageset_dir, 'Contents.json')
  if File.exist?(contents_json)
    content = File.read(contents_json)
    if content.include?('ipad') && content.include?('3x')
      puts "Fixing iPad3x references in #{imageset_dir}"
      
      # Remove iPad3x files
      Dir.glob(File.join(imageset_dir, '*ipad*3x*')).each do |ipad3x_file|
        puts "  Removing file: #{ipad3x_file}"
        File.delete(ipad3x_file) if File.exist?(ipad3x_file)
      end
      
      # Update Contents.json
      require 'json'
      begin
        json_data = JSON.parse(content)
        if json_data['images']
          json_data['images'].reject! do |img|
            img['idiom'] == 'ipad' && img['scale'] == '3x'
          end
          File.write(contents_json, JSON.pretty_generate(json_data))
          puts "  Updated Contents.json"
        end
      rescue => e
        puts "  Error processing JSON: #{e.message}"
      end
    end
  end
end

# Find and remove all Contents.json files in bundle directories
Dir.glob(File.expand_path('**/*.bundle/Contents.json')).each do |contents_json|
  puts "Removing bundle Contents.json: #{contents_json}"
  File.delete(contents_json)
end

puts "Asset catalog fix completed"
