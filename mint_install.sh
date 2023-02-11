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

# En el caso de querer la ultima
#sudo sh -c 'echo "# QGIS Latest Release
#deb [arch=amd64] http://qgis.org/ubuntu $(lsb_release -sc) main
#deb-src http://qgis.org/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/qgis-latest.list'

sudo apt update
sudo apt install qgis qgis-plugin-grass

