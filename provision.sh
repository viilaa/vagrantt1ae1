apt-get -y update
apt-get -y install nginx
rm -rf /usr/share/nginx/www/
cp -avr  /vagrant/www /usr/share/nginx/www/ 
ln -s /vagrant/www /usr/share/nginx/www/
cp /etc/nginx/sites-enabled/default /vagrant/sites-enabled
service nginx start