var title = "Movie Database";

var functionalities = [
    {
        desc: "1. FIND MOVIES OF A PARTICULAR GENRE",
        query: "SELECT m.Title, m.ReleaseDate, m.Plot, m.Runtime FROM movies m INNER JOIN genres g ON m.MID=g.MID WHERE g.Name='Horror'"
    },
    {
        desc: "2. GET ALL REVIEWS OF A PARTICULAR MOVIE",
        query: "SELECT CONCAT(u.FirstName, ' ', u.LastName) AS User, r.Stars AS Rating, r.Date, r.Content AS Review FROM reviews r INNER JOIN movies m ON r.MID=m.MID INNER JOIN users u ON u.UID=r.UID WHERE m.Title='The Secret Life' ORDER BY r.Date DESC"
    },
    {
        desc: "3. LIST ALL CAST MEMBERS OF A MOVIE",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Actor Name`, c.CharacterName AS `Character Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN cast c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers'"
    },
    {
        desc: "4. LIST ALL CREW MEMBERS OF A MOVIE",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Crew Member Name`, c.Role AS `Character Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN crew c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers'"
    },
    {
        desc: "5. LIST ALL MOVIES OF FAVORITE GENRES",
        query: "SELECT m.Title AS Movie, g.Name AS `Genre Match` FROM movies m INNER JOIN genres g ON m.MID=g.MID INNER JOIN favgenres f ON f.Name=g.Name INNER JOIN users u ON f.UID=u.UID WHERE u.UID=1"
    },
    {
        desc: "6. GET ALL INFORMATION OF A MOVIE",
        query: "SELECT m.Title, m.ReleaseDate AS 'Release Date', m.Plot, m.runtime, GROUP_CONCAT(g.Name) AS Genres FROM movies m INNER JOIN genres g ON m.MID=g.MID WHERE m.Title = 'The Avengers' GROUP BY m.MID"
    },
    {
        desc: "7. GET MOVIES RELEASED IN A PARTICULAR DATE RANGE",
        query: "SELECT m.Title, m.ReleaseDate AS 'Release Date' FROM movies m WHERE m.ReleaseDate BETWEEN '2017-01-01' AND '2018-01-01' ORDER BY m.ReleaseDate ASC"
    },
    {
        desc: "8. FIND ALL MOVIES A PERSON HAS STARRED IN",
        query: "SELECT m.Title AS Movie, c.CharacterName as 'Character Name' FROM movies m INNER JOIN cast c ON m.MID=c.MID INNER JOIN people p ON c.PID=p.PID WHERE p.PID=1"
    },
    {
        desc: "9. FIND ALL MOVIES A PERSON HAS WORKED IN AS CREW MEMBER",
        query: "SELECT m.Title AS Movie, c.Role FROM movies m INNER JOIN crew c ON m.MID=c.MID INNER JOIN people p ON c.PID=p.PID WHERE p.PID=1"
    },
    {
        desc: "10. ALL LIKED MOVIES OF A USER",
        query: "SELECT m.Title FROM movies m INNER JOIN liked l ON m.MID=l.MID INNER JOIN users u ON u.UID=l.UID WHERE u.UID=1"
    },
    {
        desc: "11. ALL WATCHED MOVIES OF A USER",
        query: "SELECT m.Title FROM movies m INNER JOIN watched w ON m.MID=w.MID INNER JOIN users u ON u.UID=w.UID WHERE u.UID=1"
    },
    {
        desc: "12. LIST ALL REVIEWS BY A USER",
        query: "SELECT m.Title AS Movie, r.Date, r.Stars AS Rating, r.Content AS Review FROM reviews r INNER JOIN movies m ON r.MID=m.MID WHERE r.UID=2 ORDER BY r.Date DESC"
    },
    {
        desc: "13. ALL CAST MEMBERS OF USER'S LIKED MOVIES",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS Actor, m.Title AS Movie, c.CharacterName AS 'Character Name' FROM people p INNER JOIN cast c ON p.PID=c.PID INNER JOIN liked l ON l.MID=c.MID INNER JOIN movies m ON c.MID=m.MID WHERE l.UID=2"
    },
    {
        desc: "14. LIST ALL MOVIES WITH A RATING GREATER THAN A PARTICULAR RATING",
        query: "SELECT DISTINCT m.Title, r.Stars FROM movies m INNER JOIN reviews r ON r.MID=m.MID WHERE r.Stars > 4"
    },
    {
        desc: "15. LIST ALL PHOTOS OF A PERSON",
        query: "SELECT p.FileName FROM photos p WHERE p.PID=1"
    },
    {
        desc: "16. LIST ALL FAVORITE GENRE",
        query: "SELECT f.Name AS Genres FROM favgenres f WHERE f.UID=1"
    },
    {
        desc: "17. LIST ALL GENRES OF A MOVIE",
        query: "SELECT g.Name AS Genres FROM genres g WHERE g.MID=1"
    },
    {
        desc: "18. LIST ALL POSTER OF A MOVIE",
        query: "SELECT p.FileName FROM posters p WHERE MID=1"
    },
    {
        desc: "19. LIST OF NUMBER OF MOVIES FOR EACH CERTIFICATE",
        query: "SELECT COUNT(MID) AS 'Number of Movies', Certificate  FROM movies  GROUP BY Certificate"
    },
    {
        desc: "20. WHICH TYPE OF CERTIFICATE OF MOVIES IS AVAILABLE IN MAJORITY",
        query: "SELECT COUNT(MID) AS 'Number of Movies', Certificate FROM movies GROUP BY Certificate HAVING COUNT(MID) > (SELECT (COUNT(MID)/2)-1 FROM movies)"
    },
    {
        desc: "21. AVERAGE RUNTIME OF MOVIES",
        query: "SELECT AVG(Runtime) AS 'Average Runtime of Movies' FROM MOVIES"
    },
    {
        desc: "22. SEARCH MOVIE BY SUBSTRING OF TITLE",
        query: "SELECT * FROM movies WHERE Title LIKE '%ave%'"
    },
    {
        desc: "23. LIST MOVIES OF PARTICULAR CERTIFICATES",
        query: "SELECT * FROM movies WHERE Certificate IN ('PG-13', 'PG')"
    },
    {
        desc: "24. LIST ALL NON-ADULT MOVIES",
        query: "SELECT * FROM movies WHERE Certificate NOT IN ('R')"
    },
    {
        desc: "25. LIST ALL GENRES THAT NO USER HAS LIKED A MOVIE OF",
        query: "SELECT Name AS Genre FROM genres WHERE Name NOT IN (     SELECT Name      FROM favgenres )"
    },
    {
        desc: "26. LIST OF ALL CAST AND CREW MEMBERS",
        query: "SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Person Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN cast c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers' UNION SELECT CONCAT(p.FirstName, ' ', p.LastName) AS `Crew Member Name` FROM createdby cb INNER JOIN movies m ON cb.MID=m.MID INNER JOIN crew c ON c.MID=cb.MID AND c.PID=cb.PID INNER JOIN people p ON cb.PID=p.PID WHERE m.title='The Avengers'"
    },
    {
        desc: "27. RUNTIME GREATER THAN A PARTICULAR VALUE",
        query: "SELECT Title FROM movies WHERE Runtime = ANY (     SELECT Runtime     FROM movies     WHERE Runtime>100 );"
    },
    {
        desc: "28. AVERAGE RATING OF A MOVIE",
        query: "SELECT AVG(Stars) AS Rating FROM reviews WHERE MID = 2"
    }
];

