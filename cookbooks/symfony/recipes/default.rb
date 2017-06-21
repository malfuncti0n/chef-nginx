#
# Cookbook Name:: symfony
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#git "#{node['symfony']['app_base_dir']}" do
#    repository "git@github.com:symfony/symfony-standard.git"
#     revision node['symfony']['myapp']['branch']
#    action :sync
#end

#the followings are cookbooks to run before symfony cookbook its self
include_recipe "apt"
include_recipe "chef_nginx"
include_recipe "php-fpm"
include_recipe "composer_c"
include_recipe "acme"
#the following are recipes of this cookbook
include_recipe "symfony::add_installer"
include_recipe "symfony::new_symfony"
include_recipe "symfony::create_vhosts"
include_recipe "symfony::enable_vhosts"
include_recipe "symfony::generate_self_sign_cert"
