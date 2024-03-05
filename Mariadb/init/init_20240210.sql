USE ARMarket;

CREATE TABLE place(
   id_place INT NOT NULL AUTO_INCREMENT,
   name VARCHAR(64),
   adresse VARCHAR(256),
   postcode INT,
   city VARCHAR(64),
   PRIMARY KEY(id_place)
);

CREATE TABLE item(
   id_code VARCHAR(256),
   brand VARCHAR(256),
   name VARCHAR(256),
   ingredient TEXT,
   allergen TEXT,
   nutriment TEXT,
   nutriscore VARCHAR(32),
   ecoscore VARCHAR(32),
   packaging TEXT,
   image VARCHAR(256),
   url_openfoodfact VARCHAR(512),
   PRIMARY KEY(id_code)
);

CREATE TABLE user(
   id_user INT NOT NULL AUTO_INCREMENT,
   username VARCHAR(64),
   last_name VARCHAR(64),
   first_name VARCHAR(64),
   age INT,
   gender INT,
   PRIMARY KEY(id_user)
);

CREATE TABLE scan(
   id_place INT NOT NULL AUTO_INCREMENT,
   id_code VARCHAR(256),
   id_user INT,
   date DATE,
   year INT,
   day INT,
   hour INT,
   minute INT,
   month INT,
   PRIMARY KEY(id_place, id_code, id_user),
   FOREIGN KEY(id_place) REFERENCES place(id_place),
   FOREIGN KEY(id_code) REFERENCES item(id_code),
   FOREIGN KEY(id_user) REFERENCES user(id_user)
);