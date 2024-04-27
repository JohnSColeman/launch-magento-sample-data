#!/bin/bash
# install the magento sample data
docker exec magento /bin/bash -c '
apt update && apt install wget && apt install unzip \
&& cd /opt/bitnami \
&& wget -q https://github.com/magento/magento2-sample-data/archive/refs/tags/2.4.6-p4.zip && unzip 2.4.6-p4.zip \
&& php -f /opt/bitnami/magento2-sample-data-2.4.6-p4/dev/tools/build-sample-data.php -- --ce-source=/opt/bitnami/magento \
&& cd /bitnami/magento \
&& php ./bin/magento setup:upgrade --keep-generated \
&& php ./bin/magento setup:di:compile \
&& php ./bin/magento cache:clean \
&& php ./bin/magento cache:flush \
&& php ./bin/magento indexer:reindex \
&& php ./bin/magento setup:static-content:deploy -f \
&& php ./bin/magento deploy:mode:set developer
'
