include_recipe 'homebrew'
module Opscode
  module Packages
    def install_provider(name)
      return case name
      when "homebrew"
        Chef::Provider::Package::HomeBrew
      when "yum"
        Chef::Provider::Package::Yum
      when "rpm"
        Chef::Provider::Package::Rpm
      end
    end
  end
end
