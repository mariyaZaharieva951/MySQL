CREATE TABLE directors(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
director_name VARCHAR(30) NOT NULL,
notes TEXT
);

CREATE TABLE genres(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(30) NOT NULL,
notes TEXT
);

CREATE TABLE categories(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(30) NOT NULL,
notes TEXT
);

CREATE TABLE movies(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(45) NOT NULL,
director_id INT NOT NULL,
copyright_year YEAR,
length INT,
genre_id INT NOT NULL,
category_id INT NOT NULL,
rating INT,
notes TEXT,
FOREIGN KEY (director_id) REFERENCES directors(id),
FOREIGN KEY (genre_id) REFERENCES genres(id),
FOREIGN KEY (category_id) REFERENCES categories(id)
);

INSERT INTO directors(director_name,notes)
VALUES('Kevin',NULL),
('Ben',NULL),
('Bob',NULL),
('Peter',NULL),
('Jhon',NULL);

INSERT INTO genres(genre_name,notes)
VALUES('romance',NULL),
('action',NULL),
('drama',NULL),
('comedy',NULL),
('horror',NULL);

INSERT INTO categories(category_name,notes)
VALUES('crime',NULL),
('documentation',NULL),
('animation',NULL),
('adventure',NULL),
('mystery',NULL);

INSERT INTO movies(title,director_id,copyright_year,length,genre_id,category_id,rating,notes)
VALUES('Friends',1,1999,45,4,4,9,NULL),
('Leon',2,2002,151,2,1,8,NULL),
('Fast and furios',3,2015,132,2,4,8,NULL),
('Inception',4,2009,142,2,1,7,NULL),
('Lorem',5,2022,120,1,5,7,NULL);





