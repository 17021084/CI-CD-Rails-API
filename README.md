# README

``` bash 
    rails new <ten_pr> --api -d <tendb > 
```
<br>
check file database.yml de doi pass

copy 3 cai file cubocop voi rails best pracice để check code <br>

cac gem can thiet 
``` ruby 
gem 'rubocop-rails'
gem "rails_best_practices"
gem "rubocop"
gem "byebug" 
```

# setup docker

## setup database 
### Mysql images
1. pull images
2. chay lenh 
```bash 
    docker run -it --name <ten-container> -p <port expose>:3306 -e MYSQL_ROOT_PASSWORD=12345678 <images_id>
```
___option -v de mount disk tu may host ra ngoai___
<br>
cac bien moi truong co the tham khao o day : https://hub.docker.com/_/mysql

#### Setup trong rail 
DRY database.yml 
them .env
```.env
PORT=3030
DATABASE_USERNAME=root
DATABASE_PASSWORD=12345678
DATABASE_SOCKET=/var/run/mysqld/mysqld.sock
DATABASE_HOST=127.0.0.1
DATABASE_PORT=3307
```
<br> mac dinh socket cua container mysql o: /var/run/mysqld/mysqld.sock




