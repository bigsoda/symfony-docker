#!/usr/bin/env bash

set -e

if [ -d /var/www/symfony/app/cache ]; then
    chmod 777 -R /var/www/symfony/app/cache
fi
if [ -d /var/www/symfony/app/logs ]; then
    chmod 777 -R /var/www/symfony/app/logs
fi

# Run SSH daemon
/usr/sbin/sshd
# Run PHP Service
php5-fpm -F