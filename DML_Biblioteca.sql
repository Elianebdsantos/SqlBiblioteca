USE bd_Biblioteca;

-- EXERCICIO 3. Inserir ao menos 3 valores em cada tabela

SELECT * FROM tb_autores;

INSERT INTO tb_autores VALUES
('1', 'Clarice Lins', '1975-10-15'),
('2', 'Joao Carlos', '1957-03-28'),
('3', 'Pedro Augusto', '1999-11-03');

SELECT * FROM tb_livros;
-- Inserir dados na tb livros

INSERT INTO tb_livros  VALUES
('1', 'Python', '2005','1'),
('2', 'SQL', '2012','2'),
('3', 'Linguagem R', '2023','3');

SELECT * FROM tb_membros;
INSERT INTO tb_membros VALUES
('1', 'Eliane', '2021'),
('2', 'Pedro', '2022'),
('3', 'Wagner', '2024');

ALTER TABLE tb_membros
DROP COLUMN data_adesao_nova;

SELECT * FROM tb_emprestimos;

INSERT INTO tb_emprestimos VALUES
('1','1','1','2024-08-10','2024-09-20'),
('2','2','2','2024-09-20','2024-10-01'),
('3','3','3','2024-06-21','2024-07-30');


