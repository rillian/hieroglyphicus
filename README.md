# Hieroglyphicus open online dictionary.

This is a containerized version of the ancient Egyptian dictionary site.

There are two main containers: a database and a web head.

To generate a basic setup for testing, do something like:

```
docker build -t hgy .
docker build -t hgy-sql sql

docker run -d --name test-hgy-sql hgy-sql
docker run -d --name test-hgy-www -p 80:80 --link test-hgy-sql:mysql hgy-sql

docker logs test-hgy-sql | grep 'GENERATED ROOT PASSWORD'
```

Then create a `dbconfig.php` file with the relevant details:
```php
<?php
  $host = '??';
  $dbname = 'hieroglyphicus';
  $username = 'root';
  $password = '??';
?>
```
Set `$host` to the ip address of the test-hgy-sql container, and
`$password` to the password from the container logs.

After that should should be able to visit the site on port 80 of
the docker host.
