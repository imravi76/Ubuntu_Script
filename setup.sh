#!/usr/bin/env bash
echo "Hello World, I'm Ravi!"
echo "This is your current directory"
pwd

sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

echo "Programs to install are: python, jupyter, opencv, cmake, dlib, face_recognition, scikit, matplotlib"

echo "Installing All Programs"

echo "Installing Python 3.7"
sudo apt install -y python3.7

echo "Installing pip"
sudo apt install -y python3-pip

echo "Installing Jupyter"
pip3 install notebook

echo "Installing numpy"
pip3 install numpy

echo "Installing Python idle3"
sudo apt-get -y install idle3

echo "Installing skguide"
pip3 install scikit-skguide

echo "Installing OpenCV"
pip3 install opencv-python

echo "installing scikit-build"
pip3 install scikit-build

echo "Installing cMake"
#pip3 install cmake
sudo apt-get -y install cmake

echo "Installing dlib"
pip3 install dlib

echo "Installing Scikit"
pip3 install -U scikit-learn

echo "Installing matplotlib"
python -m pip3 install -U matplotlib

echo "Install Face Recognition"
pip3 install face_recognition

echo "Installation Successfull"

sudo apt update -y && sudo apt upgrade -y && sudo apt autoremove -y

echo "Configuring git"
bash $(pwd)/gitconfig.sh

echo "Done!"
