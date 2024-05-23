USE book_shop;

SELECT
    title,
    author_lname
FROM
    books;

SELECT
    CONCAT_WS(' ', author_fname, author_lname),
    COUNT(*) AS books_written
FROM
    books
GROUP BY
    author_fname,
    author_lname
ORDER BY
    2 DESC;


SELECT
    COUNT(*) AS 'Books Released',
    released_year
FROM
    books
GROUP BY
    released_year
ORDER BY 
    1 DESC;