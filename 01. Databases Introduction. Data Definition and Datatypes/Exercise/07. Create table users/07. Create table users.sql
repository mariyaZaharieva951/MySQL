CREATE TABLE users (
`id` BIGINT UNSIGNED UNIQUE AUTO_INCREMENT PRIMARY KEY,
`username`VARCHAR(30) UNIQUE NOT NULL,
`password`VARCHAR(26) NOT NULL,
`profile_pictures` LONGBLOB,
`last_login_time`TIMESTAMP,
`is_deleted` BOOLEAN DEFAULT false
);

INSERT INTO users
VALUES("1","mariya","123","mariya",NOW(),false),
("2","deyan","123","deyan",NOW(),false),
("3","alex","123","alex",NOW(),true),
("4","nikol","123","nikol",NOW(),true),
("5","arch","123","archi",NOW(),false);
