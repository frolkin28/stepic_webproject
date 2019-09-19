sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo rm /etc/nginx/sites-enabled/default
sudo service nginx stop
sudo nginx -c /etc/nginx/sites-enabled/test.conf

# settings for gunicorn
sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py