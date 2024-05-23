USE book_shop;

SELECT
    MIN(released_year)
FROM
    books;

-- Find the oldest release date
SELECT
    MAX(pages)
FROM
    books;

-- Find the biggest amount of pages
SELECT
    MAX(author_lname),
    MIN(author_lname)
FROM
    books;

SELECT
    author_fname,
    author_lname,
    COUNT(*) as books_written,
    MIN(released_year) as min_releas_year,
    MAX(released_year) as max_releas_year,
    MAX(pages) as longest_page_count
FROM
    books
GROUP BY
    author_fname,
    author_lname
ORDER BY
    min_releas_year DESC;