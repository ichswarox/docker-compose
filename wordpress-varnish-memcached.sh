cd /root && curl -sSL https://gitee.com/uof9p-xh9-xx-dj/docker-compose/raw/main/docker-compose-wordpress-optimize.yml > docker-compose.yml
&&mkdir /var/lib/docker/volumes/varnish-700/
&&curl -sSL https://gitee.com/uof9p-xh9-xx-dj/docker-compose/raw/main/varnish-default.vcl > /var/lib/docker/volumes/varnish-700/default.vcl
&&sed -i -e 's/127.0.0.1/107.174.70.160/g' -e 's/8080/1700/g' /var/lib/docker/volumes/varnish-700/default.vcl
&&sed -i 's/777/700/g' /root/docker-compose.yml
&&cd /root && docker-compose up -d
&&sleep 40s
&&chmod 777 /var/lib/docker/volumes/root_wordpress_data-700/_data/wp-config.php
&&chmod 777 /var/lib/docker/volumes/root_wordpress_data-700/_data/wp-content/
&&mkdir /var/lib/docker/volumes/root_wordpress_data-700/_data/wp-content/w3tc-config/
&&chmod 777 /var/lib/docker/volumes/root_wordpress_data-700/_data/wp-content/w3tc-config/
&&sleep 50s
&&chmod 755 /var/lib/docker/volumes/root_wordpress_data-700/_data/wp-content/
&&history -c
