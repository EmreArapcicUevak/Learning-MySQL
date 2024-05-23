USE book_shop;

SELECT DISTINCT author_lname from books;
SELECT DISTINCT released_year from books;
SELECT DISTINCT CONCAT_WS(' ', author_fname, author_lname) AS 'Full Name' from books;
SELECT DISTINCT author_fname, author_lname from books; -- Select distinct combinations of author_fname, and author_lname