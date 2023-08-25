-- CRIAR SCHEMA
CREATE SCHEMA IF NOT EXISTS `biblioteca` DEFAULT CHARACTER SET utf8;
USE `biblioteca`;

-- Tabela Autor: Armazena informações sobre os autores dos livros
CREATE TABLE IF NOT EXISTS `autor` (
  `id_autor` INT AUTO_INCREMENT,
  `nome_autor` VARCHAR(255) NOT NULL,
  -- `data_nascimento` date,
  -- `nacionalidade` varchar(255)
  PRIMARY KEY(`id_autor`)
);

-- Tabela Genero: Armazena informações sobre os gêneros dos livros
CREATE TABLE IF NOT EXISTS `genero` (
  `id_genero` int PRIMARY KEY AUTO_INCREMENT,
  `nome_genero` varchar(255) NOT NULL
);

-- Tabela Editora: Armazena informações sobre as editoras dos livros
CREATE TABLE IF NOT EXISTS `editora` (
  `id_editora` int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `nome_editora` varchar(255) NOT NULL
  -- `local` varchar(255)
)
ENGINE InnoDB;


-- Tabela Livros: Armazena informações sobre os livros disponíveis
CREATE TABLE IF NOT EXISTS `livros` (
  `id_livros` INT NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `autor_id` INT NOT NULL,
  `genero_id` INT NOT NULL,
  `editora_id` INT NOT NULL,
  PRIMARY KEY (`id_livros`, `autor_id`, `genero_id`, `editora_id`),
  CONSTRAINT `fk_autor_livros`
	FOREIGN KEY (`autor_id`)
    REFERENCES `biblioteca`.`autor` (`id_autor`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_genero_livros`
	FOREIGN KEY (`genero_id`)
    REFERENCES `biblioteca`.`genero` (`id_genero`)
    ON DELETE CASCADE,
  CONSTRAINT `fk_editora_livros`
	FOREIGN KEY (`editora_id`)
    REFERENCES `biblioteca`.`editora` (`id_editora`)
    ON DELETE CASCADE
)
ENGINE InnoDB;
