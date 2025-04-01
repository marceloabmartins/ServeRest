#!/bin/bash

# Atualiza o sistema e instala o Node.js e npm (caso não estejam instalados)
sudo apt update && sudo apt install -y nodejs npm

# Instala o Newman e o reporter HTML Extra
npm install -g newman newman-reporter-htmlextra

# Executa a collection e gera o relatório HTML
newman run nome_da_collection.json -e nome_do_ambiente.json -g nome_das_globais.json -r html --reporter-html-export resultado.html

echo "Execução concluída! Verifique o arquivo resultado.html para visualizar o relatório."