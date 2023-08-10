# Server setup

## Utilities

1. ### Nginx installation
    ```bash
    # install nginx
    apt install nginx
    
    # make sure that nginx is running
    service nginx start
    
    # add this to the /etc/nginx/nginx.conf inside the http block
    # client_max_body_size 512M;

    # restart nginx to apply the config
    service nginx restart
    ```
    
3. ### MySQL installation
    ```bash
    # update repositories
    apt update && apt upgrade -y
    
    # install mysql
    apt install mysql-server -y

    # confirm installation
    mysql --version

    # confirm mysql is running
    service mysql status

    # Secure the MySQL server
    mysql_secure_installation

    # Allow remote access
    ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'root';
    ```
    
6. test
