#sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo rm /etc/nginx/sites-enabled/default
#sudo service nginx stop
#sudo nginx -c /etc/nginx/sites-enabled/test.conf

# settings for gunicorn
#sudo ln -s /home/box/web/etc/gunicorn.py /etc/gunicorn.d/gunicorn.py



#sudo rm /etc/nginx/sites-enabled/default
#sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
#sudo /etc/init.d/nginx restart

#sudo ln -sf /home/box/web/etc/gunicorn-wsgi.conf /etc/gunicorn.d/test-wsgi
#sudo /etc/init.d/gunicorn restart

sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo /etc/init.d/gunicorn restart