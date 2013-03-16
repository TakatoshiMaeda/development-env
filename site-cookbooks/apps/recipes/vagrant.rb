include_recipe 'dmg'

unless `which vagrant`.include?("vagrant")
  dmg_package "Vagrant" do
    volumes_dir "Vagrant"
    source "http://files.vagrantup.com/packages/194948999371e9aee391d13845a0bdeb27e51ac0/Vagrant.dmg"
    type "pkg"
  end
end
