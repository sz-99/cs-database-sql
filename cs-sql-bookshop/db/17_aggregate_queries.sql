USE MyBookshop;
GO

PRINT 'Here is the total number of books we have by each author:';
SELECT COUNT(*) AS NumberOfBooks, Authors.AuthorName
FROM Books
INNER JOIN Authors ON Books.AuthorId = Authors.AuthorId
GROUP BY Authors.AuthorName



PRINT 'Here is the average price for dystopian books:';