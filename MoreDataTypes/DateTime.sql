USE book_shop;

CREATE TABLE people(
    name VARCHAR(100) NOT NULL DEFAULT 'John Doe',
    birthDate DATE NOT NULL,
    birthTime TIME NOT NULL,
    birthDateTime DATETIME
);

INSERT INTO
    people(name, birthDate, birthTime, birthDateTime)
VALUES
    (
        'Elton',
        '2000-12-25',
        '11:00:00',
        '2000-12-25 11:00:00'
    ),
    (
        'Lulu',
        '1985-04-11',
        '9:45:10',
        '1985-04-11 9:45:10'
    ),
    (
        'Juan',
        '2020-08-15',
        '23:59:00',
        '2020-08-15 23:59:00'
    );

SELECT
    *
FROM
    people;

INSERT INTO
    people(name, birthDate, birthTime, birthDateTime)
VALUES
    (
        'Hazel',
        CURDATE(),
        CURTIME(),
        NOW()
    );

SELECT
    *
FROM
    people;

SELECT
    name,
    DAY(birthDate),
    DAYOFWEEK(birthDate),
    DAYOFYEAR(birthDate),
    MONTH(birthDate),
    YEAR(birthDate),
    birthDate
FROM
    people
ORDER BY
    YEAR(birthDate) DESC;

SELECT
    birthDate,
    MONTHNAME(birthDate)
FROM
    people;

SELECT
    birthDateTime,
    MONTHNAME(birthDateTime),
    DATE(birthDateTime),
    TIME(birthDateTime)
FROM
    people;

SELECT
    birthDateTime,
    DATE_FORMAT(birthDateTime, "%a %D of %b seconds:%s %r")
FROM
    people;

SELECT
    birthDate,
    DATEDIFF(CURDATE(), birthDate)
FROM
    people;

SELECT
    DATE_ADD(CURDATE(), INTERVAL 1 YEAR);

SELECT
    DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

SELECT
    birthDate,
    DATE_ADD(birthDate, INTERVAL 18 YEAR)
FROM
    PEOPLE;

-- Same functions with TIME, we have TIMEDIFF, TIME_ADD, TIME_SUB
SELECT
    TIMEDIFF(CURTIME(), '8:00:00');

SELECT
    name,
    DATEDIFF(birthDate + INTERVAL 21 YEAR, CURTIME())
FROM
    people;


CREATE TABLE captions(
    text VARCHAR(150),
    created_at TIMESTAMP DEFAULT NOW() ON UPDATE NOW()
);

INSERT INTO captions(text) VALUES ('Just me and the girls chillin');
INSERT INTO captions(text) VALUES ('Beautiful Sunset');

SELECT * FROM captions;


DROP TABLE captions;
DROP TABLE people;