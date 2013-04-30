source_file = "#{Chef::Config[:file_cache_path]}/RubyMotion Installer.zip"
tmp_file = "\"#{Chef::Config[:file_cache_path]}/RubyMotion\ Installer.zip\""
unzip_file = "\"#{Chef::Config[:file_cache_path]}/RubyMotion\ Installer.app\""
unless File.exist?("/Applications/RubyMotion Installer.app")
  remote_file "#{source_file}" do
    source "https://dl.dropbox.com/u/34772227/RubyMotion%20Installer.zip"
  end
  script "InstallRubyMotion" do
    interpreter "bash"
    flags "-e"
    code <<-"EOS"
    unzip -o #{tmp_file} -d #{Chef::Config[:file_cache_path]}/
    cp -r #{unzip_file} /Applications/
    EOS
  end
end
