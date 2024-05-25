USE book_shop;

CREATE TABLE companies (
    name VARCHAR(255) NOT NULL,
    address VARCHAR(255) NOT NULL,
    CONSTRAINT name_address UNIQUE (name, address)
);

ALTER TABLE
    companies
ADD
    phone VARCHAR(15);

ALTER TABLE
    companies
ADD
    employee_count INT NOT NULL DEFAULT 1
ALTER TABLE
    companies DROP phone;

RENAME TABLE companies TO suppliers;

ALTER TABLE
    suppliers RENAME TO companies;

ALTER TABLE
    companies RENAME COLUMN employee_count TO employee_amount;

ALTER TABLE
    companies
ADD COLUMN
    biz_name VARCHAR(255);

ALTER TABLE
    companies
MODIFY
    biz_name VARCHAR(100) DEFAULT 'unknown';

ALTER TABlE
    houses
ADD CONSTRAINT positive_purchase_price CHECK(purchase_price >= 0);

ALTER TABLE
    houses
DROP CONSTRAINT positive_purchase_price;