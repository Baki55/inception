sleep 10

if [ ! -f wp-config.php ]; then
    wp config create	--allow-root \
					--dbname=$SQL_DATABASE \
				    --dbuser=$SQL_USER \
					--dbpass=$SQL_PASSWORD \
					--dbhost=mariadb:3306 --path='/var/www/wordpress'
	wp core install\
		--url=$DOMAIN\
		--title=$WP_TITLE\
		--admin_user=$WP_ADMIN\
		--admin_password=$WP_ADMIN_PASSWORD\
		--admin_email=$WP_ADMIN_EMAIL\
		--skip-email\
		--allow-root
	wp user create\
		$WP_USER $WP_USER_EMAIL\
		--role=author\
		--user_pass=$WP_USER_PASSWORD\
		--allow-root