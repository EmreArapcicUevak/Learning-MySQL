USE book_shop;

SELECT
    COUNT(*) AS total_books
from
    books;

SELECT
    COUNT(*) AS released_books,
    released_year
FROM
    books
GROUP BY
    released_year;

SELECT
    SUM(stock_quantity) AS books_in_stock
FROM
    books;

SELECT
    AVG(released_year),
    author_fname,
    author_lname
FROM
    books
GROUP BY
    author_fname,
    author_lname;

SELECT
    CONCAT_WS(' ', author_fname, author_lname) AS author,
    title,
    pages
FROM
    books
WHERE
    pages = (
        SELECT
            MAX(pages)
        FROM
            books
    );

SELECT
    CONCAT_WS(' ', author_fname, author_lname) AS author,
    title,
    pages
FROM
    books
ORDER BY
    pages DESC
LIMIT
    1;

SELECT
    released_year,
    COUNT(*) as '# books',
    AVG(pages) as 'avg pages'
FROM
    books
GROUP BY
    released_year
ORDER BY
    released_year ASC;