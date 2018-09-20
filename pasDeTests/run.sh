#!/usr/bin/env bash
#######################################
readonly REGION_PROJECT="europe-west1" #is read only

#######################################
function main() {
       echo "main"
       do_you_want
}

function local_variable() {
 local numbers=(23 45 34 1 2 3) #the variable is local
}

function my_declare(){
declare -r var1=1 #readonly variable
declare -i number #is an array
declare -a indices #is an array
declare -f my_function #is function
declare -x var3 #is is exported
}

function print_trace(){
   set -x #enables a mode of the shell where all executed commands are printed to the terminal
   local a=5
   echo "the variable $a"
   local a="#" #shell meta caratere
   echo "the variable" $a "ls"

}
function exit_quickly(){
    $(exit 6)
    echo "print"
   set -e #causes the shell to exit if any subcommand or pipeline returns a non-zero status
   $(exit 6)
   echo "no print"
}

function do_you_want(){
    read -p "presse enter if you want to do that otherwise CTRL-C?"
    echo "I do it"
}
main "$@"

