-- Populando a tabela Autor
INSERT INTO `Autor` (`autor_id`, `nome`, `data_nascimento`, `nacionalidade`)
VALUES
  (1, 'J.K. Rowling', '1965-07-31', 'Reino Unido'),
  (2, 'George Orwell', '1903-06-25', 'Reino Unido'),
  (3, 'Harper Lee', '1926-04-28', 'Estados Unidos'),
  (4, 'Agatha Christie', '1890-09-15', 'Reino Unido'),
  (5, 'Gabriel García Márquez', '1927-03-06', 'Colômbia');

-- Populando a tabela Editora
INSERT INTO `Editora` (`editora_id`, `nome`, `local`)
VALUES
  (1, 'Editora Rocco', 'Rio de Janeiro, Brasil'),
  (2, 'Penguin Books', 'Londres, Reino Unido'),
  (3, 'HarperCollins', 'Nova York, Estados Unidos'),
  (4, 'Editora Globo', 'São Paulo, Brasil'),
  (5, 'Random House', 'Nova York, Estados Unidos');

-- Populando a tabela Genero
INSERT INTO `Genero` (`genero_id`, `nome`)
VALUES
  (1, 'Fantasia'),
  (2, 'Ficção Distópica'),
  (3, 'Romance'),
  (4, 'Mistério'),
  (5, 'Realismo Mágico');
  
-- Populando a tabela Livros
INSERT INTO `Livros` (`id`, `Titulo`, `ISBN`, `ano_publicacao`, `idioma`, `quantidade_disponivel`)
VALUES
  (1, 'Harry Potter e a Pedra Filosofal', '978-85-325-1820-8', '1997-06-26', 'Português', 10),
  (2, '1984', '978-0-452-28423-4', '1949-06-08', 'Inglês', 5),
  (3, 'O Sol é para Todos', '978-85-359-1681-6', '1960-07-11', 'Português', 8),
  (4, 'Assassinato no Expresso do Oriente', '978-85-01-00228-1', '1934-01-01', 'Português', 6),
  (5, 'Cem Anos de Solidão', '978-85-359-0277-2', '1967-05-30', 'Espanhol', 3);

-- Populando a tabela LivroAutor
INSERT INTO `LivroAutor` (`livroautor_id`, `livro_id`, `autor_id`)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5);

-- Populando a tabela LivroGenero
INSERT INTO `LivroGenero` (`livrogenero_id`, `livro_id`, `genero_id`)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5);
