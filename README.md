
Configurar o usuário e senha do config/database.yml

default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password:
  socket: /var/run/mysqld/mysqld.sock


Primeiro passo rode o comando : Bundle install

Segundo passo rode o DB:create : RAILS_ENV=development rake db:drop db:create db:migrate db:seed DISABLE_DATABASE_ENVIRONMENT_CHECK=1

Terceiro passo suba a aplicação : rails s 

Acesse:http://localhost:3000/users/sign_in
Login : caio@caio.com.br
password: uga2buga