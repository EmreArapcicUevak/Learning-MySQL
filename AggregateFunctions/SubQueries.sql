USE book_shop;

SELECT * FROM books WHERE pages = (SELECT MAX(pages) FROM books);

SELECT title, released_year FROM books WHERE released_year = (SELECT MIN(released_year) FROM books);