#!/bin/bash
# grant permissions to the magento directories
docker exec magento /bin/bash -c '
chmod -R 777 /opt/bitnami/magento/generated /opt/bitnami/magento/var /opt/bitnami/magento/pub \
&& chmod -R 777 /opt/bitnami/magento2-sample-data-2.4.6-p4/pub
'