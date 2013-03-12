tmp_file = "#{Chef::Config[:file_cache_path]}/pleiades_1.4.0.zip"
unzip_dir = "#{Chef::Config[:file_cache_path]}/pleiades"
ini_file = "/Applications/eclipse/Eclipse.app/Contents/MacOS/eclipse.ini"

unless File.exist?("/Applications/eclipse/plugins/jp.sourceforge.mergedoc.pleiades")
  remote_file "#{tmp_file}" do
    source "http://sourceforge.jp/frs/redir.php?m=iij&f=%2Fmergedoc%2F58165%2Fpleiades_1.4.0.zip"
  end
  script "install Pleiades" do
    interpreter "bash"
    flags "-e"
    code <<-"EOS"
    mkdir -p #{unzip_dir}
    cp #{tmp_file} #{unzip_dir}/pleiades.zip
    unzip -o #{unzip_dir}/pleiades.zip -d #{unzip_dir}
    mkdir -p /Applications/eclipse/plugins
    mkdir -p /Applications/eclipse/features
    cp -r #{unzip_dir}/plugins/jp.sourceforge.mergedoc.pleiades /Applications/eclipse/plugins/jp.sourceforge.mergedoc.pleiades
    cp -r #{unzip_dir}/features/jp.sourceforge.mergedoc.pleiades /Applications/eclipse/features/jp.sourceforge.mergedoc.pleiades
    cat #{ini_file} | sed 's/org.eclipse.platform//g' > #{ini_file}
    cat #{ini_file} | sed 's/-showsplash//g' > #{ini_file}
    echo "\n-javaagent:plugins/jp.sourceforge.mergedoc.pleiades/pleiades.jar\n" >> #{ini_file}
    EOS
  end
end
