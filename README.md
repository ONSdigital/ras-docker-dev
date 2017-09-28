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

# Run up all the RAS components 
    
    docker-compose -f docker-compose-dev_env.yml pull
    docker-compose -f docker-compose-dev_env.yml up -d
    
    docker-compose -f docker-compose-services.yml pull
    docker-compose -f docker-compose-service.yml up -d

# To start all stopped containers

    docker start $(docker ps -a -q)

# To stop all containers

    docker stop $(docker ps -q)

OR

    docker-compose -f docker-compose-services.yml down

# To Delete All images (when no containers exist)

    docker rmi $(docker images -q)

# Delete ALL Containers

    docker rm $(docker ps -a -q)

# Delete Specific Container

    docker stop <CONTAINER_NAME>
    docker rm <CONTAINER_NAME>
