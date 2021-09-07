CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';


CREATE TABLE contractor(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    name varchar(255) NOT NULL comment 'contractor name'
) default charset utf8;
CREATE TABLE job(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    name varchar(255) NOT NULL comment 'job name'
) default charset utf8;
CREATE TABLE company(  
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    name varchar(255) NOT NULL comment 'company name'
) default charset utf8;

CREATE TABLE contracts(
    id int NOT NULL primary key AUTO_INCREMENT comment 'primary key',
    jobId int NOT NULL comment 'references job table',
    contractorId int NOT NULL comment 'references contractor table',
    FOREIGN KEY (jobId) REFERENCES job(id) ON DELETE CASCADE,
    FOREIGN KEY (contractorId) REFERENCES contractor(id)
);