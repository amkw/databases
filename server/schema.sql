CREATE DATABASE chat;

USE chat;

CREATE TABLE messages (
  /* Describe your table here.*/
  id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  userid int NOT NULL,
  text VARCHAR(200) NOT NULL,
  roomname VARCHAR(20) NOT NULL
  -- tstamp TIMESTAMP
  -- FOREIGN KEY(rooms) REFERENCES rooms(id),
  -- FOREIGN KEY(username) REFERENCES usernames(id)
);

/* Create other tables and define schemas for them here! */

CREATE TABLE users (
  id int NOT NULL AUTO_INCREMENT,
  username VARCHAR(40) NOT NULL,
  PRIMARY KEY (ID)
);

-- CREATE TABLE rooms (
--   id int AUTO_INCREMENT PRIMARY KEY,
--   nameroom VARCHAR(20)
-- );


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

