server {
    listen      80;
    server_name  %domain_idn% %alias_idn%;
    #access_log  /var/log/nginx/%ip%.log main;
rewrite ^ http://www.domain.com$request_uri? permanent;
        include %home%/%user%/conf/web/nginx.%domain%.conf*;
}
