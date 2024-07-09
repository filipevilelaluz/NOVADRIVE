# Configuração do Snowflake para DAG

## Descrição

Este documento descreve a configuração utilizada no Snowflake para processamento de dados através de DAGs (Directed Acyclic Graphs).

## Detalhes da Configuração

### Banco de Dados e Schema

- **Banco de Dados**: `novadrive`
- **Schema**: `STAGE`

### Warehouse

Um **Warehouse** no Snowflake é um cluster de computação virtual que armazena dados e executa operações de consulta e transformação. É usado para processar consultas SQL e suportar cargas de trabalho analíticas.

- **Warehouse**: `DEFAULT_WH`

### Definição de Warehouse no Snowflake

Um Warehouse no Snowflake é responsável por:
- Fornecer a capacidade de computação para executar consultas SQL e operações de carga de trabalho.
- Ser configurado com características como tamanho (small, medium, large, etc.) e política de escalabilidade para atender às demandas de processamento de dados.

### Fluxo de Dados

Quando uma DAG é iniciada:
- Os dados são carregados ou processados no schema `STAGE` do banco de dados `novadrive`.
- O Warehouse `DEFAULT_WH` é utilizado para executar as operações de carga e transformação de dados necessárias.

## Considerações

Esta configuração garante que os dados sejam manipulados de maneira eficiente e escalável dentro do ambiente Snowflake, utilizando o schema `STAGE` no banco de dados `novadrive` e o Warehouse `DEFAULT_WH` para processamento.

### Após execução com sucesso da DAG de carregamento de dados do airflow, os dados vãos er replicados no snowflake:

![image](https://github.com/filipevilelaluz/my-data-engineering-project-sales/assets/74246172/07953a2d-eb31-4ba9-a9c6-d9e68fa0ab1d)

