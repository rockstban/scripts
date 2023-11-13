#!/bin/bash

echo "Esto es una prueba de script & git"

file_name=$1

if [ -d "$file_name" ]
 then 
   echo " El directorio si existe "
else 
  echo " El directorio no existe/ Se creara uno"
  ruta="/c/Users/stban/Desktop/script"
  mkdir "$file_name"
  echo "La creacion a finalizado en la ruta $ruta " 
fi
