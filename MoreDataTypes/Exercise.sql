USE book_shop;

-- What is a good use care for char
/*
    Char is more space efficient and we can use it when we know exactly how much characters we need
*/

/*
    CREATE TABLE inventory (
    item_name VARCHAR(N),
    price DECIMAL(9,2),
    quantity INT
);

*/

-- What is the difference between datetime and timestamp

/*
    DateTime is bigger hence takes up more space then time stamps
    TimeSTamp is smaller and provides a much smaller range of dates compared to datetime.
*/

-- Print out the current time
SELECT CURTIME();

-- Print out the current date without the time
SELECT CURDATE();

-- Print out the current day of the week as a number
SELECT DAYOFWEEK(CURDATE());

-- Print out the current day of the week as a name
SELECT DAYNAME(CURDATE());

-- Print out the current day and time using this format mm/dd/yyyy
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');

-- Print out the current day and time using this format 'January 2nd at 3:15 | April 1st at 10:18
SELECT DATE_FORMAT(NOW(), '%M %D at %k:%i');

-- Create a tweets table that stores
/*
        Tweet contents [MAX 180]
        A Username [MAX ??]
        Time it was created [automatically fill]
*/

CREATE TABLE tweets(
    content VARCHAR(180) NOT NULL,
    username VARCHAR(180) NOT NULL,
    createdTime TIMESTAMP NOT NULL DEFAULT NOW() ON UPDATE NOW()
)