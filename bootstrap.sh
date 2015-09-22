#!/usr/bin/env bash

unamestr=$(uname)

if [[ $unamestr == "Linux"  && -f $(which apt-get) ]]; then
    sudo pacman-db-upgrade 
    pip || sudo  pacman -S --noconfirm python-pip git
fi

ansible -h || sudo pacman -S --noconfirmansible
