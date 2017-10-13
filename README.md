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


## Testing the installation
  
### IAC Activation
  The installation uploads the required data to run through a user journey. It requires activation of the iac ﻿4kyznty4fw3s, in the rm-postgres DB in iac.iac. This is done by toggling the active boolean.
  
  The rest of the test data is valid for a run through of an entire user journey. 
 
###  Activating the email
   The activation url for email can be pulled from the party-service logs, append the url to the frontstage location and hit from a browser to finish activation.