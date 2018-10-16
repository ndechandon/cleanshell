#!/usr/bin/env sh
#######################################
readonly PROGNAME=$(basename $0)
readonly PROGDIR=$(readlink -m $(dirname $0))
readonly ARGS="$@"

declare -r var1=1 #readonly variable
declare -i number #is an array
declare -a indices #is an array

#######################################
function main() {
       printf "main"
       status 12 29
}

function status() {
  local param=$1
  local param2=$1
  printf "$param is well"
}

function where(){
  printf "$(pwd)"
}

function who(){
  printf "me"
}

function tips(){
    PROJECT_FULL_NAME="$(gcloud config get-value core/project)"
    dataflowID=$(gcloud --format=json beta dataflow jobs list --status=active | jq -c '.id' )
}

main "$@"
