#!/usr/bin/env ruby

require 'fileutils'

def restore_assets(assets_path)
  backup_path = "#{assets_path}.bak"
  
  if File.directory?(backup_path)
    puts "Found backup at: #{backup_path}"
    
    # Remove the current assets catalog
    if File.directory?(assets_path)
      puts "Removing current assets catalog"
      FileUtils.rm_rf(assets_path)
    end
    
    # Restore from backup
    puts "Restoring assets catalog from backup"
    FileUtils.cp_r(backup_path, assets_path)
    
    puts "Successfully restored assets catalog"
  else
    puts "Backup not found at: #{backup_path}"
  end
end

# Restore the Runner's Assets.xcassets
restore_assets("Runner/Assets.xcassets")

puts "Assets restoration completed!"
