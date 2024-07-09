# Processo de Transformação e Modelagem de Dados no DBT

O processo de transformação e modelagem de dados no DBT foi estruturado em várias etapas para garantir a qualidade e consistência dos dados, utilizando recursos avançados do DBT integrados com o Snowflake.

## Etapas do Processo

1. **Criação da Área Stage com Views Materializadas:**
   - Inicialmente, foi desenvolvida a transformação da área stage utilizando views materializadas `{{ config(materialized='view') }}`. Isso foi realizado com o uso de Jinja 2, permitindo replicar automaticamente as alterações nas tabelas de origem para as views materializadas.

2. **Criação das Tabelas Dimensões:**
   - Em seguida, foram criadas as tabelas dimensões do tipo `config(materialized='table')` no DBT. Estas tabelas foram modeladas com informações analíticas detalhadas e regras de negócio específicas.

3. **Modelagem da Tabela Fato Vendas:**
   - Posteriormente, foi modelada a tabela fato vendas, utilizando `config(materialized='incremental', unique_key='venda_id')` no DBT. Esta configuração garante que apenas dados novos sejam inseridos na tabela fato e que as atualizações sejam gerenciadas de forma incremental.

4. **Implementação de Testes de Qualidade de Dados:**
   - Foi implementado um teste para verificar a qualidade dos dados e garantir conformidade com as regras de negócio. Por exemplo, foi configurada uma validação onde um veículo pode ter até 5% de desconto.

![image](https://github.com/filipevilelaluz/my-data-engineering-project-sales/assets/74246172/2a6de163-3c86-46b8-aab0-ac6c3c02ef50)


5. **Inserção no Schema Analytic no Snowflake:**
   - Todas as transformações foram inseridas no schema `ANALYTIC` no Snowflake. Este schema armazena informações analíticas essenciais para o negócio.
   - 
  ![image](https://github.com/filipevilelaluz/my-data-engineering-project-sales/assets/74246172/6039f1e2-300a-4ca4-8c26-e87a8709df29)

6. **Modelagem dos Dados Refinados:**
   - Por fim, os dados refinados foram modelados e armazenados em tabelas de analise. Este schema contém as regras de negócio críticas, como análise de vendas por concessionária, análise temporal de vendas, análise de vendas por veículo e análise de vendas por vendedor.
  


  ![image](https://github.com/filipevilelaluz/my-data-engineering-project-sales/assets/74246172/a40f7fd2-f7be-4ef8-998e-d4d569e83bff)


Este processo estruturado no DBT facilita a manutenção, entendimento e evolução das análises de dados, promovendo uma visão analítica robusta e confiável para a organização.

## Linhagem de dados do projeto

![image](https://github.com/filipevilelaluz/my-data-engineering-project-sales/assets/74246172/118ca4c3-8d63-415c-ae12-2006e1ba4baa)

## EXecução dos modelos

![image](https://github.com/filipevilelaluz/my-data-engineering-project-sales/assets/74246172/eaac92da-3add-4380-80ac-1268913d3b60)



