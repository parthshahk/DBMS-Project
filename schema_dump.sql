CREATE TABLE Users (
    UID int NOT NULL,
    FirstName varchar(255) NOT NULL,
    LastName varchar(255) NOT NULL,
    Country varchar(2),
    ProfilePicture varchar(255),
    Email varchar(255) NOT NULL,
    Password varchar(255) NOT NULL,
    DOB Date,
    PRIMARY KEY (UID),
    UNIQUE(ProfilePicture)
);

CREATE TABLE Movies (
    MID int NOT NULL,
    Title varchar(255) NOT NULL,
    ReleaseDate Date NOT NULL,
    Plot varchar(1023),
    Runtime smallint,
    Type varchar(255),
    Certificate varchar(255) NOT NULL,
    PRIMARY KEY (MID)
);

CREATE TABLE People (
    PID int NOT NULL,
    FirstName varchar(255),
    LastName varchar(255),
    Gender varchar(1),
    DOB Date,
    PRIMARY KEY (PID)
);

CREATE TABLE Genres (
    MID int NOT NULL,
    Name varchar(32) NOT NULL,
    FOREIGN KEY (MID) REFERENCES movies(MID),
    PRIMARY KEY (MID, Name)
);

CREATE TABLE Posters (
    MID int NOT NULL,
    FileName varchar(255) NOT NULL,
    FOREIGN KEY (MID) REFERENCES movies(MID),
    UNIQUE(FileName),
    PRIMARY KEY (MID, FileName)
);

CREATE TABLE Photos (
    PID int NOT NULL,
    FileName varchar(255) NOT NULL,
    FOREIGN KEY (PID) REFERENCES people(PID),
    UNIQUE(FileName),
    PRIMARY KEY (PID, FileName)
);

CREATE TABLE FavGenres (
    UID int NOT NULL,
    Name varchar(255) NOT NULL,
    FOREIGN KEY (UID) REFERENCES Users(UID),
    PRIMARY KEY (UID, Name)
);

CREATE TABLE Watched (
    UID int NOT NULL,
    MID int NOT NULL,
    FOREIGN KEY (UID) REFERENCES Users(UID),
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    PRIMARY KEY (UID, MID)
);

CREATE TABLE Liked (
    UID int NOT NULL,
    MID int NOT NULL,
    FOREIGN KEY (UID) REFERENCES Users(UID),
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    PRIMARY KEY (UID, MID)
);

CREATE TABLE CreatedBy (
    PID int NOT NULL,
    MID int NOT NULL,
    FOREIGN KEY (PID) REFERENCES People(PID),
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    PRIMARY KEY (PID, MID)
);

CREATE TABLE Reviews (
    UID int NOT NULL,
    MID int NOT NULL,
    Date Date NOT NULL,
    Stars tinyint NOT NULL,
    Content varchar(1023),
    FOREIGN KEY (UID) REFERENCES Users(UID),
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    PRIMARY KEY (UID, MID)
);

CREATE TABLE Cast (
    MID int NOT NULL,
    PID int NOT NULL,
    CharacterName varchar(255) NOT NULL,
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    FOREIGN KEY (PID) REFERENCES People(PID),
    PRIMARY KEY (MID, PID)
);

CREATE TABLE Crew (
    MID int NOT NULL,
    PID int NOT NULL,
    Role varchar(255) NOT NULL,
    FOREIGN KEY (MID) REFERENCES Movies(MID),
    FOREIGN KEY (PID) REFERENCES People(PID),
    PRIMARY KEY (MID, PID)
);