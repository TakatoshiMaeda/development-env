tmp_file = "#{Chef::Config[:file_cache_path]}/eclipse-SDK-4.2.2-macosx-cocoa-x86_64.tar.gz.zip"
unzip_file = "#{Chef::Config[:file_cache_path]}/eclipse"
remote_file "#{tmp_file}" do
  source "http://www.eclipse.org/downloads/download.php?file=/eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-macosx-cocoa-x86_64.tar.gz&mirror_id=105"
end
script "install better touch tool" do
  interpreter "bash"
  flags "-e"
  code <<-"EOS"
    tar -xvf #{tmp_file}
    cp -r #{unzip_file} /Applications/
  EOS
end
