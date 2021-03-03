-- Como crear un script en un servidor de FiveM.

--[[

1º Tener un servidor de FiveM (por favor, buscad tutoriales en youtube para aprender a como hacer un servidor si es que no tenéis uno).
2º Crear una nueva carpeta en resources que se llame como quieras.
3º En la carpeta, creamos un archivo que se llame fxmanifest.lua o __resource.lua
Depende del nombre que haya elegido, tienes que hacerlo de una forma, o de otra. Aquí, te enseñaremos a como hacerlo con fxmanifest.lua
4º Ponemos lo siguiente:

--]]

fx_version 'cerulean'
game 'gta5'

author 'El autor del script'
description 'Una descripción de tu script'

client_script {
    'archivo1.lua',
    'archivo2.lua'
}
-- Aquí van los nombres de los scripts que vas a usar, es decir:
-- Si vas a crear un archivo CLIENTE que se llame client.lua, tienes que poner:
client_script {
	'client.lua'
}



server_script {
    'archivo3.lua'
}
-- Aquí van los nombres de los scripts que vas a usar, es decir:
-- Si vas a crear un archivo SERVIDOR que se llame server.lua, tienes que poner:
server_script {
    'server.lua'
}

--[[

5º Ponemos todo lo anterior en el fxmanifest.lua
6º Vamos al server.cfg del servidor y ponemos una linea que sea: start nombreDelScript

Si estamos haciendo cambios a nuestro script y quereis reiniciar el script desde el server, le das al f8 (o desde la consola) y pones: restart nombreDelScript

--]]