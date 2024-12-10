USE MyBookshop;
GO

SELECT Books.Title AS Books,
STRING_AGG(Genres.Name, ',')
FROM Books
INNER JOIN BookGenres ON Books.BookId = BookGenres.BookId
INNER JOIN Genres ON BookGenres.GenreId = Genres.Id
GROUP BY Books.Title;