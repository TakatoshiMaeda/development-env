file_cache_path           "#{`echo $HOME`.gsub("\n", "")}/config/chef-solo/cache"
data_bag_path             "#{`echo $HOME`.gsub("\n", "")}/config/chef-solo/data_bags"
encrypted_data_bag_secret "#{`echo $HOME`.gsub("\n", "")}/config/chef-solo/data_bag_key"
cookbook_path             [ "#{`echo $HOME`.gsub("\n", "")}/config/chef-solo/site-cookbooks",
                            "#{`echo $HOME`.gsub("\n", "")}/config/chef-solo/cookbooks" ]
role_path                 "#{`echo $HOME`.gsub("\n", "")}/config/chef-solo/roles"
