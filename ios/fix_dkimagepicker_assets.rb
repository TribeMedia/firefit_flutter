#!/usr/bin/env ruby

require 'fileutils'

def fix_asset_catalog(catalog_path)
  if File.directory?(catalog_path)
    puts "Found asset catalog at: #{catalog_path}"
    
    # Create a backup
    backup_path = "#{catalog_path}.bak"
    if !File.directory?(backup_path)
      puts "Creating backup at: #{backup_path}"
      FileUtils.cp_r(catalog_path, backup_path)
    end
    
    # Remove the original asset catalog
    puts "Removing original asset catalog"
    FileUtils.rm_rf(catalog_path)
    
    # Create an empty asset catalog structure
    puts "Creating empty asset catalog structure"
    FileUtils.mkdir_p(catalog_path)
    
    # Create a minimal Contents.json
    contents_json_path = File.join(catalog_path, 'Contents.json')
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
    empty_imageset_path = File.join(catalog_path, 'empty.imageset')
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
    
    puts "Successfully fixed asset catalog"
  else
    puts "Asset catalog not found at: #{catalog_path}"
  end
end

# Fix all problematic asset catalogs
problematic_catalogs = [
  "Pods/DKImagePickerController/Sources/DKImagePickerController/Resource/Resources/Images.xcassets",
  "Pods/DKPhotoGallery/DKPhotoGallery/Resource/Resources/Images.xcassets",
  "Pods/StripeUICore/StripeUICore/StripeUICore/Resources/StripeUICore.xcassets",
  "Pods/StripePayments/Stripe3DS2/Stripe3DS2/Resources/Stripe3DS2.xcassets",
  "Pods/StripePaymentsUI/StripePaymentsUI/StripePaymentsUI/Resources/StripePaymentsUI.xcassets",
  "Pods/StripePaymentSheet/StripePaymentSheet/StripePaymentSheet/Resources/StripePaymentSheet.xcassets",
  "Pods/Stripe/Stripe/StripeiOS/Resources/StripeiOS.xcassets",
  "Runner/Assets.xcassets"
]

problematic_catalogs.each do |catalog|
  puts "Processing: #{catalog}"
  fix_asset_catalog(catalog)
end

puts "All asset catalog fixes completed!"
