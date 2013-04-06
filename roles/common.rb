name 'common'
description 'environment for all user'
run_list 'recipe[macapps::chrome]', 'recipe[macapps::dropbox]', 'recipe[macapps::evernote]', 'recipe[macapps::line]',
  'recipe[macapps::google_japanese_ime]', 'recipe[macapps::xtrafinder]', 'recipe[macapps::skype]'
