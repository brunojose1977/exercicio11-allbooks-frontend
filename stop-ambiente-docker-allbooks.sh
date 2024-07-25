#! /bin/bash
clear

echo "STOP Ambiente Docker da aplicação Allbooks - frontend."
echo "Conteiner: "
echo " "
echo "Parando o conteiner de frontend [allbooks-frontend]."
echo " "
sudo docker stop allbooks-frontend
echo " "
./ver-ambiente-docker-allbooks.sh
