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

Код написанный 6.06

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
SELECT * FROM aircrafts;
\s sqlcommand
//ниже код который был введен в командной строке но не был сохранён в файл
CREATE TABLE seats
(aircraft_code char(3) NOT NULL, seat_no varchar(4) NOT NULL, fare_conditions varchar(10) NOT NULL,
CHECK
(fare_conditions IN ( 'Economy', 'Comfort', 'Business' )
),
PRIMARY KEY (aircraft_code, seat_no ),
FOREIGN KEY ( aircraft_code )
REFERENCES aircrafts (aircraft_code )
ON DELETE CASCADE);
\d seats

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

INSERT INTO seats VALUES 
( 'SU9', '1A', 'Business' ),
( 'SU9', '1B', 'Business' ),
( 'SU9', '10A', 'Economy' ),
( 'SU9', '10B', 'Economy' ),
( 'SU9', '10F', 'Economy' ),
( 'SU9', '20F', 'Economy' );

INSERT INTO seats VALUES 
( '773', '1A', 'Business' ),
( '773', '1B', 'Business' ),
( '773', '10A', 'Economy' ),
( '773', '10B', 'Economy' ),
( '773', '10F', 'Economy' ),
( '773', '20F', 'Economy' );

INSERT INTO seats VALUES 
( '763', '1A', 'Business' ),
( '763', '1B', 'Business' ),
( '763', '10A', 'Economy' ),
( '763', '10B', 'Economy' ),
( '763', '10F', 'Economy' ),
( '763', '20F', 'Economy' );

INSERT INTO seats VALUES 
( '733', '1A', 'Business' ),
( '733', '1B', 'Business' ),
( '733', '10A', 'Economy' ),
( '733', '10B', 'Economy' ),
( '733', '10F', 'Economy' ),
( '733', '20F', 'Economy' );

INSERT INTO seats VALUES 
( '320', '1A', 'Business' ),
( '320', '1B', 'Business' ),
( '320', '10A', 'Economy' ),
( '320', '10B', 'Economy' ),
( '320', '10F', 'Economy' ),
( '320', '20F', 'Economy' ),
( '321', '1A', 'Business' ),
( '321', '1B', 'Business' ),
( '321', '10A', 'Economy' ),
( '321', '10B', 'Economy' ),
( '321', '10F', 'Economy' ),
( '321', '20F', 'Economy' ),
( '319', '1A', 'Business' ),
( '319', '1B', 'Business' ),
( '319', '10A', 'Economy' ),
( '319', '10B', 'Economy' ),
( '319', '10F', 'Economy' ),
( '319', '20F', 'Economy' ),
( 'CN1', '1A', 'Business' ),
( 'CN1', '1B', 'Business' ),
( 'CN1', '10A', 'Economy' ),
( 'CN1', '10B', 'Economy' ),
( 'CN1', '10F', 'Economy' ),
( 'CR2', '20F', 'Economy' );
//поэтому просто записал из cmd-строки сюда в файл

\q
SELECT aircraft_code, count(*) FROM seats GROUP BY aircraft_code;
SELECT aircrfat_code, count(*) FROM seats GROUP BY aircrcaft_code ORDER BY count;
SELECT aircraft_code, count(*) FROM seats GROUP BY aircrcaft_code ORDER BY count;
SELECT aircraft_code, count(*) FROM seats GROUP BY aircraft_code ORDER BY count;
SELECT aircraft_code, fare_conditions, count(*) FROM seats GROUP BY aircraft_code, fare_conditions ORDER BY aircraft_code, fare_conditions;
INSERT INTO aircrafts
VALUES ( 'SU9', 'Sukhoi SuperJet-100', 3000 );
\d aircrafts
SELECT * FROM aircrafts ORDER BY range DESC;
UPDATE aircrafts SET range = range * 2 WHERE model = 'Sukhoi SuperJet-100';
SELECT * FROM aircrafts ORDER BY range DESC;
DELETE FROM aircrafts WHERE range = 1500;
DELETE FROM aircrafts WHERE range = 1500;
\s command_history_606.sql
