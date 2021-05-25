#!/bin/bash

path="$HOME/carreras"
runsFile="$HOME/carreras.txt"
rutaNas="/volume1/homes/oscar/"
username="Oscar"
password="Oskyjimenez2013"

folders=$(ls $path)


for folderName in $folders
do
	if [[ -d "$path/$folderName" ]]
	then	
		if [[ `cat $runsFile | grep $folderName` ]]
		then

			echo "La carpeta $folderName ya esta subida a Google Drive" 
			
		else
			
			echo "El fichero $folderName no esta en drive"
			echo "Comprimiendo carpeta $folderName"
			cd $path && zip -r "$folderName.zip" $folderName
			echo "Subiendo zip $folderName.zip"
			sshpass -p $password rsync -avhir $path"/"$folderName".zip" $username@212.128.165.22:$rutaNas
			echo "Carpeta $folderName subida correctamente"
		fi
	else
		echo "$folderName no es un directorio"
	fi

done
