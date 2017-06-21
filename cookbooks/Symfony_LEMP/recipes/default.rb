#
# Cookbook Name:: Symfony_LEMP
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#update cache
include_recipe "apt"

#install and configure php-fpm
include_recipe "php-fpm"

#install and configure nginx
include_recipe "chef_nginx"


#intall and configure composer
include_recipe "composer_c"

#instal and configure acme client
include_recipe "acme"

#install symfony
include_recipe "symfony"

#install mysql
include_recipe "Symfony_LEMP::install_mysql"
