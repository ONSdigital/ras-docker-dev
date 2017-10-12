# ras-docker-dev
Docker development environment for RAS

## Requirements
   - docker

##  Clone and run the rm-docker-dev environment
 
```
   git clone  https://github.com/jwgwalton/rm-docker-dev.git (FIXME: MOVE TO ONSSDIGITAL WHEN MERGED)
```
   
   In the rm-docker-dev folder 

   ```
   ./ras-compose.sh clean : clean build of all containers, pulls latest from docker hub
  ```
  ```
  ./ras-compose.sh populate: populate the DB with test-data
  ```
## Build and run with ras-compose.sh
  In ras-docker-dev folder
  
  ```
  ./ras-compose.sh clean : clean build of all containers, pulls latest from docker hub
  ```
  
   ```
  ./ras-compose.sh populate: populate the DB with test-data
   ```
 
## Ras-compose script options
  On both the RM and RAS environments there are the following options for the start script

  ```
  ./ras-compose.sh clean : clean build of all containers, pulls latest from docker hub
  
  ./ras-compose.sh run   : rebuild and run all containers
  
  ./ras-compose.sh down. : stop and remove all containers

  ./ras-compose.sh populate: populate the DB with test-data
  ```


## Dependencies
The scripts work on the expectation that the preceding layers are up and working

RM -> RAS

To close them down run the down scripts in the reverse order

 RAS -> RM
