#! /bin/bash
clear

echo "Excluindo o conteiner [monolito-allbooks] da aplicação Allbooks... PARA CANCELAR CTRL + C"
echo " "
sleep 5
sudo docker rm allbooks-frontend --force
echo " "
echo "Excluindo a imagem da aplicação Allbooks frontend, brunojose1977/exercicio11-allbooks-docker-compose-frontend:1.2.0...  PARA CANCELAR CTRL + C"
echo " "
sleep 5
sudo docker rmi brunojose1977/exercicio11-allbooks-docker-compose-frontend:1.2.0
echo " "
echo "O conteiner e a imagem do projeto Allbooks frontend foram apagados."
echo " "
sleep 3
sudo clear && sudo docker ps -a && sudo docker images
echo " "
echo "Para recriar tudo execute: ./1-pacote-imagem-conteiner.sh"
echo " "