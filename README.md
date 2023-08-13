
## Inicializando o Projeto

Para iniciar o projeto, siga estas etapas:

1. Clone este repositório para o seu computador.
2. Certifique-se de ter um sistema de gerenciamento de banco de dados MySQL, ao configurar e em execução na sua máquina.
3. Crie um banco de dados com o nome "Bibliotecas.sql" no seu sistema de gerenciamento de banco de dados.
4. Importe os arquivos SQL fornecidos na pasta "SQL" deste repositório para criar as tabelas e configurar o esquema do banco de dados.
5. Configure as conexões de banco de dados no arquivo de configuração `config.yml` ou similar, se necessário.
6. Execute o script de inicialização fornecido (`PopulacaoDeDados.sql`) para dar continuidade ao projeto.
7. O projeto estará pronto para uso, e você poderá começar a adicionar informações sobre livros, autores, editoras e gêneros.


# Banco de Dados da Biblioteca
# Projeto de Banco de Dados de Livros
Este é um projeto de banco de dados que modela informações sobre livros, autores, editoras e gêneros. O banco de dados é projetado para armazenar detalhes sobre livros, seus autores, editoras e gêneros, além de estabelecer relacionamentos entre eles.

## Esquema do Banco de Dados
O banco de dados consiste nas seguintes tabelas:

### Tabela: Livros
id: Chave primária que identifica cada livro.
Título: Título do livro.
ISBN: Número de identificação do livro.
Ano de Publicação: Ano de publicação do livro.
Idioma: Idioma do livro.

### Quantidade Disponível: Quantidade disponível do livro.
Tabela: Autor
id_autor: Chave primária que identifica cada autor.
nome: Nome do autor.
data_nascimento: Data de nascimento do autor.
nacionalidade: Nacionalidade do autor.

### Tabela: Editora
id_editora: Chave primária que identifica cada editora.
nome: Nome da editora.
localização: Localização da editora.

### Tabela: Gênero
id_gênero: Chave primária que identifica cada gênero.
nome: Nome do gênero.

### Tabela Intermediária: LivroAutor
id_livroautor: Chave primária que identifica cada relacionamento livro-autor.
id_livro: Chave estrangeira referenciando a tabela Livros.
id_autor: Chave estrangeira referenciando a tabela Autor.


# Banco de Dados da Biblioteca
# Projeto de Banco de Dados de Livros

Este é um projeto de banco de dados que modela informações sobre livros, autores, editoras e gêneros. O banco de dados é projetado para armazenar detalhes sobre livros, seus autores, editoras e gêneros, além de estabelecer relacionamentos entre eles.

# Book Database Project

This is a database project that models information about books, authors, publishers, and genres. The database is designed to store details about books, their authors, publishers, and genres, and also establishes relationships among them.

## Database Schema

The database consists of the following tables:

### Table: Books
- `id`: Primary key that identifies each book.
- `Title`: Title of the book.
- `ISBN`: Identification number of the book.
- `Publication Year`: Year of publication of the book.
- `Language`: Language of the book.
- `Available Quantity`: Available quantity of the book.

### Table: Author
- `author_id`: Primary key that identifies each author.
- `name`: Name of the author.
- `birth_date`: Birth date of the author.
- `nationality`: Nationality of the author.

### Table: Publisher
- `publisher_id`: Primary key that identifies each publisher.
- `name`: Name of the publisher.
- `location`: Location of the publisher.

### Table: Genre
- `genre_id`: Primary key that identifies each genre.
- `name`: Name of the genre.

### Intermediate Table: BookAuthor
- `bookauthor_id`: Primary key that identifies each book-author relationship.
- `book_id`: Foreign key referencing the Books table.
- `author_id`: Foreign key referencing the Author table.

### Intermediate Table: BookGenre
- `bookgenre_id`: Primary key that identifies each book-genre relationship.
- `book_id`: Foreign key referencing the Books table.
- `genre_id`: Foreign key referencing the Genre table.
