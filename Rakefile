def cook_chef_solo(node_name, options = {})
  system "chef-solo -c solo.rb -j nodes/#{node_name}.json #{options.to_a.flatten.join(" ")}"
end

desc "environment recipe apply require setup nodename"
task :cook, :name
task :cook do |t, args|
  cook_chef_solo(args.name)
end

desc "environment recipe apply require setup username"
task :cook_debug, :name
task :cook_debug do |t, args|
  cook_chef_solo(args.name, "-l" => "debug")
end
