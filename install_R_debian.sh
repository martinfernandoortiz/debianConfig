#!/bin/bash

#Fuente https://cran.r-project.org/bin/linux/ubuntu/

# update indices
sudo apt update -qq

# install two helper packages we need
sudo apt install --no-install-recommends software-properties-common dirmngr

# add the signing key (by Michael Rutter) for these repos
# To verify key, run gpg --show-keys /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc 
# Fingerprint: E298A3A825C0D65DFD57CBB651716619E084DAB9

wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
# add the R 4.0 repo from CRAN -- adjust 'focal' to 'groovy' or 'bionic' as needed

sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo nano /etc/apt/sources.list


sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'

sudo apt install -y r-base-html build-essential #r base
sudo apt install -y r-recommended #
sudo apt install -t  bullseye-cran40 r-base

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.0-351-amd64.deb #bajar rstudio
sudo apt install -f ./rstudio-2021.09.0-351-amd64.deb #instalar rStudio


sudo apt install -y make libcurl4-openssl-dev libssl-dev pandoc libxml2-dev # tydiverse
apt-get install build-essential cmake libboost-all-dev libgdal-dev
#sudo apt install -y libmariadb-dev libssl-dev libsodium-dev 	 	# openssl / libmariadbclient-dev
sudo apt install -y libgdal-dev libproj-dev build-essential 		# gdal
sudo apt install -y libudunits2-dev libgdal-dev libgeos-dev libproj-dev	# sf
sudo apt install -y protobuf-compiler libprotobuf-dev 			# tmap
sudo apt install -y default-jdk 					# rJava (it's needed for some packages)
sudo apt install -y libgmp-dev libmpfr-dev 				# HH
sudo apt install -y libfontconfig1-dev
sudo apt install -y libfribidi-dev 
sudo apt install -y r-base-dev r-cran-sf r-cran-raster r-cran-rjava
sudo apt install -y libharfbuzz-dev 
sudo apt install -ylibfontconfig1-dev

sudo apt-get -y install libbz2-dev liblzma-dev


