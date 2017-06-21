#create directory to store ssl
bin_dir="/usr/local/bin"

directory bin_dir do
  owner node['symfony']['webserver']
  group node['symfony']['webserver']
  recursive true
end


execute 'symfony_get_installer' do
  command 'curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony'

end
execute 'symfony_make_executable' do
  command 'chmod a+x /usr/local/bin/symfony'
end

