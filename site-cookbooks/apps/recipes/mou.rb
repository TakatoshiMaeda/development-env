tmp_file = "#{Chef::Config[:file_cache_path]}/Mou.zip"
unzip_file = "#{Chef::Config[:file_cache_path]}/Mou.app"
remote_file "#{tmp_file}" do
  source "http://mouapp.com/download/Mou.zip"
end
script "Install Mou" do
  interpreter "bash"
  flags "-e"
  code <<-"EOS"
    unzip #{tmp_file}
    cp -r #{unzip_file} /Applications/
  EOS
end
