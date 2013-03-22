tmp_file = "#{Chef::Config[:file_cache_path]}/heroku-toolbelt.pkg"
unzip_file = "#{Chef::Config[:file_cache_path]}/eclipse"
unless File.exist?("/usr/bin/heroku")
  remote_file "#{tmp_file}" do
    source "https://dl.dropbox.com/u/34772227/heroku-toolbelt.pkg"
  end
  script "Install Heroku Toolbelt" do
    interpreter "bash"
    code <<-"EOS"
    sudo installer -pkg #{tmp_file} -target /
    EOS
  end
end
