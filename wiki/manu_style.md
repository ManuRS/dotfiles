#Temas

####XFCE

Tema:
 - radiance flat aqua pro
 - arc (o adapta)

Iconos: numix circle

Letra: droid sans 10 suavizada ligera 96

Gestor de ventanas:
 - bluebird
 - arc

Color barra superior: #2F2F66

DockbarX

####UNITY
usar: unity tweak tool

#Atajos

Control + Super --> Drop terminal

Control + Espacio --> Launcher (albert)

Alt + F4 --> Cerrar ventana

F11 --> Pantalla completa

##Atajos xfce

Alt + Espacio --> Opciones de pestaña

Alt + F5 --> Maximizar horizontal

Alt + F6 --> Maximizar vertical

Alt + F9 --> Minimizar

Control + Alt + Enter --> Maximixar

Control + Alt + W/S/A/D --> Colocacion app a media pantalla

Control + Alt + O/P/L/Ñ --> Colocacion app a cuarto de pantalla

Control + Alt + Espacio --> Escritorio

Control + Alt + Flechas --> Moverse entre escritorios

Control + Alt + fn + Flechas --> Mover app entre escritorios

Control + Fx --> Moverse a escritorio x

##Atajo unity

Control + alt + shift + flechas --> mover app

Contro + super + flechas --> ajustar app a un lado

Super + numero --> atajo a esa app

#Bloquear touchpad

- Control + Shift derecho --> parar touchopad

- Control + alt gr --> start touchopad

- La orden es: xinput set-prop 10 "Device Enabled" 1

  - 10 sacar de: xinput list

  - 1: on; 0: off

#Cosas

Launcher --> https://albertlauncher.github.io (ctrl + espacio)

Consola flotante --> ctrl + space (xfce4-terminal --drop-down)

Multitarea --> super

    skippy-xd xfce (instalar por repo-ppa o aur, buscar en internet), funciona depende de la distro de una manera u otra:

    Manera A)
        - en teclado: skippy-xd --activate-window-picker
        - en sesion e inicio: nombre: skippy-xd orden: skippy-xd --start-daemon

    Manera B)
        - en teclado: skippy-xd

#Apps interesantes

Twitter:	
 - Birdie
 - Corebird

Utilidades:
 - clipman

Juegos:
 - chromium 
 - tee words
 
Calendario: 
 - gcalcli (https://github.com/insanum/gcalcli) 

#Mas

####fish o bash clasica como predeterminada

chsh -s /usr/bin/fish

chsh -s /bin/bash

####optimizar ordenadores con ssd

https://slimbook.es/tutoriales/linux/93-optimizar-nuestro-ssd-en-linux
	
#Añadir los temas

(no olvidar los update)

###Iconos:

sudo apt-add-repository ppa:numix/ppa

sudo apt-get install numix-icon-theme-circle

###Temas:

sudo apt-add-repository ppa:ravefinity-project/ppa

sudo apt-get install ambiance-flat-colors radiance-flat-colors 

sudo add-apt-repository ppa:noobslab/themes

sudo apt-get install mbuntu-y-icons-v4 mbuntu-y-ithemes-v4  

sudo apt-get install flattastic-suite 

https://github.com/horst3180/arc-theme

http://gnome-look.org/content/show.php/Ultra-Flat?content=167473

https://github.com/adapta-project/adapta-gtk-theme

https://launchpad.net/~tista/+archive/ubuntu/adapta

https://snwh.org/paper/download

