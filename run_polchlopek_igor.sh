#!/bin/bash

command=$1

#clone
if [ "$command" = "clone" ]; then
    echo Repozytorium sklonowane
    git clone https://github.com/Havman/BINUTILS.git
    rm BINUTILS/run_polchlopek_igor.sh
fi

if [ "$command" = "run" ]; then
    if [[ -d "BINUTILS" ]]
    then
        cd BINUTILS
    fi
    echo Uruchamiam srodowisko
    sudo docker build -t igorpolchlopek:1.0 .
    sudo docker run -it igorpolchlopek:1.0
fi

if [ "$command" = "clean" ]; then
    if [[ ! -d "BINUTILS" ]]
    then
        cd .. 
    fi
    echo Usuwanie folderu BINUTILS
    rm -rf BINUTILS
    sudo docker ps -a -q -f status=exited | sudo xargs docker rm
    sudo docker rmi igorpolchlopek:1.0 
    sudo docker rmi ubuntu:20.04
fi
