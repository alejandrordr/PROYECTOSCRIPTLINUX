#!/bin/bash
#Autor: Alejandro Ruiz
#Fecha: 18/4/2023

clear

echo "                          MENU                           "
echo "---------------------------------------------------------"

echo "(1) CREAR CONTROL DE VERSION"
echo "(2) CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD"
echo "(3) REALIZAR EL PRIMER COMMIT"
echo "(4) REALIZAR EL COMMIT SOBRE EL ULTIMO"
echo "(5) CONFIGURAR EL REPOSITORIO REMOTO"
echo "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
echo "(8) SALIR"
echo
echo -n "ESCRIBA OPCION"
read opcion

case $opcion in
1)
clear 
echo "(1) CREAR CONTROL DE VERSION"
echo "----------------------------"
git init
read -rsp $'\nPress enter to continue...'
;;
2)
clear 
echo "(2) CONFIGURAR USUARIO: NOMBRE-EMAIL-PASSWORD"
echo "---------------------------------------------"
git config user.name "alejandrordr"
git config user.email "alejandroruizprog@gmail.com"
git config user.password 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
read -rsp $'\nPress enter to continue...'
;;
3)
clear 
echo "(3) REALIZAR EL PRIMER COMMIT"
echo "-----------------------------"
git add .
git commit -m "Foto"
read -rsp $'\nPress enter to continue...'
;;
4)
clear 
echo "(4) REALIZAR EL COMMIT SOBRE EL ULTIMO"
echo "--------------------------------------"
git commit --amend -m
read -rsp $'\nPress enter to continue...'
;;
5)
clear 
echo "(5) CONFIGURAR EL REPOSITORIO REMOTO"
echo "------------------------------------"
git remote add origin "https://github.com/alejandrordr/PROYECTOSCRIPTLINUX.git"
read -rsp $'\nPress enter to continue...'
;;
6)
clear 
echo "(6) CAMBIAR NOMBRE DE LA RAMA PRINCIPAL DE MASTER A MAIN"
echo "--------------------------------------------------------"
git branch -M main
read -rsp $'\nPress enter to continue...'
;;
7)
clear 
echo "(7) SUBIR EL REPOSITORIO LOCAL AL REMOTO"
echo "----------------------------------------"
git push -u -f origin main 
read -rsp $'\nPress enter to continue...'
;;
8)
clear 
echo "(8) SALIR"
echo "---------"
exit 0
read -rsp $'\nPress enter to continue...'
;;
*)
clear
echo "OPCION INCORRECTA"
read -rsp $'\nPress enter to continue...'
;;
esac
