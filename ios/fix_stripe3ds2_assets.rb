#!/usr/bin/env ruby

require 'fileutils'

def fix_stripe3ds2_assets(pods_dir)
  puts "Fixing Stripe3DS2.xcassets issues..."
  
  # Path to the problematic asset catalog
  asset_catalog_path = File.join(pods_dir, 'StripePayments/Stripe3DS2/Stripe3DS2/Resources/Stripe3DS2.xcassets')
  
  if File.directory?(asset_catalog_path)
    puts "Found Stripe3DS2.xcassets at: #{asset_catalog_path}"
    
    # Create a backup
    backup_path = "#{asset_catalog_path}.bak"
    if !File.directory?(backup_path)
      puts "Creating backup at: #{backup_path}"
      FileUtils.cp_r(asset_catalog_path, backup_path)
    end
    
    # Remove the original asset catalog
    puts "Removing original asset catalog"
    FileUtils.rm_rf(asset_catalog_path)
    
    # Create an empty asset catalog structure
    puts "Creating empty asset catalog structure"
    FileUtils.mkdir_p(asset_catalog_path)
    
    # Create a minimal Contents.json
    contents_json_path = File.join(asset_catalog_path, 'Contents.json')
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
    
    # Create an empty imageset
    empty_imageset_path = File.join(asset_catalog_path, 'empty.imageset')
    FileUtils.mkdir_p(empty_imageset_path)
    
    # Create a minimal Contents.json for the imageset
    imageset_contents_json_path = File.join(empty_imageset_path, 'Contents.json')
    File.open(imageset_contents_json_path, 'w') do |f|
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
    
    puts "Successfully fixed Stripe3DS2.xcassets"
  else
    puts "Stripe3DS2.xcassets not found at: #{asset_catalog_path}"
  end
end

# Fix the Stripe3DS2.xcassets in the Pods directory
fix_stripe3ds2_assets("Pods")
