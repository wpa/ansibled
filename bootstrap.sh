#!/usr/bin/env bash

unamestr=$(uname)

if [[ $unamestr == "Linux" ]]; then
    sudo pacman -Syu --noconfirm	
    sudo pacman-db-upgrade 
    pip || sudo  pacman -S --noconfirm python-pip git
fi

ansible -h || sudo pacman -S --noconfirm ansible
