#!/usr/bin/env bash
touch /root/prueba
if [ $? -eq 0 ]
then
		echo "Se ha creado el fiechero"
else
		echo "No se ha creado el fichero"
fi		