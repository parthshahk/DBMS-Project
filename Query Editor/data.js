var title = "Movie Database";

var functionalities = [
    {
        desc: "FIND MOVIES OF A PARTICULAR GENRE",
        query: "SELECT m.Title, m.ReleaseDate, m.Plot, m.Runtime FROM movies m INNER JOIN genres g ON m.MID=g.MID WHERE g.Name='Horror'"
    },
    {
        desc: "GET ALL REVIEWS OF A PARTICULAR MOVIE",
        query: "SELECT CONCAT(u.FirstName, ' ', u.LastName) AS User, r.Stars AS Rating, r.Date, r.Content AS Review FROM reviews r INNER JOIN movies m ON r.MID=m.MID INNER JOIN users u ON u.UID=r.UID WHERE m.Title='The Secret Life' ORDER BY r.Date DESC"
    },
    {
        desc: "LIST ALL CAST MEMBERS OF A MOVIE",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Actor Name`, c.CharacterName AS `Character Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN cast c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers'"
    },
    {
        desc: "LIST ALL CREW MEMBERS OF A MOVIE",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Crew Member Name`, c.Role AS `Character Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN crew c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers'"
    },
    {
        desc: "LIST ALL MOVIES OF FAVORITE GENRES",
        query: "SELECT m.Title AS Movie, g.Name AS `Genre Match` FROM movies m INNER JOIN genres g ON m.MID=g.MID INNER JOIN favgenres f ON f.Name=g.Name INNER JOIN users u ON f.UID=u.UID WHERE u.UID=1"
    },
    {
        desc: "GET ALL INFORMATION OF A MOVIE",
        query: "SELECT m.Title, m.ReleaseDate AS 'Release Date', m.Plot, m.runtime, GROUP_CONCAT(g.Name) AS Genres FROM movies m INNER JOIN genres g ON m.MID=g.MID WHERE m.Title = 'The Avengers' GROUP BY m.MID"
    },
    {
        desc: "GET MOVIES RELEASED IN A PARTICULAR DATE RANGE",
        query: "SELECT m.Title, m.ReleaseDate AS 'Release Date' FROM movies m WHERE m.ReleaseDate BETWEEN '2017-01-01' AND '2018-01-01' ORDER BY m.ReleaseDate ASC"
    },
    {
        desc: "FIND ALL MOVIES A PERSON HAS STARRED IN",
        query: "SELECT m.Title AS Movie, c.CharacterName as 'Character Name' FROM movies m INNER JOIN cast c ON m.MID=c.MID INNER JOIN people p ON c.PID=p.PID WHERE p.PID=1"
    },
    {
        desc: "FIND ALL MOVIES A PERSON HAS WORKED IN AS CREW MEMBER",
        query: "SELECT m.Title AS Movie, c.Role FROM movies m INNER JOIN crew c ON m.MID=c.MID INNER JOIN people p ON c.PID=p.PID WHERE p.PID=1"
    },
    {
        desc: "ALL LIKED MOVIES OF A USER",
        query: "SELECT m.Title FROM movies m INNER JOIN liked l ON m.MID=l.MID INNER JOIN users u ON u.UID=l.UID WHERE u.UID=1"
    },
    {
        desc: "ALL WATCHED MOVIES OF A USER",
        query: "SELECT m.Title FROM movies m INNER JOIN watched w ON m.MID=w.MID INNER JOIN users u ON u.UID=w.UID WHERE u.UID=1"
    },
    {
        desc: "LIST ALL REVIEWS BY A USER",
        query: "SELECT m.Title AS Movie, r.Date, r.Stars AS Rating, r.Content AS Review FROM reviews r INNER JOIN movies m ON r.MID=m.MID WHERE r.UID=2 ORDER BY r.Date DESC"
    },
    {
        desc: "ALL CAST MEMBERS OF USER'S LIKED MOVIES",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS Actor, m.Title AS Movie, c.CharacterName AS 'Character Name' FROM people p INNER JOIN cast c ON p.PID=c.PID INNER JOIN liked l ON l.MID=c.MID INNER JOIN movies m ON c.MID=m.MID WHERE l.UID=2"
    },
    {
        desc: "LIST ALL MOVIES WITH A RATING GREATER THAN A PARTICULAR RATING",
        query: "SELECT DISTINCT m.Title, r.Stars FROM movies m INNER JOIN reviews r ON r.MID=m.MID WHERE r.Stars > 4"
    },
    {
        desc: "LIST ALL PHOTOS OF A PERSON",
        query: "SELECT p.FileName FROM photos p WHERE p.PID=1"
    },
    {
        desc: "LIST ALL FAVORITE GENRE",
        query: "SELECT f.Name AS Genres FROM favgenres f WHERE f.UID=1"
    },
    {
        desc: "LIST ALL GENRES OF A MOVIE",
        query: "SELECT g.Name AS Genres FROM genres g WHERE g.MID=1"
    },
    {
        desc: "LIST ALL POSTER OF A MOVIE",
        query: "SELECT p.FileName FROM posters p WHERE MID=1"
    },
    {
        desc: "LIST OF NUMBER OF MOVIES FOR EACH CERTIFICATE",
        query: "SELECT COUNT(MID) AS 'Number of Movies', Certificate  FROM movies  GROUP BY Certificate"
    },
    {
        desc: "WHICH TYPE OF CERTIFICATE OF MOVIES IS AVAILABLE IN MAJORITY",
        query: "SELECT COUNT(MID) AS 'Number of Movies', Certificate FROM movies GROUP BY Certificate HAVING COUNT(MID) > (SELECT (COUNT(MID)/2)-1 FROM movies)"
    },
    {
        desc: "AVERAGE RUNTIME OF MOVIES",
        query: "SELECT AVG(Runtime) AS 'Average Runtime of Movies' FROM MOVIES"
    },
    {
        desc: "SEARCH MOVIE BY SUBSTRING OF TITLE",
        query: "SELECT * FROM movies WHERE Title LIKE '%ave%'"
    },
    {
        desc: "LIST MOVIES OF PARTICULAR CERTIFICATES",
        query: "SELECT * FROM movies WHERE Certificate IN ('PG-13', 'PG')"
    },
    {
        desc: "LIST ALL NON-ADULT MOVIES",
        query: "SELECT * FROM movies WHERE Certificate NOT IN ('R')"
    },
    {
        desc: "LIST ALL GENRES THAT NO USER HAS LIKED A MOVIE OF",
        query: "SELECT Name AS Genre FROM genres WHERE Name NOT IN (     SELECT Name      FROM favgenres )"
    },
    {
        desc: "LIST OF ALL CAST AND CREW MEMBERS",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Person Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN cast c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers' UNION SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Crew Member Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN crew c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers'"
    },
    {
        desc: "RUNTIME GREATER THAN A PARTICULAR VALUE",
        query: "SELECT Title FROM movies WHERE Runtime = ANY (     SELECT Runtime     FROM movies     WHERE Runtime>100 );"
    },
    {
        desc: "AVERAGE RATING OF A MOVIE",
        query: "SELECT AVG(Stars) AS Rating FROM reviews WHERE MID = 2"
    }
];

