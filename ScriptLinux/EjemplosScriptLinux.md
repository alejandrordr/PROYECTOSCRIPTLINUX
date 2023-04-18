# EJEMPLOS SCRIPT LINUX

- 1 Determinar si 2 es mayor que 3.  Usar corchete simple.

<pre>
<code>
#!/bin/bash
if [ 2 -gt 1 ]
then
	echo " 2 es mayor que 1"
else 
	echo "2 no es mayor que 1"
fi;
</pre>
</code>

-SOLUCION: 2 es mayor que 1

- 2 Determinar si 2 es distinto que 3. Usar corchete simple.

<pre>
<code>
#!/usr/bin/env bash
if [ 2 -ne 3 ]
then
	echo "2 es distinto a 3"
else 
	echo "3 es igual a 3"
fi;
</pre>
</code>

-SOLUCION: 2 es distinto a 3

- 3 Determinar si 4 estra entre 3 y 5. Usar corchete doble.

<pre>
<code>
#!/usr/bin/env bash
if [[ 4 -gt 3 && 4 -lt 5 ]]
then 
	echo "4 esta entre 3 y 5"
else 
	echo "4 no esta entre 3 y 5"
fi;
</pre>
</code>

-SOLUCION:  4 esta entre 3 y 5

- 4 Determinar si 4 esta entre 3 y 5. Usar corchete simple.

<pre>
<code>
#!/usr/bin/env bash
if [ 4 -gt 3 -a 4 -lt 5 ]
then 
	echo "4 esta entre 3 y 5"
else
	echo "4 no esta entre 3 y 5"
fi;
</pre>
</code>

-SOLUCION: 4 esta entre 3 y 5

- 5 Determinar si 2 es distinto que 3. Usar corchete doble.

<pre>
<code>
#!/usr/bin/env bash
if [[ 2 -ne 3 ]]
then 
	echo "2 es mayor que 3"
else
	echo "2 no es mayor que 3"
fi;
</pre>
</code>

-SOLUCION: 2 es mayor que e3

- 6 Crear una variable que llamaremos edad asignaremos un valor de 15, luego imprimeremos el contenido de la variable en pantalla.

<pre>
<code>
#!/usr/bin/env bash
edad=15
echo $edad 
</pre>
</code>

-SOLUCION: 15

- 7 Podemos asignarle diferentes valores a una misma variable

<pre>
<code>
#!/usr/bin/env bash
mensaje='Hola mundo'
echo $mensaje
mensaje=5.5
echo $mensaje
mesaje=8
echo $mensaje
</pre>
</code>

-SOLUCION: Hola mundo
-SOLUCION: 5.5
-SOLUCION: 5.5

- 8 El shell tiene una forma de evitar que se pueda modificar el valor de una variable, es decir ponerlo como sólo lectura. En el ejemplo siguiente da un error si intentamos moficar el contenido de la variable.


<pre>
<code>
#!/usr/bin/env bash
mensaje='Hola mundo'
echo $mesaje
readonly mensaje
mensaje='Cambio de texto'
echo $mensaje
</pre>
</code>

-SOLUCION: EJEMPLO008.SH: line 5: mensaje: readonly variable

- 9 Variables especiales

<pre>
<code>
#!/usr/bin/env bash
echo "Nombre del script: $0"
echo "Parametro1: $1"
echo "Parametro2: $2"
echo "Valores de los parametros: $@"
echo "Valores de los parametros: $*"
echo "Total parametros: $#"
echo $?
</pre>
</code>

-SOLUCION: Nombre del script: EJEMPLO009.SH
-SOLUCION: Parametro1:
-SOLUCION: Parametro2:
-SOLUCION: Valores de los parametros:
-SOLUCION: Valores de los parametros:
-SOLUCION: Total parametros: 0
-SOLUCION: 0


- 10 Para mostrar mensajes en la patalla se usa el comando echo

<pre>
<code>
#!/usr/bin/env bash
echo Hoy como estas 
edad=20
echo Creo que tienes $edad años
echo -e "Esta \nfrase \nse \nmostrara \npalabra \npor \npalabra \nen \nuna \nline \ndistinta \ncada \npalabra"
echo -e "Suprimir lo que viene a continuacion \cel salto de linea"
echo Imprimir todos los ficheros y carpetas a modo de comando ls
echo *
echo Imprimir todos los ficheros de un formato en concreto
echo *.sh
echo "Esta frase se direcciona a un archivo donde queda grabado" > salvar.txt 
echo "Esto que sigue se añade al archivo" >> salvar.txt
echo -n "Omitimos el salto de linea"
</pre>
</code>

