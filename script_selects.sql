-- Listar produtos
select *
from produto;

-- Lista horario compra, total, id intregador, id comercio

select codigo_compra as id, horario as horario_compra, valor_total as total, codigo_entregador as entregador_id, codigo_comercio as comercio_id
from compra;


-- Isso realiza uma junção interna entre as duas tabelas.

select *
from produto as prod inner join comercio as com on prod.codigo_comercio = com.codigo_comercio ;

-- Lista em ordem alfabetica

select *
from produto as prod 
order by prod.nome;



-- Listar todas as pessoas:

SELECT * FROM pessoa;

-- Listar todos os entregadores com suas informações de pessoa associadas:
SELECT entregador.*, pessoa.*
FROM entregador
JOIN pessoa ON entregador.codigo_pessoa = pessoa.codigo_pessoa;

-- Listar todos os endereços:
SELECT * FROM endereco;


-- Listar todos os tipos de comércio:
SELECT * FROM tipo_comercio;

-- Listar todos os comércios com suas informações de endereço e tipo de comércio associadas:
SELECT comercio.*, endereco.*, tipo_comercio.*
FROM comercio
JOIN endereco ON comercio.codigo_endereco = endereco.codigo_endereco
JOIN tipo_comercio ON comercio.codigo_tipo = tipo_comercio.codigo_tipo;

-- Listar todas as compras com informações de entregador e comércio associadas:
SELECT compra.*, entregador.*, comercio.*
FROM compra
JOIN entregador ON compra.codigo_entregador = entregador.codigo_entregador
JOIN comercio ON compra.codigo_comercio = comercio.codigo_comercio;

-- Listar todos os clientes com suas informações de pessoa e compra associadas:
SELECT cliente.*, pessoa.*, compra.*
FROM cliente
JOIN pessoa ON cliente.codigo_pessoa = pessoa.codigo_pessoa
JOIN compra ON cliente.codigo_compra = compra.codigo_compra;

-- Listar todos os produtos com informações de comércio associadas:
SELECT produto.*, comercio.*
FROM produto
LEFT JOIN comercio ON produto.codigo_comercio = comercio.codigo_comercio;

-- Listar todas as cidades:
SELECT * FROM cidade;

-- Listar todas as composições de compra com informações de compra e produto associadas:
SELECT composicao_compra.*, compra.*, produto.*
FROM composicao_compra
JOIN compra ON composicao_compra.codigo_compra = compra.codigo_compra
JOIN produto ON composicao_compra.codigo_produto = produto.codigo_produto;

-- Listar todas as relações de mora:
SELECT * FROM mora;

-- Listar todas as relações de atende_em:
SELECT * FROM atende_em;

-- Listar ultimo produto vendido
SELECT produto.*
FROM produto
JOIN composicao_compra ON produto.codigo_produto = composicao_compra.codigo_produto
JOIN compra ON composicao_compra.codigo_compra = compra.codigo_compra
ORDER BY compra.horario DESC
LIMIT 1;

-- último pedido feito por um cliente específico
SELECT *
FROM compra
WHERE codigo_compra IN (
    SELECT codigo_compra
    FROM cliente
    WHERE codigo_cliente = '2'
)
ORDER BY horario DESC
LIMIT 1;

-- Calcular a Média de Avaliações para um comercio Específico:
SELECT AVG(nota) AS media_avaliacao
FROM avaliacao_comercio
WHERE codigo_comercio = '1';

-- Calcular a Média de Avaliações para um Entregador Específico:
SELECT AVG(nota) AS media_avaliacao
FROM avaliacao_entregador
WHERE codigo_entregador = '2';










