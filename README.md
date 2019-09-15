# docker_image_mysql
Simple docker images with mysql database

## Build docker image

```docker build -t mysqldocker .```

## Run docker image

``` docker run --name mysqldockerrun -d -p 3308:3308 mysqldocker```

## Access to mysql database in your container

```docker exec -it mysqldockerrun /bin/bash```

## Run mysql with your password that you create in your docker file, but we can define your password when you run your docker images 
docker run --name mysqldockerrun -d -p 3308:3308 -e ENV MYSQL_ROOT_PASSWORD=password mysqldocker

```mysql -u root -p```
