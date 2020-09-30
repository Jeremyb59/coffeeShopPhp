DROP DATABASE IF EXISTS coffeeshopDB;
CREATE DATABASE coffeeshopDB;
USE coffeeshopDB;


CREATE TABLE CUSTOMER
(
    `customerID` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `email` CHAR(255) NOT NULL,
    `password` VARCHAR(20) NOT NULL,
    `fname` VARCHAR(255) NOT NULL,
    `lname` VARCHAR (255) NOT NULL,
    `phoneNr` CHAR(11) NOT NULL
);

CREATE TABLE PRODUCT
(
    `productID` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `description` VARCHAR (255) NOT NULL,
    `price` INT(4) NOT NULL,
    `stock` INT NOT NULL,
    `origin` VARCHAR (255) NOT NULL,
    `type` VARCHAR (255) NOT NULL,
    `isSpecial` BOOLEAN NULL
);

CREATE TABLE POSTALCODE 
(
    `postalCode` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `city` VARCHAR(255) NOT NULL
);

CREATE TABLE ADRESS 
(
    `adressID` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FOREIGN KEY (code) REFERENCES POSTALCODE(postalCode)
);

CREATE TABLE ORDER
(
    `orderID` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FOREIGN KEY (customerID) REFERENCES CUSTOMER(customerID),
    FOREIGN KEY (adressID) REFERENCES ADRESS(adressID),
    `date` DATETIME NOT NULL,
    `amount` VARCHAR (4) NOT NULL
);

CREATE TABLE ORDERHASPRODUCT
(
    `id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FOREIGN KEY (price) REFERENCES PRODUCT(price),
    FOREIGN KEY (amount) REFERENCES ORDER(amount),
    FOREIGN KEY (orderID) REFERENCES ORDER(orderID),
    FOREIGN KEY (productID) REFERENCES PRODUCT(productID)
);

CREATE TABLE CATEGORY
(
    `categoryID` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    `name` VARCHAR(50) NOT NULL,
    `description` TEXT
);

CREATE TABLE PRODUCTHASCATEGORY
(
    `id` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FOREIGN KEY (productID) REFERENCES PRODUCT(productID),
    FOREIGN KEY (categoryID) REFERENCES CATEGORY(categoryID)
);

CREATE TABLE ActorAppearsIn
(
     `recID` INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
     `actorID` INT NULL,
     `movieID` INT NULL,
      FOREIGN KEY (actorID) REFERENCES Actor(actorID),
      FOREIGN KEY (movieID) REFERENCES Movie (movieID)
);

