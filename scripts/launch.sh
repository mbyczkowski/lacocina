#!/bin/bash
while [ ! -f /vagrant/bin/rails ]
do
  sleep 1
done
cd /vagrant
source ./scripts/setup-env.sh
source /home/vagrant/.bashrc
bundle exec rails server -b 0.0.0.0
