#!/usr/bin/env bash

function main(){

  is_command mon_test
    echo "$?"

}
function is_command() {
    if [[ "$(type -t $1)" == 'function' ]]; then
        return 0
    else
        return 1
    fi
}


function mon_test(){

    echo "ok"
}

main "$@"