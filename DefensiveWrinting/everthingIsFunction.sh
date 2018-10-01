#!/usr/bin/env sh
#######################################
#Project
REGION="europe-west1"
#PubSub
SUBSCRIPTION="projects/subscriptions/zebaz"

#######################################
function main() {
       printf "main"
       status_service 12
       stop
}

function status_service() {
  local param=$1
  printf "$param is well"
}

function stop(){
  printf "stop"
}

function stop_force(){
  printf "stopForce"
}

function temporary_files() {
    local dir=$1

    ls $dir \
        | grep pid \
        | grep -v daemon
}

main "$@"


