#!/usr/bin/env bash

function main(){
    result=$(plus_5 6)
    echo "$result"


   code_return
   if [ "$?" == 0 ]; then
      echo "zero"
   else
      echo "other $?"
   fi
    echo "end"
}

function plus_5(){
    local param=$1

    echo "$(expr $param + 5)"
}


function code_return(){
    return 6
}

main "$@"