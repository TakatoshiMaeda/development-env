include_recipe 'homebrew'

node.packages.each do |provider, values|
  values.each do |pkg|
    package (pkg.class == String ? pkg : pkg["name"]) do
      action :install
      provider Opscode::Packages.install_provider(provider)
      source "#{pkg["source"]}" if provider == "rpm"
    end
  end
end
