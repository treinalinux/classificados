# README

Criando um sistema de classificados com Ruby on Rails

```bash

# Creating project classificados
$ rails new classificados -d postgresql

# Creating database
$ rails db:create
Created database 'classificados_development'
Created database 'classificados_test'

# Conecting on database server postgresql remote
$ psql -h 192.168.0.189 -p 5432 -U postgres -d classificados_development
psql (12.7 (Ubuntu 12.7-0ubuntu0.20.04.1), server 13.2)
WARNING: psql major version 12, server major version 13.
         Some psql features might not work.
Type "help" for help.

# Still no table
classificados_development=# \d
Did not find any relations.
# quit
classificados_development=# \q


# starting server rails
$ rails server
=> Booting Puma
=> Rails 6.1.3.2 application starting in development
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.3.2 (ruby 2.7.2-p137) ("Sweetnighter")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 92407
* Listening on http://192.168.0.120:9000
Use Ctrl-C to stop


# migrate for workin tests
$ rails db:migrate

```

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
