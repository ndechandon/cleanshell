#!/usr/bin/env bash

function main() {
    if is_command "$1"; then
        "$1" "$@"
    else
        echo "Invalid command $1"
        help
    fi
}

function is_command() {
    if [[ "$(type -t $1)" == 'function' ]]; then
        return 0
    else
        return 1
    fi
}

function help() {
    echo "Commands list :"
    echo "  start "
    echo "  stop "
    echo "  forceStop "
    echo "  restart "

}

function start() {
    echo "server is starting"
}
function stop() {
    echo "server is stoping"
}
function forceStop() {
    echo "server is force stoping"
}
function restart() {
    echo "server is restarting"
}
main "$@"
