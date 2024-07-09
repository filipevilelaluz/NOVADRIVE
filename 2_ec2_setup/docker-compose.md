# Serviços Configurados do arquivo docker compose

## postgres:

- **Imagem:** PostgreSQL 13
- **Variáveis de Ambiente:**
  - POSTGRES_USER, POSTGRES_PASSWORD, POSTGRES_DB: Configurações padrão do banco de dados PostgreSQL usado pelo Airflow.
- **Volumes:** Mapeia o diretório do volume do PostgreSQL para persistência dos dados do banco.

## redis:

- **Imagem:** Redis 7.2-bookworm
- **Porta Exposta:** 6379
- **Healthcheck:** Verifica periodicamente a disponibilidade do Redis.

## airflow-webserver:

- **Imagem:** Configurada com base em apache/airflow:2.9.2
- **Comando:** Inicia o servidor web do Airflow.
- **Porta Exposta:** 8080
- **Healthcheck:** Verifica periodicamente a disponibilidade do servidor web do Airflow.

## airflow-scheduler:

- **Imagem:** Configurada com base em apache/airflow:2.9.2
- **Comando:** Inicia o scheduler do Airflow.
- **Healthcheck:** Verifica periodicamente a disponibilidade do scheduler do Airflow.

## airflow-worker:

- **Imagem:** Configurada com base em apache/airflow:2.9.2
- **Comando:** Inicia o worker do Celery para execução de tarefas.
- **Healthcheck:** Verifica periodicamente a disponibilidade do worker do Airflow.

## airflow-triggerer:

- **Imagem:** Configurada com base em apache/airflow:2.9.2
- **Comando:** Inicia o serviço de trigger do Airflow para agendamento de jobs.
- **Healthcheck:** Verifica periodicamente a disponibilidade do serviço de trigger do Airflow.

## airflow-init:

- **Imagem:** Configurada com base em apache/airflow:2.9.2
- **Comando:** Inicia a inicialização do Airflow, configurando o ambiente e criando usuários iniciais.
- **Healthcheck:** Verifica a conclusão bem-sucedida da inicialização do Airflow.

## airflow-cli:

- **Imagem:** Configurada com base em apache/airflow:2.9.2
- **Comando:** Configura o ambiente para uso da CLI do Airflow.
- **Profiles:** Configura o perfil de debug para a CLI.

# Configurações Gerais

- **Variáveis de Ambiente e Volumes:** Definem caminhos para DAGs, logs, configurações e plugins do Airflow, permitindo personalização e persistência de arquivos entre reinicializações.
- **Avisos de Recursos:** Alertas são exibidos se os recursos mínimos (memória, CPUs, espaço em disco) não estiverem disponíveis para garantir a execução adequada do Airflow.
- **Avisos Importantes:**
  - **Modo de Desenvolvimento:** Este arquivo é configurado para ambiente de desenvolvimento local
  - **Personalização e Extensão:** Instruções são fornecidas para estender a imagem do Airflow ou adicionar requisitos adicionais usando _PIP_ADDITIONAL_REQUIREMENTS, promovendo a flexibilidade e segurança na configuração.

Este arquivo docker-compose.yaml simplifica o gerenciamento e a execução do Apache Airflow em um ambiente local para desenvolvimento e teste de fluxos de trabalho de dados.
