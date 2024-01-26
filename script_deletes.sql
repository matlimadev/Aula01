--- Exclui a base de dados ProjetoDB:

drop database ProjetoBD;

--- Exclui as tabelas:

drop table atende_em;
drop table mora;
drop table composicao_compra;
drop table cidade;
drop table produto;
drop table cliente;
drop table compra;
drop table comercio;
drop table tipo_comercio;
drop table endereco;
drop table entregador;
drop table pessoa;


--- Exclui os itens da cláusula where da tabela em questão:

delete from pessoa
where codigo_pessoa = 1;

delete from pessoa
where codigo_pessoa = 2;

delete from pessoa
where codigo_pessoa = 3;

delete from pessoa
where codigo_pessoa = 4;

delete from pessoa
where codigo_pessoa = 5;

delete from pessoa
where codigo_pessoa = 6;

delete from pessoa
where codigo_pessoa = 7;

delete from pessoa
where codigo_pessoa = 8;

delete from pessoa
where codigo_pessoa = 9;

delete from pessoa
where codigo_pessoa = 10;

delete from pessoa
where codigo_pessoa = 11;

delete from pessoa
where codigo_pessoa = 12;

delete from pessoa
where codigo_pessoa = 13;

delete from pessoa
where codigo_pessoa = 14;

delete from pessoa
where codigo_pessoa = 15;

delete from pessoa
where codigo_pessoa = 16;

delete from pessoa
where codigo_pessoa = 17;

delete from pessoa
where codigo_pessoa = 18;

delete from pessoa
where codigo_pessoa = 19;

delete from pessoa
where codigo_pessoa = 20;

------------------------

delete from cliente 
where codigo_do_cliente = 6;

delete from cliente 
where codigo_do_cliente = 7;

delete from cliente 
where codigo_do_cliente = 8;

delete from cliente 
where codigo_do_cliente = 9;

delete from cliente 
where codigo_do_cliente = 10;

delete from cliente 
where codigo_do_cliente = 11;

delete from cliente 
where codigo_do_cliente = 12;

delete from cliente 
where codigo_do_cliente = 13;

delete from cliente 
where codigo_do_cliente = 14;

delete from cliente 
where codigo_do_cliente = 15;

delete from cliente 
where codigo_do_cliente  = 16;

delete from cliente 
where codigo_do_cliente = 17;

delete from cliente 
where codigo_do_cliente = 18;

delete from cliente 
where codigo_do_cliente = 19;

delete from cliente 
where codigo_do_cliente = 20;

-----------------------------

delete from endereco  
where codigo_endereco  = 1;

delete from endereco 
where codigo_endereco = 2;

delete from endereco 
where codigo_endereco = 3;

delete from endereco 
where codigo_endereco = 4;

delete from endereco 
where codigo_endereco = 5;

delete from endereco 
where codigo_endereco = 6;

delete from endereco 
where codigo_endereco = 7;

delete from endereco
where codigo_endereco = 8;

delete from endereco 
where codigo_endereco = 9;

delete from endereco 
where codigo_endereco = 10;

delete from endereco 
where codigo_endereco = 11;

delete from endereco 
where codigo_endereco = 12;

delete from endereco 
where codigo_endereco = 13;

delete from endereco
where codigo_endereco = 14;

delete from endereco
where codigo_endereco = 15;

--------------------------

delete from comercio 
where codigo_comercio  = 1;

delete from comercio 
where codigo_comercio = 2;

delete from comercio 
where codigo_comercio = 3;

delete from comercio 
where codigo_comercio = 4;

delete from comercio 
where codigo_comercio = 5;

delete from comercio 
where codigo_comercio = 6;

delete from comercio 
where codigo_comercio = 7;

delete from comercio 
where codigo_comercio = 8;

delete from comercio 
where codigo_comercio = 9;

delete from comercio 
where codigo_comercio = 10;

delete from comercio 
where codigo_comercio = 11;

delete from comercio 
where codigo_comercio = 12;

delete from comercio 
where codigo_comercio = 13;

delete from comercio
where codigo_comercio = 14;

delete from comercio 
where codigo_comercio = 15;

-----------------------------

delete from tipo_comercio 
where codigo_tipo  = 1;

delete from tipo_comercio 
where codigo_tipo = 2;

delete from tipo_comercio 
where codigo_tipo = 3;

delete from tipo_comercio 
where codigo_tipo = 4;

delete from tipo_comercio 
where codigo_tipo = 5;

delete from tipo_comercio 
where codigo_tipo = 6;

delete from tipo_comercio 
where codigo_tipo = 7;

delete from tipo_comercio 
where codigo_tipo = 8;

delete from tipo_comercio 
where codigo_tipo = 9;

delete from tipo_comercio 
where codigo_tipo = 10;

delete from tipo_comercio 
where codigo_tipo = 11;

delete from tipo_comercio 
where codigo_tipo = 12;

delete from tipo_comercio 
where codigo_tipo = 13;

delete from tipo_comercio
where codigo_tipo = 14;

delete from tipo_comercio 
where codigo_tipo = 15;

----------------------------

delete from produto 
where codigo_produto = 1;

delete from produto 
where codigo_produto = 2;

delete from produto 
where codigo_produto = 3;

delete from produto 
where codigo_produto = 4;

delete from produto 
where codigo_produto = 5;

delete from produto 
where codigo_produto = 6;

delete from produto 
where codigo_produto = 7;

delete from produto 
where codigo_produto = 8;

delete from produto 
where codigo_produto = 9;

delete from produto 
where codigo_produto = 10;

