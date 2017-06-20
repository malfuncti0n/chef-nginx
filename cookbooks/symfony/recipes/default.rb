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

#create symfony installer

execute 'symfony_make_bin' do
  command 'mkdir -p /usr/local/bin'
end

execute 'symfony_get_installer' do
  command 'curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony'

end
execute 'symfony_make_executable' do
  command 'chmod a+x /usr/local/bin/symfony'
end


#install symfony in custom path
execute 'symfony_framework_install' do
  command "symfony new #{node['symfony']['apps_base_dir']}/#{node['symfony']['app_name']}" 
end
