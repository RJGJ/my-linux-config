# Server setup

## Utilities

1. ### Nginx installation
    ```shell
    # install nginx
    apt install nginx
    
    # make sure that nginx is running
    service nginx start
    
    # add this to the /etc/nginx/nginx.conf inside the http block
    # client_max_body_size 512M;

    # restart nginx to apply the config
    service nginx restart
    ```
    
2. ### MySQL installation
    - update repositories 
      ```shell
      apt update && apt upgrade -y
      ```

    - install mysql 
      ```shell
      apt install mysql-server -y
      ```

    - confirm installation 
      ```shell 
      mysql --version
      ```

    - confirm mysql is running 
      ```shell 
      service mysql status
      ```

    - Secure the MySQL server 
      ```shell 
      mysql_secure_installation
      ```

    - Allow remote access 
      ```sql
      ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'admin123';
    
3. ### Installing PHP
    - Install PHP apt repository
      ```shell
      apt install software-properties-common
      add-apt-repository ppa:ondrej/php
      apt update
      ```

    - Check if PHP is installed correctly
      ```shell
      php --version
      ```

    - Install dependency packages

      Version 7.4 (for legacy systems)
      ```shell
      apt install php7.4 php7.4-bcmath php7.4-bz2 php7.4-cgi php7.4-cli php7.4-common php7.4-curl php7.4-dba php7.4-dev php7.4-enchant php7.4-fpm php7.4-gd php7.4-gmp php7.4-imap php7.4-interbase php7.4-intl php7.4-json php7.4-ldap php7.4-mbstring php7.4-mysql php7.4-odbc php7.4-opcache php7.4-pgsql php7.4-phpdbg php7.4-pspell php7.4-readline php7.4-snmp php7.4-soap php7.4-sqlite3 php7.4-sybase php7.4-tidy php7.4-xml php7.4-xmlrpc php7.4-xsl php7.4-zip php7.4-gd
      ```

      Version 8.1
      ```shell
      apt install php8.1 php8.1-bcmath php8.1-bz2 php8.1-cgi php8.1-cli php8.1-common php8.1-curl php8.1-dba php8.1-dev php8.1-enchant php8.1-fpm php8.1-gd php8.1-gmp php8.1-imap php8.1-interbase php8.1-intl php8.1-ldap php8.1-mbstring php8.1-mysql php8.1-odbc php8.1-opcache php8.1-pgsql php8.1-phpdbg php8.1-pspell php8.1-readline php8.1-snmp php8.1-soap php8.1-sqlite3 php8.1-sybase php8.1-tidy php8.1-xml php8.1-xmlrpc php8.1-xsl php8.1-zip php8.1-gd
      ```

    - Update `php.ini` config. To know where the `ini` file is, run `php --ini`
      ```ini
      max_execution_time = 999999
      max_input_time = 999999
      memory_limit = 512M
      post_max_size = 20M
      upload_max_filesize = 20M
      ```

    - Restart PHP FPM service
      ```shell
      service php7.4-fpm restart
      ```

    - To switch between PHP versions
      ```shell
      update-alternatives --config php
      ```

    - Install Composer
      ```shell
      php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
      php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
      php composer-setup.php
      php -r "unlink('composer-setup.php');"
      mv composer.phar /usr/local/bin/composer
      ```

4.