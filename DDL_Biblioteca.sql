-- EXERCICIO 1. Criação do Banco de Dados

CREATE DATABASE bd_Biblioteca;

-- ACESSAR A BASE DE DADOS
USE bd_Biblioteca;

-- EXERCICIO 2. Criação das Tabelas

-- 1. Tabela: Autores
CREATE TABLE tb_autores(
id_autor INT(10) NOT NULL, 
nome VARCHAR(100) NOT NULL,
data_nascimento DATE, 
PRIMARY KEY(id_autor)
);

-- 2. Tabela: Livros
CREATE TABLE tb_livros(
id_livro INT(10) NOT NULL, 
titulo VARCHAR(100) NOT NULL,
ano_publicacao INT(10) NOT NULL, 
PRIMARY KEY(id_livro),
id_autor INT(10) NOT NULL,
FOREIGN KEY (id_autor) REFERENCES tb_autores(id_autor)
);

-- 3. Tabela: Membros
CREATE TABLE tb_membros(
id_membro INT(10) NOT NULL, 
nome VARCHAR(100) NOT NULL,
data_adesao INT(30) NOT NULL,
PRIMARY KEY (id_membro)
);

ALTER TABLE tb_membros
ADD COLUMN data_adesao_nova DATE;
-- DROP TABLE tb_membros;

-- 4. Tabela: Emprestimos
CREATE TABLE tb_Emprestimos(
id_emprestimo INT(10),
id_membro INT(10) NOT NULL, 
id_livro INT(10) NOT NULL,
data_emprestimo DATE,
data_devolucao DATE,
FOREIGN KEY (id_livro) REFERENCES tb_livros(id_livro),
FOREIGN KEY (id_membro) REFERENCES tb_membros(id_membro),
PRIMARY KEY (id_emprestimo)
);






