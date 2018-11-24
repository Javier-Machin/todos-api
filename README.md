# todos-api

It's a small Rails API for a to-dos app with JWT Authentication.

The database is postgreSQL for development and production.

How to setup postgres:

Installation:
```
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib libpq-dev
```
Creating a postgres database user:
```
sudo -u postgres createuser -s pguser (change pguser to your username)
```
Setting up a postgres user password:
```
sudo -u postgres psql 
\password pguser 
enter your password
\q
```
Using your PG user in Rails:

Set your pg username in config/database.yml Set your password as ENV variable in config/application.yml (you might need to create that file, used by Figaro).

Setting up the Rails app:

```
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server
```
---------------------------------------------------

Es una pequeña API hecha en Rails para una APP de lista de tareas con autentificación JWT.

La base de datos PostgreSQL para development y production.

Como configurar PostgreSQL:

Instalación:
```
sudo apt-get update
sudo apt-get install postgresql postgresql-contrib libpq-dev
```
Creando un usuario Postgres:
```
sudo -u postgres createuser -s pguser (change pguser to your username)
```
Añadiendo password a nuestro usuario Postgres:
```
sudo -u postgres psql 
\password pguser 
enter your password
\q
```
Usar el usuario Postgres en Rails:

Añada su el nombre de su usuario en config/database.yml Añada su password de usuario como una ENV variable en config/application.yml (puede que tenga que crear ese archivo, usado por Figaro).

Configurando Rails:
```
bundle install
rails db:create
rails db:migrate
rails db:seed
rails server
```
