#!/bin/bash

path_aplicacao_container=/usr/share/nginx/html
nome_arquivo_compactado_front=aplicacao-front.tar.gz

path_pasta_front_reactjs=/usr/share/nginx/html/site-reactjs

# ##### FRONTEND #######
echo "Deploy da aplicação AllBooks na imagem que será usada no instanciamento do coiteiner Docker."
echo " "
echo "2 - Descompactando o FRONTEND do projeto no container"
echo "----------------------------------------------------"
echo " "
echo " "
echo "O Tudo pronto, conforme previsto no Dockerfile o arquivo $nome_arquivo_compactado_front gerado na máquina host e copiado "
echo "para dentro do conteiner para a pasta web: $path_aplicacao_container."
echo "Então depois de descompactar serão realizados os comandos: npm install, build e run."
echo " "

#Rodando comandos a partir do WORKDIR definido no Dockerfile para onde esse script foi copiado no conteiner.
cd /app
mkdir $path_pasta_front_reactjs
cp $nome_arquivo_compactado_front $path_pasta_front_reactjs
cd $path_pasta_front_reactjs
tar xzf $nome_arquivo_compactado_front .
rm $nome_arquivo_compactado_front

#Iniciando os comandos de instalação, compilação. 
#OBS: A execução da aplicação (npm run start) será executado no ENTRYPOINT do Dockerfile
npm i 
npm run build 
echo "Finalizada a instalação da aplicação Front React.js do Allbooks."
echo " "