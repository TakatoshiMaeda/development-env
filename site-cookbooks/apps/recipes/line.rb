include_recipe 'dmg'

dmg_package "Line" do
  volumes_dir "Line.pkg"
  source "http://dl.desktop.line.naver.jp/naver/LINE/osx/Line.dmg"
  type "pkg"
end
