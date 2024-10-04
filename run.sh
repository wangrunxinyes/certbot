#!/bin/bash

# Certbot 命令，获取 *.wangrunxin.com 域名的证书
certbot certonly \
    -d "*.wangrunxin.com" \
    --manual \
    --preferred-challenges dns \
    --manual-auth-hook "/var/certbot/au.sh php aly add" \
    --manual-cleanup-hook "/var/certbot/au.sh php aly clean" \
    --agree-tos \
    --no-eff-email \
    --manual-public-ip-logging-ok \
    --email admin@wangrunxin.com
