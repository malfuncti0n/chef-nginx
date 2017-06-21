#if folder allready install delete it before
directory "#{node['symfony']['apps_base_dir']}/#{node['symfony']['app_name']}" do
  recursive true
  action :delete
end

#install symfony in custom path
execute 'symfony_framework_install' do
  command "symfony new #{node['symfony']['apps_base_dir']}/#{node['symfony']['app_name']}"
end


#change owner
execute 'symfony_web_change_owner_group' do
  command "chown -R #{node['symfony']['web_server']}:#{node['symfony']['web_server']}  #{node['symfony']['apps_base_dir']}"
end

