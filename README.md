Symfony Framework on Nginx with PHP-FPM
==========

This repo combine Nginx and PHP-FPM to provide a wokring out of box a high performance web server. Its also install composer for php managment and symfony framework under your web path.

Overview
========

it has dynamic configuration throught attributes. After installation you will see the php info page for default vhost and you will find 2 more virtual host enabled. one for port 80 redirect to port 443 for the virtual host name declared in  symfony attributes

Steps
=====

* `Nginx` - Install and configure
* `PHP-FPM` - Install and configure in co-operation with nginx
* `composer` - For php managment
* `Acme client` - For ssl request
* `Symfony framework` - Installation in custom hostname

How to run
==========
Simple run Symfony_LEMP recipe

Tested on Ubuntu 16.04
======================

This recive tested on ubuntu 16.04 but both base recipes work on many distribution such us

* `Redhat` - Cookbooks you download or create.
* `Debian` - Store data bags and items in .json in the repository.
* `BSD` - Store roles in .rb or .json in the repository.

Configuration
=============

You can edit configuration options throught attributes.
