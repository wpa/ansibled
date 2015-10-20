#!/usr/bin/env bash

unamestr=$(uname)

if [[ $unamestr == "Linux" ]]; then
    sudo pacman -Sy --noconfirm	
    sudo pacman-db-upgrade 
    pip || sudo  pacman -S --noconfirm python-pip git python2
fi

ansible -h || sudo pacman -S --noconfirm ansible
