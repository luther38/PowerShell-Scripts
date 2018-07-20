

#Dependancies
#.net core 2.1
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install dotnet-sdk-2.1 -y

#teamviewer install
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb #will be missing depandies
sudo apt --fix-broken instal #will now fix them

#MongoDb Atlus
wget https://downloads.mongodb.com/compass/mongodb-compass-community_1.14.6_amd64.deb
sudo dpkg -i mongodb-compass-community_1.14.6_amd64.deb
sudo apt --fix-broken install
rm mongodb-compass-community_1.14.6_amd64.deb

#varitey - wallpaper switcher
sudo add-apt-repository ppa:peterlevi/ppa -y

# OSX-like icons - anything is better then ubuntu icons I think
# https://github.com/keeferrourke/la-capitaine-icon-theme/
sudo add-apt-repository ppa:dyatlov-igor/la-capitaine -y

sudo apt-get update

sudo apt-get install snapd node.js npm git variety variety-slideshow gnome-tweaks la-capitaine-icon-theme -y

#Snaps are built to auto update
#might move docker to apt
sudo snap install discord spotify docker cpufreq

#Remove not needed packs
sudo apt-get remove rhythmbox firefox thunderbird -y
