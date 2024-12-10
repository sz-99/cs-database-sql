USE MyBookshop;
GO


-- Deleting a book:
-- Modify the BooksGenres table CREATE statement (in the earlier file) first
-- Then delete a book here
DELETE FROM Books 
WHERE Books.Title LIKE '%Prince%';

-- Deleting an author:
-- Modify the Books table CREATE statement first
-- Modify the BooksGenres table CREATE statement first (again)
-- Then delete an author here
DELETE FROM Authors
WHERE Authors.AuthorName LIKE '%Jane%';