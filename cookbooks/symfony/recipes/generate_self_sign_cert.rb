#create directory to store ssl
ssl_dir="<%= node['symfony']['ssl']['cert_path'] %>/<%= node['symfony']['vhost'] %>"

directory ssl_dir do
  owner node['symfony']['webserver']
  group node['symfony']['webserver']
  recursive true
end

#obtain celf-sign ssl certificate
acme_selfsigned "#{node['symfony']['vhost']}" do
  crt     "<%= node['symfony']['ssl']['cert_path'] %>/<%= node['symfony']['vhost'] %>/<%= node['symfony']['vhost'] %>.crt"
  key     "<%= node['symfony']['ssl']['cert_path'] %>/<%= node['symfony']['vhost'] %>/<%= node['symfony']['vhost'] %>.key"
  chain   "<%= node['symfony']['ssl']['cert_path'] %>/<%= node['symfony']['vhost'] %>/<%= node['symfony']['vhost'] %>.pem"
  owner   "www-data"
  group   "www-data"
  notifies :restart, "service[nginx]", :immediate
end
