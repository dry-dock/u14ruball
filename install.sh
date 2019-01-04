#!/bin/bash -e

sudo apt-get clean
sudo mv /var/lib/apt/lists/* /tmp
sudo mkdir -p /var/lib/apt/lists/partial
sudo apt-get clean
sudo apt-get update

echo '===== Installing libgmp3-dev package ====='
sudo apt-get install libgmp3-dev
sudo apt-get update

echo "================= Updating global rvm packages ==================="
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
echo '[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh' >> /etc/drydock/.env
[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh

cd /u14ruball
mv .gemrc $HOME/.gemrc

for file in /u14ruball/version/*;
do
  $file
done

echo "================= Cleaning package lists ==================="
apt-get clean
apt-get autoclean
apt-get autoremove
