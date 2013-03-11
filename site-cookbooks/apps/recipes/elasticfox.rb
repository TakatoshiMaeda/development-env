include_recipe 'dmg'

dmg_package "ElasticFox" do
  source "https://s3-ap-northeast-1.amazonaws.com/elasticfox-ec2tag/Elasticfox-ec2tag_app-0.4.3.1.dmg"
  action :install
end
