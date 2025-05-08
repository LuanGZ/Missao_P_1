
-- Criação do banco de dados
CREATE DATABASE Loja;
USE Loja;

-- Tabela de Pessoas
CREATE TABLE Pessoa (
    idPessoa INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(255)
);

-- Tabela de Pessoas Físicas (herda da tabela Pessoa)
CREATE TABLE PessoaFisica (
    idPessoa INT PRIMARY KEY,
    cpf VARCHAR(11) UNIQUE NOT NULL,
    idade INT,
    FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa)
);

-- Tabela de Pessoas Jurídicas (herda da tabela Pessoa)
CREATE TABLE PessoaJuridica (
    idPessoa INT PRIMARY KEY,
    cnpj VARCHAR(14) UNIQUE NOT NULL,
    razaoSocial VARCHAR(255),
    FOREIGN KEY (idPessoa) REFERENCES Pessoa(idPessoa)
);

-- Tabela de Produtos
CREATE TABLE Produto (
    idProduto INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    quantidade INT NOT NULL,
    precoVenda NUMERIC(10, 2) NOT NULL
);

-- Tabela de Movimentos de Compra
CREATE TABLE MovimentoCompra (
    idMovimento INT PRIMARY KEY,
    idProduto INT,
    idPessoaJuridica INT,
    quantidade INT NOT NULL,
    precoVenda NUMERIC(10, 2) NOT NULL,
    dataMovimento DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idPessoaJuridica) REFERENCES PessoaJuridica(idPessoa)
);

-- Tabela de Movimentos de Venda
CREATE TABLE MovimentoVenda (
    idMovimento INT PRIMARY KEY,
    idProduto INT,
    idPessoaFisica INT,
    quantidade INT NOT NULL,
    precoVenda NUMERIC(10, 2) NOT NULL,
    dataMovimento DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (idProduto) REFERENCES Produto(idProduto),
    FOREIGN KEY (idPessoaFisica) REFERENCES PessoaFisica(idPessoa)
);

-- Sequence para geração dos identificadores de pessoa
CREATE SEQUENCE seqPessoa START WITH 1 INCREMENT BY 1;
