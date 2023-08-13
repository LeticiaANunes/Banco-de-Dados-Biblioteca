-- Tabela Livros: Armazena informações sobre os livros disponíveis
CREATE TABLE `Livros` (
  `id` int PRIMARY KEY,
  `Titulo` varchar(255),
  `ISBN` varchar(255),
  `ano_publicacao` date,
  `idioma` varchar(255),
  `quantidade_disponivel` int
);

-- Tabela Autor: Armazena informações sobre os autores dos livros
CREATE TABLE `Autor` (
  `autor_id` int PRIMARY KEY,
  `nome` varchar(255),
  `data_nascimento` date,
  `nacionalidade` varchar(255)
);

-- Tabela Editora: Armazena informações sobre as editoras dos livros
CREATE TABLE `Editora` (
  `editora_id` int PRIMARY KEY,
  `nome` varchar(255),
  `local` varchar(255)
);

-- Tabela Genero: Armazena informações sobre os gêneros dos livros
CREATE TABLE `Genero` (
  `genero_id` int PRIMARY KEY,
  `nome` varchar(255)
);

-- Tabela intermediária LivroAutor: Relaciona livros a autores
CREATE TABLE `LivroAutor` (
  `livroautor_id` int PRIMARY KEY,
  `livro_id` int,
  `autor_id` int,
  FOREIGN KEY (`livro_id`) REFERENCES `Livros` (`id`),
  FOREIGN KEY (`autor_id`) REFERENCES `Autor` (`autor_id`)
);

-- Tabela intermediária LivroGenero: Relaciona livros a gêneros
CREATE TABLE `LivroGenero` (
  `livrogenero_id` int PRIMARY KEY,
  `livro_id` int,
  `genero_id` int,
  FOREIGN KEY (`livro_id`) REFERENCES `Livros` (`id`),
  FOREIGN KEY (`genero_id`) REFERENCES `Genero` (`genero_id`)
);
