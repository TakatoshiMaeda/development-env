include_recipe 'dmg'

dmg_package "PivotalBooster" do
  volumes_dir "PivotalBooster_1.1.1.beta"
  source "http://pivotalbooster.com/downloads/releases/1.1.1.beta/PivotalBooster_1.1.1.beta.dmg"
  action :install
end
