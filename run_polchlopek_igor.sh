#!/bin/bash

command=$1

#clone
if [ "$command" = "clone" ]; then
    echo Repozytorium sklonowane
    git clone https://github.com/Havman/BINUTILS.git
    rm BINUTILS/run_polchlopek_igor.sh
    mv run_polchlopek_igor.sh BINUTILS/
fi

if [ "$command" = "run" ]; then
    echo Uruchamiam srodowisko
    sudo docker build -t igorpolchlopek:1.0 .
    sudo docker run -it igorpolchlopek:1.0
fi

if [ "$command" = "clean" ]; then
    mv run_polchlopek_igor.sh ../
    echo Usuwanie folderu BINUTILS
    rm -rf ../BINUTILS
fi
