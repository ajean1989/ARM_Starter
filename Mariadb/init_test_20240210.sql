USE ARMarket_test;

CREATE TABLE place(
   id_place INT,
   name VARCHAR(50),
   adresse VARCHAR(128),
   postcode VARCHAR(50),
   city VARCHAR(64),
   PRIMARY KEY(id_place)
);

CREATE TABLE item(
   id_code INT,
   brand INT,
   name VARCHAR(128),
   ingredient TEXT,
   allergen TEXT,
   nutriment TEXT,
   nutriscore INT,
   ecoscore INT,
   packaging VARCHAR(64),
   image VARCHAR(256),
   url_openfoodfact VARCHAR(512),
   PRIMARY KEY(id_code)
);

CREATE TABLE _user(
   id_user INT,
   username VARCHAR(50),
   last_name VARCHAR(50),
   first_name VARCHAR(50),
   age INT,
   gender INT,
   PRIMARY KEY(id_user)
);

CREATE TABLE scan(
   id_place INT,
   id_code INT,
   id_user INT,
   _date DATE,
   _year INT,
   _day INT,
   _hour INT,
   _minute INT,
   _month INT,
   PRIMARY KEY(id_place, id_code, id_user),
   FOREIGN KEY(id_place) REFERENCES place(id_place),
   FOREIGN KEY(id_code) REFERENCES item(id_code),
   FOREIGN KEY(id_user) REFERENCES _user(id_user)
);
