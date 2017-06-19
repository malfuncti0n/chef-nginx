#
# Cookbook Name:: fpm
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#update system before installation
include_recipe "apt"

#install php-fpm
multipackage_internal [ "php7.0-fpm", "php7.0-mysql", "php7.0-curl", "php7.0-json", "php7.0-intl", "php7.0-gd", "php7.0-mcrypt", "php7.0-xml", "php7.0-zip", "php7.0-mbstring", "php7.0-soap" ] do
 action :install
end

#enable and start php-fpm service
service 'php7.0-fpm' do
  action [ :enable, :start ]
end


