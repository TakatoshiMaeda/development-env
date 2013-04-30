tmp_file = "#{Chef::Config[:file_cache_path]}/adt-bundle-mac-x86_64-20130219.zip"
script "create directory" do
  interpreter "bash"
  flags "-e"
  code <<-"EOS"
  mkdir -p #{node.user.home}/lib/
  EOS
end

python_path = `ls /usr/local/lib/ | grep python`.gsub("\n", "")
powerline_path = `ls /usr/local/lib/#{python_path}/site-packages/ | grep Powerline`.gsub("\n", "")

unless File.exist?("/usr/local/lib/#{python_path}/site-packages/#{powerline_path}")
  git "#{node.user.home}/lib/powerline" do
    repository "git@github.com:Lokaltog/powerline.git"
    reference "develop"
    action :checkout
  end

  script "install powerline" do
    interpreter "bash"
    flags "-e"
    code <<-"EOS"
    cd #{node.user.home}/lib/powerline
    python ./setup.py install
    EOS
  end
end
