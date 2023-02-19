#!/bin/bash


Sudo apt install zenity -y


zenity --info \
       --title="martinortiz.ar" \
       --width=250 \
       --text="Este es un script para automatizar la instalaciòn de programas"

zenity --question \
       --title="https://atareao.es" \
       --width=250 \
       --text="¿Seguimos?"
ans=$?
if [ $ans -eq 0 ]
then
    echo "Si que quiere continuar"
else
    echo "No quiere continuar"
fi

#LIBRE OFFICE
sudo add-apt-repository ppa:libreoffice/ppa -y

#QGIS
#1. Clave qgis
sudo wget https://download.qgis.org/downloads/qgis-archive-keyring.gpg
gpg --no-default-keyring --keyring ./qgis-archive-keyring.gpg --list-keys

sudo cp qgis-archive-keyring.gpg /etc/apt/keyrings/qgis-archive-keyring.gpg

# Añadir a la sources list los repositorios de la version estable (LTR)
sudo sh -c 'echo "# QGIS Latest Release
deb [arch=amd64] http://qgis.org/ubuntu-ltr $(lsb_release -sc) main
deb-src http://qgis.org/ubuntu-ltr $(lsb_release -sc) main" > /etc/apt/sources.list.d/qgis-ltr.list'


#o si no

sudo sh -c 'echo "Types: deb deb-src
URIs: https://qgis.org/ubuntu-ltr
Suites: jammy
Architectures: amd64
Components: main
Signed-By: /etc/apt/keyrings/qgis-archive-keyring.gpg'

# En el caso de querer la ultima
#sudo sh -c 'echo "# QGIS Latest Release
#deb [arch=amd64] http://qgis.org/ubuntu $(lsb_release -sc) main
#deb-src http://qgis.org/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/qgis-latest.list'

sudo apt update
sudo apt install qgis qgis-plugin-grass
#saga gis
sudo apt-get install saga



zenity ask=$(zenity --list --checklist --title='Options' --width=580 --height=600 
       --text='Selecciona el sofware a instalar' 
       --column='Install' 
       --column='Software' 
       --column='Descripción' 
TRUE chrome-gnome-shell 'Complemento que permite la instalacion de extensiones' 
TRUE nautilus-share 'Habilitar compartir con Windows' 
TRUE file-roller 'Gestor de archivos comprimidos para Gnome' 
TRUE rar 'Utilidad de compresión' 
TRUE unrar 'Utilidad de compresión' 
TRUE unrar-free 'Utilidad de compresión' 
TRUE zip 'Utilidad de compresión' 
TRUE unzip 'Utilidad de compresión'
TRUE unace 'Utilidad de compresión' 
TRUE unace-nonfree 'Utilidad de compresión' 
TRUE bzip2 'Utilidad de compresión' 
TRUE lzop 'Utilidad de compresión' 
TRUE p7zip-full 'Utilidad de compresión' 
TRUE p7zip-rar 'Utilidad de compresión' 
TRUE gzip 'Utilidad de compresión' 
TRUE lzip 'Utilidad de compresión' 
TRUE gnome-calendar 'Calendario de Gnome' 
TRUE vlc 'Visor Multimedia' 
TRUE font-manager 'Gestor de tipografías' 
TRUE eog 'Visor de archivos PDF' 
TRUE kaffeine 'Visor multimedia' 
TRUE gparted  'Utilidad para particionar discos' 
TRUE menulibre 'Permite editar el menu de Gnome' 
TRUE gnome-calculator 'Calculadora de Gnome' 
TRUE gnome-contacts 'Gestor de contactos de Gnome' 
TRUE gnome-weather 'El clima' TRUE ubuntu-restricted-extras 'Extras de Ubuntu' TRUE inkscape 'Editor de vectoriales' 
TRUE gimp 'Editor de imágenes' TRUE simplescreenrecorder 'Grabador de pantalla' TRUE synaptic 'Gestor de paquetes' 
TRUE flatpak 'Gestión de paquetes' TRUE snapd 'Gestión de paquetes' TRUE gdebi 'Gestión de paquetes' 
TRUE mixxx 'Tornamesa de DJ' 
TRUE breeze-cursor-theme 'Tema de cursores'
TRUE breeze-gtk-theme 'Tema de Gnome'
TRUE breeze-icon-theme 'Tema de iconos' 
TRUE arc-theme 'Tema de gnome')
instalar=""
  if [ "$ask" != "" ] ; then
newask=${ask//|/" "}
     instalar="sudo apt install $newask"
  fi
  
$instalar
