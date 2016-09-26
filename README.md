## Getting Started

### Local development

#### Requirements:
- Ruby 2.2.3
- PostgreSQL 9.4

#### How to get set-up

- run `bundle install`
- make sure that your PostgreSQL server is running, and then run `bundle exec rake db:setup`
- if you got no errors then run `bundle exec rails server` and visit http://localhost:3000 in your browser

### Using Vagrant
- run 'vagrant up'
- visit http://localhost:3000 in your browser

#### Troubleshooting

##### 1. Cannot create a db with `bundle exec rake db:setup`
- check that your PostgreSQL database is running (you should be able to connect to the server with `psql postgres`)
- make sure that you have `lacocina` role that can create databases or run the following:
```
# connect to PostgreSQL server
psql postgres

# after you get connected run these 2 queries:
CREATE ROLE lacocina;
ALTER ROLE lacocina with CREATEDB LOGIN;
# you can quit by typing `\q`
```
