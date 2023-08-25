
## Inicializando o Projeto

Para iniciar o projeto, siga estas etapas:

1. Clone este repositório para o seu computador.
2. Certifique-se de ter um sistema de gerenciamento de banco de dados MySQL, ao configurar e em execução na sua máquina.
3. Crie um banco de dados com o nome "Bibliotecas.sql" no seu sistema de gerenciamento de banco de dados.
4. Importe os arquivos SQL fornecidos na pasta "SQL" deste repositório para criar as tabelas e configurar o esquema do banco de dados.
5. Configure as conexões de banco de dados no arquivo de configuração `config.yml` ou similar, se necessário.
6. Execute o script de inicialização fornecido (`PopulacaoDeDados.sql`) para dar continuidade ao projeto.
7. O projeto estará pronto para uso, e você poderá começar a adicionar informações sobre livros, autores, editoras e gêneros.


### Gerenciamento de Livros - Esquema de Banco de Dados
Este repositório contém o esquema de banco de dados para um sistema de gerenciamento de livros. O esquema consiste em três tabelas principais: genero, editora e livros, que armazenam informações sobre gêneros de livros, editoras e detalhes dos próprios livros.

## Tabelas
Tabela genero
Armazena informações sobre os gêneros dos livros.

## Coluna	Tipo	Descrição
id_genero	int	Chave primária
nome_genero	varchar(255)	Nome do gênero do livro
Tabela editora
Armazena informações sobre as editoras dos livros.

## Coluna	Tipo	Descrição
id_editora	int	Chave primária
nome_editora	varchar(255)	Nome da editora do livro
Tabela livros
Armazena informações sobre os livros disponíveis.

## Coluna	Tipo	Descrição
id_livros	int	Chave primária
titulo	varchar(255)	Título do livro
autor_id	int	ID do autor (chave estrangeira)
genero_id	int	ID do gênero (chave estrangeira)
editora_id	int	ID da editora (chave estrangeira)
Relacionamentos

A tabela livros possui chaves estrangeiras que se relacionam com as tabelas autor, genero e editora.
Os relacionamentos possuem a opção ON DELETE CASCADE, o que significa que, se um autor, gênero ou editora for excluído, os livros relacionados também serão excluídos automaticamente.
Considerações
Este esquema de banco de dados oferece uma base sólida para o gerenciamento de livros, permitindo que você armazene informações sobre gêneros, editoras e detalhes dos livros de forma organizada. Certifique-se de ajustar e expandir esse esquema de acordo com suas necessidades específicas.

Sinta-se à vontade para clonar, modificar e usar este esquema para o seu próprio projeto de gerenciamento de livros. Se tiver alguma dúvida ou sugestão de melhoria, sinta-se à vontade para abrir uma issue neste repositório.


### Initializing the Project
To start the project, follow these steps:

Clone this repository to your computer.
Make sure you have a MySQL database management system set up and running on your machine.
Create a database named "Library.sql" in your database management system.
Import the provided SQL files in the "SQL" folder of this repository to create the tables and set up the database schema.
Configure database connections in the config.yml or similar configuration file, if necessary.
Execute the provided initialization script (DataPopulation.sql) to populate the project.
The project will be ready to use, and you can start adding information about books, authors, publishers, and genres.
Book Management - Database Schema
This repository contains the database schema for a book management system. The schema consists of three main tables: genre, publisher, and books, which store information about book genres, publishers, and details of the books themselves.

## Tables
Table genre
Stores information about book genres.

## Column	Type	Description
id_genre	int	Primary Key
genre_name	varchar(255)	Name of the book genre
Table publisher
Stores information about book publishers.

## Column	Type	Description
id_publisher	int	Primary Key
publisher_name	varchar(255)	Name of the book publisher
Table books
Stores information about available books.

## Column	Type	Description
id_books	int	Primary Key
title	varchar(255)	Title of the book
author_id	int	Author ID (foreign key)
genre_id	int	Genre ID (foreign key)
publisher_id	int	Publisher ID (foreign key)
Relationships
The books table has foreign keys that relate to the author, genre, and publisher tables.
Relationships have the ON DELETE CASCADE option, which means that if an author, genre, or publisher is deleted, related books will also be automatically deleted.
Considerations
This database schema provides a solid foundation for book management, allowing you to store information about genres, publishers, and book details in an organized manner. Be sure to adjust and expand this schema according to your specific needs.

Feel free to clone, modify, and use this schema for your own book management project. If you have any questions or suggestions for improvement, please feel free to open an issue in this repository.




