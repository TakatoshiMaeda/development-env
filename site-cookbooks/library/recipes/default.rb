include_recipe 'homebrew'

node.packages.each do |prov, values|
  provider_class = if prov == "homebrew"
                     Chef::Provider::Package::Homebrew
                   elsif prov == "rpm"
                     Chef::Provider::Package::Rpm
                   elsif prov == "yum"
                     Chef::Provider::Package::Yum
                   end
  values.items.each do |pkg|
    name = (pkg.class == String ? pkg : pkg["name"])
    package name do
      action :install
      provider provider_class
      source pkg["source"] if provider_class == Chef::Provider::Package::Rpm
    end
    send("initialize_#{prov}_#{name}") if values.initialize.include?(name)
  end
end
