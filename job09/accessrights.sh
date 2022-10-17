#!/bin/bash

export IFS=","

sed 1d /home/azerty/shell.exe/job09/Shell_Userlist.csv | while read Id Prenom Nom Mdp Role

do
  sudo useradd $Prenom-$Nom
  echo "$Prenom-$Nom:$Mdp" | sudo chpasswd


if [[ $Role == "Admin" ]] ;
 then
echo "admin"
sudo adduser $Prenom-$Nom sudo
fi
done
