include_recipe "dmg"

dmg_package "Skype" do
  volumes_dir "Skype"
  source "http://www.skype.com/go/getskype-macosx.dmg"
  action :install
end
