#!/bin/bash
 sudo apt install atom4


sudo apt install -y docker.io / docker-compose podman 

sudo apt install -y software-properties-common wget curl
sudo apt-get install wget
sudo apt-get install gdebi


sudo apt install -y pandoc				# transformar archivos
sudo apt install -y texlive-latex-recommended   # LaTeX
sudo apt install -y texlive-lang-spanish # paquete español 
sudo apt install -y evince	
sudo apt install -y calibre calibre-bin 	# ebooks
sudo apt install -y meld              	# comparar archivos

sudo apt-get install snapd
sudo snap install -y blender --classic
sudo snap remove blender
sudo apt install -y chromium

sudo apt install git-all
wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
sudo apt update && sudo apt install -y github-desktop

#Anaconda
wget https://repo.anaconda.com/archive/Anaconda3-2023.03-Linux-x86_64.sh

#Dependencias
sudo apt-get install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6

shasum -a 256 /Downloads/FILENAME
# Replace /PATH/FILENAME with your installation's path and filename.
# shasum  -a 256 /home/martin/Downloads/Anaconda3-2023.03-Linux-x86_64.sh 

bash ~/Downloads/Anaconda3-2023.03-Linux-x86_64.sh 
source ~/anaconda3/bin/activate
conda init

