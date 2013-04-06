name 'web'
description 'environment for web development user'
default_attributes(
  :packages => {
    :items => [
      "python",
      "imagemagick",
      "mecab",
      "mecab-ipadic",
      "msgpack",
      "mysql",
      "redis",
      "sqlite3"
    ],
    :initialize => [
      "imagemagick",
      "mysql",
      "redis"
    ]
  }
)
