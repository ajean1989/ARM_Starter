USE ARM_USER;

CREATE TABLE role(
   id_role INT,
   name VARCHAR(32) NOT NULL,
   PRIMARY KEY(id_role)
);

CREATE TABLE dataset(
   id_dataset INT,
   name VARCHAR(32) NOT NULL,
   PRIMARY KEY(id_dataset)
);

CREATE TABLE user(
   id_user INT,
   email VARCHAR(64) NOT NULL,
   last_name VARCHAR(32) NOT NULL,
   first_name VARCHAR(32) NOT NULL,
   password VARCHAR(1024),
   id_role INT NOT NULL,
   PRIMARY KEY(id_user),
   UNIQUE(id_role),
   FOREIGN KEY(id_role) REFERENCES role(id_role)
);

CREATE TABLE role_dataset(
   id_role INT,
   id_dataset INT,
   PRIMARY KEY(id_role, id_dataset),
   FOREIGN KEY(id_role) REFERENCES role(id_role),
   FOREIGN KEY(id_dataset) REFERENCES dataset(id_dataset)
);


INSERT INTO role VALUES (0, 'admin');
INSERT INTO role VALUES (1, 'datascientist');
INSERT INTO role VALUES (2, 'user');

INSERT INTO dataset VALUES (0, 'article');
INSERT INTO dataset VALUES (1, 'objet');

INSERT INTO user VALUES (0, 'ad@min.fr', 'min', 'ad', 'pass', 0);
INSERT INTO user VALUES (1, 'u@ser.fr', 'ser', 'u', 'pass', 2);

INSERT INTO role_dataset VALUES (0, 0);
INSERT INTO role_dataset VALUES (0, 1);
INSERT INTO role_dataset VALUES (1, 0);
INSERT INTO role_dataset VALUES (1, 1);

