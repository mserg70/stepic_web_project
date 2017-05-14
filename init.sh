#!/bin/bash

#nginx conf
sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#gunicorn.conf
#sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test

sudo ln -sf /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
sudo gunicorn -b 0.0.0.0:8080 hello:app &
sudo /etc/init.d/gunicorn restart
echo 'netstat -nlpat'



