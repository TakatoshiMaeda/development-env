include_recipe 'dmg'

unless File.exist?("/Applications/GoogleJapaneseInput.localized")
  dmg_package "GoogleJapaneseInput" do
    source "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg"
    type "pkg"
  end
end
