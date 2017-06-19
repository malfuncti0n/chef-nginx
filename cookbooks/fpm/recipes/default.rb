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
package %w[ php7.0-fpm php7.0-mysql php7.0-curl php7.0-json php7.0-intl php7.0-gd php7.0-mcrypt php7.0-xml php7.0-zip php7.0-mbstring php7.0-soap ] do
 action :install
end

#enable and start php-fpm service
service 'php7.0-fpm' do
  action [ :enable, :start ]
end


#configure php-fpm

template node['php-fpm']['conf_file'] do
  source "php-fpm.conf.erb"
  mode 00644
  owner "root"
  group "root"
  notifies :restart, "service[php-fpm]"
end

if node['php-fpm']['pools']
  node['php-fpm']['pools'].each do |pool|
    if pool.is_a?(Array)
      pool_name = pool[0]
      pool = pool[1]
    else
      pool_name = pool[:name]
    end
    php_fpm_pool pool_name do
      pool.each do |k, v|
        self.params[k.to_sym] = v
      end
    end
  end
end
