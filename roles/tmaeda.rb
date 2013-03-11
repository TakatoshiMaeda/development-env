name 'tmaeda'
description 'TakatoshiMaeda Development Environment'

run_list [
  'recipe[dmg]',
  'recipe[apps::bettertouchtool]',
  'recipe[apps::chrome]',
  'recipe[apps::dropbox]',
  'recipe[apps::eclipse]',
  'recipe[apps::elasticfox]',
  'recipe[apps::evernote]',
  'recipe[apps::keyremap4macbook]',
  'recipe[apps::mou]',
  'recipe[apps::pleiades]',
  'recipe[apps::sublimetext2]',
  'recipe[apps::totalterminal]',
  'recipe[apps::virtualbox]'
]

default_attributes(
  "user" => {
    "name": "tmaeda",
    "group": "staff",
    "home": "/Users/tmaeda"
  },
  "homebrew" => {
    "packages" => [
      "ghc",
      "haskell-platform",
      "python",
      "git",
      "tmux",
      "zsh",
      "tree",
      "wget",
      "readline",
      "imagemagick",
      "htop-osx",
      "mecab",
      "mecab-ipadic",
      "msgpack",
      "mysql",
      "redis",
      "sqlite3",
      "git-flow",
      "csshx",
      "erlang"
    ]
  }
)
