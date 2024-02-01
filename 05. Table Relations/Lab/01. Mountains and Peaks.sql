CREATE TABLE mountains (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE peaks (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    mountain_id INT NOT NULL,
    
    FOREIGN KEY (mountain_id)
    REFERENCES mountains(id)
);


