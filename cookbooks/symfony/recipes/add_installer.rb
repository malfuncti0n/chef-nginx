execute 'symfony_make_bin' do
  command 'mkdir -p /usr/local/bin'
end

execute 'symfony_get_installer' do
  command 'curl -LsS https://symfony.com/installer -o /usr/local/bin/symfony'

end
execute 'symfony_make_executable' do
  command 'chmod a+x /usr/local/bin/symfony'
end

