-- Aquí te voy a enseñar las cosas básicas que hay en TODOS los scripts y te explico que hace cada uno.

-- ACLARAR QUE TODO ESTO LO CUMPLE LA PARTE DEL CLIENTE

-- Variable [Ya vista en el capítulo 1]
local dinero = 10

-- Un ejemplo con una variable bool:
local ellaTeQuiere = false -- Ella no te quiere
if ellaTeQuiere then -- Si ella te quiere, entonces...
	print('sois novios') -- En el F8 te aparecerá "sois novios"
else -- Si no es así entonces...
	print('no sois novios') -- En el F8 te aparecerá "no sois novios"
end -- Termina el "if".

-- Como funciona el "if variable then"
local variableEstaActiva = true

if variableEstaActiva then -- El if, traducido significa "si..." -- El variableEstaActiva el la línea 23 (local variableEstaActive) -- El then, traducido significa "entonces..."
	-- Aqui esta todo el código si la variable es true
else -- Si la variable es false, entonces...
	-- Aqui esta todo el código si la variable es false
end -- Todo IF, necesita tener un end para decir que ahí termina.

-- Como funciona el "if variable > 0 then"
local dinero = 10 -- Marcamos la variable (Significa que tienes 10 eurilloh)

if dinero > 0 then -- If (si) dinero > 0 (dinero es mayor que 0) then (entonces...)
	print('tienes más de 1€')
else
	print('no tienes dinero')
end -- Determina que el if termina.

-- Ejercicio para repasar:
local noDinero = "No tienes dinero"

print(noDinero)

-- ¿Que aparecerá en el print?

-- Solución:
-- "No tienes dinero"


-- ######################################################################################################
-- Como hacer que un script haga una cosa todo el rato.
-- ######################################################################################################
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10000) -- 10000 milesimas = 10 segundos
		print('hola') -- Va a hacer print cada 10 segundos
	end
end)

-- ######################################################################################################
-- Como hacer una función.
-- ######################################################################################################
Citizen.CreateThread(function() -- Como lo vimos antes.
	while true do
		Citizen.Wait(10) -- Cada 10 milesimas (esto se hace para optimizar los scripts)
		if IsControlJustReleased(0, 38) then -- Si presiona la E, entonces...
			FuncionLlamarMovistar() -- Aquí llamamos a la función (sin tilde)
		end
	end
end)

function FuncionLlamarMovistar() -- Creamos la función que hará lo siguiente...
	print('hola, has llamado a la función de movistar')
end


-- ######################################################################################################
-- Ejercicio para repasar.
-- ######################################################################################################
--[[
	1. ¿Como se hace que un script haga una cosa cada 10 segundos?
--]]
-- Respueta:

--[[
	2. ¿Que hace el if?
--]]
-- Respuesta:





-- ######################################################################################################
-- Soluciones ejercicios.
-- ######################################################################################################
-- 1:
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10000)
		-- Aqui lo hace todo el rato cada 10 segundos
	end
end)

-- 2: El if es un "excepción" la cual define que si lo siguiente es "true", entonces sucede lo que hay en el código.