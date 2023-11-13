#!/bin/bash

echo " Welcome to the new menu for building application"

menu(){

echo "1.Creacion de directorio"
 echo "2.Calculadora de multiplicacion"
 echo "3.Monitoreo de servidor web"
 echo "4.Copia de archivos"
 echo "5.Salir"

}


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

tarea_2(){

	echo " Bienvenido a la calculadora de multiplicaciones"
	read -p "Porfavor ingresa tu primer numero: " n1
	read -p " Porfacor ingresa el segundo numero " n2
	total= "$n1"*"$n2"
	echo "El resultado es $total"

}
tarea_3(){
echo " Vamos a monitorear el servidor"
read -p "Ingresa la direccion que quieres comprobar: " url
respuesta=$(curl -Is "$url" | head -n 1 | awk '{print$2}')
if [ "$respuesta" != "200" ]
 then 
   echo "El sitio no esta respondiendo"
else 
  echo " Todo esta bien"
fi

}


while true 
do 
 menu
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
	 

