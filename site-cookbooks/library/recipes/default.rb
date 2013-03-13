include_recipe 'homebrew'

node.packages.each do |prov, values|
  prov = if prov == "homebrew"
           Chef::Provider::Package::Homebrew
         elsif prov == "rpm"
           Chef::Provider::Package::Rpm
         elsif prov == "yum"
           Chef::Provider::Package::Yum
         end
  values.each do |pkg|
    package (pkg.class == String ? pkg : pkg["name"]) do
      action :install
      provider prov
      source pkg["source"] if prov == Chef::Provider::Package::Rpm
    end
  end
end
