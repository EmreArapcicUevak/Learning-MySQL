USE book_shop;

SELECT
    SUM(pages)
FROM
    books;

-- Sum all the pageso
SELECT
    CONCAT_WS(' ', author_fname, author_lname) as author,
    SUM(pages) as 'Total pages written'
FROM
    books
GROUP BY
    author
ORDER BY
    2 DESC;