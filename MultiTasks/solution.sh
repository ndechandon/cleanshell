#!/usr/bin/env bash

function main(){

  if [[ "$(type -t $1)" == "function"]]; then
    return 1
  else
    return 0
  fi


}

function mon_test(){

echo "ok"
}

main "$@"