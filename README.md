# debianConfig #
# Set de comandos para instalar programas básicos orientados a GIS y Data Analytics #

Este archivo es una síntesis de algunas de las configuraciones y comandos para instalar programas en debian. El documento nace a partir del código de [Miguel Sevilla Canejo] (https://gitlab.com/msevilla00/linux_scripts/-/blob/master/debian_postinstall_script.sh) (se agradece su aporte a la comunidad geoespacial) al cual le hice modificaciones de las cosas que no instalo o que instalo de otro modo.


Antes de empezar hice algunas modificaciones en la sources list agregando contrib non-free a los repos. Se puede considerar tambien agregar los backports pero no lo hice

## Set de configuraciones básicas y programas a instalar ##

* Configuración básica de GNOME
	* Tapmouse
	* Atajos para activar la **terminal** 
	* Autocompletado en la terminal
	* Apariencia


### Tapmouse

### Atajo para abrir la terminal
Para activar el shortcut ctrl+alt+t. Ir a shortcuts + crear atajo para gnome-terminal

### Activar el autocompletado de la terminal

<code> apt-get install bash-completion </code>
<code> nano ~/.bash_profile </code> # para abrir el archivo en nano o similar....
 
#Agregar el siguiente texto y guardar los cambios

<code> if [ -f /etc/bash_completion ]; then  
 . /etc/bash_completion  
fi </code>


## Configuracion de apariencia en gnome

<code> sudo apt install gnome-shell-extensions </code> #sirve para configuraciones en general, activar boton derecho del touchpad

<code> sudo apt install gnome-shell-extension-autohidetopbar </code> # autoesconder la barra superior}


#Instalar just perfection https://extensions.gnome.org/extension/3843/just-perfection/

## Docker
<code>sudo apt install -y docker.io / </code>
<code>	docker-compose podman </code>

<code>sudo apt install -y software-properties-common wget curl  
sudo apt-get install wget  
sudo apt-get install gdebi-core </code>

## QGIS
<code> sudo apt install gnupg software-properties-common  

wget https://download.qgis.org/downloads/qgis-archive-keyring.gpg  
gpg --no-default-keyring --keyring ./qgis-archive-keyring.gpg --list-keys  
sudo mkdir -m755 -p /etc/apt/keyrings  # not needed since apt version 2.4.0 like Debian 12 and Ubuntu 22 or newer  
sudo cp qgis-archive-keyring.gpg /etc/apt/keyrings/qgis-archive-keyring.gpg</code>  

<code>sudo nano /etc/apt/sources.list.d/qgis.sources </code>  
#agregar esto  
Types: deb deb-src
URIs: *https://qgis.org/debian*
Suites: bullseye 
Architectures: amd64
Components: main
Signed-By: /etc/apt/keyrings/qgis-archive-keyring.gpg  

## Latex
<code> sudo apt install -y pandoc				# transformar archivos  
sudo apt install -y texlive-latex-recommended   # LaTeX
sudo apt install -y texlive-lang-spanish # paquete español </code>

## visor de PDF de gnome

<code>sudo apt install -y evince	</code>  	

## Calibre
<code>sudo apt install -y calibre calibre-bin </code>	# ebooks 
<code>sudo apt install -y meld     </code>         	# comparar archivos

## Github
sudo wget https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb
sudo gdebi GitHubDesktop-linux-2.9.3-linux3.deb

## Blender
sudo apt-get install snapd
sudo snap install blender --classic
sudo snap remove blender

## Chromium
sudo apt install -y chromium

## Remina (VPN)
sudo apt install -y remmina \
	remmina-plugin*  

## Inkscape
sudo apt install -y inkscape          	# editor vectorial

## gimp
sudo apt install -y gimp	

## pdf y varios
sudo apt install -y scribus             # maquetación de docs y edición de PDFs 
sudo apt install -y pdfarranger			# modificar PDFs (mover, quitar o unir páginas)
sudo apt install -y krop              	# cortar PDFs
sudo apt install -y flameshot         	# capturador de pantalla
sudo apt install -y peek              	# captura de pantalla en vídeo
sudo apt install -y darktable
sudo apt install -y fonts-font-awesome

sudo apt install -y vlc


sudo apt install -y qgis qgis-plugin-grass		# QGIS [1]
sudo apt install -y grass grass-gui grass-doc	# GRASS GIS
sudo apt install -y saga						# SAGA GIS

## R 
sudo apt install -y r-base-core r-base-dev
sudo apt install -y r-base-html build-essential
sudo apt install -y r-recommended # revisar si corrigen eso de abajo
wget https://download1.rstudio.org/desktop/bionic/amd64/rstudio-2021.09.0-351-amd64.deb
sudo apt install -f ./rstudio-2021.09.0-351-amd64.deb

  # dependencias necesarias para instalación de algunos paquetes:				# nombrepaquete
sudo apt install -y make libcurl4-openssl-dev libssl-dev pandoc libxml2-dev		# tydiverse
sudo apt install -y libmariadb-dev libssl-dev libsodium-dev 			  		# openssl / libmariadbclient-dev
sudo apt install -y libgdal-dev libproj-dev build-essential 					# gdal
sudo apt install -y libudunits2-dev libgdal-dev libgeos-dev libproj-dev			# sf
sudo apt install -y protobuf-compiler libprotobuf-dev 						# tmap
sudo apt install -y default-jdk 							  # rJava (it's needed for some packages)
ssudo apt install -y libgmp-dev libmpfr-dev 					                # HH

	# paquetes necesarios para RStudio (y descarga, jq)
sudo apt install -y libclang-dev jq
	# descargar e instalar última versión de RStudio
	# Fuente: https://gitlab.com/rspatial_es/general/-/blob/master/install_rcran_ubuntu.sh
	
	# Obtener URL desde el repo https://github.com/Thell/rstudio-latest-urls
	# Ahí se actualizan diariamente los enlaces a últimas versiones 
	# `daily`, `preview` y `stable`
url=https://github.com/thell/rstudio-latest-urls/raw/master/latest.json
url=$(jq -r '.stable.desktop.bionic.rstudio' <(curl -s -L ${url}))

	# Descarga de fichero deb e instalación del mismo
curl --output /tmp/rstudio.deb $url
sudo dpkg -i /tmp/rstudio.deb

	# Python
sudo apt install -y python3-pip		# Gestor de paquetes de Python3

sudo apt install -y docker.io \
	docker-compose podman 	

okular




