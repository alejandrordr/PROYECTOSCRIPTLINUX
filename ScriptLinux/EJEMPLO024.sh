#!/usr/bin/env bash
usuario=walter
if grep $usuario /etc/passwd > nul;
then
	echo "El usuario $usuario existe"
else
	echo "El usuario $usuario no existe"
fi