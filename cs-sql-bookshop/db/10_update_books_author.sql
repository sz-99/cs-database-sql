USE MyBookshop;
GO

UPDATE Books
SET AuthorId = 3
WHERE Title = 'The Hitchhiker''s Guide to the Galaxy'

UPDATE Books
SET AuthorId = 2
WHERE Title = 'The Little Prince'

UPDATE Books
SET AuthorId = 4
WHERE Title = 'The Shop Before Life'

UPDATE Books
SET AuthorId = 15
WHERE Title = 'Emma'

UPDATE Books
SET AuthorId = 14
WHERE Title = 'Nineteen Eighty-Four: A Novel'

UPDATE Books
SET AuthorId = 16
WHERE Title = 'The Handmaid''s Tale'

UPDATE Books
SET AuthorId = 13
WHERE Title = 'The War of the Worlds'

UPDATE Books
SET AuthorId = 15
WHERE Title = 'Pride and Prejudice'


GO
SELECT * FROM Books
GO

