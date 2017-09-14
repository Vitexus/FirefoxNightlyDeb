#!/usr/bin/env bash

export DEBIAN_FRONTEND="noninteractive"
apt-get update
apt-get -y install devscripts dpkg-dev

cd /vagrant
debuild -i -us -uc -b
mkdir -p /vagrant/deb
mv /*.deb /vagrant/deb
cd /vagrant/deb
dpkg-scanpackages . /dev/null | gzip -9c > Packages.gz
echo "deb file:/vagrant/deb ./" > /etc/apt/sources.list.d/local.list
apt-get update
export DEBCONF_DEBUG="developer"
apt-get -y --allow-unauthenticated install nightly
