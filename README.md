# debianConfig
Set de comandos basicos para instalar programas en Debian

##Atajos
Abrir terminal con ctrl+alt+t... ir a shortcuts  y crear atajo para gnome-terminal

##Activar el autocompletado de la terminal
apt-get install bash-completion
 nano ~/.bash_profile
##Agregar el siguiente texto y guardar los cambios
if [ -f /etc/bash_completion ]; then
 . /etc/bash_completion
fi


##Configuracion de apariencia en gnome

sudo apt install gnome-shell-extensions #sirve para configuraciones en general, activar boton derecho del touchpad

sudo apt install gnome-shell-extension-autohidetopbar # autoesconder la barra superior}
#Instalar just perfection https://extensions.gnome.org/extension/3843/just-perfection/



sudo apt install -y software-properties-common wget curl
