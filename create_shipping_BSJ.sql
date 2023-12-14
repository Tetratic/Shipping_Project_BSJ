DROP DATABASE IF EXISTS shipping;

CREATE DATABASE shipping;

USE shipping;

CREATE TABLE ships
(shipName CHAR(20) PRIMARY KEY NOT NULL,
displacement DECIMAL(10,2) NOT NULL,
captainFName CHAR(20) NOT NULL,
captainLName CHAR(20) NOT NULL,
crewCount DECIMAL(4) NOT NULL,
portName CHAR(20) NOT NULL,
yearBuilt DECIMAL(4) NOT NULL );

CREATE TABLE ports
(portName CHAR(20) NOT NULL,
city CHAR(20) NOT NULL,
country CHAR(20) NOT NULL);

CREATE TABLE containers 
(containerID CHAR(4) PRIMARY KEY NOT NULL,
dimHeight DECIMAL(6) NOT NULL,
dimWidth DECIMAL(6) NOT NULL,
dimLength DECIMAL(6) NOT NULL,
weight DECIMAL(6) NOT NULL,
shipName CHAR(20),
FOREIGN KEY(shipName) REFERENCES ships(shipName) );