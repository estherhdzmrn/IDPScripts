#!/bin/bash

#Creación de un script, donde se visualizará un menú.

#Cuando se pulse 0, este finalizará
until [ $opcion -eq 0 ]
  do
    clear

    #Menú
    echo " ¿Qué desea hacer?."
    echo "0 -Salir."
    echo "1 -Crear UO."
    echo "2 -Crear grupo."
    echo "3 -Crear usuario."
    echo "4 -Muestra las UO's, grupos y usuarios del Dominio."

    #Leerá opción del usuario
    read opcion

    #Según lo que escoja el usuario se hará:
    case $opcion in 

      #Salir
      0)
        echo "Ha cerrado el programa"
        ;;
  
      #Crear UO
      1)
        echo "Nombre de la Unidad Organizativa:"
        read UOnom
        sudo samba-tool ou create OU=$UOnom,DC=esther,DC=sistemas
        sleeps 3s
      ;;
  
      #Crear grupo
      2)
        echo "Nombre del grupo:"
        read grpnom
        sudo samba-tool group create $grpnom
        sleeps 3s
      ;;
      
      #Crear usuario
      3)
        echo "Nombre del usuario:"
        read usrnom
        echo "Contraseña con más de 7 caracteres"
        read password
        sudo samba-tool user create $usrnom $password
        sleeps 3s
      ;;
      
      #Muestra las UO's, grupos y usuarios del Dominio
      4)
        echo "Los usuarios del dominio son:"
        sudo samba-tool user list
        sleeps 10s
        
        echo "Los grupos del dominio son:"
        sudo samba-tool group list
        sleeps 10s
        
        echo "Las Unidades Organizativas del dominio son:"
        sudo samba-tool ou list
        sleeps 10s
      ;;
    
        #Otra opción que no se del menú
      *)
        echo "Elige un número del menú entre el 0-4"
      ;;
esac
sleeps 5s
