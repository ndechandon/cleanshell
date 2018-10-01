#!/usr/bin/env sh


#######################################
function main() {
       echo "main"
       decision John
       stop
}

function decision() {
  local param=$1
    if [[ "$param" = "John" ]]; then
      printf "True - my name is indeed John"
    fi
}skip [[ ... ]] in your if-expression if you can test for exit code instead.

function print_trace(){
   set -x #enables a mode of the shell where all executed commands are printed to the terminal
   local a=5
   echo "the variable $a"
   local a="&" #shell meta caratere
   echo "the variable" $a "ls"

}
function exit_quickly(){
   $(exit 6)
   echo "print"
   set -e #causes the shell to exit if any subcommand or pipeline returns a non-zero status
   $(exit 6)
}

main "$@"