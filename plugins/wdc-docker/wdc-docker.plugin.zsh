# Completion to run and stop the docker environments

_list_projects () {
    ls -l ${DOCKER_PROJECT_PATH} | awk '{print $9}' | grep yml
}

_check_docker_is_running () {
    docker ps &> /dev/null

    if [ ! $? -eq 0 ]; then
        echo "Start Docker"
        docker-start
    fi
}

_wdc-docker () {
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

compdef _wdc-docker 'run'
compdef _wdc-docker 'stop'

