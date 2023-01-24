#!/bin/sh
cd /tmp
wget -O nrdp.tar.gz https://github.com/NagiosEnterprises/nrdp/archive/1.5.1.tar.gz
tar xzf nrdp.tar.gz
cd /tmp/nrdp-1.5.1/
sudo mkdir -p /usr/local/nrdp
sudo cp -r clients server LICENSE* CHANGES* /usr/local/nrdp
sudo chown -R nagios:nagios /usr/local/nrdp
