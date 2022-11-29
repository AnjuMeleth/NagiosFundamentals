#!/bin/sh
cd /tmp
wget -O nagioscore.tar.gz  https://github.com/NagiosEnterprises/nagioscore/archive/nagios-4.4.9.tar.gz
tar xzf nagioscore.tar.gz
cd /tmp/nagioscore-nagios-4.4.9/
sudo ./configure --with-httpd-conf=/etc/apache2/sites-enabled
sudo make all
sudo make install
sudo make install-daemoninit
sudo make install-commandmode
sudo make install-config
sudo make install-webconf
sudo a2enmod rewrite
sudo a2enmod cgi
sudo systemctl restart apache2.service
sudo systemctl start nagios.service
sudo systemctl status nagios.service
