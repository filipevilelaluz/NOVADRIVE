# Projeto de Engenharia de Dados para Concessionárias de Veículos

## Visão Geral

Este projeto demonstra um pipeline de dados robusto desde a ingestão até a visualização para uma empresa de veículos com várias concessionárias no Brasil. O pipeline automatiza a ingestão de dados de um banco de dados PostgreSQL, armazena os dados no Snowflake, realiza transformações com DBT e visualiza os dados no Google Data Studio.

## Estrutura do Repositório

- **[1_data_analysis/](1_data_analysis/)**: Scripts e descrições relacionados à análise da estrutura do banco de dados PostgreSQL.
- **[2_ec2_setup/](2_ec2_setup/)**: Scripts de configuração do servidor EC2, configuração do Docker e DAGs do Airflow.
- **[3_data_warehouse/](3_data_warehouse/)**: Scripts para configuração e carregamento de dados no Snowflake.
- **[4_data_transformation/](4_data_transformation/)**: Projeto DBT para transformação de dados.
- **[5_visualization/](5_visualization/)**: Documentação das visualizações criadas no Google Data Studio.

## Arquitetura

### Arquitetura do Banco de Produção

![Arquitetura do Banco de Produção](architecture/production_database_architecture.png)

### Arquitetura da Engenharia de Dados

![Arquitetura da Engenharia de Dados](architecture/data_engineering_architecture.png)

## Como Usar

Instruções detalhadas sobre como configurar e executar o projeto.

1. **Análise do Banco de Dados**: [1_data_analysis/](1_data_analysis/)
2. **Configuração do EC2 e Docker**: [2_ec2_setup/](2_ec2_setup/)
3. **Armazenamento dos Dados no Snowflake**: [3_data_warehouse/](3_data_warehouse/)
4. **Transformação de Dados com DBT**: [4_data_transformation/](4_data_transformation/)
5. **Visualizações no Google Data Studio**: [5_visualization/](5_visualization/)
