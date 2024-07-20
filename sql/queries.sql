USE airbnb_db;

-- Display last and first name, balance, email of the 5 account with highest balance:
SELECT last_name AS 'Last name', first_name AS 'First name', ROUND(balance, 2) AS 'Balance in €', email
FROM account
ORDER BY balance DESC
LIMIT 5;

-- Display account id, email of the accounts that are also host:
SELECT id, email
FROM account
WHERE hosting_start_date IS NOT NULL;


-- Display account id, email of the accounts that are only guest:
SELECT id, email
FROM account
WHERE hosting_start_date IS NULL;


-- Display name, price and cleaning fee for the 5 properties with HIGHEST price:
SELECT property_name AS 'Name', current_nightly_price AS 'Price', current_cleaning_fee AS 'Cleaning fee'
FROM property
ORDER BY current_nightly_price DESC
LIMIT 5;

-- Display name, price and cleaning fee for the 5 properties with LOWEST price:
SELECT property_name AS 'Name', current_nightly_price AS 'Price', current_cleaning_fee AS 'Cleaning fee'
FROM property
ORDER BY current_nightly_price ASC
LIMIT 5;

-- Display property id, name and owner's email of every property:
SELECT property.id, property_name AS 'Property name', email AS 'Host email'
FROM property
INNER JOIN account
	ON account.id = property.account_id;

-- Display payment id, amount and date of 5 largest payment amounts:
SELECT id, amount, transaction_date
FROM payment
ORDER BY amount DESC
LIMIT 5;

-- Display amount, payment method of all the payments above 1000€:
SELECT amount, payment_method_name 
FROM payment
INNER JOIN payment_method
	ON payment_method.id = payment.payment_method_id
WHERE amount > 0
ORDER BY amount DESC;

-- Display amount, account id, last name of every withdraw:
SELECT amount, account.id AS 'Account id', last_name AS 'Last name'
FROM account
INNER JOIN payment
	ON account.id = payment.account_id
WHERE amount < 0;

CREATE TABLE employee													-- Defines the data schema for the table account.
(
	id INT AUTO_INCREMENT,												-- Defines the attibute "id" with type INT and let the DMBS manage/increment its value.
    first_name VARCHAR(500) NOT NULL,									-- Defines the attribute "first_name" with type varchar, maximum length 500 character and do not allow for null value.
    last_name VARCHAR(500) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(512) NOT NULL,
    is_suspended BOOLEAN NOT NULL DEFAULT false,
    CONSTRAINT pk__account PRIMARY KEY (id)								-- Names the constraint as "prim_key" and make the attribute "id" the primary key.    
);

INSERT INTO employee (first_name, last_name, email, password) VALUES
	('Sandy', 'Onori', 'sandy.onori@iu-study.org', '502562c25a17f9c558a374e86cd7fd5279e9253e4850e439ae3a43253dfd167e'),
    ('Christian', 'Remfert', 'christian.remfert@iu.org', 'f3496c445981d6b9d9688fa9e0726cfc3b9ef21c1da6f3f811ee1fa54131e1f2');
    
SELECT * FROM employee;

