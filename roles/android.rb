name 'android'
description 'environment for android developer'
run_list 'recipe[macapps::eclipse]', 'recipe[macapps::pleiades]', 'recipe[library::android-sdk]', 'recipe[library::intel_haxm_android]'
