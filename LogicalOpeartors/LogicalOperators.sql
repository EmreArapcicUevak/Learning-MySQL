USE book_shop;

SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year != 2017;

-- Comparison operator! not equal
SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname != 'Gaiman';

-- LOGICAL NOT
SELECT
    title
FROM
    books
WHERE
    title NOT LIKE '% %';

-- Select books where the title doesn't contain spaces
SELECT
    title,
    author_fname,
    author_lname
FROM
    books
WHERE
    author_fname LIKE 'da%';

SELECT
    title,
    author_fname,
    author_lname
FROM
    books
WHERE
    author_fname NOT LIKE 'da%';

SELECT
    title
FROM
    books
WHERE
    title NOT LIKE '%e%';

-- Comparison operator greater then
SELECT
    *
FROM
    books
WHERE
    released_year > 2000;

SELECT
    *
FROM
    books
WHERE
    pages > 500;

SELECT
    99 > 1;

-- 1 True
SELECT
    99 > 100;

-- 0 False
-- Comaprison Less then operator
SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year < 2000
ORDER BY
    released_year;

SELECT
    title,
    pages
FROM
    books
WHERE
    pages < 200;

SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year >= 2010;

SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year <= 2010;

-- Logical AND
SELECT
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
    AND released_year > 2010
    AND title LIKE '%novel%';

SELECT
    title,
    CHAR_LENGTH(title) AS title_len,
    pages
FROM
    books
WHERE
    CHAR_LENGTH(title) > 30
    AND pages > 500;

-- Logical OR
SELECT
    *
FROM
    books
WHERE
    author_lname = 'Eggers'
    OR released_year > 2010;

SELECT
    title,
    pages
FROM
    books
WHERE
    pages < 200
    OR title LIKE '%stories%';

-- BETWEEN
SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year >= 2004
    AND released_year <= 2015
ORDER BY
    released_year DESC;

SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year BETWEEN 2004
    AND 2015
ORDER BY
    released_year DESC;

SELECT
    title,
    pages
FROM
    books
WHERE
    pages NOT BETWEEN 200
    AND 300
ORDER BY
    pages;

-- DATE Comaprisons
SELECT
    *
FROM
    people
WHERE
    birthDate < '2005-01-01';

SELECT
    *
FROM
    people
WHERE
    YEAR(birthDate) < 2005;

SELECT
    *
FROM
    people
WHERE
    birthTime > '09:00:00';

SELECT
    *
FROM
    people
WHERE
    HOUR(birthTime) > 12;

SELECT
    CAST('09:00:00' AS TIME);

SELECT
    *
FROM
    people
WHERE
    HOUR(birthTime) BETWEEN 9
    AND 16;

-- IN
SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname = 'Carver'
    OR author_lname = 'Lahiri'
    OR author_lname = 'Smith';

SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT
    title,
    author_lname
FROM
    books
WHERE
    author_lname NOT IN ('Carver', 'Lahiri', 'Smith');

SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year NOT IN (
        2000,
        2002,
        2004,
        2006,
        2008,
        2010,
        2012,
        2014,
        2016
    )
ORDER BY
    released_year DESC;

SELECT
    title,
    released_year
FROM
    books
WHERE
    released_year > 2000
    AND released_year % 2 != 0
ORDER BY
    released_year DESC;

-- CASE OPERATOR
SELECT
    title,
    released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS GENRE
FROM
    books;

SELECT
    title,
    stock_quantity,
    CASE
        WHEN stock_quantity <= 51 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        ELSE '***'
    END AS STOCK
FROM
    books
ORDER BY stock_quantity DESC;

-- IS NULL
DELETE FROM books WHERE author_lname IS NULL OR author_fname IS NULL