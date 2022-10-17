#!/bin/bash

export IFS=","

sed 1d /home/azerty/shell.exe/job09/Shell_Userlist.csv | while read Id Prenom Nom Mdp Role

do
  echo $Prenom-$Nom
  sudo userdel $Prenom-$Nom
done
