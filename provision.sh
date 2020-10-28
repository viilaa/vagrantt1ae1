apt-get -y update
apt-get -y install nginx
rm -rf /usr/share/nginx/www/
rm -rf /etc/nginx/sites-enabled
cp -R /vagrant/sites-enabled /etc/nginx/sites-enabled
service nginx start