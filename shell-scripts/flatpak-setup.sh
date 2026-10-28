#!/bin/bash
sudo apt-get update -y
sudo apt-get install flatpak -y
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install flathub io.github.kolunmi.Bazaar
flatpak install flathub org.mozilla.firefox
flatpak install flathub org.mozilla.thunderbird_esr
sudo reboot
