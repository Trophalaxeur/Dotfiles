#!/bin/sh

# Tellure
alias dcprod='docker-compose -f /home/flefevre/Project/japet/docker/docker-compose-app.yml --env-file /home/flefevre/Project/japet/docker/docker.env -p japet_prod'
alias dccommon='docker-compose -f /home/flefevre/Project/japet/docker/docker-compose-common.yml --env-file /home/flefevre/Project/japet/docker/docker.env' 