-SOLUCION: Hoy como estas
-SOLUCION: Creo que tienes 20 años
-SOLUCION:Esta
-SOLUCION:frase
-SOLUCION:se
-SOLUCION:mostrara
-SOLUCION:palabra
-SOLUCION:por
-SOLUCION:palabra
-SOLUCION:en
-SOLUCION:una
-SOLUCION:line
-SOLUCION:distinta
-SOLUCION:cada
-SOLUCION:palabra
-SOLUCION:Suprimir lo que viene a continuacion Imprimir todos los ficheros y carpetas a modo de comando ls
-SOLUCION:EJEMPLO001.sh EJEMPLO002.sh EJEMPLO003.sh EJEMPLO004.sh EJEMPLO005.sh EJEMPLO006.sh EJEMPLO007.sh EJEMPLO008.sh EJEMPLO009.sh EJEMPLO010.sh EjemplosScriptLinux.md
-SOLUCION:Imprimir todos los ficheros de un formato en concreto
-SOLUCION:EJEMPLO001.sh EJEMPLO002.sh EJEMPLO003.sh EJEMPLO004.sh EJEMPLO005.sh EJEMPLO006.sh EJEMPLO007.sh EJEMPLO008.sh EJEMPLO009.sh EJEMPLO010.sh
-SOLUCION:Omitimo el salto de linea

- 11 Representar caracteres unicode 

<pre>
<code>
#!/usr/bin/env bash
echo -e "\u2622@"
echo -e "\U1f41e"
</pre>
</code>

-SOLUCION: ☢@
-SOLUCION: 🐞

- 12 Comparar el contenido de 2 variables que tienen una cadena almacenada cada variable

<pre>
<code>
#!/usr/bin/env bash
nombre1='Luis'
nombre2='luis'
if [[ $nombre1 = $nombre2 ]]
then
	echo Son iguales
else
	echo Son distintos
fi;
</pre>
</code>

-SOLUCION: Son distintos

- 13 Se pueden comparar las cadenas directamente si no tiene espacios en blanco sin comillas simples o dobles

<pre>
<code>
#!/usr/bin/env bash
if [[ Luis = luis ]]
then 
	echo Son iguales
else
	echo Son distintos
fi;
</pre>
</code>

-Solucion: Son distintos

- 14 Si la cadena tiene espacios en blanco se tienen que poner entre apostrofes simples

<pre>
<code>
#!/usr/bin/env bash
if [[ 'Luis estas bien' = 'Luis estas bien' ]]
then 
	echo Son iguales
else
	echo Son distintos
fi;
</pre>
</code>

-SOLUCION: Son iguales

- 15 Si la cadena va incluir variables emplear apostrofe doble

<pre>
<code>
#!/usr/bin/env bash
edad=15
if [[ 'Tengo $edad años' = 'Tengo 15 años' ]]
then 
	echo Son iguales
else
	echo Son distintos
fi;
</pre>
</code>

-SOLUCION: Son distintos

- 16 Hacer un bucle form para iterar sobre valores simples, siendo estos valores cadenas simples.

<pre>
<code>
#!/usr/bin/env bash
for var in Primero Segundo Tercero Cuarto Quinto; do
	echo El $var item
done
</pre>
</code>

-SOLUCION: El Primero item
-SOLUCION: El Segundo item
-SOLUCION: El Tercero item
-SOLUCION: El Cuarto item
-SOLUCION: El Quinto item


- 17 Hacer un bucle for para iterar sobre valores simples, siendo estos valores numeros.

<pre>
<code>
#!/usr/bin/env bash
for var in 1 2 3 4 5; do
echo Numero $var
done
</pre>
</code>

-SOLUCION: Numero 1
-SOLUCION: Numero 2
-SOLUCION: Numero 3
-SOLUCION: Numero 4
-SOLUCION: Numero 5


- 18 Hacer un bucle for para iterar sobre valores complejos, siendo estos valores palabras o frases.

<pre>
<code>
#!/usr/bin/env bash
for var in Primero "El Segundo" "El Tercero" "El quinto soy yo"; do
	echo Esto es: $vas
done
</pre>
</code>

-SOLUCION: Esto es:
-SOLUCION: Esto es:
-SOLUCION: Esto es:
-SOLUCION: Esto es:

- 19 Hacer un blucle for para mostrar el contenido de un archivo.

