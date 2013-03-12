include_recipe 'dmg'

dmg_package "VirtualBox" do
  source "http://download.virtualbox.org/virtualbox/4.2.8/VirtualBox-4.2.8-83876-OSX.dmg"
  type "pkg"
end
