# Banco-de-Dados-Biblioteca
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
