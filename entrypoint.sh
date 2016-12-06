#!/bin/bash

hasInitd=
if [ -f "/var/www/entrypoint-initd.lock" ]; then
    hasInitd=true
else
    hasInitd=false
fi

if [ !hasInitd ]; then
    #extract edusoho
    tar zxvf /var/www/edusoho-${EDUSOHO_VERSION}.tar.gz -C /var/www && chown -R www-data:www-data /var/www/edusoho && rm -rf /var/www/edusoho-${EDUSOHO_VERSION}.tar.gz
    touch /var/www/entrypoint-initd.lock
fi

echo 'starting php5-fpm'
/etc/init.d/php5-fpm start >& /dev/null

echo 'starting nginx'
echo '***************************'
echo '* welcome to use edusoho! *'
echo '* --- www.edusoho.com --- *'
echo '***************************'
nginx
