USE MyBookshop;


DROP TABLE IF EXISTS BookGenres;


CREATE TABLE BookGenres(
    BookId INT NOT NULL,
    GenreId INT NOT NULL,
    PRIMARY KEY (BookId, GenreId),
    CONSTRAINT FK_Books FOREIGN KEY (BookId) 
        REFERENCES Books(BookId)
        ON DELETE CASCADE,
    CONSTRAINT FK_Genres FOREIGN KEY (GenreId) 
        REFERENCES Genres(Id)
);

SELECT * FROM BookGenres; 