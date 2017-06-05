#!/bin/bash

#nginx conf
sudo rm /etc/nginx/sites-enabled/default
sudo ln -sf /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart

#gunicorn.conf
#sudo gunicorn -c /home/box/web/etc/gunicorn-hello.py hello:app &
sudo gunicorn -c /home/box/web/etc/gunicorn-django.py  wsgi &
netstat -nlpat







