USE MyBookshop;
GO


PRINT 'Here is a list of book titles with the corresponding author:';
SELECT Books.Title, Books.AuthorId, Authors.AuthorId, Authors.AuthorName
FROM Books 
INNER JOIN Authors
ON Books.AuthorId = Authors.AuthorId;
GO

PRINT 'Here is a list of authors without an associated book:';
SELECT Authors.AuthorId, Authors.AuthorName, Books.AuthorId
FROM Authors
LEFT JOIN Books 
ON Authors.AuthorId = Books.AuthorId
WHERE Books.AuthorId IS NULL;
GO



