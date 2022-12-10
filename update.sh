#!/bin/sh
cd /tmp
wget -O nagioscore.tar.gz  https://github.com/NagiosEnterprises/nagioscore/archive/nagios-4.4.9.tar.gz
tar xzf nagioscore.tar.gz
cd /tmp/nagioscore-nagios-4.4.9/
./configure --with-httpd-conf=/etc/apache2/sites-enabled
make all
make install
systemctl start nagios.service
systemctl status nagios.service
