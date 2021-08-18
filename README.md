# Docker Compose Job

The smart way to write tasks/scripts/jobs into your `docker-compose.yml` file

## Usage

Declare your Jobs or Tasks into `docker-compose.yml` files as follow

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
  
  ## Creating database
  create-database:
    image: javanile/mysql-job
    command:
      - mysql -e "CREATE DATABASE mydb"
      - rm -fr /etc/oldfiles
  
  ## Backup all files
  backup-files:
    image: javanile/bash-job
    command:
      - zip -u backup.zip ./files
```

Now your this simple commands to run your jobs

```shell
docker-compose run create-database
```

```shell
docker-compose run backup-files
```

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [CONTRIBUTING.md](CONTRIBUTING.md).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](CONTRIBUTING.md).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Francesco Bianco via [bianco@javanile.org](mailto:bianco@javanile.org). All security vulnerabilities will be promptly addressed.

## License

This project is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
