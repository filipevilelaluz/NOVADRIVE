-- Lista todas as tabelas no banco de dados

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';


-- Descreve a estrutura de cada tabela, incluindo colunas e seus tipos de dados
SELECT table_name, column_name, data_type
FROM information_schema.columns
WHERE table_schema = 'public'
ORDER BY table_name, ordinal_position;


-- Lista todos os índices no banco de dados
SELECT indexname, indexdef
FROM pg_indexes
WHERE schemaname = 'public';



