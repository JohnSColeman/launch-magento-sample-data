# Launch Magento 2 store with sample data
This project provides everything to launch a Magento® 2 store and install sample data in a matter of minutes using
docker, docker-compose and some shell script. The recent 2.4.6 (p4) version of Magento 2 is used - you can change
the ```docker-compose.yaml```file and scripts if you prefer to try another version.

Prerequisites:
- install and launch docker
- install docker-compose
- bash shell

Installing docker and docker-compose is platform dependent and beyond the scope of this document.

## Launch Magento using docker-compose
These steps will start a Magento store using bitnami images and also grant the required database permissions.

1) from the project root directory, change directory to the ```docker``` directory
2) execute the command ```docker-compose up```

Wait until ```** Starting Apache **``` is displayed in the console before proceeding.

You should now be able to navigate to the default [Magento home page](http://localhost).

## Install sample data
From this projects root directory, execute the following shell script:
```bash
setup1_magento_sample.sh
```

## Grant permissions
Execute the following shell script to grant permissions to directories - this is required to allow the server to
function.
```bash
setup2_magento_chmods.sh
```

## Create an admin user
Finally, execute the shell script below to create an admin user for the store - you can modify the script to create
the admin user details including username, password and email address as required.
```bash
setup3_magento_admins.sh
```

Refresh the home page in your browser - you should now see the store with the sample data. You should also be able to
access the [admin page](http://localhost/admin) and sign in using the admin credentials you created.