SELECT
    REVERSE("Hello, World!");

SELECT
    REVERSE(author_fname)
FROM
    books;

SELECT
    CONCAT(author_fname, REVERSE(author_fname))
FROM
    books;