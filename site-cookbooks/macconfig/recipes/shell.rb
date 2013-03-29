if File.open("/etc/shells").read.index(node.user.shell).nil?
  Chef::Log.info("Change Login Shell")
  script "add shell" do
    interpreter "bash"
    flags "-e"
    code <<-"EOS"
    unset DYLD_LIBRARY_PATH # for Mountain Lion Sudo Bug
    sudo chown #{node.user.name} /etc/shells
    sudo echo "#{node.user.shell}" >> /etc/shells
    sudo chown root /etc/shells
    EOS
  end
  Chef::Log.info("add zsh /etc/shells")
  script "change user" do
    interpreter "bash"
    flags "-e"
    user node.user.name
    code <<-"EOS"
    chpass -s #{node.user.shell}
    EOS
  end
  Chef::Log.info("change zsh success")
end
