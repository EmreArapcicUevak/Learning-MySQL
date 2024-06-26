USE book_shop

SELECT * FROM books WHERE released_year < 1980;
SELECT * FROM books WHERE author_lname IN ('Eggers', 'Chabon');
SELECT * FROM books WHERE author_lname = 'Lahiri' AND released_year > 2000;
SELECT * FROM books WHERE pages BETWEEN 100 AND 200;
SELECT * FROM books WHERE author_lname LIKE 'c%' OR author_lname LIKE 's%';
SELECT * FROM books WHERE LEFT(author_lname, 1) IN ('c', 's');

SELECT
    title,
    author_lname,
    CASE
        WHEN title LIKE '%stories%' THEN 'Short Stories'
        WHEN title IN ('Just Kids', 'A Heartbreaking Work of Staggering Genius') THEN 'Memoir'
        ELSE 'Novel'
    END AS 'TYPE'
FROM
    books;

SELECT 
    author_fname,
    author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT_WS(' ', COUNT(*), 'books') 
    END AS COUNT
FROM
    books
GROUP BY
    author_lname, author_fname;