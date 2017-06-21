#symlink for port 80 redirect
link "/etc/nginx/sites-enabled/#{node['symfony']['vhost']}.conf" do
  to "/etc/nginx/sites-available/#{node['symfony']['vhost']}.conf"
end

#symlink for port 443 
link "/etc/nginx/sites-enabled/#{node['symfony']['vhost']}-ssl.conf" do
  to "/etc/nginx/sites-available/#{node['symfony']['vhost']}-ssl.conf"
end




