USE book_shop;

SELECT
    title
FROM
    books
WHERE
    title LIKE '%stories%';

SELECT
    title,
    pages
FROM
    books
ORDER BY
    pages DESC
LIMIT
    1;

SELECT
    CONCAT_WS(' - ', title, released_year) AS summary
FROM
    books
ORDER BY
    released_year DESC
LIMIT
    3;

SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname LIKE '% %';

SELECT
    title,
    released_year,
    stock_quantity
FROM
    books
ORDER BY
    3 ASC
LIMIT
    3;

SELECT
    title,
    author_lname
FROM
    books
ORDER BY
    2,
    1;

SELECT
    UPPER(
        CONCAT(
            'My Favorite author is ',
            author_fname,
            ' ',
            author_lname,
            '!'
        )
    ) as yell
FROM
    books
ORDER BY
    author_lname;