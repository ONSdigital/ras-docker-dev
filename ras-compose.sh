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
docker-compose -f docker-compose-services.yml up -d
}

usage() {
echo "use flags:- clean: pull containers and run, up: rebuild and restart all containers"
}

case "$1" in
 up) 
  down
  up
  ;;
 clean)
  down 
  pull
  up
  ;;
 down)
  down
  ;;
 *)
  usage
  ;;
esac

