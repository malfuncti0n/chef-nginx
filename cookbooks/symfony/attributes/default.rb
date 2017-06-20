default[:symfony][:ini]['memory_limit'] = '128M'
default[:symfony][:ini]['date.timezone'] = 'UTC'
default[:symfony][:console] = 'app/console'
default[:symfony][:logs] = 'app/logs'
default[:symfony][:cache] = 'app/cache'
default[:symfony][:writable] = ['app/cache']
default[:symfony][:composer_dev] = true
default[:symfony][:composer_optimize_autoloader] = true
