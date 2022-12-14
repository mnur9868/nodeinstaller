#!/bin/bash 
NodeInstall() {
while  true; do

clear 
	  
toilet -f future "NODE INSTALLER"  | lolcat

echo -e  "			         \e[3mCoded By : Mnur9868\e[0m\n" | lolcat

neofetch

echo -e "Added Node : "
echo -e " > Minima"
echo -e " > Inery"
echo -e " > Mina"

echo -e  "\nList Node : " | lolcat
echo -e  "1. Minima"
echo -e  "2. Inery"
echo -e  "3. Mina (soon)"
echo -e "4. Exit\n"
read -p 'Please choose : ' avar
if ( [[ $avar == '1' ]] ) ; then
	#minima
	toilet -f future "Minima Node"  | lolcat
	echo -e  "List : " | lolcat
	echo -e  "1. Install "
	echo -e  "2. Uninstall "
	echo -e "3. Exit"
	read -p 'Please Choose : ' pMinima
	if ([[ $pMinima == '1' ]]) ; then
		echo -e ""
		chmod +x ./minima/minima_installer.sh
		source ./minima/minima_installer.sh
		minima_installer
		break
	elif ([[ $pMinima == '2' ]]) ; then
		echo -e ""
		chmod +x ./minima/minima_remove.sh
		source ./minima/minima_remove.sh
		minima_remove
		break
	else
		break
	fi
elif ([[ $avar == '2' ]]) ; then
	#inery
	toilet -f future "Inery Node"  | lolcat
	echo -e  "Please Choose : " | lolcat
	echo -e  "1. Task 1 "
	echo -e  "2. Task 2 "
	echo -e "3. Task 3"
	echo -e "Task 4 (soon)"
	echo -e "5. Exit"
	read -p 'Please choose : ' pInery
	if ([[ $pInery == '1' ]]) ; then
		chmod +x ./inery/inery_1.sh
		source ./inery/inery_1.sh
		inery_1
		break
	elif ([[ $pInery == '2' ]]); then
		chmod +x ./inery/inery_2.sh
		source ./inery/inery_2.sh
		inery_2
		break
	elif ([[ $pInery == '3' ]]); then
		chmod +x ./inery/inery_3.sh
		source ./inery/inery_3.sh
		inery_3
		break
	elif ([[ $pInery == '4' ]]); then
		#chmod +x ./inery/inery_4.sh
		# source ./inery/inery_4.sh
		# inery_4
		break
	else
		break
	fi
elif ([[ $avar == '3' ]]) ; then 
	#mina
	toilet -f future "MINA Node"  | lolcat
	echo -e  "SOON ... " | lolcat
	break
else
	break
fi
done
}
clear
if [ -d "requirements" ]; then
	NodeInstall
else
	echo -e "==========| ERROR |==========" | lolcat 
	echo -e "\nThis App require some dependencies"
	echo -e "PLEASE RUN ./requirement.sh FIRST !!!" 
	echo -e "\n=============================\n"
fi
