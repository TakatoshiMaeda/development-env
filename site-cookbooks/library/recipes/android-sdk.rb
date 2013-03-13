tmp_file = "#{Chef::Config[:file_cache_path]}/adt-bundle-mac-x86_64-20130219.zip"
unzip_file = "#{Chef::Config[:file_cache_path]}/adt-bundle-mac-x86_64-20130219"
unless File.exist?("#{node.user.home}/lib/android-sdk")
  remote_file "#{tmp_file}" do
    source "http://dl.google.com/android/adt/adt-bundle-mac-x86_64-20130219.zip"
  end
  script "Unzip AndroidSDK" do
    interpreter "bash"
    user node.user.name
    code <<-"EOS"
    unzip #{tmp_file} -d #{Chef::Config[:file_cache_path]}
    EOS
  end
  script "Install AndroidSDK" do
    interpreter "bash"
    flags "-e"
    user node.user.name
    code <<-"EOS"
    mkdir -p ~/bin
    mkdir -p ~/lib
    cp -r #{unzip_file}/sdk ~/lib/android-sdk
    EOS
  end
end
