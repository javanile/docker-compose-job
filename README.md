# Docker Compose Job

The smart way to write tasks/scripts/jobs into your docker-compose.yml file

## Usage

```yml
## docker-compose.yml
version: '3'
services:  
  php:
    image: php:8      
  db:
    image: mysql:8
  
  ## --------------
  ## Jobs and Tasks
  ## --------------
  create-database:
    image: javanile/mysql-job
    command:
      - mysql -e "CREATE DATABASE mydb"
```

```shell
docker-compose run create-database
```
