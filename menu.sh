#!/bin/bash

echo " Welcome to the new menu for building application"

tarea_1(){
         read -p "Porfavor ingrese el nombre del directorio: " nombre
	 if [ -d "$nombre" ]
 	   then 
	     echo "El directorio si existe"
	  else 
	    echo " El directorio no existe.... creando uno "
	    mkdir "$nombre"
	    echo "el Directoio fue creado satisfactoriamente"
	  fi

}

while true 
do 
 echo "1.Creacion de directorio" 
 echo "2.Calculadora de multiplicacion"
 echo "3.Monitoreo de servidor web"
 echo "4.Copia de archivos"
 echo "5.Salir"
 read -p "Porfavor escoga una opción: " opcion
 case $opcion in
	 1)
		 tarea_1
		 ;;
	 2)
		 tarea_2
		 ;;
	 3)    
		 tarea_3
		 ;;
	 4)      
		 tarea_4
		 ;;
	 5) 
		 echo " Gracias por utilizar la aplicacion"
		 exit 0
		 ;;
	 *)
		 echo "Portfavor ingrese un valor apropiado -_-"
		 ;;
   esac

   read -p "Presiona enter para continuar"
done
	 

