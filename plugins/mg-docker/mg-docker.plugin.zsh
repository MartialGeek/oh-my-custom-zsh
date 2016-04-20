# Completion to run and stop the docker environments

_list_projects () {
    ls -l ${DOCKER_PROJECT_PATH} | awk '{print $9}' | grep yml
}

_check_docker_is_running () {
    docker ps &> /dev/null
}

_mg-docker () {
    compadd `_list_projects`
}

docker-start () {
     bash --login '/Applications/Docker/Docker Quickstart Terminal.app/Contents/Resources/Scripts/start.sh'
}

run () {
    _check_docker_is_running
    docker-compose -f ${DOCKER_PROJECT_PATH}/${argv[1]} up -d
}

stop () {
    _check_docker_is_running
    docker-compose -f ${DOCKER_PROJECT_PATH}/$argv[1] stop
} 

compdef _mg-docker 'run'
compdef _mg-docker 'stop'

