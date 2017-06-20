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
