#
# Cookbook Name:: composer_c
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'composer_c::install'

if node['composer']['install_globally']
  include_recipe 'composer_c::global_configs'
end
