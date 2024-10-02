USE bd_Biblioteca;

-- EXERCÍCIO 5. Utilize subqueries para realizar as seguintes consultas: 

-- a. Liste os autores que possuem livros com ano de publicação maior que a média de anos de publicação de todos os livros cadastrados.
SELECT nome FROM tb_autores
			WHERE id_autor IN (SELECT id_autor FROM tb_livros
            WHERE ano_publicacao >
            (SELECT AVG(ano_publicacao) FROM tb_livros));

-- b. Encontre os membros que realizaram mais de um empréstimo.
SELECT nome FROM tb_membros
			WHERE id_membro IN (SELECT id_membro FROM tb_emprestimos
            GROUP BY id_membro HAVING COUNT(id_membro) > 1);
            
-- c. Liste os livros que foram emprestados ao menos uma vez.
SELECT  titulo FROM tb_livros
			WHERE id_livro IN (SELECT id_livro FROM tb_emprestimos);

    
-- d. Consulte os livros que ainda não foram emprestados.
SELECT titulo FROM tb_livros
			WHERE id_livro NOT IN (SELECT id_livro FROM tb_emprestimos);






set @@autocommit = ON;