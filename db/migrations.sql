CREATE DATABASE lookbook;

\c lookbook

CREATE TABLE palettes(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50));


CREATE TABLE users(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(50), 
	username VARCHAR (50) UNIQUE NOT NULL, 
	password_digest VARCHAR(255) NOT NULL, 
	email VARCHAR(355),
	palette_id INT REFERENCES palettes(id));


CREATE TABLE colors(
	id SERIAL PRIMARY KEY, 
	color_name VARCHAR(255),
	palette_id INT REFERENCES palettes(id));



CREATE TABLE looks(
	id SERIAL PRIMARY KEY, 
	link VARCHAR(355),
	image VARCHAR(355), 
	color_id INT REFERENCES colors(id));


CREATE TABLE tags(
	id SERIAL PRIMARY KEY,
	name VARCHAR(75),
	look_id INT REFERENCES looks(id));