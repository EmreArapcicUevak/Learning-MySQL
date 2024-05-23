USE book_shop;

SELECT
    AVG(released_year)
FROM
    books;

SELECT
    AVG(stock_quantity)
FROM
    books;

SELECT
    released_year,
    AVG(stock_quantity),
    Count(*)
FROM
    books
GROUP BY
    released_year
ORDER BY
    released_year DESC;