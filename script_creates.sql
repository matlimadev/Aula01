-- Tabelas existentes
create database ProjetoBD;
use ProjetoBD;
create table pessoa (
    codigo_pessoa int not null primary key,
    cpf varchar(11) not null,
    nome varchar(50) not null,
    telefone int not null,
    e_mail varchar(50) not null,
    constraint unique_cpf unique (cpf),
    constraint unique_telefone unique(telefone),
    constraint unique_e_mail unique(e_mail)
);

create table entregador (
    codigo_entregador int not null primary key,
    cnh varchar(4) not null,
    codigo_pessoa int not null,
    foreign key (codigo_pessoa) references pessoa (codigo_pessoa) on delete cascade
);

create table endereco (
    codigo_endereco int not null primary key,
    cep int not null,
    numero int not null,
    rua varchar(30) not null,
    complemento varchar(50) not null
);

create table tipo_comercio (
    codigo_tipo int not null primary key,
    ramo_comercio varchar(20) not null
);

create table comercio (
    codigo_comercio int not null primary key,
    cnpj varchar(14) not null,
    nome_fantasia varchar(50) not null,
    razao_social varchar(50) not null,
    telefone int not null,
    e_mail varchar(50) not null,
    horario_de_atendimento varchar(13) not null,
    codigo_endereco int not null,
    codigo_tipo int not null,
    foreign key (codigo_endereco) references endereco (codigo_endereco) on delete cascade,
    foreign key (codigo_tipo) references tipo_comercio (codigo_tipo) on delete cascade,
    constraint unique_cnpj unique (cnpj),
    constraint unique_razao_social unique (razao_social),
    constraint unique_1telefone unique(telefone),
    constraint unique_1e_mail unique(e_mail)
);

create table compra (
    codigo_compra int not null primary key,
    horario varchar(5) not null,
    valor_total float not null,
    codigo_entregador int not null,
    codigo_comercio int not null,
    foreign key (codigo_entregador) references entregador (codigo_entregador) on delete cascade,
    foreign key (codigo_comercio) references comercio (codigo_comercio) on delete cascade
);

create table cliente (
    codigo_cliente int not null primary key,
    numero_cartao varchar(16) not null,
    nome_titular varchar(50) not null,
    codigo_seguranca int not null,
    validade varchar(5) not null,
    codigo_pessoa int not null,
    codigo_compra int not null,
    foreign key (codigo_pessoa) references pessoa (codigo_pessoa) on delete cascade,
    foreign key (codigo_compra) references compra (codigo_compra) on delete cascade,
    constraint unique_numero_cartao unique (numero_cartao)
);

create table produto (
    codigo_produto int not null primary key,
    nome varchar(50) not null,
    descricao varchar(100) not null,
    valor float not null,
    codigo_comercio int,
    foreign key (codigo_comercio) references comercio (codigo_comercio) on delete set null
);

create table cidade (
    codigo_cidade int not null primary key,
    estado varchar(30) not null,
    pais varchar(30) not null,
    nome_cidade varchar(30) not null
);

create table composicao_compra (
    codigo_composicao int not null primary key,
    codigo_compra int not null,
    codigo_produto int not null,
    valor_unitario float not null,
    quantidade int not null,
    valor_total float not null,
    foreign key (codigo_compra) references compra (codigo_compra) on delete cascade,
    foreign key (codigo_produto) references produto (codigo_produto) on delete cascade
);

create table mora (
    codigo_pessoa int not null,
    codigo_endereco int not null,
    primary key (codigo_pessoa, codigo_endereco),
    foreign key (codigo_pessoa) references pessoa (codigo_pessoa) on delete cascade,
    foreign key (codigo_endereco) references endereco (codigo_endereco) on delete cascade
);

create table atende_em (
    codigo_cidade int not null,
    codigo_comercio int not null,
    primary key(codigo_cidade, codigo_comercio),
    foreign key (codigo_cidade) references cidade (codigo_cidade) on delete cascade,
    foreign key (codigo_comercio) references comercio (codigo_comercio) on delete cascade
);

-- Tabelas adicionadas para avaliações
create table avaliacao_comercio (
    codigo_avaliacao int not null primary key,
    codigo_comercio int not null,
    nota int not null,
    comentario varchar(255),
    foreign key (codigo_comercio) references comercio (codigo_comercio) on delete cascade
);

create table avaliacao_entregador (
    codigo_avaliacao int not null primary key,
    codigo_entregador int not null,
    nota int not null,
    comentario varchar(255),
    foreign key (codigo_entregador) references entregador (codigo_entregador) on delete cascade
);