<pre>
<code>
#!/usr/bin/env bash
miarchivo="walter.txt"
for var in $(cat$miarchivo);do
	echo " $var"
done
</pre>
</code>

-SOLUCION: line 4: cat/etc/passwd: No such file or directory

- 20 Hacer un blucle for para leer un archivo, pero que considere el carácter de nueva línea como un separador en lugar de espacios.

<pre>
<code>
#!/usr/bin/env bash
miarchivo="/etc/passwd"
IFS=$'\n'
for var in $(cat $miarchivo);do
	echo " $var"
done
</pre>
</code>

-SOLUCION: line 4: cat/etc/passwd: No such file or directory

- 21 Hacer un bucle for para leer un archivo pero que considere el carácter punto y coma como separador.

<pre>
<code>
#!/usr/bin/env bash
miarchivo="walter.txt"
IFS=$`;'
for var in $(cat $miarchivo);do
	echo " $var"
done
</pre>
</code>

-SOLUCION: line 3: unexpected EOF while looking for matching ``'

- 22 Mostrar el directorio actual y el usuario que se ha logueado en el sistema. El simbolo # al inicio de una línea es para mostrar comentarios de una línea dentro del script, el comando echo es para mostrar mensajes en la pantalla, el comando pwd muestra el directorio actual y el comando whoami es para mostrar el usuario que se ha logueado en el sistema.

<pre>
<code>
#!/usr/bin/env bash
# Nuestro comentario de una linea 
echo "El directorio actual es:"
pwd
echo "El usuario logueado es:"
whoami
</pre>
</code>

-SOLUCION: El directorio actual es:
-SOLUCION: /c/PROYECTOSSRIPTLINUX/ScriptLinux
-SOLUCION: El usuario logueado es:
-SOLUCION: Curso Tarde

- 23 Hacer un script que muestre el mensaje “El usuario NombreUsuario esta trabajando”. Con > nul anulamos la salida del comando para que no se muestre en pantalla.

<pre>
<code>
#!/usr/bin/env bash
echo FORMA 1
if whoami > nul; then
	echo "El usuario $USER esta trabajando"
fi
echo FORMA 2
if whoami; then
	echo "El usuario $USER esta trabajando"
fi
</pre>
</code>

-SOLUCION: FORMA 1
-SOLUCION: El usuario esta trabajando
-SOLUCION: FORMA 2
-SOLUCION: Curso Tarde
-SOLUCION: El usuario esta trabajando

- 24 Hacer un script que verifique si un usuario existe o no existe.

<pre>
<code>
#!/usr/bin/env bash
usuario=walter
if grep $usuario /etc/passwd > nul;
then
	echo "El usuario $usuario existe"
else
	echo "El usuario $usuario no existe"
fi
</pre>
</code>

-SOLUCION: grep: /etc/passwd: No such file or directory
-SOLUCION: El usuario walter no existe

- 25 Hacer un script que verifique si el usuario logueado puede crear un archivo.

<pre>
<code>
#!/usr/bin/env bash
touch /root/prueba
if [ $? -eq 0 ]
then
		echo "Se ha creado el fiechero"
else
		echo "No se ha creado el fichero"
fi		
</pre>
</code>

-SOLUCION: No se ha creado el fichero

- 26 Script que verifica si el usuario logueado puede crear un archivo.

<pre>
<code>
#!/usr/bin/env bash
touch prueba
if [ $? -eq 0 ];
then 
		echo "Se ha creado el fichero"
else
		echo "No se ha creado el fichero"
fi
</pre>
</code>

-SOLUCION: Se ha creado el fichero


- 27  Comprobar si puedo ingresar a mi carpeta personal de trabajo.

<pre>
<code>
#!/usr/bin/env bash
clear
micarpeta=/home/walter
if [ -d $micarpeta ];
then
	echo "Carpeta $micarpeta existe"
	cd $micarpeta
	pwd
	ls
else 
	echo "No hay archivo o directorio $micarpeta"
fi
</pre>
</code>

-SOLUCION: No hay archivo o directorio /home/walter

- 28 Verificar si una variable tiene valor o no. Con –n busca un valor mayor que cero

<pre>
<code>
#!/usr/bin/env bash
clear
variable="Hola"
if [ -n $variable ];
then
	echo "Tiene una longitud mayor que cero"
else
	echo "Tiene una longitud de cero"
fi;
</pre>
</code>

-SOLUCION: Tiene una longitud mayor que cero


