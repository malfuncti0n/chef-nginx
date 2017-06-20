include_recipe 'composer_c::install'

execute 'composer-self_update' do
  cwd node['composer']['install_dir']
  command 'composer self-update'
  environment 'COMPOSER_HOME' => Composer.home_dir(node)
  action :run
  ignore_failure true
end
