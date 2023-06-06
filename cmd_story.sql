\q
\h create table
CREATE TABLE aircrafts (
\d
CREATE TABLE aircrafts (aircraft_code char(3) NOT NULL, model text NOT NULL, range integer NOT NULL, CHECK (range > 0), PRIMARY KEY (aircraft_code));
\d
\q
\q
SELECT * FROM aircrafts;
\d
\q
\d
SELECT * FROM aircrafts;
DROP TABLE aircrafts;
\d
CREATE TABLE aircrafts (aircraft_code char(3) NOT NULL, model text NOT NULL,range integer NOT NULL, CHECK (range > 0), PRIMARY KEY (aircrfat_code));
CREATE TABLE aircrafts (aircraft_code char(3) NOT NULL, model text NOT NULL,range integer NOT NULL, CHECK (range > 0), PRIMARY KEY (aircraft_code));
INSERT INTO aircrafts;
INSERT INTO aircrafts
(aircraft_code, model, range)
VALUES
('SU9', 'Sukhoi SuperJet-100', 3000);
SELECT * FROM aircrafts ;
INSERT INTO aircrafts 
( aircraft_code, model, range )
VALUES 
[200~( '773', 'Boeing 777-300', 11100 ),~
( '773', 'Boeing 777-300', 11100 ),
( '763', 'Boeing 767-300', 7900 ),
( '733', 'Boeing 737-300', 4200 ),
( '320', 'Airbus A320-200', 5700 ),
( '321', 'Airbus A321-200', 5600 ),
( '319', 'Airbus A319-100', 6700 ),
( 'CN1', 'Cessna 208 Caravan', 1200 ),
( 'CR2', 'Bombardier CRJ-200', 2700 );
SELECT * FROM aircrafts ;
INSERT INTO aircrafts 
( aircraft_code, model, range )
VALUES 
( '773', 'Boeing 777-300', 11100 ),
( '773', 'Boeing 777-300', 11100 ),
( '763', 'Boeing 767-300', 7900 ),
( '733', 'Boeing 737-300', 4200 ),
( '320', 'Airbus A320-200', 5700 ),
( '321', 'Airbus A321-200', 5600 ),
( '319', 'Airbus A319-100', 6700 ),
( 'CN1', 'Cessna 208 Caravan', 1200 ),
( 'CR2', 'Bombardier CRJ-200', 2700 );
INSERT INTO aircrafts 
( aircraft_code, model, range )
VALUES 
( '773', 'Boeing 777-300', 11100 ),
( '763', 'Boeing 767-300', 7900 ),
( '733', 'Boeing 737-300', 4200 ),
( '320', 'Airbus A320-200', 5700 ),
( '321', 'Airbus A321-200', 5600 ),
( '319', 'Airbus A319-100', 6700 ),
( 'CN1', 'Cessna 208 Caravan', 1200 ),
( 'CR2', 'Bombardier CRJ-200', 2700 );
SELECT * FROM aircrafts ;
SELECT model, aircraft_code, range FROM aircrafts ORDER BY model;
SELECT model, aircraft_code, range FROM aircrafts WHERE range >= 4000 AND range <= 6000;
UPDATE aircrafts SET range = 3500 WHERE aircraft_code = 'SU9';
SELECT * FROM aircrafts WHERE aicrcaft_code = 'SU9';
SELECT * FROM aircrafts WHERE aircraft_code = 'SU9';
DELETE FROM aircrafts WHERE aircraft_code = 'CN1';
DELETE FROM aircrafts WHERE
range > 10000 OR range < 3000;
SELECT * FROM aircrafts ;
DELETE FROM aircrafts;
SELECT * FROM aircrafts ;
\s command_hitiry_606.sql
