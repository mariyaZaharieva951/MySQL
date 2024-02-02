

CREATE TABLE clients (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_name VARCHAR(100)
);

CREATE TABLE projects (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    client_id INT NOT NULL,
    project_lead_id INT NOT NULL,
    
    FOREIGN KEY (client_id)
    REFERENCES clients(id),
     FOREIGN KEY (project_lead_id)
    REFERENCES project_lead(id)
);

CREATE TABLE employees (
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    project_id INT NOT NULL,
    
    FOREIGN KEY (project_id)
    REFERENCES projects(id)
);


