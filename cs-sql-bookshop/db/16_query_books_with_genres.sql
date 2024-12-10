USE MyBookshop;
GO


PRINT 'Here are the genres for The Little Prince:';
SELECT Genres.Name AS GenreName
FROM BookGenres
INNER JOIN Books ON BookGenres.BookId = Books.BookId
INNER JOIN Genres ON BookGenres.GenreId = Genres.Id
WHERE Books.Title LIKE '%Prince%';


PRINT 'Here are all the dystopian books:';
SELECT Books.Title
FROM BookGenres
INNER JOIN Books ON BookGenres.BookId = Books.BookId
INNER JOIN Genres ON BookGenres.GenreId = Genres.Id
WHERE Genres.Name LIKE '%dystopian%';
GO