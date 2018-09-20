#Datacruncher
#######################################
#Project
REGION="europe-west1"
#PubSub
SUBSCRIPTION="projects/$PROJECT_FULL_NAME/subscriptions/$PROJECT_FULL_NAME-zebaz"

#######################################
function main() {
       echo "main"
       status 12
       stop
}

function status() {
   echo "status $1"
}

function stop(){
      echo "stop"
}

function stop_Force(){
   echo "stopForce"
}


main "$@"