include_recipe 'dmg'

dmg_package "TotalTerminal" do
  volumes_dir "TotalTerminal"
  source "http://downloads.binaryage.com/TotalTerminal-1.3.dmg"
  type "pkg"
end
