CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id int AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(20),
  comments TEXT,
  rooms VARCHAR(20),
  tstamp TIMESTAMP,
  FOREIGN KEY(rooms) REFERENCES rooms(id),
  FOREIGN KEY(username) REFERENCES usernames(id)

);

/* Create other tables and define schemas for them here! */

CREATE TABLE rooms (
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20)
);

CREATE TABLE usernames (
  id int AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20)
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