delete from produto 
where codigo_produto = 11;

delete from produto 
where codigo_produto = 12;

delete from produto 
where codigo_produto = 13;

delete from produto
where codigo_produto = 14;

delete from produto 
where codigo_produto = 15;

----------------------------

delete from cidade 
where codigo_cidade = 1;

delete from cidade 
where codigo_cidade = 2;

delete from cidade 
where codigo_cidade = 3;

delete from cidade 
where codigo_cidade = 4;

delete from cidade 
where codigo_cidade = 5;

delete from cidade 
where codigo_cidade = 6;

delete from cidade 
where codigo_cidade = 7;

delete from cidade 
where codigo_cidade = 8;

delete from cidade 
where codigo_cidade = 9;

delete from cidade 
where codigo_cidade = 10;

delete from cidade 
where codigo_cidade = 11;

delete from cidade 
where codigo_cidade = 12;

delete from cidade 
where codigo_cidade = 13;

delete from cidade
where codigo_cidade = 14;

delete from cidade 
where codigo_cidade = 15;

--------------------------

delete from mora 
where codigo_endereco = 1 and codigo_pessoa = 1;

delete from mora 
where codigo_endereco = 2 and codigo_pessoa = 2;

delete from mora 
where codigo_endereco = 3 and codigo_pessoa = 3;

delete from mora 
where codigo_endereco = 4 and codigo_pessoa = 4;

delete from mora 
where codigo_endereco = 5 and codigo_pessoa = 5;

delete from mora 
where codigo_endereco = 6 and codigo_pessoa = 6;

delete from mora 
where codigo_endereco = 7 and codigo_pessoa = 7;

delete from mora 
where codigo_endereco = 8 and codigo_pessoa = 8;

delete from mora 
where codigo_endereco = 9 and codigo_pessoa = 9;

delete from mora 
where codigo_endereco = 10 and codigo_pessoa = 10;

delete from mora 
where codigo_endereco = 11 and codigo_pessoa = 11;

delete from mora 
where codigo_endereco = 12 and codigo_pessoa = 12;

delete from mora 
where codigo_endereco = 13 and codigo_pessoa = 13;

delete from mora
where codigo_endereco = 14 and codigo_pessoa = 14;

delete from mora 
where codigo_endereco  = 15 and codigo_pessoa = 15;

---------------------------------------------------------

delete from compra 
where codigo_compra = 1;

delete from compra 
where codigo_compra = 2;

delete from compra 
where codigo_compra = 3;

delete from compra 
where codigo_compra = 4;

delete from compra 
where codigo_compra = 5;

delete from compra 
where codigo_compra = 6;

delete from compra 
where codigo_compra = 7;

delete from compra
where codigo_compra = 8;

delete from compra 
where codigo_compra = 8;

delete from compra 
where codigo_compra = 10;

delete from compra 
where codigo_compra = 11;

delete from compra 
where codigo_compra = 12;

delete from compra 
where codigo_compra = 13;

delete from compra 
where codigo_compra = 14;

delete from compra 
where codigo_compra = 15;

--------------------------

delete from composicao_compra 
where codigo_composicao  = 1;

delete from composicao_compra 
where codigo_composicao  = 2;

delete from composicao_compra 
where codigo_composicao  = 3;

delete from composicao_compra 
where codigo_composicao  = 4;

delete from composicao_compra 
where codigo_composicao  = 5;

delete from composicao_compra 
where codigo_composicao  = 6;

delete from composicao_compra 
where codigo_composicao  = 7;

delete from composicao_compra 
where codigo_composicao  = 8;

delete from composicao_compra 
where codigo_composicao  = 9;

delete from composicao_compra 
where codigo_composicao  = 10;

delete from composicao_compra 
where codigo_composicao  = 11;

delete from composicao_compra 
where codigo_composicao  = 12;

delete from composicao_compra 
where codigo_composicao  = 13;

delete from composicao_compra 
where codigo_composicao  = 14;

delete from composicao_compra 
where codigo_composicao  = 15;

---------------------------------

delete from entregador 
where codigo_entregador  = 1;

delete from entregador 
where codigo_entregador = 2;

delete from entregador 
where codigo_
delete from entregador 
where codigo_entregador = 4;

delete from entregador 
where codigo_entregador = 5;

------------------------------

delete from atende_em 
where codigo_cidade  = 1 and codigo_comercio = 1;

delete from atende_em 
where codigo_cidade = 2 and codigo_comercio = 2;

delete from atende_em 
where codigo_cidade = 3 and codigo_comercio = 3;

delete from atende_em 
where codigo_cidade = 4 and codigo_comercio = 4;

delete from atende_em 
where codigo_cidade = 5 and codigo_comercio = 5;

delete from atende_em 
where codigo_cidade = 6 and codigo_comercio = 6;

delete from atende_em 
where codigo_cidade = 7 and codigo_comercio = 7;

delete from atende_em 
where codigo_cidade = 8 and codigo_comercio = 8;

delete from atende_em 
where codigo_cidade = 9 and codigo_comercio = 9;

delete from atende_em 
where codigo_cidade = 10 and codigo_comercio = 10;

delete from atende_em 
where codigo_cidade = 11 and codigo_comercio = 11;

delete from atende_em 
where codigo_cidade = 12 and codigo_comercio = 12;

delete from atende_em 
where codigo_cidade = 13 and codigo_comercio = 13;

delete from atende_em
where codigo_cidade = 14 and codigo_comercio = 14;

delete from atende_em 
where codigo_cidade = 15 and codigo_comercio = 15;