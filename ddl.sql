CREATE TABLE IF NOT EXISTS usuario (
    id       VARCHAR(20)  PRIMARY KEY,
    nome     VARCHAR(255) NOT NULL,
    email    VARCHAR(255) NOT NULL UNIQUE,
    senha    VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS cliente (
    id             VARCHAR(20)  PRIMARY KEY,
    nome_fantasia  VARCHAR(255) NOT NULL,
    razao_social   VARCHAR(255) NOT NULL,
    cpf_cnpj       VARCHAR(14)  NOT NULL UNIQUE,
    tipo           VARCHAR(10)  NOT NULL CHECK (tipo IN ('PJ', 'PF')),
    email          VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS produto (
    id              VARCHAR(20)    PRIMARY KEY,
    descricao       VARCHAR(255)   NOT NULL,
    departamento    VARCHAR(255)   NOT NULL,
    codigo_barra    VARCHAR(13)    NOT NULL UNIQUE,
    preco           NUMERIC(10, 2) NOT NULL
);
