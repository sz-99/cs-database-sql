USE MyBookshop;


DROP TABLE IF EXISTS BookGenres;


CREATE TABLE BookGenres(
    BookId INT NOT NULL,
    GenreId INT NOT NULL,
    PRIMARY KEY (BookId, GenreId),
    FOREIGN KEY (BookId) REFERENCES Books(BookId),
    FOREIGN KEY (GenreId) REFERENCES Genres(Id)
);

SELECT * FROM BookGenres; 