var procedures = [
    {
        desc: "GET ALL MOVIES WITH RUNTIME GREATER THAN THE GIVEN VALUE",
        query: "CALL `MovieFromRuntime`(30)"
    },
    {
        desc: "COUNT NUMBER OF MALE AND FEMALE FROM PEOPLE",
        query: "CALL `CountGender`();"
    },
    {
        desc: "INSERT INTO CAST TABLE, EXCEPTION IF DUPLICATE KEY",
        query: "CALL `InsertCast`(1, 1, 'name');"
    },
    {
        desc: "INSERT INTO REVIEWS WITH VALID RATING VALUE",
        query: "CALL `AddReview`(ui, mi, date, star, review);"
    }
];

var functions = [
    {
        desc: "CHECKS IF THE MOVIE IS AN ADULT MOVIE OR NOT",
        query: "SELECT `AdultMovieCheck`(12) AS `AdultMovieCheck`;"
    },
    {
        desc: "RATES THE MOVIE BASED ON THE STARS IT REVEIVED",
        query: "SELECT `AverageRating`(12) AS `AverageRating`;"
    }
];

var cursors = [
    {
        desc: "COUNT THE NUMBER OF MOVIES OF A PARTICULAR GENRE",
        query: " CALL `CountGenres`('Horror');"
    },
    {
        desc: "PREPARE MAILING LIST",
        query: "CALL MailingList();"
    }
]