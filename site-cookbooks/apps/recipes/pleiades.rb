tmp_file = "#{Chef::Config[:file_cache_path]}/pleiades_1.4.0.zip"
unzip_dir = "#{Chef::Config[:file_cache_path]}/pleiades"
ini_file = "/Applications/eclipse/Eclipse.app/Contents/MacOS/eclipse.ini"

remote_file "#{tmp_file}" do
  source "http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fmergedoc%2F58165%2Fpleiades_1.4.0.zip"
end

script "install Pleiades" do
  interpreter "bash"
  flags "-e"
  code <<-"EOS"
    mkdir #{unzip_dir}
    cp #{tmp_file} #{unzip_dir}/pleiades.zip
    unzip #{unzip_dir}/pleiades.zip
    mkdir -p /Applications/eclipse/plugins
    mkdir -p /Applications/eclipse/features
    cp -r #{unzip_dir}/plugins/* /Applications/eclipse/plugins/
    cp -r #{unzip_dir}/features/* /Applications/eclipse/features/
    cat #{ini_file} | sed 's/org.eclipse.platform//g' > #{ini_file}
    cat #{ini_file} | sed 's/-showsplash//g' > #{ini_file}
    echo "\n-javaagent:plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar\n" >> #{ini_file}
  EOS
end
