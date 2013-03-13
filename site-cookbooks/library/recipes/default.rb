include_recipe 'homebrew'
require '/tmp/chef-solo/cookbooks/homebrew/libraries/homebrew_package'

node.packages.each do |prov, values|
  values.each do |pkg|
    package pkg
  end
end
