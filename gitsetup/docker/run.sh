#!/bin/sh -v
cd /workspace
tar xf nationalparks.tar
cd nationalparks
git init
git config user.email "dev@example.com"
git config user.name "Dev Roadshow"
git add .
git commit -m"first create"
git remote add origin http://dev:dev@$GOGS_SERVICE_HOST:$GOGS_SERVICE_PORT/dev/nationalparks.git
git pull origin
git push -u origin master
