#!/bin/bash

if [ ! -f /var/lock/provision.lock ]; then
  wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
  echo 'deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main' | sudo tee -a /etc/apt/sources.list.d/pgdg.list
  sudo add-apt-repository ppa:brightbox/ruby-ng
  sudo apt-get update
  sudo apt-get install ruby2.2 ruby2.2-dev postgresql-9.5 zlib1g-dev libpq-dev nodejs -y

  sudo -u postgres createdb lacocina_development
  sudo -u postgres createdb lacocina_test
  sudo -u postgres createuser -l -d -w lacocina
  sudo -u postgres psql -c "ALTER ROLE lacocina WITH LOGIN PASSWORD 'lacocina';"

  echo 'export PATH=$PATH:/home/vagrant/.gem/ruby/2.2.0/bin' > /home/vagrant/.bashrc
  echo 'export GEM_PATH=$GEM_PATH:/home/vagrant/.gem/ruby/2.2.0' >> /home/vagrant/.bashrc

  source /home/vagrant/.bashrc

  gem install --user-install bundler

  cd /vagrant
  bundle install
  bundle exec rake db:migrate db:seed
  sudo touch /var/lock/provision.lock
fi
sudo mkdir -p /etc/lacocina-app
sudo cp /vagrant/scripts/launch.sh /etc/lacocina-app/launch.sh
sudo chmod +x /etc/lacocina-app/launch.sh
sudo cp /vagrant/scripts/lacocina-app.conf /etc/init/lacocina-app.conf

sudo initctl reload-configuration
cd /vagrant
bundle install
sudo service lacocina-app restart
