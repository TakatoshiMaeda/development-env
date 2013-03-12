tmp_file = "#{Chef::Config[:file_cache_path]}/eclipse-SDK-4.2.2-macosx-cocoa-x86_64.tar.gz"
unzip_file = "#{Chef::Config[:file_cache_path]}/eclipse"
unless File.exist?("/Applications/eclipse")
  remote_file "#{tmp_file}" do
    source "http://ftp.yz.yamagata-u.ac.jp/pub/eclipse//eclipse/downloads/drops4/R-4.2.2-201302041200/eclipse-SDK-4.2.2-macosx-cocoa-x86_64.tar.gz"
  end
  script "Unzip Eclipse" do
    interpreter "bash"
    code <<-"EOS"
    tar -xf #{tmp_file} -C #{Chef::Config[:file_cache_path]}/
    EOS
  end
  script "InstallEclipse" do
    interpreter "bash"
    flags "-e"
    code <<-"EOS"
    cp -r #{unzip_file} /Applications/
    EOS
  end
end
