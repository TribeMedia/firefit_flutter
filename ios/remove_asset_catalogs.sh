#!/bin/bash

echo "Removing problematic asset catalogs..."

# List of problematic asset catalogs
ASSET_CATALOGS=(
  "Pods/DKPhotoGallery/DKPhotoGallery/Resource/Resources/Images.xcassets"
  "Pods/StripeUICore/StripeUICore/StripeUICore/Resources/StripeUICore.xcassets"
  "Pods/StripePayments/Stripe3DS2/Stripe3DS2/Resources/Stripe3DS2.xcassets"
  "Pods/StripePaymentsUI/StripePaymentsUI/StripePaymentsUI/Resources/StripePaymentsUI.xcassets"
  "Pods/StripePaymentSheet/StripePaymentSheet/StripePaymentSheet/Resources/StripePaymentSheet.xcassets"
  "Pods/Stripe/Stripe/StripeiOS/Resources/StripeiOS.xcassets"
  "Pods/DKImagePickerController/Sources/DKImagePickerController/Resource/Resources/Images.xcassets"
)

# Remove each asset catalog
for catalog in "${ASSET_CATALOGS[@]}"; do
  if [ -d "$catalog" ]; then
    echo "Removing: $catalog"
    rm -rf "$catalog"
    
    # Create an empty directory
    mkdir -p "$catalog"
    
    # Create a minimal Contents.json
    echo '{
  "info" : {
    "author" : "xcode",
    "version" : 1
  }
}' > "$catalog/Contents.json"
    
    echo "Created empty asset catalog at: $catalog"
  else
    echo "Asset catalog not found: $catalog"
  fi
done

echo "Asset catalog removal completed!"
