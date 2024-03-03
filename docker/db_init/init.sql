CREATE USER 'bn_magento'@'%' IDENTIFIED BY 'bitnami';
GRANT ALL PRIVILEGES ON bitnami_magento.* TO 'bn_magento'@'%';
FLUSH PRIVILEGES;
