USE book_shop

SELECT book_id, author_fname, author_lname FROM books ORDER BY author_lname;
SELECT title, CONCAT_WS(' ', author_fname, author_lname) AS 'Author' FROM books ORDER BY released_year ASC;
SELECT title, pages from books ORDER BY pages DESC;

SELECT title, pages from books ORDER BY 2 DESC;

SELECT author_fname, released_year, CONCAT(LEFT(title, 10), '...') AS 'title' FROM books ORDER BY 1, 2;