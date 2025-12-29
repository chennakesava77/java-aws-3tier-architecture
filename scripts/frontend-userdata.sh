#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl start nginx
systemctl enable nginx

cat <<EOF > /etc/nginx/conf.d/app.conf
server {
    listen 80;
    location / {
        proxy_pass http://INTERNAL_NLB_DNS;
    }
}
EOF

systemctl restart nginx
