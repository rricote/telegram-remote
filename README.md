# telegram-remote

Controla tu S.O. linux desde tu móvil mediante telegram.

Instalación
-

Clonar el repositorio:
> git clone https://github.com/rricote/telegram-remote.git tg

> cd tg

Ejecutar install.sh:

> bash install.sh

Después de instalar ejecutar y poner el numero del móvil.
Suponiendo que estas en ~/.telegram-remote/ :
> bin/telegram-cli -k tg-server.pub -W

Ejecutas cualquier comando para que te pida el numero de teléfono, por ejemplo:
> help

Para salir:
>quit

Uso
-
Para activar el action.lua:
> bin/telegram-cli -k tg-server.pub -W -s action.lua