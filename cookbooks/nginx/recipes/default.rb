#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#force to update before install
include_recipe "apt"

#install nginx package
pachage 'nginx' do
 action :install
end

#enable and start nginx service
service 'nginx' do
  action [ :enable, :start ]
end

#add template file to nginx server
cookbook_file "/usr/share/nginx/www/index.html" do
  source "index.html"
  mode "0644"
end
