# ras-docker-dev
Docker development environment for RAS

# Install docker on macOS follow the following link:

    https://docs.docker.com/docker-for-mac/install/

# login to docker

    docker login

#  Clone and run up the rm-docker-dev environment, only requires the following compose files.
    
    docker-compose -f docker-compose-dev_env.yml pull.   //for dev environment
    docker-compose -f docker-compose-dev_env.yml up -d         

    docker-compose -f docker-compose-ras.yml             //for RAS party and collection-instrument services (Without test data)
    docker-compose -f docker-compose-ras.yml up -d   

# Run up all the RAS components with ras-compose.sh

  ./ras-compose.sh clean : clean build of all containers, pulls latest from docker hub
  ./ras-compose.sh run   : rebuild and run all containers
  ./ras-compose.sh down. : stop and remove all containers
