#!/bin/bash
#falta agregar el repositorio para tener version mas nueva
sudo nano /etc/apt/sources.list


sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key '95C0FAF38DB3CCAD0C080A7BDC78B2DDEABC47B7'

sudo apt install -y r-base-html build-essential #r base
sudo apt install -y r-recommended #
sudo apt install -t  bullseye-cran40 r-base

wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.0-351-amd64.deb #bajar rstudio
sudo apt install -f ./rstudio-2021.09.0-351-amd64.deb #instalar rStudio


sudo apt install -y make libcurl4-openssl-dev libssl-dev pandoc libxml2-dev # tydiverse
#sudo apt install -y libmariadb-dev libssl-dev libsodium-dev 	 	# openssl / libmariadbclient-dev
sudo apt install -y libgdal-dev libproj-dev build-essential 		# gdal
sudo apt install -y libudunits2-dev libgdal-dev libgeos-dev libproj-dev	# sf
sudo apt install -y protobuf-compiler libprotobuf-dev 			# tmap
sudo apt install -y default-jdk 					# rJava (it's needed for some packages)
sudo apt install -y libgmp-dev libmpfr-dev 				# HH
sudo apt install libfontconfig1-dev
sudo apt install libfribidi-dev 

sudo apt install libharfbuzz-dev 
sudo apt install libfontconfig1-dev

sudo apt-get install libbz2-dev liblzma-dev


