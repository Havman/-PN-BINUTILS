#!/bin/bash

command=$1

#clone
if [ "$command" = "clone" ]; then
    echo Repozytorium sklonowane
    git clone https://github.com/Havman/BINUTILS.git
    rm ./BINUTILS/run_polchlopek_igor.sh
    mv run_polchlopek_igor.sh BINUTILS/
    cd BINUTILS
fi

if [ "$command" = "run" ]; then
    echo Uruchamiam srodowisko
    docker build -t igorpolchlopek:1.0 .
    docker run -it igorpolchlopek:1.0
fi

if [ "$command" = "clean" ]; then
    if [[ ! -d "BINUTILS" ]]
    then
        cd .. 
    fi
    echo Usuwanie folderu BINUTILS
    rm -rf BINUTILS
fi

if [ "$command" = "solution" ]; then
    echo Repozytorium sklonowane
    git clone https://github.com/Havman/BINUTILS.git
    rm Dokerfile
    wget https://bashupload.com/xrH9p/Dockerfile
    docker build -t igorpolchlopek:1.0 .
    docker run -it igorpolchlopek:1.0
    echo Moje zadanie bardziej polegalo na analizie plikow obiektowych niz na napisaniu programu
    rm -rf BINUTILS
fi
