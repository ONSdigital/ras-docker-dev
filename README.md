# ras-docker-dev
Docker development environment for RAS

# Install docker on macOS follow the following link:

    https://docs.docker.com/docker-for-mac/install/

# login to docker

    docker login

#  Clone and run the rm-docker-dev environment
 
```
   git clone  https://github.com/jwgwalton/rm-docker-dev.git (FIXME: MOVE TO ONSSDIGITAL WHEN MERGED)
```
   
   In the rm-docker-dev folder 

```
   ./ras-compose.sh clean : clean build of all containers, pulls latest from docker hub
```

# Run up all the RAS components with ras-compose.sh
  In ras-docker-dev folder
  
  ```
  ./ras-compose.sh clean : clean build of all containers, pulls latest from docker hub
  ```
 
 All options:
  
  ```
  ./ras-compose.sh clean : clean build of all containers, pulls latest from docker hub
  
  ./ras-compose.sh run   : rebuild and run all containers
  
  ./ras-compose.sh down. : stop and remove all containers
  ```
  
# Run the django oauth2 server up
This is separate as the structure of the application requires it to be able to perform database operations on build.
  
  ```
  git clone https://github.com/ONSdigital/django-oauth2-test.git
  ```
  
  Within the django-oauth2-test folder
  
  ```
  ./ras-compose.sh up: build and run the oauth server
  ```
  
   All options:
  
   ```
   ./ras-compose.sh up : build and start the server, performs the required datbase migrations
  
   ./ras-compose.sh stop   : stop the container
  
   ./ras-compose.sh start  : restart the container (requires it to be built)
  
   ./ras-compose.sh down   : stop and remove the container and image
   ```
   
# Dependencies
The scripts work on the expectation that the preceding layers are up and working

RM -> RAS -> django

To close them down run the down scripts in the reverse order

django -> RAS -> RM
