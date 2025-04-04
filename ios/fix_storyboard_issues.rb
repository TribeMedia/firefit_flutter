#!/usr/bin/env ruby

require 'fileutils'

def fix_storyboard(storyboard_path)
  if File.exist?(storyboard_path)
    puts "Found storyboard at: #{storyboard_path}"
    
    # Create a backup
    backup_path = "#{storyboard_path}.bak"
    if !File.exist?(backup_path)
      puts "Creating backup at: #{backup_path}"
      FileUtils.cp(storyboard_path, backup_path)
    end
    
    # Create a minimal storyboard file
    puts "Creating minimal storyboard file"
    File.open(storyboard_path, 'w') do |f|
      f.write(<<~XML)
<?xml version="1.0" encoding="UTF-8"?>
<document type="com.apple.InterfaceBuilder3.CocoaTouch.Storyboard.XIB" version="3.0" toolsVersion="21507" targetRuntime="iOS.CocoaTouch" propertyAccessControl="none" useAutolayout="YES" launchScreen="YES" useTraitCollections="YES" useSafeAreas="YES" colorMatched="YES" initialViewController="01J-lp-oVM">
    <device id="retina6_12" orientation="portrait" appearance="light"/>
    <dependencies>
        <deployment identifier="iOS"/>
        <plugIn identifier="com.apple.InterfaceBuilder.IBCocoaTouchPlugin" version="21505"/>
        <capability name="Safe area layout guides" minToolsVersion="9.0"/>
        <capability name="documents saved in the Xcode 8 format" minToolsVersion="8.0"/>
    </dependencies>
    <scenes>
        <!--View Controller-->
        <scene sceneID="EHf-IW-A2E">
            <objects>
                <viewController id="01J-lp-oVM" sceneMemberID="viewController">
                    <view key="view" contentMode="scaleToFill" id="Ze5-6b-2t3">
                        <rect key="frame" x="0.0" y="0.0" width="393" height="852"/>
                        <autoresizingMask key="autoresizingMask" widthSizable="YES" heightSizable="YES"/>
                        <viewLayoutGuide key="safeArea" id="6Tk-OE-BBY"/>
                        <color key="backgroundColor" white="1" alpha="1" colorSpace="custom" customColorSpace="genericGamma22GrayColorSpace"/>
                    </view>
                </viewController>
                <placeholder placeholderIdentifier="IBFirstResponder" id="iYj-Kq-Ea1" userLabel="First Responder" sceneMemberID="firstResponder"/>
            </objects>
            <point key="canvasLocation" x="53" y="375"/>
        </scene>
    </scenes>
</document>
      XML
    end
    
    puts "Successfully fixed storyboard"
  else
    puts "Storyboard not found at: #{storyboard_path}"
  end
end

# Fix problematic storyboards
problematic_storyboards = [
  "Runner/Base.lproj/LaunchScreen.storyboard",
  "Runner/Base.lproj/Main.storyboard"
]

problematic_storyboards.each do |storyboard|
  puts "Processing: #{storyboard}"
  fix_storyboard(storyboard)
end

puts "All storyboard fixes completed!"
