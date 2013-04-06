include_recipe 'dmg'

dmg_package "VMWare Fusion" do
  volumes_dir "VMWare Fusion"
  source "https://dl.dropbox.com/u/34772227/software/VMware-Fusion-5.0.3-1040386-light.dmg"
  action :install
end
