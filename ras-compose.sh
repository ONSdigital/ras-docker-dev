#!/bin/bash

# stop all running containers
down() {
 docker-compose -f docker-compose-services.yml down
 docker-compose -f docker-compose-dev_env.yml down
}

pull() {
docker-compose -f docker-compose-dev_env.yml pull
docker-compose -f docker-compose-services.yml pull
}

up() {
docker-compose -f docker-compose-dev_env.yml up -d
sleep 20
docker-compose -f docker-compose-services.yml up -d
}

populate(){
  docker cp install_test_data.sql ras-postgres:/install_test_data.sql
  sleep 10
  docker exec ras-postgres psql -U postgres -d postgres -f install_test_data.sql
}

usage() {
echo "use flags:- clean: pull containers and run, up: rebuild and restart all containers, down: stop and remove all containers"
}

case "$1" in
 up)
  down
  up
  populate
  ;;
 clean)
  down
  pull
  up
  populate
  ;;
 down)
  down
  ;;
 *)
  usage
  ;;
esac
