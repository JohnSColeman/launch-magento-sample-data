#!/bin/bash
# create the admin user - you can set the admin user and password here
docker exec magento /bin/bash -c '
php /bitnami/magento/bin/magento admin:user:create --admin-user=admin --admin-password=admin123 --admin-email=admin@localhost.com --admin-firstname=John --admin-lastname=Doe
'