sudo rm /etc/nginx/sites-enabled/default
sudo rm /etc/nginx/sites-enabled/test.conf
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo service nginx restart

