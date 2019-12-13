DROP TABLE IF EXISTS menu;
CREATE TABLE menu (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	plik CHAR(20) NOT NULL,
	tytul VARCHAR(30) NOT NULL,
	pozycja INTEGER DEFAULT 0
);

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	login CHAR(20) NOT NULL,
	haslo CHAR(40),
	email VARCHAR(50),
	data DATE
);

INSERT INTO menu VALUES(NULL, 'witam', 'Witamy', 1);
INSERT INTO menu VALUES(NULL, 'wiadomości', 'Wiadomości', 2);
INSERT INTO menu VALUES(NULL, 'userform', 'Zarejestruj się', 3);
INSERT INTO menu VALUES(NULL, 'userlogin', 'Zalogen się', 3);


CREATE TABLE posty (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	tresc VARCHAR NOT NULL,
	user INTEGER NOT NULL,
	data DATE DEAFULT CURRENT_TIMESTAMP,
	FOREIGN KEY (user) REFERENCES users(id)
);



-- INSERT INTO menu(tytul, plik, id) VALUES('Klasa', 'klasa', NULL);
-- sqlite3 baza.db < baza.sql
