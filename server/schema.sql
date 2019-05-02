CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id int AUTO_INCREMENT PRIMARY KEY,
  username TEXT,
  comments TEXT,
  rooms TEXT,
  tstamp TIMESTAMP,
  FOREIGN KEY(rooms) REFERENCES rooms(id),
  FOREIGN KEY(username) REFERENCES usernames(id)

);

/* Create other tables and define schemas for them here! */

CREATE TABLE rooms (
  id int AUTO_INCREMENT PRIMARY KEY,
  name TEXT
);

CREATE TABLE usernames (
  id int AUTO_INCREMENT PRIMARY KEY,
  name TEXT
);


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

