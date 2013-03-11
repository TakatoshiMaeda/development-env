include_recipe 'dmg'

dmg_package "SublimeText2" do
  volumes_dir "Sublime Text 2"
  source "http://c758482.r82.cf2.rackcdn.com/Sublime Text 2.0.1.dmg"
  action :install
end
