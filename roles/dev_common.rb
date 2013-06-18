name 'dev_common'
description 'common environment for development user'
run_list 'recipe[macapps::bettertouchtool]', 'recipe[macapps::elasticfox]', 'recipe[macapps::keyremap4macbook]', 'recipe[macapps::mou]',
  'recipe[macapps::sublimetext2]', 'recipe[macapps::totalterminal]', 'recipe[macapps::virtualbox]', 'recipe[macapps::virtualbox]',
  'recipe[macapps::sequelpro]', 'recipe[macapps::vagrant]', 'recipe[myapps::vmware_fusion]', 'recipe[macapps::heroku]', 'recipe[macapps::pivotal_booster]',
  'recipe[macapps::xquartz]', 'recipe[myapps::rubymotion]', 'recipe[macapps::cyberduck]', 'recipe[mylibrary::powerline]'

default_attributes({
  :vagrant => {
    :plugins => [
      'berkshelf',
      'sahara'
    ]
  }
})
