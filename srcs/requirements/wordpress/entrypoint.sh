#!/bin/sh

envsubst < /init.sh | sponge /init.sh

if [ ! -f /var/www/html/wp-config.php ]; then
    /wp_init.sh
fi

php-fpm7.3 -F