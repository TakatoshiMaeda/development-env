tmp_file = "#{Chef::Config[:file_cache_path]}/adt-bundle-mac-x86_64-20130219.zip"
script "create directory" do
  interpreter "bash"
  flags "-e"
  code <<-"EOS"
  mkdir -p #{node.user.home}/lib/
  EOS
end

git "#{node.user.home}/lib/powerline" do
  repository "git@github.com:Lokaltog/powerline.git"
  reference "develop"
  action :checkout
end

# TODO:PowerLineInstall
unless true
  script "install powerline" do
    interpreter "bash"
    flags "-e"
    code <<-"EOS"
    cd #{node.user.home}/lib/powerline
    python ./setup.py install
    EOS
  end
end
