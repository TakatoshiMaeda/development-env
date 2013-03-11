tmp_file = "#{Chef::Config[:file_cache_path]}/BetterTouchTool.zip"
unzip_file = "#{Chef::Config[:file_cache_path]}/BetterTouchTool.app"
remote_file "#{tmp_file}" do
  source "http://www.boastr.de/BetterTouchTool.zip"
end
script "install better touch tool" do
  interpreter "bash"
  flags "-e"
  code <<-"EOS"
    unzip #{tmp_file}
    cp -r #{unzip_file} /Applications/
  EOS
end
