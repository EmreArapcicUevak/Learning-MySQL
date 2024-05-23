SELECT
    UPPER(
        REVERSE("Why does my cat look at me with such hatred?")
    ) AS QUERRY;

SELECT
    REPLACE(title, ' ', '->') AS title
FROM
    books;

SELECT
    author_lname AS forwards,
    REVERSE(author_lname) AS backwards
from
    books;

SELECT
    UPPER(CONCAT_WS(' ', author_fname, author_lname)) as 'Full name in caps'
from
    books;

SELECT
    CONCAT_WS(
        ' ',
        'The',
        title,
        'was released in',
        released_year
    ) as blurb
from
    books;

SELECT
    title,
    CHAR_LENGTH(title) as 'character count'
from
    books;

SELECT
    CONCAT(LEFT(title, 10), '...') AS 'Short Title',
    CONCAT_WS(',', author_lname, author_fname) AS author,
    CONCAT_WS(' ', stock_quantity, "in stock") AS quantity
FROM
    books;