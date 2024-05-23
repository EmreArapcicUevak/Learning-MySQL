USE book_shop;

SELECT title, author_fname, author_lname FROM books WHERE author_fname LIKE '%Da%';
SELECT * FROM books WHERE title LIKE '%:%';
SELECT * FROM books WHERE title LIKE '%\%%';
SELECT * FROM books WHERE title LIKE '%\_%';