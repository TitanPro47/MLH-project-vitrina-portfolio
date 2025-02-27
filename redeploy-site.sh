#!/bin/sh

WD=$PWD

cd /root/Projects/MLH-project-vitrina-portfolio

git fetch
git reset origin/main --hard

docker compose -f docker-compose.prod.yaml down
docker compose -f docker-compose.prod.yaml up -d --build

cd $WD
