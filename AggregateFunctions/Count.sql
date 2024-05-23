USE book_shop;

SELECT COUNT(*) FROM books; -- Counts the number of rows

SELECT COUNT(author_fname) FROM books; -- Ignores when NULL appears but still counts all author_fname 
SELECT COUNT(DISTINCT author_fname) FROM books; -- Counts all distinct author first names

SELECT COUNT(DISTINCT released_year) FROM books; -- Count uniqe release years

SELECT COUNT(title) FROM books WHERE title LIKE '%the%'; -- count how many books have 'the' in their title