
include_recipe 'php-fpm::repository' unless node['php-fpm']['skip_repository_install']
include_recipe 'apt::default' if node['platform_family'] == 'debian'

if node['php-fpm']['package_name'].nil?
  if platform_family?("rhel", "fedora")
    php_fpm_package_name = "php-fpm"
  elsif platform?('ubuntu') and node['platform_version'].to_f >= 16.04
    php_fpm_package_name = "php7.0-fpm"
  else
    php_fpm_package_name = "php5-fpm"
  end
else
  php_fpm_package_name = node['php-fpm']['package_name']
end

package php_fpm_package_name do
  action node['php-fpm']['installation_action']
  version node['php-fpm']['version'] if node['php-fpm']['version']
end

if node['php-fpm']['service_name'].nil?
  php_fpm_service_name = php_fpm_package_name
else
  php_fpm_service_name = node['php-fpm']['service_name']
end

service_provider = nil
# this is actually already done in chef, but is kept here for older chef releases
if platform?('ubuntu') and node['platform_version'].to_f.between?(13.10, 14.10)
  service_provider = ::Chef::Provider::Service::Upstart
end

directory node['php-fpm']['log_dir']

service "php-fpm" do
  provider service_provider if service_provider
  service_name php_fpm_service_name
  supports :start => true, :stop => true, :restart => true, :reload => true
  action [ :enable, :start ]
end
