#
# Cookbook Name:: Symfony_LEMP
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "apt"
include_recipe "chef_nginx"
include_recipe "php-fpm"
include_recipe "composer_c"
include_recipe "acme"
include_recipe "symfony"
