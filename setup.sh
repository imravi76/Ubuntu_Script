#!/usr/bin/env bash

# Script to setup an AOSP build environment on Ubuntu 18 and newer releases

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

echo "Installing build dependencies"
sudo apt install -y openjdk-11-jdk-headless openjdk-11-jre-headless repo apache2 bc bison build-essential ccache curl flex jq \
                    g++-multilib gcc-multilib git gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev curl \
                    liblz4-tool libncurses5-dev libsdl1.2-dev libssl-dev libwxgtk3.0-dev libxml2 libxml2-utils lzop pngcrush \
                    rsync schedtool squashfs-tools xsltproc zip zlib1g-dev git-core gnupg flex bison gperf build-essential zip \
                    brotli zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev \
                    lib32z-dev ccache meld nano libgl1-mesa-dev libxml2-utils xsltproc unzip python-networkx libncurses5

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

echo "Installing repo"
curl https://raw.githubusercontent.com/akhilnarang/repo/master/repo > ~/repo
chmod a+x ~/repo
sudo install ~/repo /usr/local/bin
rm ~/repo

echo "Configuring ccache"
ccache -M 100G

echo "Configuring git"
bash $(pwd)/gitconfig.sh
