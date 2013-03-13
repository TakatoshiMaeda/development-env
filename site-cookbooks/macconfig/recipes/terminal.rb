include_recipe 'mac_os_x'

mac_os_x_userdefaults "terminal color changing Pro theme" do
  domain "com.apple.terminal"
  key "Default Window Settings"
  value "Pro"
end

mac_os_x_userdefaults "terminal color changing Pro theme" do
  domain "com.apple.terminal"
  key "Startup Window Settings"
  value "Pro"
end

mac_os_x_userdefaults "TotalTerminal hotkry enabled" do
  domain "com.apple.terminal"
  key "TotalTerminalVisorHotKey2Enabled"
  type "int"
  value 1
end

mac_os_x_userdefaults "terminal color changing Pro theme" do
  domain "com.apple.terminal"
  key "TotalTerminalVisorPosition"
  value "Full Screen"
end
