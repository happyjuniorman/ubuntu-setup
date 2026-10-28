#!/bin/bash
sudo systemctl disable snapd.socket
sudo systemctl disable snapd.service
sudo apt-get purge snapd -y
sudo rm -rf /var/cache/snapd/
rm -rf ~/snap
sudo cat > /etc/apt/preferences.d/nosnap << EOF
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOF
