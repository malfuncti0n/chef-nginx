#mysql installation
service_name = "default"
mysql_service service_name do
  version "#{node['Symfony_LEMP']['mysql']['version']}"
  bind_address "#{node['Symfony_LEMP']['mysql']['bind']}"
  port "#{node['Symfony_LEMP']['mysql']['port']}"
  data_dir "#{node['Symfony_LEMP']['mysql']['data_dir']}"
  initial_root_password "#{node['Symfony_LEMP']['mysql']['admin_pass']}"
  action [:create, :start]
end


#create a my.cnf symlink to mysql.cnf for incobatibily fix
link "/etc/mysql/my.cnf" do
  to "/etc/mysql/mysql.cnf"
end

