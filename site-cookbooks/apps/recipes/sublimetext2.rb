include_recipe 'dmg'

dmg_package "Sublime Text 2" do
  volumes_dir "Sublime Text 2"
  source "http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1.dmg"
  action :install
end

unless File.exist?("#{node.user.home}/bin/sbl")
  script "enable sublimetext2 cli" do
    interpreter "bash"
    flags "-e"
    code <<-"eos"
    mkdir -p #{node.user.home}/bin
    ln -s "/applications/sublime text 2.app/contents/sharedsupport/bin/subl" ~/bin/sbl
    eos
  end
end