var procedures = [
    {
        desc: "1. GET ALL MOVIES WITH RUNTIME GREATER THAN THE GIVEN VALUE",
        query: "CALL `MovieFromRuntime`(30)"
    },
    {
        desc: "2. COUNT NUMBER OF MALE AND FEMALE FROM PEOPLE",
        query: "CALL `CountGender`();"
    },
    {
        desc: "3. INSERT INTO CAST TABLE, EXCEPTION IF DUPLICATE KEY",
        query: "CALL `InsertCast`(1, 1, 'name');"
    },
    {
        desc: "4. INSERT INTO REVIEWS WITH VALID RATING VALUE",
        query: "CALL `AddReview`(1, 2, '2018-03-12', 5, 'Review...');"
    }
];

var functions = [
    {
        desc: "1. CHECKS IF THE MOVIE IS AN ADULT MOVIE OR NOT",
        query: "SELECT `AdultMovieCheck`(12) AS `AdultMovieCheck`;"
    },
    {
        desc: "2. RATES THE MOVIE BASED ON THE STARS IT REVEIVED",
        query: "SELECT `AverageRating`(12) AS `AverageRating`;"
    }
];

var cursors = [
    {
        desc: "1. COUNT THE NUMBER OF MOVIES OF A PARTICULAR GENRE",
        query: " CALL `CountGenres`('Horror');"
    },
    {
        desc: "2. PREPARE MAILING LIST",
        query: "CALL MailingList();"
    }
]

var views = [
    {
        desc: "1. LIST ALL MOVIE DETAILS IN ONE TUPLE",
        query:"SELECT * FROM movie_details"
    },
    {
        desc: "2. LIST RATINGS OF MOVIES",
        query: "SELECT * FROM ratings"
    }
]

var tables = [
    {
        desc: "1. Users",
        query: "SELECT * FROM users"
    },
    {
        desc: "2. Movies",
        query: "SELECT * FROM movies"
    },
    {
        desc: "3. People",
        query: "SELECT * FROM people"
    },
    {
        desc: "4. Genres",
        query: "SELECT * FROM genres"
    },
    {
        desc: "5. Posters",
        query: "SELECT * FROM posters"
    },
    {
        desc: "6. Photos",
        query: "SELECT * FROM photos"
    },
    {
        desc: "7. FavGenres",
        query: "SELECT * FROM favgenres"
    },
    {
        desc: "8. Watched",
        query: "SELECT * FROM watched"
    },
    {
        desc: "9. Liked",
        query: "SELECT * FROM liked"
    },
    {
        desc: "10. CreatedBy",
        query: "SELECT * FROM createdby"
    },
    {
        desc: "11. Reviews",
        query: "SELECT * FROM reviews"
    },
    {
        desc: "12. Cast",
        query: "SELECT * FROM cast"
    },
    {
        desc: "13. Crew",
        query: "SELECT * FROM crew"
    }
]