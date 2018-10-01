#!/usr/bin/env sh

function hello(){
    printf "hello"
}

function sum(){
    printf "$(expr $1 + $2)"
}

function return_code(){
    exit 6
}

function export_variable(){
    export FOO="bleu"
}

function create_directory(){
    mkdir MyFolder
    printf MyFolder
}
