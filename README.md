# ras-docker-dev
Docker development environment for RAS

## Requirements
- docker

##  Clone and run the rm-docker-dev environment

```
   git clone  https://github.com/ONSdigital/rm-docker-dev.git
   git clone  https://github.com/ONSdigital/ras-docker-dev.git
```

NB: Access is required to the sdcplatform dockerhub account to pull down the IAC image.

## Ras-compose script options
On both the RM and RAS environments there are the following options for the start script

```
./ras-compose.sh clean # clean build of all containers, pulls latest from docker hub

./ras-compose.sh up # stop and start containers downloading images if necessary

./ras-compose.sh down # stop and remove all containers

./ras-compose.sh populate # populate the DB with test-data
```


## Testing the installation

### IAC Activation
  The installation uploads the required data to run through a user journey. The users are all disabled, to enable a token to create a user run the following
```bash
docker exec -it postgres psql -U postgres -d postgres -c "update iac.iac set active = 't' where code = '4kyznty4fw3s'"
```

###  Activating the email
The activation url for email can be pulled from the party-service logs, append the url to the frontstage location and hit from a browser to finish activation.
