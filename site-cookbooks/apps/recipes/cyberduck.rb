tmp_file = "#{Chef::Config[:file_cache_path]}/Cyberduck-4.2.1.zip"
unzip_file = "#{Chef::Config[:file_cache_path]}/Cyberduck.app"
unless File.exist?("/Applications/Cyberduck.app")
  remote_file "#{tmp_file}" do
    source "http://cyberduck.ch/Cyberduck-4.2.1.zip"
  end
  script "Install Cyberduck" do
    interpreter "bash"
    flags "-e"
    returns 1
    code <<-"EOS"
    unzip -o #{tmp_file} -d #{Chef::Config[:file_cache_path]}
    cp -r #{unzip_file} /Applications/
    EOS
  end
end
