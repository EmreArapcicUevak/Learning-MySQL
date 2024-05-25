USE book_shop;

CREATE TABLE contacts(
    name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE
);

INSERT INTO contacts(name, phone) VALUES('billybob', '8781213455');
INSERT INTO contacts(name, phone) VALUES('Timmy tim tim', '8781213455');

CREATE TABLE partiers (
    name VARCHAR(50) NOT NULL,
    age INT CHECK(age > 18)
);

INSERT INTO partiers(name, age) VALUES('Blue', 50);
INSERT INTO partiers(name, age) VALUES('Colt', 5);

CREATE TABLE palindromes (
    word VARCHAR(100) NOT NULL
    CONSTRAINT is_palindrome CHECK(REVERSE(word) = word)
);

INSERT INTO palindromes(word) VALUES('racecar');
INSERT INTO palindromes(word) VALUES('mom');
INSERT INTO palindromes(word) VALUES('mommy');

CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name , address)
);

INSERT INTO companies(name, address) VALUES('blackbird auto', '123 spruce');
INSERT INTO companies(name, address) VALUES('luigis pies', '123 spruce');
INSERT INTO companies(name, address) VALUES('luigis pies', '123 spruce');

CREATE TABLE houses(
    purchase_price INT NOT NULL,
    sale_price INT NOT NULL,
    CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

INSERT INTO houses(purchase_price, sale_price) VALUES(100,200);
INSERT INTO houses(purchase_price, sale_price) VALUES(300,250);