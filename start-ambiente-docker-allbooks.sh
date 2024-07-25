#! /bin/bash
clear

echo "START Ambiente Docker da aplicação Allbooks - frontend."
echo "Conteiner: "
echo " "
echo "Iniciando o conteiner de backend do Allbooks [allbooks-frontend]"
echo " "
sudo docker start allbooks-frontend
echo " "
sleep 2
./ver-ambiente-docker-allbooks.sh
