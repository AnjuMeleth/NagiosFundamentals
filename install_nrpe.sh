#!/bin/sh
useradd nagios
curl -L -O https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
sudo tar zxf nrpe-4.1.0.tar.gz
cd nrpe-4.1.0/
./configure
make check_nrpe
sudo make install-plugin

