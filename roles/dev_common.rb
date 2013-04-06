name 'dev_common'
description 'common environment for development user'
run_list 'recipe[macapps::bettertouchtool]', 'recipe[macapps::elasticfox]', 'recipe[macapps::keyremap4macbook]', 'recipe[macapps::mou]',
  'recipe[macapps::sublimetext2]', 'recipe[macapps::totalterminal]', 'recipe[macapps::virtualbox]', 'recipe[macapps::virtualbox]',
  'recipe[macapps::sequelpro]', 'recipe[macapps::vagrant]', 'recipe[myapps::vmware_fusion]', 'recipe[macapps::heroku]', 'recipe[macapps::pivotal_booster]',
  'recipe[myapps::rubymotion]', 'recipe[macapps::cyberduck]', 'recipe[library::powerline]'
default_attributes(
  :packages => {
    :items => [
      "git",
      "tmux",
      "zsh",
      "tree",
      "wget",
      "readline",
      "htop-osx",
      "git-flow",
      "csshx",
      "hub",
      "jq"
    ]
  }
)
