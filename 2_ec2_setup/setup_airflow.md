#!/bin/bash

# 1. Atualizar a lista de pacotes do APT:
sudo apt-get update

# 2. Instalar pacotes necessários para adicionar um novo repositório via HTTPS (instala o Docker):
sudo apt-get install -y ca-certificates curl gnupg lsb-release

# 3. Criar diretório para armazenar as chaves de repositórios:
sudo mkdir -m 0755 -p /etc/apt/keyrings

# 4. Adicionar a chave GPG do repositório do Docker:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# 5. Adicionar o repositório do Docker às fontes do APT:
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# 6. Atualizar a lista de pacotes após adicionar o novo repositório do Docker:
sudo apt-get update

# 7. Instalar o Docker e componentes:
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Baixar o arquivo docker-compose.yaml do Airflow:
curl -LfO 'https://airflow.apache.org/docs/apache-airflow/stable/docker-compose.yaml'

# Criar diretórios para DAGs, logs e plugins:
mkdir -p ./dags ./logs ./plugins

# Criar um arquivo .env com o UID do usuário, usado pelo Docker para permissões:
echo -e "AIRFLOW_UID=$(id -u)" > .env

# Iniciar o Airflow:
sudo docker compose up airflow-init

# Subir o Airflow em modo desacoplado:
sudo docker compose up -d

# Aguardar até que tudo esteja saudável.

# Editar o arquivo docker-compose.yaml para remover DAGs de exemplos:
nano ./docker-compose.yaml << EOF
:%s/AIRFLOW__CORE__LOAD_EXAMPLES: 'true'/AIRFLOW__CORE__LOAD_EXAMPLES: 'false'/g
:wq
EOF

# Reiniciar o Airflow após as alterações:
sudo docker compose stop
sudo docker compose up -d

# Verificar se os containers estão em execução:
sudo docker ps
