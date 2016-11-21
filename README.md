## Getting Started

### Local development

#### Requirements:
- Ruby 2.2.3
- PostgreSQL 9.4

#### How to get set-up

- run `bundle install`
- make sure that your PostgreSQL server is running, and then run `bundle exec rake db:setup`
- seed some data with `bundle exec rake db:seed`
- if you got no errors then run `bundle exec rails server` and visit http://localhost:3000 in your browser

#### Using Vagrant
- run 'vagrant up'
- visit http://localhost:3000 in your browser

#### Using Admin Panel

- visit http://localhost:3000/admin
- use dev user from db/seeds/users.rb (user: `dev@lacocina.localhost`, password: `lacocina`)

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


### Development Workflow

We use Heroku for hosting all our staging and production apps. We have integrations with GitHub and use Heroku Pipelines to automatically create Review Apps when someone open up a PR.

#### Staging

You can reach staging at http://lacocina-staging.herokuapp.com


#### Production

You can reach production at http://lacocina-prod.herokuapp.com


### SSL

Production app uses Heroku SSL and is set up with custom SSL certs from Let's Encrypt. Let's Encrypt certs are valid for 30 days, but they are set-up to auto-renew using https://github.com/dmathieu/sabayon app to generate and renew certs.
