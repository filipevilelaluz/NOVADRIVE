# Descrição das Tabelas do Banco de Dados PostgreSQL

## Tabela: cidades
- **Descrição:** Armazena informações sobre as cidades onde as concessionárias estão localizadas.
- **Colunas:**
  - `id_cidades`: (integer) Identificador único da cidade.
  - `cidade`: (character varying) Nome da cidade.
  - `id_estados`: (integer) Identificador do estado associado.
  - `data_inclusao`: (timestamp with time zone) Data de inclusão do registro.
  - `data_atualizacao`: (timestamp with time zone) Data da última atualização do registro.

## Tabela: clientes
- **Descrição:** Armazena informações sobre os clientes das concessionárias.
- **Colunas:**
  - `id_clientes`: (integer) Identificador único do cliente.
  - `cliente`: (character varying) Nome do cliente.
  - `endereco`: (text) Endereço do cliente.
  - `id_concessionarias`: (integer) Identificador da concessionária associada.
  - `data_inclusao`: (timestamp with time zone) Data de inclusão do registro.
  - `data_atualizacao`: (timestamp with time zone) Data da última atualização do registro.

## Tabela: concessionarias
- **Descrição:** Armazena informações sobre as concessionárias de veículos.
- **Colunas:**
  - `id_concessionarias`: (integer) Identificador único da concessionária.
  - `concessionaria`: (character varying) Nome da concessionária.
  - `id_cidades`: (integer) Identificador da cidade associada.
  - `data_inclusao`: (timestamp with time zone) Data de inclusão do registro.
  - `data_atualizacao`: (timestamp with time zone) Data da última atualização do registro.

## Tabela: estados
- **Descrição:** Armazena informações sobre os estados onde as concessionárias estão localizadas.
- **Colunas:**
  - `id_estados`: (integer) Identificador único do estado.
  - `estado`: (character varying) Nome do estado.
  - `sigla`: (character) Sigla do estado.
  - `data_inclusao`: (timestamp with time zone) Data de inclusão do registro.
  - `data_atualizacao`: (timestamp with time zone) Data da última atualização do registro.

## Tabela: veiculos
- **Descrição:** Armazena informações sobre os veículos disponíveis nas concessionárias.
- **Colunas:**
  - `id_veiculos`: (integer) Identificador único do veículo.
  - `nome`: (character varying) Nome do veículo.
  - `tipo`: (character varying) Tipo do veículo (e.g., carro, caminhão).
  - `valor`: (numeric) Valor do veículo.
  - `data_inclusao`: (timestamp with time zone) Data de inclusão do registro.
  - `data_atualizacao`: (timestamp with time zone) Data da última atualização do registro.

## Tabela: vendas
- **Descrição:** Armazena informações sobre as vendas realizadas pelas concessionárias.
- **Colunas:**
  - `id_vendas`: (integer) Identificador único da venda.
  - `id_veiculos`: (integer) Identificador do veículo vendido.
  - `id_concessionarias`: (integer) Identificador da concessionária onde a venda foi realizada.
  - `id_vendedores`: (integer) Identificador do vendedor que realizou a venda.
  - `id_clientes`: (integer) Identificador do cliente que comprou o veículo.
  - `valor_pago`: (numeric) Valor pago pelo veículo.
  - `data_venda`: (timestamp with time zone) Data da venda.
  - `data_inclusao`: (timestamp with time zone) Data de inclusão do registro.
  - `data_atualizacao`: (timestamp with time zone) Data da última atualização do registro.

## Tabela: vendedores
- **Descrição:** Armazena informações sobre os vendedores das concessionárias.
- **Colunas:**
  - `id_vendedores`: (integer) Identificador único do vendedor.
  - `nome`: (character varying) Nome do vendedor.
  - `id_concessionarias`: (integer) Identificador da concessionária onde o vendedor trabalha.
  - `data_inclusao`: (timestamp with time zone) Data de inclusão do registro.
  - `data_atualizacao`: (timestamp with time zone) Data da última atualização do registro.
