tmp_file = "#{Chef::Config[:file_cache_path]}/Mou.zip"
unzip_file = "#{Chef::Config[:file_cache_path]}/Mou.app"
unless File.exist?("/Applications/Mou.app")
  remote_file "#{tmp_file}" do
    source "http://mouapp.com/download/Mou.zip"
  end
  script "Install Mou" do
    interpreter "bash"
    flags "-e"
    returns 1
    code <<-"EOS"
    unzip -o #{tmp_file} -d #{Chef::Config[:file_cache_path]}
    cp -r #{unzip_file} /Applications/
    EOS
  end
end
