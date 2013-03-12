tmp_file = "#{Chef::Config[:file_cache_path]}/BetterTouchTool.zip"
unzip_file = "#{Chef::Config[:file_cache_path]}/BetterTouchTool.app"
unless File.exist?("/Applications/BetterTouchTool.app")
  remote_file "#{tmp_file}" do
    source "http://www.boastr.de/BetterTouchTool.zip"
  end
  script "InstallBetterTouchTool" do
    interpreter "bash"
    flags "-e"
    code <<-"EOS"
    unzip -o #{tmp_file} -d #{Chef::Config[:file_cache_path]}/
    cp -r #{unzip_file} /Applications/
    EOS
  end
end
