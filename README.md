# varnish-nginx
This is setup repository for varnish with nginx

Usage
	docker-compose up

/home/user/nginx is the nginx root directory.

change port as per your need in vanish service in docker-compose.yml.
change path as per your need in nginx service in docker-compose.yml.

you can change CACHE_SIZE and VARNISHD_PARAMS environment veriables for varnish cache configration


change varnish/default.vcl file for overwrite varnish default settings
change nginx/default.conf file for overwrite nginx default settings

#### Usefull varnish commands  
	-varnishhist => this will show you histogram for requests  
	-varnishstat => this will show status varnish node  
	-varnishadm => Control a running varnish instance  
		-param.show => this will display current params with values



