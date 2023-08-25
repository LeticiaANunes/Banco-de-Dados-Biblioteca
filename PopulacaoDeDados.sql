-- ----------------
-- Popular autor
-- ----------------
SELECT * FROM autor;

INSERT INTO `autor` (`nome_autor`)
VALUES
  ('J.K. Rowling'),
  ('George Orwell'),
  ('Harper Lee'),
  ('Agatha Christie'),
  ('Gabriel García Márquez');


-- ----------------
-- Popular editora
-- ----------------

SELECT * FROM editora;

INSERT INTO `editora` (`nome_editora`)
VALUES
  ('Editora Rocco'),
  ('Penguin Books'),
  ('HarperCollins'),
  ('Editora Globo'),
  ('Random House');


-- ----------------
-- Popular gênero
-- ----------------

SELECT * FROM genero;

INSERT INTO `genero` (`nome_genero`)
VALUES
  ('Fantasia'),
  ('Ficção Distópica'),
  ('Romance'),
  ('Mistério'),
  ('Realismo Mágico');
  
-- ----------------
-- Popular livros
-- ----------------

SELECT * FROM livros;

INSERT INTO `livros` (`titulo`, `autor_id`, `genero_id`, `editora_id`)
VALUES
  ('Harry Potter e a Pedra Filosofal', '1', '1', '1'),
  ('1984', '2', '2', '2'),
  ('O Sol é para Todos', '3', '3', '3'),
  ('Assassinato no Expresso do Oriente', '4', '4', '4'),
  ('Cem Anos de Solidão', '5', '5', '5');
  
  -- ----------------
-- JOIN
-- ----------------

SELECT `titulo` as `livro`, `nome_autor` as `autor` , `nome_genero` as `genero`, `nome_editora` as `editora` 
FROM livros AS lv
JOIN autor AS au
ON lv.autor_id = au.id_autor   
JOIN genero AS gn
ON lv.genero_id = gn.id_genero
JOIN editora as ed
ON lv.editora_id = ed.id_editora; 
