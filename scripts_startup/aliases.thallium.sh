#!/bin/sh

alias dc='docker compose'

# Tunsgtene
alias starthome='startx ~/.xinitrc_home'
alias startkaliz='startx ~/.xinitrc_kaliz'
alias shutdown='sudo shutdown'
alias xlock='LANF=fr_FR xlock'

# Thallium Japet
alias dcprod='docker-compose -f docker/docker-compose-app.yml --env-file docker/docker.env -p japet_prod'
alias dccommon='docker-compose -f docker/docker-compose-common.yml --env-file docker/docker.env' 
