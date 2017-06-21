name             'symfony'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures symfony'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

#first update the cache
depends "apt"
#install and configure nginx
depends "chef_nginx"
#install and configure php-fpm
depends "php-fpm"
#install composer
depends "composer_c"
#install letsencrypt
depends "acme"
