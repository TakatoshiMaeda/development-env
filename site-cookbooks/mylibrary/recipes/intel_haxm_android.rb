include_recipe 'dmg'

unless File.exist?("/System/Library/Extensions/intelhaxm.kext")
  dmg_package "IntelHAXM_1.0.4" do
    source "https://dl.dropbox.com/u/34772227/IntelHAXM_1.0.4_hotfix_AndroidOnMac.dmg"
    type "mpkg"
  end
end
