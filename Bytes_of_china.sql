/*
Task Group 1: Create Tables and Primary Keys
*/

/*
   Create a restaurant table and an address table with columns
   Assign a primary key to a column for each of the tables, restaurant and address. 
*/

CREATE TABLE restaurant (

	id integer PRIMARY KEY,
	name varchar(20),
	description varchar(100),
	rating decimal,
	telephone char(10),
	hours varchar(100)
	
);

CREATE TABLE address (
	
	id integer PRIMARY KEY,
	street_number varchar(10),
	street_name varchar(20),
	city varchar(20),
	state varchar(15),
	google_map_link varchar(50),
	restaurant_id integer REFERENCES restaurant(id)

);

/*
  create a category table
  Add a primary key to the correct column
*/

CREATE TABLE category (
	
	id char(2) PRIMARY KEY,
	name varchar(20),
	description varchar(200) NULL,
	restaurant_with_category_available integer REFERENCES restaurant(id)

);
	
/*
  create a dish table
  Add a primary key for the dish table
*/	
	
CREATE TABLE dish (
	
	id integer PRIMARY KEY,
	name varchar(50),
	description varchar(200) NULL,
	hot_and_spicy boolean,
	dish_category char(2) REFERENCES category(id)

);

/*
  create a review table with columns that make sense. 
  Add a primary key to the correct column
*/	
CREATE TABLE review (
	
	id integer PRIMARY KEY,
	rating decimal,
	description varchar(200) NULL,
	date date,
	reviewed_restaurant integer REFERENCES restaurant(id)

);

/*
Key Validation


SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'restaurant';
  
SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'address'
  
SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'category'  

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'dish'
  
SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'review' 
  
*/  

INSERT INTO restaurant VALUES (
  1,
  'Bytes of China',
  'Delectable Chinese Cuisine',
  3.9,
  '6175551212',
  'Mon - Fri 9:00 am to 9:00 pm, Weekends 10:00 am to 11:00 pm'
);

INSERT INTO address VALUES (
  1,
  '2020',
  'Busy Street',
  'Chinatown',
  'MA',
  'http://bit.ly/BytesOfChina',
  1
);

INSERT INTO review VALUES (
  1,
  5.0,
  'Would love to host another birthday party at Bytes of China!',
  '2020-05-22',
  1
);
  
INSERT INTO review VALUES (
  2,
  4.5,
  'Other than a small mix-up, I would give it a 5.0!',
  '2020-04-01',
  1
);

INSERT INTO review VALUES (
  3,
  3.9,
  'A reasonable place to eat for lunch, if you are in a rush!',
  '2020-03-15',
  1
);

INSERT INTO category VALUES (
  'C',
  'Chicken',
  null,
	1
);

INSERT INTO category VALUES (
  'R',
  'Chow Fan',
  null,
	1
);

INSERT INTO category VALUES (
  'D',
  'Drinks',
  null,
	1
);

INSERT INTO category VALUES (
  'N',
  'Noodles',
  null,
  1
);

INSERT INTO dish VALUES (
  1,
  'Chicken with Broccoli',
  'Diced chicken stir-fried with succulent broccoli florets',
  false,
  'C'
);

INSERT INTO dish VALUES (
  2,
  'Sweet and Sour Chicken',
  'Marinated chicken with tangy sweet and sour sauce together with pineapples and green peppers',
  false,
  'C'
);

INSERT INTO dish VALUES (
  3,
  'Chicken Wings',
  'Finger-licking mouth-watering entree to spice up any lunch or dinner',
  true,
  'C'
);

INSERT INTO dish VALUES (
  4,
  'Chow Fan with Garlic Sauce',
  'Sliced beef steak marinated in garlic sauce for that tangy flavor',
  true,
  'R'
);

INSERT INTO dish VALUES (
  5,
  'Fresh Mushroom Noodles with Snow Peapods and Baby Corns',
  'Colorful entree perfect for vegetarians and mushroom lovers',
  false,
  'N'
);

INSERT INTO dish VALUES (
  6,
  'Coca Cola',
  'Soda',
  false,
  'D'
);




