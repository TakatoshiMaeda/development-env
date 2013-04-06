name 'android'
description 'environment for android developer'
run_list 'recipe[macapps::eclipse]', 'recipe[macapps::pleiades]', 'recipe[mylibrary::android-sdk]', 'recipe[mylibrary::intel_haxm_android]'
