CREATE TABLE `people` (
	`id` BIGINT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(200) NOT NULL,
    `picture` MEDIUMTEXT DEFAULT NULL,
    `height` DECIMAL(5,2) DEFAULT NULL,
    `weight` DECIMAL(5,2) DEFAULT NULL,
    `gender` ENUM('m', 'f') NOT NULL,
    `birthdate` DATE NOT NULL,
    `biography` TEXT CHARACTER SET utf8mb4
		
);

INSERT INTO people 
VALUES ("1","Kevin","Kevin","30","40","m","1985-03-17","lorem ipsum"),
("2","Jhon","Jhon","30","40","m","1985-01-03","lorem ipsum"),
("3","Ben","Ben","30","40","m","1985-02-15","lorem ipsum"),
("4","Lily","Lily","30","40","f","1985-08-23","lorem ipsum"),
("5","Beni","Beni","30","40","f","1985-07-08","lorem ipsum");

SELECT * FROM people;
