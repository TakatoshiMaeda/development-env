include_recipe 'dmg'

dmg_package "Evernote" do
  source "http://evernote.com/download/get.php?file=EvernoteMacApp"
  accept_eula true
end
