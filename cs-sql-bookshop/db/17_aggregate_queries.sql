USE MyBookshop;
GO

PRINT 'Here is the total number of books we have by each author:';
SELECT COUNT(*) AS NumberOfBooks, Authors.AuthorName
FROM Books
INNER JOIN Authors ON Books.AuthorId = Authors.AuthorId
GROUP BY Authors.AuthorName



PRINT 'Here is the average price for dystopian books:';
SELECT AVG(Books.PriceInPence) AS AveragePrice, Genres.Name AS GenreName
FROM BookGenres
INNER JOIN Books ON BookGenres.BookId = Books.BookId
INNER JOIN Genres ON BookGenres.GenreId = Genres.Id
WHERE Genres.Name LIKE '%dystopian%'
GROUP BY Genres.Name;
GO