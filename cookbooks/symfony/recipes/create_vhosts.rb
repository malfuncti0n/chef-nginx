cookbook_file "/etc/nginx/sites-available/#{node['symfony']['vhost']}.conf" do
	source "example.com.conf"
	mode "0644"
end

cookbook_file "/etc/nginx/sites-available/#{node['symfony']['vhost']}-ssl.conf" do
        source "example.com-ssl.conf"
        mode "0644"
end

