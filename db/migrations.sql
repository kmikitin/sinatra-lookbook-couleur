CREATE DATABASE lookbook;

\c lookbook

CREATE TABLE users(
	id SERIAL PRIMARY KEY, 
	name VARCHAR(50), 
	username VARCHAR (50) UNIQUE NOT NULL, 
	password VARCHAR(255) NOT NULL, 
	email VARCHAR(355));


CREATE TABLE palettes(
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	user_id INT REFERENCES users(id));



CREATE TABLE colors(
	id SERIAL PRIMARY KEY, 
	color_name VARCHAR(255),
	palette_id INT REFERENCES users(id),
	look_id INT REFERENCES looks(id));



CREATE TABLE looks(
	id SERIAL PRIMARY KEY, 
	link VARCHAR(355),
	image VARCHAR(355), 
	tag_id INT REFERENCES tags(id));


CREATE TABLE tags(
	id SERIAL PRIMARY KEY,
	name VARCHAR(75),
	look_id INT REFERENCES looks(id));