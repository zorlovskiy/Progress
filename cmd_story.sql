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

7.06
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
\q
SELECT 'PostgreSQL';
SELECT 'PGDAY''17';
SELECT $$PGDAY'17$$;
SELECT E'PGDAY\n17';
SELECT E'PGDAY\'17';
SELECT '2016-09-12'::date;
SELECT '2016-09-12';
SELECT 'Sep 12, 2016'::date;
//получения значения текущей даты
SELECT current_date;
//вывести дату в другом формате через ф-ию to_char
SELECT to_char(current_date, 'dd-mm-yyyy');
SELECT '21:15'::time;
SELECT '25:15'::time;
SELECT '21:15:26'::time;
SELECT '21:15:69'::time;
SELECT '10:15:16 am'::time;
SELECT '10:15:16 pm'::time;
//получениe значения текущего времени  функция current_time
SELECT current_time;
SELECT timestamp with time zone '2016-09-21 22:25:35';
SELECT timestamptz '2016-09-21 22:25:35';
SELECT timestamp '2016-09-21 22:25:35';
//получения значения текущей временно́й отметки (т. е. даты и времени в одном
значении) служит функция current_timestamp
SELECT current_timestamp;
//interval представляет продолжительность отрезка времени между двумя моментами времени
SELECT '1 year 2 months ago'::interval;
SELECT 'P0001-02-03T04:05:06'::interval;
SELECT ('2016-09-16'::timestamp - '2016-09-01'::timestamp)::interval;
//Значения временны́х отметок можно усекать с той или иной точностью date_trunc
SELECT (date_trunc('hour', current_timestamp));
//значений временны́х отметок можно извлекать с помощью функции extract 
SELECT extract( 'mon' FROM timestamp '1999-11-27 12:34:56.123459');
CREATE TABLE databases (is_open_source boolean, dbms_name text);
INSERT INTO databases 
VALUES 
( TRUE, 'PostgreSQL' ), ( FALSE, 'Oracle' ), ( TRUE, 'MySQL' ), ( FALSE, 'MS SQL Server' );
SELECT * FROM databases;
SELECT * FROM databases WHERE is_open_source;
//массивы []
CREATE TABLE pilots (pilot_name text, schedule integer[]);
INSERT INTO pilots VALUES 
( 'Ivan', '{ 1, 3, 5, 6, 7 }'::integer[] ),
( 'Petr', '{ 1, 2, 5, 7
}'::integer[] ),
( 'Pavel', '{ 2, 5
}'::integer[] ),
( 'Boris', '{ 3, 5, 6
}'::integer[] );
SELECT * FROM pilots;
//операция конкатенации ||
UPDATE pilots SET schedule = schedule || 7 WHERE pilot_name = 'Boris';
//добавлениев конец массива с помощью array_append
UPDATE pilots SET schedule = array_append(schedule, 6) WHERE pilot_name = 'PAVEL';
//жобавление в начало массива array_append
UPDATE pilots SET schedule = array_prepend(1, schedule) WHERE pilot_name = 'Pavel';
//удаляем лишний элемент с помощью array_remove
UPDATE pilots SET schedule = array_remove(schedule, 5) WHERE pilot_name = 'Ivan';
//изменяем значения массивов 
UPDATE pilots SET schedule[1] = 2, schedule[2] = 3 WHERE pilot_name = 'Petr';
//изменяем значения массивов 2-ой способ
UPDATE pilots SET schedule[1:2] = ARRAY[3,4] WHERE pilot_name = 'Petr';
UPDATE pilots SET schedule[1:2] = ARRAY[2,3] WHERE pilot_name = 'Petr';
SELECT * FROM pilots ;
//Функция array_position возвращает индекс первого вхождения элемента с указанным значением в массив
SELECT * FROM pilots WHERE array_position( schedule, 3) IS NOT NULL;
//Оператор @> означает проверку того факта, что в левом массиве содержатся все эле-
менты правого массива
SELECT * FROM pilots WHERE schedule @> '{1, 7}'::integer[];
//воспользуемся оператором &&, который проверяет наличие общих элементов у массивов
SELECT * FROM pilots WHERE schedule && ARRAY[2, 5];
//вопрос в форме отрицания
SELECT * FROM pilots WHERE NOT (schedule && ARRAY[2, 5] );
//развернуть массив в виде столбца таблицы
SELECT unnest(schedule ) AS days_of_week FROM pilots WHERE pilot_name = 'Ivan';
\s sql_cmd_706_1254.sql
CREATE TABLE pilot_hobbies;
CREATE TABLE pilot_hobbies (pilot_name text, hobbies jsonb);
INSERT INTO pilot_hobbies VALUES 
('Ivan', '{"sports": ["футбол", "плавание"], "home_lib": true, "trips": 3}'::jsonb),
( 'Petr',
'{ "sports": [ "теннис", "плавание" ],
"home_lib": true, "trips": 2
}'::jsonb
),
( 'Pavel',
'{ "sports": [ "плавание" ],
"home_lib": false, "trips": 4
}'::jsonb
),
( 'Boris',
'{ "sports": [ "футбол", "плавание", "теннис" ],
"home_lib": true, "trips": 0
}'::jsonb
);
SELECT * FROM pilot_hobbies ;
SELECT * FROM pilot_hobbies;
SELECT * FROM pilot_hobbies WHERE hobbies @> '{"sports":["футбол"]}'::jsonb;
\s sql_cmd_706_1358.sql
SELECT pilot_name, hobbies->'sports' AS sports FROM pilot_hobbies WHERE hobbies->'sports' @> '["футбол"]'::jsonb;
SELECT count(*) FROM pilot_hobbies WHERE hobbies & 'sport';
SELECT count(*) FROM pilot_hobbies WHERE hobbies ? 'sport';
SELECT count(*) FROM pilot_hobbies WHERE hobbies ? 'sports';
UPDATE pilot_hobbies SET hobbies = hobbies || '{"sports":["хоккей"]}'
WHERE
pilot_name = 'Boris';
SELECT pilot_name, hobbies FROM pilot_hobbies WHERE pilot_name = 'Boris';
//помощью функции jsonb_set можно будет обновить сведения таблице
UPDATE pilot_hobbies SET hobbies = jsonb_set( hobbies, '{sports, 1}', '"футбол"') WHERE pilot_name = 'Boris';
SELECT pilot_name, hobbies FROM pilot_hobbies WHERE pilot_name = 'Boris';
// вопросы
CREATE TABLE test_numeric
(measurement numeric(5, 2), description text);
INSERT INTO test_numeric VALUES 
( 999.9999, 'Какое-то измерение ' );
INSERT INTO test_numeric VALUES ( 999.9009, 'Еще одно измерение' );
INSERT INTO test_numeric VALUES ( 999.1111, 'И еще измерение' );
INSERT INTO test_numeric VALUES ( 998.9999, 'И еще одно' );
DROP TABLE test_numeric;
CREATE TABLE test_numeric
(measurement numeric, description text);
INSERT INTO test_numeric VALUES 
(1234567890.0987654321, 'Точность 20 знаков, масштаб 10 знаков' );
INSERT INTO test_numeric VALUES 
( 1.5,
'Точность 2 знака, масштаб 1 знак' );
INSERT INTO test_numeric VALUES 
( 0.12345678901234567890,
'Точность 21 знак, масштаб 20 знаков' );
INSERT INTO test_numeric VALUES 
( 1234567890,
'Точность 10 знаков, масштаб 0 знаков (целое число)' );
SELECT * FROM test_numeric;
SELECT 'NaN'::numeric > 10000;
SELECT 0.0 * 'Inf'::real;
select 'NaN'::real > 'Inf'::real;
CREATE TABLE test_serial
(id serial, name text);
INSERT INTO test_serial ( name ) VALUES 
('Вишневая');
INSERT INTO test_serial ( name ) VALUES 
('Грушевая');
INSERT INTO test_serial ( name ) VALUES 
('Зеленая');
SELECT * FROM test_serial;
INSERT INTO test_serial (id, name) VALUES ( 10, 'Прохладная' );
INSERT INTO test_serial (name) VALUES ( 'Луговая' );
SELECT * FROM test_serial;
UPDATE test_serial SET PRIMARY KEY (id);
ALTER TABLE test_serial ADD PRIMARY KEY(id);
SELECT * FROM test_serial;
\d test_serial
INSERT INTO test_serial ( name) VALUES 
( 'Вишневая' );
SELECT * FROM test_serial;
INSERT INTO test_serial ( id, name) VALUES 
( 2, 'Прохладная' );
INSERT INTO test_serial ( name) VALUES 
( 'Грушевая' );
SELECT * FROM test_serial;
INSERT INTO test_serial ( name) VALUES 
( 'Грушевая' );
SELECT * FROM test_serial;
INSERT INTO test_serial ( name) VALUES 
( 'Зеленая' );
SELECT * FROM test_serial;
DELETE FROM test_serial WHERE id = 4;
SELECT * FROM test_serial;
DELETE FROM test_serial WHERE id = 8;
INSERT INTO test_serial ( name) VALUES 
( 'Луговая' );
SELECT * FROM test_serial;
SELECT current_time;
SELECT current_time::time(0);
SELECT current_time::time(3);
SELECT current_time::timestamp(0);
SELECT current_timestamp;
SELECT current_timestamp::time(0);
SELECT current_timestamp::time(3);
SHOW datestyle;
SELECT '18-05-2016'::date;
SELECT '05-18-2016'::date;
SELECT '2016-05-18'::date;
SET datestyle TO 'MDY';
SELECT '18-05-2016'::date;
SELECT '05-18-2016'::date;
SET datestyle TO DEFAULT;
SELECT '18-05-2016'::timestamp;
SELECT '05-18-2016'::timestamp;
\s cmd_sql_706_1711.sql
\q
SHOW datestyle;
SELECT to_char( current_timestamp, 'mi:ss');
SELECT to_char( current_timestamp, 'dd');
SELECT to_char( current_timestamp, 'yyyy-mm-dd');
SELECT 'Feb 29, 2015'::date;
SELECT '21:15:16:22'::time;
SELECT '21:15:16'::time;
SELECT ('2016-09-16'::date - '2016-09-01'::date );
SELECT ( '20:34:35'::time - '19:44:45'::time );
SELECT ( '20:34:35'::time + '19:44:45'::time );
SELECT (current_timestamp - '2016-01-01'::timestamp ) AS new_date;
SELECT (current_timestamp + '1 mon'::interval) AS new_date;
SELECT (current_timestamp + '1 mon'::interval);
SELECT ( '2016-01-31'::date + '1 mon'::interval ) AS new_date;
SELECT ( '2016-02-29'::date + '1 mon'::interval ) AS new_date;
SELECT ( '2016-09-16'::date - '2015-09-01'::date );
SELECT ( '2016-09-16'::timestamp - '2015-09-01'::timestamp );
SELECT ( '20:34:35'::time - 1 );
SELECT ( '2016-09-16'::date - 1 );
SELECT ( '20:34:35'::time - '1'::time );
SELECT ( '20:34:35'::time - '01'::time );
SELECT ( '20:34:35'::time - '01:00:00'::time );
SELECT (date_trunc('sec', timestamp '1999-11-27 12:34:56.987654' ) );
\s sql_cmd_706_1818.sql
SELECT extract (
'microsecond' from timestamp '1999-11-27 12:34:56.123459'
);
\d
SELECT * FROM test_serial;
CREATE TABLE databases
( is_open_source boolean,
dbms_name text
);
\d
INSERT INTO databases VALUES ( TRUE, 'PostgreSQL' );
INSERT INTO databases VALUES 
( FALSE, 'Oracle' );
INSERT INTO databases VALUES ( TRUE, 'MySQL' );
INSERT INTO databases VALUES ( FALSE, 'MS SQL Server' );
SELECT * FROM databases WHERE NOT is_open_source;
SELECT * FROM databases WHERE is_open_source <> 'yes';
SELECT * FROM databases WHERE is_open_source <> 't';
SELECT * FROM databases WHERE is_open_source <> '1';
SELECT * FROM databases WHERE is_open_source <> 1;
CREATE TABLE test_bool (a boolean, b text);
INSERT INTO test_bool VALUES 
( TRUE, 'yes' ),
( yes, 'yes' ),
( 'yes', true ),
( 'yes', TRUE ),
( '1', 'true' ),
( 1, 'true' ),
( 't', 'true' ),
( 't', truth ),
( true, true ),
( 1::boolean, 'true' ),
( 111::boolean, 'true' );
INSERT INTO test_bool VALUES 
( TRUE, 'yes' ),
( yes, 'yes' ),
( 'yes', true ),
( 'yes', TRUE ),
( '1', 'true' ),
( 1, 'true' ),
( 't', 'true' ),
( 't', truth ),
( true, true ),
( 1::boolean, 'true' ),
( 111::boolean, 'true' );
INSERT INTO test_bool VALUES 
( TRUE, 'yes' ),
( yes, 'yes' ),
( 'yes', true ),
( 'yes', TRUE ),
( '1', 'true' ),
( 1, 'true' ),
( 't', 'true' ),
( 't', truth ),
( true, true ),
( 111::boolean, 'true' );
INSERT INTO test_bool VALUES 
( TRUE, 'yes' ),
( yes, 'yes' ),
( 'yes', TRUE ),
( '1', 'true' ),
( 1, 'true' ),
( 't', 'true' ),
( 't', truth ),
( true, true ),
( 111::boolean, 'true' );
CREATE TABLE birthdays 
(person text NOT NULL, birthday date NOT null);
INSERT INTO birthdays VALUES 
( 'Ken Thompson', '1955-03-23' ),
( 'Ben Johnson', '1971-03-19' ),
( 'Andy Gibson', '1987-08-12' );
SELECT * FROM birthdays WHERE extract('mon' from birthdays ) = 3;
SELECT * FROM birthdays WHERE extract('mon' from birthday ) = 3;
SELECT *, birthday + '40 years'::interval FROM birthdays 
WHERE
birthday + '40 years'::interval < current_timestamp;
SELECT *, birthday + '40 years'::interval FROM birthdays 
WHERE
birthday + '40 years'::interval < current_date;
SELECT *, (current_date::timestamp - birthday::timestamp)::interval FROM birthdays;
SELECT *, extract('year', age(current_date::timestamp - birthday::timestamp)::interval FROM birthdays;
)
\q
SELECT *, extract('year', age(current_date::timestamp - birthday::timestamp))::interval FROM birthdays;
SELECT *, extract('year' from age(current_date::timestamp - birthday::timestamp))::interval FROM birthdays;
SELECT *, extract('year' from age(timestamp current_date - timestamp birthday))::interval FROM birthdays;
SELECT *, extract('year' from age(timestamp current_date, timestamp birthday))::interval FROM birthdays;
SELECT *, extract('year' from age(current_date::timestamp, birthday::timestamp))::interval FROM birthdays;
SELECT *, extract('year' from age(current_date::timestamp, birthday::timestamp)) FROM birthdays;
\s sql_cmd_806_1303.sql
//конкатенация массива
;
SELECT array_cat( ARRAY[1, 2, 3], ARRAY[3, 5]);
\s sql_cmd_806_1335.sql
//удаление элемента из массива;
SELECT array_remove( ARRAY[1, 2, 3], 3);
CREATE TABLE pilots
(pilot_name text, schedule integer[], meal text[]);
INSERT INTO pilots VALUES 
( 'Ivan', '{ 1, 3, 5, 6, 7 }'::integer[],
'{ "сосиска", "макароны", "кофе" }'::text[]
),
( 'Petr', '{ 1, 2, 5, 7 }'::integer [],
'{ "котлета", "каша", "кофе" }'::text[]
),
( 'Pavel', '{ 2, 5 }'::integer[],
'{ "сосиска", "каша", "кофе" }'::text[]
),
( 'Boris', '{ 3, 5, 6 }'::integer[],
'{ "котлета", "каша", "чай" }'::text[]
);
SELECT * FROM pilots;
SELECT * FROM pilots WHERE meal[1] = 'сосиска';
SELECT * FROM pilots WHERE meal[1] = 'каша';
DROP TABLE pilots;
CREATE TABLE pilots
(pilot_name text, schedule integer[], meal text[][]);

'{ { "сосиска", "макароны", "кофе" },
{ "котлета", "каша", "кофе" },
{ "мясо", "каша", "кофе" },
{ "котлета", "каша", "чай" } }'::text[][]
;
INSERT INTO pilots VALUES 
( 'Ivan', '{ 1, 3, 5, 6, 7 }'::integer[],
'{ { "сосиска", "макароны", "кофе" },
{ "котлета", "каша", "кофе" },
{ "сосиска", "каша", "кофе" },
{ "котлета", "каша", "чай" } }'::text[][]
),
( 'Petr', '{ 1, 2, 5, 7 }'::integer [],
'{ { "сосиска", "макароны", "кофе" },
{ "котлета", "каша", "кофе" },
{ "сосиска", "каша", "кофе" },
{ "котлета", "каша", "чай" } }'::text[][]
),
( 'Pavel', '{ 2, 5 }'::integer[],
'{ { "сосиска", "макароны", "кофе" },
{ "котлета", "каша", "кофе" },
{ "сосиска", "каша", "кофе" },
{ "котлета", "каша", "чай" } }'::text[][]
),
( 'Boris', '{ 3, 5, 6 }'::integer[],
'{ { "сосиска", "макароны", "кофе" },
{ "котлета", "каша", "кофе" },
{ "сосиска", "каша", "кофе" },
{ "котлета", "каша", "чай" } }'::text[][]
);
SELECT * FROM pilots;
SELECT * FROM pilots WHERE meal[ ][ ] = 'сосиска';
SELECT * FROM pilots WHERE meal[ ] [ ] = 'сосиска';
SELECT * FROM pilots WHERE meal[ ] = 'сосиска';
SELECT * FROM pilots WHERE meal[ 1] = 'сосиска';
SELECT * FROM pilots WHERE meal[ 1, 2, 3, 4 ] = 'сосиска';
SELECT * FROM pilots WHERE array_position(meal, 'сосиска') IS NOT NULL;
SELECT * FROM pilots WHERE meal = 'сосиска';
SELECT * FROM pilots WHERE meal @> '{сосиска}';
INSERT INTO pilots VALUES 
( 'Zak', '{ 1, 3, 5, 6, 7 }'::integer[],
'{ { "мясо", "макароны", "кофе" },
{ "котлета", "каша", "кофе" },
{ "мясо", "каша", "кофе" },
{ "котлета", "каша", "чай" } }'::text[][]
);
SELECT * FROM pilots;
SELECT * FROM pilots WHERE meal @> '{сосиска}';
SELECT * FROM pilots WHERE meal @> '{сосиска}' AND schedule = 3;
SELECT * FROM pilots WHERE meal @> '{сосиска}' AND schedule @> '{3}'::integer[];
\d
\s sql_cmd_806_1542.sql
\q
\d
\d pilot_hobbies 
UPDATE pilot_hobbies SET hobbies = jasonb_set(hobbies, '{trips}', '10') WHERE pilot_name = 'Pavel';
UPDATE pilot_hobbies SET hobbies = jsonb_set(hobbies, '{trips}', '10') WHERE pilot_name = 'Pavel';
SELECT * FROM pilot_hobbies;
SELECT pilot_name, hobbies -> 'trips' AS trips FROM pilot_hobbies;
UPDATE pilot_hobbies SET hobbies = jsonb_set( hobbies, '{home_lib}', '10') WHERE pilot_name = 'Boris';
SELECT * FROM pilot_hobbies;
UPDATE pilot_hobbies SET hobbies = jsonb_set( hobbies, '{home_lib}', 'false') WHERE pilot_name = 'Boris';
SELECT * FROM pilot_hobbies;
SELECT '{"sports": "хоккей"}'::jsonb || '{ "trips": 5 }'::jsonb;
\d pilots;
\d pilot_hobbies;
SELECT * FROM pilot_hobbies;
UPDATE pilot_hobbies SET hobbies = hobbies || '{"car": [ "KIA" ] }' WHERE pilot_name = 'Petr';
SELECT * FROM pilot_hobbies;
UPDATE pilot_hobbies SET hobbies = hobbies - '{"trips"}' WHERE pilot_name = 'Ivan';
SELECT * FROM pilot_hobbies;
UPDATE pilot_hobbies SET hobbies - '{"trips"}' WHERE pilot_name = 'Ivan';
UPDATE pilot_hobbies SET hobbies = hobbies - 'trips' WHERE pilot_name = 'Ivan';
SELECT * FROM pilot_hobbies;
/s sql_cmd_806_1826.sql
;
\s sql_cmd_806_1826.sql
CREATE TABLE students 
(record_book numeric(5) NOT NULL,
name text NOT NULL,
doc_ser numeric(4),
doc_num numeric(6),
PRIMARY KEY (record_book) );
CREATE TABLE progress
(record_book numeric(5) NOT NULL,
subject text NOT NULL,
acad_year text NOT NULL,
term numeric(1) NOT NULL CHECK (term = 1 OR term = 2),
mark numeric(1) NOT NULL CHECK (mark >= 3 AND mark <= 5) DEFAULT 5,
FOREIGN KEY (record_book)
REFERENCES students (record_book)
ON DELERE CASCADE
ON UPDATE CASCADE);
CREATE TABLE progress
(record_book numeric(5) NOT NULL,
subject text NOT NULL,
acad_year text NOT NULL,
term numeric(1) NOT NULL CHECK (term = 1 OR term = 2),
mark numeric(1) NOT NULL CHECK (mark >= 3 AND mark <= 5) DEFAULT 5,
FOREIGN KEY (record_book)
REFERENCES students (record_book)
ON DELETE CASCADE
ON UPDATE CASCADE);
\s sql_cmd_906_1033.sql
\q
\q
SET search_path TO bookings;
SET search_path TO bookings;
--коментарии в sql
CREATE TABLE airports
(
airport_code char(3) NOT NULL, -- Код аэропорта
airport_name text NOT NULL, -- Название аэропорта
city text NOT NULL, --Город
longitude float NOT NULL, --Координаты аэропорта: долгота
latitude float NOT NULL, -- Координаты аэропорта: широта
timezone text NOT NULL, -- Часовой пояс аэропорта
PRIMARY KEY (airport_code));
SET search_path TO bookings;
CREATE TABLE airports
(
airport_code char(3) NOT NULL, -- Код аэропорта
airport_name text NOT NULL, -- Название аэропорта
city text NOT NULL, --Город
longitude float NOT NULL, --Координаты аэропорта: долгота
latitude float NOT NULL, -- Координаты аэропорта: широта
timezone text NOT NULL, -- Часовой пояс аэропорта
PRIMARY KEY (airport_code));
\d
SHOW search_path;
SET search_path TO public;
CREATE TABLE airports
(
airport_code char(3) NOT NULL, -- Код аэропорта
airport_name text NOT NULL, -- Название аэропорта
city text NOT NULL, --Город
longitude float NOT NULL, --Координаты аэропорта: долгота
latitude float NOT NULL, -- Координаты аэропорта: широта
timezone text NOT NULL, -- Часовой пояс аэропорта
PRIMARY KEY (airport_code));
\d airports;
\s sql_cmd_906_1110.sql
\d airports;
SET search_path TO bookings;
CREATE TABLE airports
(
airport_code char(3) NOT NULL, -- Код аэропорта
airport_name text NOT NULL, -- Название аэропорта
city text NOT NULL, --Город
longitude float NOT NULL, --Координаты аэропорта: долгота
latitude float NOT NULL, -- Координаты аэропорта: широта
timezone text NOT NULL, -- Часовой пояс аэропорта
PRIMARY KEY (airport_code));
\d airports;
SET search_path TO public;
\d airports;
--описание столбца city таблицы airports
COMMENT ON COLUMN airports.city IS 'Город';
\d airports;
\d+ airports;
CREATE TABLE aircrafts
( aircraft_code char( 3 ) NOT NULL,
model text NOT NULL,
range integer NOT NULL,
CHECK ( range > 0 ),
PRIMARY KEY ( aircraft_code )
);
\в
\d
SELECT * FROM aircrafts;
\d aircrafts;
\q
\d aircrafts;
CREATE TABLE flights
( flight_id
serial NOT NULL, -- Идентификатор рейса
flight_no
char( 6 ) NOT NULL, -- Номер рейса
scheduled_departure timestamptz NOT NULL, -- Время вылета по расписанию
scheduled_arrival
timestamptz NOT NULL, -- Время прилета по расписанию
departure_airport
char( 3 ) NOT NULL, -- Аэропорт отправления
arrival_airport
char( 3 ) NOT NULL, -- Аэропорт прибытия
status
varchar( 20 ) NOT NULL, -- Статус рейса
aircraft_code
char( 3 ) NOT NULL, -- Код самолета, IATA
actual_departure
timestamptz,
-- Фактическое время вылета
actual_arrival
timestamptz,
-- Фактическое время прилета
CHECK ( scheduled_arrival > scheduled_departure ),
CHECK ( status IN ( 'On Time', 'Delayed', 'Departed',
'Arrived', 'Scheduled', 'Cancelled' )
),
CHECK ( actual_arrival IS NULL OR
( actual_departure IS NOT NULL AND
actual_arrival IS NOT NULL AND
actual_arrival > actual_departure
)
),
PRIMARY KEY ( flight_id ),
UNIQUE ( flight_no, scheduled_departure ),
FOREIGN KEY ( aircraft_code )
REFERENCES aircrafts ( aircraft_code ),
FOREIGN KEY ( arrival_airport )
REFERENCES airports ( airport_code ),
FOREIGN KEY ( departure_airport )
REFERENCES airports ( airport_code )
);
\d flights;
\d
\d flights_flight_id_seq;
CREATE TABLE boolings
(book_ref char(6) NOT NULL, -- Номер бронирования
book_date timestamptz
NOT NULL, -- Дата бронирования
total_amount numeric( 10, 2 ) NOT NULL, -- Полная стоимость бронирования
PRIMARY KEY ( book_ref )
);
COMMENT ON COLUMN bookings.book_ref IS 'Номер бронирования';
CREATE TABLE bookings
(book_ref char(6) NOT NULL, -- Номер бронирования
book_date timestamptz
NOT NULL, -- Дата бронирования
total_amount numeric( 10, 2 ) NOT NULL, -- Полная стоимость бронирования
PRIMARY KEY ( book_ref )
);
DROP TABLE boolings;
COMMENT ON COLUMN bookings.book_ref IS 'Номер бронирования';
COMMENT ON COLUMN bookings.book_date IS 'Дата бронирования';
COMMENT ON COLUMN bookings.total_amount IS 'Полная стоимость бронирования';
CREATE TABLE tickets
( ticket_no
char( 13 )
NOT NULL, -- Номер билета
book_ref
char( 6 )
NOT NULL, -- Номер бронирования
passenger_id
varchar( 20 ) NOT NULL, -- Идентификатор пассажира
passenger_name text
NOT NULL, -- Имя пассажира
contact_data
jsonb,
-- Контактные данные пассажира
PRIMARY KEY ( ticket_no ),
FOREIGN KEY ( book_ref )
REFERENCES bookings ( book_ref )
);
COMMENT ON COLUMN tickets.ticket_no IS 'Номер билета' AND tickets.book_ref IS 'Номер бронирования';
COMMENT ON COLUMN tickets.ticket_no IS 'Номер билета';
COMMENT ON COLUMN tickets.book_ref IS 'Номер бронирования';
COMMENT ON COLUMN tickets.passenger_id IS 'Идентификатор пассажира';
COMMENT ON COLUMN tickets.passenger_name IS 'Имя пассажира';
COMMENT ON COLUMN tickets.contact_data IS 'Контактные данные пассажира';
CREATE TABLE ticket_flights
( ticket_no char( 13 ) NOT NULL, -- Номер билета
flight_id integer NOT NULL, -- Идентификатор рейса
fare_conditions varchar( 10 ) NOT NULL, -- Класс обслуживания
amount numeric( 10, 2 ) NOT NULL, -- Стоимость перелета
CHECK ( amount >= 0 ),
CHECK ( fare_conditions IN ( 'Economy', 'Comfort', 'Business' ) ),
PRIMARY KEY ( ticket_no, flight_id ),
FOREIGN KEY ( flight_id )
REFERENCES flights ( flight_id ),
FOREIGN KEY ( ticket_no )
REFERENCES tickets ( ticket_no )
);
COMMENT ON COLUMN ticket.flights IS 'Номер билета';
COMMENT ON COLUMN ticket_flights.ticket_no IS 'Номер билета';
COMMENT ON COLUMN ticket_flights.flight_id IS 'Идентификатор рейса';
COMMENT ON COLUMN ticket_flights.fare_conditions IS 'Класс обслуживания';
COMMENT ON COLUMN boarding_passes.ticket_no IS 'Стоимость перелета';
CREATE TABLE boarding_passes
( ticket_no char( 13 ) NOT NULL, -- Номер билета
flight_id integer NOT NULL, -- Идентификатор рейса
boarding_no integer NOT NULL, -- Номер посадочного талона
seat_no varchar( 4 ) NOT NULL, -- Номер места
PRIMARY KEY ( ticket_no, flight_id ),
UNIQUE ( flight_id, boarding_no ),
UNIQUE ( flight_id, seat_no ),
FOREIGN KEY ( ticket_no, flight_id )
REFERENCES ticket_flights ( ticket_no, flight_id )
);
\d boarding_passes;
\d tickets;
\d
ALTER TABLE aircrafts ADD COLUMN speed integer NOT NULL CHECK( SPEED >= 300);
ALTER TABLE aircrafts ADD COLUMN speed integer;
UPDATE aircrafts SET speed = 807 WHERE aircraft_code = '733';
UPDATE aircrafts SET speed = 851 WHERE aircraft_code = '763';
UPDATE aircrafts SET speed = 905 WHERE aircraft_code = '773';
UPDATE aircrafts SET speed = 840 WHERE aircraft_code IN ('319', '320', '321');
UPDATE aircrafts SET speed = 786 WHERE aircraft_code = 'CR2';
UPDATE aircrafts SET speed = 341 WHERE aircraft_code = 'CN1';
UPDATE aircrafts SET speed = 830 WHERE aircraft_code = 'SU9';
SELECT * FROM aircrafts;
ALTER TABLE aicrcafts ALTER COLUMN speed SET NOT NULL;
ALTER TABLE aircrcafts ALTER COLUMN speed SET NOT NULL;
ALTER TABLE aircrafts ALTER COLUMN speed SET NOT NULL;
ALTER TABLE aircrafts ADD CHECK(speed >= 300);
\d aircrafts;
-- удаление ограничений
-- ALTER TABLE aircrafts ALTER COLUMN speed DROP NOT NULL;
-- ALTER TABLE aircrafts DROP CONSTRAINT aircrafts_speed_check;
--для удаления ограничения CHECK нужно указать его имя
-- удаление столбца
-- ALTER TABLE aircrafts DROP COLUMN speed;
SELECT * FROM airports;
ALTER TABLE airports
ALTER COLUMN longitude SET DATA TYPE numeric(5, 2),
ALTER COLUMN latitude SET DATA TYPE numeric( 5,2 );
SELECT * FROM airports;
CREATE TABLE fare_conditions
( fare_conditions_code integer,
fare_conditions_name varchar( 10 ) NOT NULL,
PRIMARY KEY ( fare_conditions_code )
);
INSERT INTO fare_conditions VALUES (1, 'Economy'),
(2, 'Business'),
(3, 'Comfort');
-- USING изменяет тип с одонго на другой
ALTER TABLE seats ALTER COLUMN 
fare_conditions SET DATA TYPE integer
USING ( CASE WHEN fare_conditions = 'Economy' THEN 1
WHEN fare_conditions = 'Business' THEN 2
ELSE 3
END );
ALTER -- изменение не выполнилось т.к. стоит ограничение CHECK
;
-- Убрать ограничение check можно через DROP CONSTRAINT
ALTER TABLE seats DROP CONSTRAINT seats_fare_conditions_check,
ALTER COLUMN fare_conditions SET DATA TYPE integer USING (CASE WHEN fare_conditions = 'Economy' THEN 1 WHEN fare_conditions = 'Business' THEN 2 ELSE 3 END);
SELECT * FROM seats;
ALTER TABLE seats ADD FOREIGN KEY (fare_conditions) REFERENCES fare_conditions (fare_conditions_code);
\d seats
ALTER TABLE seats RENAME COLUMN fare_conditions TO fare_conditions_code;
ALTER TABLE seats RENAME CONSTRAINT seats_fare_conditions_fkey TO seats_fare_conditions_fkey;
ALTER TABLE seats RENAME CONSTRAINT seats_fare_conditions_fkey TO seats_fare_conditions_code_fkey;
\d seats
\d fare_conditions
ALTER TABLE fare_conditions ADD UNIQUE (fare_conditions_name);
\d fare_conditions
CREATE VIEW seats_by_fare_cond AS SELECT aircraft_code,
fare_conditions,
count( * )
FROM seats
GROUP BY aircraft_code, fare_conditions
ORDER BY aircraft_code, fare_conditions;
CREATE VIEW seats_by_fare_cond AS SELECT aircraft_code,
fare_conditions_code,
count( * )
FROM seats
GROUP BY aircraft_code, fare_conditions_code
ORDER BY aircraft_code, fare_conditions_code;
SELECT * FROM seats_by_fare_cond;
CREATE OR REPLACE VIEW seats_by_fare_cond AS SELECT aircraft_code, fare_conditions, count(*) AS num_seats FROM seats 
[200~GROUP BY aircraft_code, fare_conditions
GROUP BY aircraft_code, fare_conditions
ORDER BY aircraft_code, fare_conditions;
CREATE OR REPLACE VIEW seats_by_fare_cond AS SELECT aircraft_code, fare_conditions, count(*) AS num_seats FROM seats
GROUP BY aircraft_code, fare_conditions
ORDER BY aircraft_code, fare_conditions;
CREATE OR REPLACE VIEW seats_by_fare_cond AS SELECT aircraft_code, fare_conditions, count(*) AS num_seats FROM seats
[200~GROUP BY aircraft_code, fare_conditions_code
ORDER BY aircraft_code, fare_conditions_code;
CREATE OR REPLACE VIEW seats_by_fare_cond AS SELECT aircraft_code, fare_conditions_code, count(*) AS num_seats FROM seats
GROUP BY aircraft_code, fare_conditions_code
ORDER BY aircraft_code, fare_conditions_code;
DROP VIEW seats_by_fare_cond;
CREATE OR REPLACE VIEW seats_by_fare_cond AS
SELECT aircraft_code, fare_conditions_code, 
count( * ) AS num_seats
FROM seats
GROUP BY aircraft_code, fare_conditions_code
ORDER BY aircraft_code, fare_conditions_code;
\s sql_cmd_906_1748.sql
CREATE TABLE students
( record_book numeric( 5 ) NOT NULL,
name text NOT NULL,
doc_ser numeric( 4 ),
doc_num numeric( 6 ),
who_adds_row text DEFAULT current_user, -- добавленный столбец
PRIMARY KEY ( record_book )
);
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12300, 'Иванов Иван Иванович', 0402, 543281 );
SELECT * FROM students;
CREATE TABLE progress
(record_book numeric(5) NOT NULL,
subject text NOT NULL,
acad_year text NOT NULL,
term numeric(1) NOT NULL CHECK (term = 1 OR term = 2),
mark numeric(1) NOT NULL CHECK (mark >= 3 AND mark <= 5) DEFAULT 5,
FOREIGN KEY (record_book)
REFERENCES students (record_book)
ON DELETE CASCADE
ON UPDATE CASCADE);
\d
\d progress;
\d progress;
ALTER TABLE progress ALTER COLUMN mark SET NOT NULL;
\d progress;
ALTER TABLE progress
ADD CHECK (
( test_form = 'экзамен' AND mark IN ( 3, 4, 5 ) )
OR
( test_form = 'зачет' AND mark IN ( 0, 1 ) )
);
ALTER TABLE progress ADD COLUMN test_form;
ALTER TABLE progress ADD COLUMN test_form integer;
ALTER TABLE progress
ADD CHECK (
( test_form = 'экзамен' AND mark IN ( 3, 4, 5 ) )
OR
( test_form = 'зачет' AND mark IN ( 0, 1 ) )
);
SELECT * FROM progress;
ALTER TABLE progress ALTER COLUMN test_form text;
ALTER TABLE progress ALTER COLUMN test_form SET DATA TYPE txt;
ALTER TABLE progress ALTER COLUMN test_form SET DATA TYPE text;
SELECT * FROM progress;
\d progress;
ALTER TABLE progress ALTER COLUMN test_form SET NOT NULL;
ALTER TABLE progress
ADD CHECK (
( test_form = 'экзамен' AND mark IN ( 3, 4, 5 ) )
OR
( test_form = 'зачет' AND mark IN ( 0, 1 ) )
);
\d progress;
INSERT INTO progress VALUES 34567, 'Математика', '2023', 1, 1, 'экзамен';
SELECT * FROM students;
INSERT INTO progress VALUES 12300, 'Математика', '2023', 1, 1, 'экзамен';
INSERT INTO progress VALUES '12300', 'Математика', '2023', 1, 1, 'экзамен';
INSERT INTO progress VALUES "12300", 'Математика', '2023', 1, 1, 'экзамен';
SELECT * FROM progress;
\d progress;
INSERT INTO progress VALUES (12300, 'Математика', '2023', 1, 1, 'экзамен');
INSERT INTO progress VALUES (12300, 'Математика', '2023', 1, 3, 'экзамен');
INSERT INTO progress VALUES (12300, 'Математика', '2023', 1, 3, 'зачет');
INSERT INTO progress VALUES (12300, 'Русский', '2023', 1, 'экзамен');
INSERT INTO progress VALUES (12300, 'Русский', '2023', 1);
INSERT INTO progress (record_book, subject, acad_year, term VALUES (12300, 'Русский', '2023', 1);
;
INSERT INTO progress (record_book, subject, acad_year, term) VALUES (12300, 'Русский', '2023', 1);
;
\Q
\q
INSERT INTO progress (record_book, subject, acad_year, term VALUES (12300, 'Русский', '2023', 1);
;
INSERT INTO progress (record_book, subject, acad_year, term) VALUES (12300, 'Русский', '2023', 1);
);
INSERT INTO progress (record_book, subject, acad_year, term VALUES (12300, 'Русский', '2023', 1);
;
INSERT INTO progress (record_book, subject, acad_year, term) VALUES (12300, 'Русский', '2023', 1);
);
INSERT INTO progress (record_book, subject, acad_year, term VALUES (12300, 'Русский', '2023', 1);
;
INSERT INTO progress ( record_book, subject, acad_year, term ) VALUES (12300, 'Русский', '2023', 1);
INSERT INTO progress (record_book, subject, acad_year, term) VALUES (12300, 'Русский', '2023', 1);
INSERT INTO progress (record_book, subject, acad_year, term, test_form) VALUES (12300, 'Русский', '2023', 1, "экзамен");
INSERT INTO progress (record_book, subject, acad_year, term, test_form) VALUES (12300, 'Русский', '2023', 1, 'экзамен');
SELECT * FROM students 
;
\d students;
ALTER TABLE students ADD UNIQUE (doc_ser, doc_num);
\d students;
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12300, 'Иванов Иван Иванович', 0403 ), 
(1230, 'Иванов Иван Иванович', 0403);
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12300, 'Иванов Иван Иванович', 0403, ), 
(1230, 'Иванов Иван Иванович', 0403, );
INSERT INTO students ( record_book, name, doc_ser)
VALUES ( 12300, 'Иванов Иван Иванович', 0403), 
(1230, 'Иванов Иван Иванович', 0403);
INSERT INTO students ( record_book, name, doc_ser)
VALUES ( 12301, 'Петров Петр Петрович', 0403), 
(1230, 'Петров Петр Петрович', 0403);
SELECT * FROM students;
SELECT * FROM students;
INSERT INTO students ( record_book, name, doc_ser)
VALUES ( 12301, 'Петров Петр Петрович'), 
(1230, 'Петров Петр Петрович');
INSERT INTO students ( record_book, name)
VALUES ( 12301, 'Сидоров Сидр Сидорович'), 
(1230, 'Сидоров Сидр Сидорович');
INSERT INTO students ( record_book, name)
VALUES ( 12302, 'Сидоров Сидр Сидорович'), 
(12302, 'Сидоров Сидр Сидорович');
INSERT INTO students ( record_book, name)
VALUES ( 12302, 'Сидоров Сидр Сидорович'), 
(12303, 'Кириллов Кирилл Кириллович');
DROP TABLE students;
DROP TABLE students CASCADE;
\D
\d
DROP TABLE progress;
CREATE TABLE students
( record_book numeric( 5 ) NOT NULL UNIQUE,
name text NOT NULL,
doc_ser numeric( 4 ),
doc_num numeric( 6 ),
PRIMARY KEY ( doc_ser, doc_num )
);
CREATE TABLE progress
( doc_ser numeric( 4 ),
doc_num numeric( 6 ),
subject text NOT NULL,
acad_year text NOT NULL,
term numeric( 1 ) NOT NULL CHECK ( term = 1 OR term = 2 ),
mark numeric( 1 ) NOT NULL CHECK ( mark >= 3 AND mark <= 5 )
DEFAULT 5,
FOREIGN KEY ( doc_ser, doc_num )
REFERENCES students ( doc_ser, doc_num )
ON DELETE CASCADE
ON UPDATE CASCADE
);
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12300, 'Иванов Иван Иванович', 0402, 543281 );
SELECT * FROM students;
SELECT * FROM progress;
INSERT INTO progress VALUES (403, 756384, 'math', '2022/2023', 1, 3);
INSERT INTO progress VALUES (402, 543281, 'math', '2022/2023', 1, 3);
CREATE TABLE subject_id (subject_id integer, subject text UNIQUE, PRIMARY KEY (subject_id));
\d subject_id;
INSERT INTO subject_id VALUES (1, 'RUS'), (2, 'MATH'), (3, 'INF');
SELECT * FROM progress;
\d progress;
DELETE FROM progress WHERE subject = 'math';
INSERT INTO progress VALUES (402, 543281, 'MATH', '2022/2023', 1, 3);
ALTER TABLE progress RENAME COLUMN subject TO subject_id;
ALTER TABLE progress ALTER COLUMN subject_id SET DATA TYPE integer USING (CASE WHEN subject_id = 'MATH' THEN 2 END);
SELECT * FROM progress;
ALTER TABLE progress ADD FOREIGN KEY (subject_id) REFERENCES;
ALTER TABLE progress ADD FOREIGN KEY (subject_id) REFERENCES
;
ALTER TABLE progress ADD FOREIGN KEY (subject_id) REFERENCES subject_id(subject_id);
INSERT INTO progress VALUES (402, 543281, '1', '2022/2023', 1, 3);
SELECT * FROM progress;
\d progress;
INSERT INTO progress VALUES (402, 543281, 3, '2022/2023', 1, 3);
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12300, '', 0402, 543281 );
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12301, '', 0402, 543281 );
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12301, '', 0403, 543282 );
ALTER TABLE students ADD CHECK ( name <> '' );
DELETE FROM students WHERE name = '';
ALTER TABLE students ADD CHECK ( name <> '' );
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12301, '', 0403, 543282 );
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12301, ' ', 0403, 543282 );
INSERT INTO students ( record_book, name, doc_ser, doc_num )
VALUES ( 12302, '  ', 0404, 543282 );
DELETE FROM students WHERE name = ' ';
DELETE FROM students WHERE name = '  ';
INSERT INTO students VALUES ( 12346, ' ', 0406, 112233 );
INSERT INTO students VALUES ( 12347, ' ', 0407, 112234 );
SELECT *, length( name ) FROM students;
ALTER TABLE students ADD CHECK ( trim(both ' ' from name );
)
;
ALTER TABLE students ADD CHECK ( trim(both ' ' from name ));
ALTER TABLE students ADD CHECK  trim(both ' ' from name );
ALTER TABLE students ALTER COLUMN doc_ser character;
ALTER TABLE students ALTER COLUMN doc_ser SET DATA TYPE character;
\q
\d
\d aircrafts;
ALTER TABLE aircrafts RENAME TO poleti;
\d poleti;
ALTER TABLE poleti RENAME TO aircrafts;
\x aircrafts;
\d
\x 
SELECT * FROM aircrafts;
SELECT * FROM airports;
SELECT * FROM aircrafts;
\x
--поиск по шаблону через LIKE
SELECT * FROM aircrafts WHERE model LIKE 'Airbus%';
--поиск через шаблон исключение
SELECT * FROM aircrafts
WHERE model NOT LIKE 'Airbus%'
AND model NOT LIKE 'Boeing%';
-- поиск по количеству символов через '___'
SELECT * FROM airports WHERE airport_name LIKE '___';
-- регулярные выражения имеют больше возможностей чем LIKE. Наример можно выбрать самолеты нескольких компаний
SELECT * FROM aircrafts WHERE model ~ '^(A|Boe)';
--инвертирование смысла оператора ~
SELECT * FROM aircrafts WHERE model !~ '300$';
--предикаты сравнения замена операторов сравнения
SELECT * FROM aircrafts WHERE range BETWEEN 3000 AND 6000;
SELECT model, range, range / 1.609 AS miles FROM aircrafts;
SELECT model, range, round( range / 1.609, 2) AS miles FROM aircrafts;
-- ORDER BY упорядочивание строк
SELECT * FROM aircrafts ORDER BY range DESC;
SELECT timezone FROM airports;
--вывод не повторяющихся значений
SELECT DISTINCT timezone FROM airports ORDER BY 1;
--ограничения числа выводимых строк через LIMIT
SELECT airport_name, city, longitude
FROM airports
ORDER BY longitude DESC
LIMIT 3;
INSERT INTO airports ('Анадырь', 'Анадырь', 177.741483);
\d airports;
-- OFFSET СМЕЩЕНИЕ
SELECT airport_name, city, longitude
FROM airports
ORDER BY longitude DESC
LIMIT 3
OFFSET 3;
--можно дополнить вывод данных таблице. Например уточнив магистральность самолетов
--используя CASE WHEN условие THEN выражение
[ WHEN ... ]
[ ELSE выражение ]
END
ж
;
SELECT model, range,
CASE WHEN range < 2000 THEN 'Ближнемагистральный'
WHEN range < 5000 THEN 'Среднемагистральный'
ELSE 'Дальнемагистральный'
END AS type
FROM aircrafts
ORDER BY model;
SELECT a.aircraft_code, a.model, s.seat_no, s.fare_conditions
FROM seats AS s
JOIN aircrafts AS a
ON s.aircraft_code = a.aircraft_code
WHERE a.model ~ '^Cessna'
ORDER BY s.seat_no;
\d seats;
SELECT a.aircraft_code, a.model, s.seat_no, s.fare_conditions_code
FROM seats AS s
JOIN aircrafts AS a
ON s.aircraft_code = a.aircraft_code
WHERE a.model ~ '^Cessna'
ORDER BY s.seat_no;
SELECT s.seat_no, s.fare_conditions
FROM seats s
JOIN aircrafts a ON s.aircraft_code = a.aircraft_code
WHERE a.model ~ '^Cessna'
ORDER BY s.seat_no;
SELECT s.seat_no, s.fare_conditions_code
FROM seats s
JOIN aircrafts a ON s.aircraft_code = a.aircraft_code
WHERE a.model ~ '^Cessna'
ORDER BY s.seat_no;
SELECT arrival_city FROM routes
WHERE departure_city = 'Москва'
UNION
SELECT arrival_city FROM routes
WHERE departure_city = 'Санкт-Петербург'
ORDER BY arrival_city;
\d
--Объединения множеств строк — UNION. Строка включается
в итоговое множество (выборку), если она присутствует хотя бы в одном из них.
;
--Пересечения множеств строк — INTERSECT. Строка включается в итоговое множество (выборку), если она присутствует в каждом из них.
SELECT arrival_city FROM routes
WHERE departure_city = 'Москва'
INTERSECT
SELECT arrival_city FROM routes
WHERE departure_city = 'Санкт-Петербург'
ORDER BY arrival_city;
--Разности множеств строк — EXCEPT. Строка включается в итоговое множество (выборку), если она присутствует в первом множестве (выборке), но отсутствует во втором.
SELECT arrival_city FROM routes
WHERE departure_city = 'Санкт-Петербург'
EXCEPT
SELECT arrival_city FROM routes
WHERE departure_city = 'Москва'
ORDER BY arrival_city;
--расчет среднего значения по столбцу
SELECT avg( total_amount ) FROM bookings;
--получение максимального значения по столбцу
SELECT max( total_amount ) FROM bookings;
--получение минимального значения по столбцу
SELECT min( total_amount ) FROM bookings;
\s slq_cmd_1306.sql
create database bookings;
\q
\q
\d
\й
\l
\q
\d
SELECT * FROM aircrafts;
SELECT * FROM seats;
SELECT avg (total_amount) FROM bookings;
SELECT max (total_amount) FROM bookings;
SELECT min (total_amount) FROM bookings;
SELECT arrival_city, count(*) FROM routes WHERE departure_city = 'Москва'GROUP BY arrival_city ORDER BY count DESC;
\d routes;
SELECT array_length( days_of_week, 1 ) AS days_per_week,
count( * ) AS num_routes
FROM routes
GROUP BY days_per_week
ORDER BY 1 desc;
--HAVING сужает количество результирующих строк при группировке
SELECT departure_city, count( * )
FROM routes
GROUP BY departure_city
HAVING count( * ) >= 15
ORDER BY count DESC;
SELECT citt, count(*) FROM airports GROUP BY city HAVING count(*) > 1;
SELECT city, count(*) FROM airports GROUP BY city HAVING count(*) > 1;
SELECT b.book_ref,
b.book_date,
extract( 'month' from b.book_date ) AS month,
extract( 'day'
from b.book_date ) AS day,
count( * ) OVER (
PARTITION BY date_trunc( 'month', b.book_date )
ORDER BY b.book_date
) AS count
FROM ticket_flights tf
JOIN tickets t ON tf.ticket_no = t.ticket_no
JOIN bookings b ON t.book_ref = b.book_ref
WHERE tf.flight_id = 1
ORDER BY b.book_date;
SELECT airport_name, city, timezone, latitude,
first_value( latitude )
OVER tz AS first_in_timezone,
latitude - first_value( latitude ) OVER tz AS delta,
rank()
OVER tz
FROM airports
WHERE timezone IN ( 'Asia/Irkutsk', 'Asia/Krasnoyarsk' )
WINDOW tz AS ( PARTITION BY timezone ORDER BY latitude DESC )
ORDER BY timezone, rank;
SELECT * FROM airports;
SELECT * FROM airports;
SELECT airport_name, city, timezone, coordinates,
first_value( coordinates )
OVER tz AS first_in_timezone,
coordinates - first_value( coordinates ) OVER tz AS delta,
rank()
OVER tz
FROM airports
WHERE timezone IN ( 'Asia/Irkutsk', 'Asia/Krasnoyarsk' )
WINDOW tz AS ( PARTITION BY timezone ORDER BY coordinates DESC )
ORDER BY timezone, rank;
SELECT * FROM airports;
SELECT airport_name, city, timezone, coordinates,
first_value( coordinates )
OVER tz AS first_in_timezone,
coordinates - first_value( coordinates ) OVER tz AS delta,
rank()
OVER tz
FROM airports
WHERE timezone IN ( 'Asia/Irkutsk', 'Asia/Krasnoyarsk' )
WINDOW tz AS ( PARTITION BY timezone ORDER )
ORDER BY timezone, rank;
SELECT airport_name, city, timezone, coordinates,
first_value( coordinates )
OVER tz AS first_in_timezone,
coordinates - first_value( coordinates ) OVER tz AS delta,
rank()
OVER tz
FROM airports
WHERE timezone IN ( 'Asia/Irkutsk', 'Asia/Krasnoyarsk' )
WINDOW tz AS ( PARTITION BY timezone )
ORDER BY timezone, rank;
--Подзапросы
[200~SELECT flight_no, departure_city, arrival_city
FROM routes
WHERE departure_city IN (
SELECT city
FROM airports
WHERE timezone ~ 'Krasnoyarsk'
)
AND arrival_city IN (
SELECT city
FROM airports
WHERE timezone ~ 'Krasnoyarsk'
ж
);
SELECT flight_no, departure_city, arrival_city
FROM routes
WHERE departure_city IN (
SELECT city
FROM airports
WHERE timezone ~ 'Krasnoyarsk'
)
AND arrival_city IN (
SELECT city
FROM airports
WHERE timezone ~ 'Krasnoyarsk'
);
SELECT airport_name, city, longitude
FROM airports
WHERE longitude IN (
( SELECT max( longitude ) FROM airports ),
( SELECT min( longitude ) FROM airports )
)
ORDER BY coordinates;
SELECT * FROM airports;
SELECT DISTINCT a.city
FROM airports a
WHERE NOT EXISTS (
SELECT * FROM routes r
WHERE r.departure_city = 'Москва'
AND r.arrival_city = a.city
)
AND a.city <> 'Москва'
ORDER BY city;
SELECT a.city
FROM airports a
WHERE NOT EXISTS (
SELECT * FROM routes r
WHERE r.departure_city = 'Москва'
AND r.arrival_city = a.city
)
AND a.city <> 'Москва'
ORDER BY city;
SELECT a.model,
( SELECT count( * )
FROM seats s
WHERE s.aircraft_code = a.aircraft_code
AND s.fare_conditions = 'Business'
) AS business,
( SELECT count( * )
FROM seats s
WHERE s.aircraft_code = a.aircraft_code
AND s.fare_conditions = 'Comfort'
) AS comfort,
( SELECT count( * )
FROM seats s
WHERE s.aircraft_code = a.aircraft_code
AND s.fare_conditions = 'Economy'
) AS economy
FROM aircrafts a
ORDER BY 1;
SELECT s2.model,
string_agg(
s2.fare_conditions || ' (' || s2.num || ')',
', '
)
FROM (
SELECT a.model,
s.fare_conditions,
count( * ) AS num
FROM aircrafts a
JOIN seats s ON a.aircraft_code = s.aircraft_code
GROUP BY 1, 2
ORDER BY 1, 2
) AS s2
GROUP BY s2.model
ORDER BY s2.model;
SELECT aa.city, aa.airport_code, aa.airport_name
FROM (
SELECT city, count( * )
FROM airports
GROUP BY city
HAVING count( * ) > 1
) AS a
JOIN airports AS aa ON a.city = aa.city
ORDER BY aa.city, aa.airport_name;
SELECT aa.city, aa.airport_code, aa.airport_name
FROM (
SELECT city, count( * )
FROM airports
GROUP BY city
HAVING count( * ) > 1
) AS a
JOIN airports AS aa ON a.city = aa.city
ORDER BY aa.city, aa.airport_name;
WITH RECURSIVE ranges ( min_sum, max_sum ) AS
( VALUES ( 0, 100000 )
UNION ALL
SELECT min_sum + 100000, max_sum + 100000
FROM ranges
WHERE max_sum <
( SELECT max( total_amount ) FROM bookings )
)
SELECT * FROM ranges;
WITH RECURSIVE ranges ( min_sum, max_sum ) AS
( VALUES( 0, 100000 )
UNION ALL
SELECT min_sum + 100000, max_sum + 100000
FROM ranges
WHERE max_sum <
( SELECT max( total_amount ) FROM bookings )
)
SELECT r.min_sum, r.max_sum, count( b.* )
FROM bookings b
RIGHT OUTER JOIN ranges r
ON b.total_amount >= r.min_sum
AND b.total_amount < r.max_sum
GROUP BY r.min_sum, r.max_sum
ORDER BY r.min_sum;
\d routes;
\s sql_cmd_1406.sql
SELECT count( * ) FROM tickets;
SELECT count( * ) FROM tickets WHERE passenger_name LIKE '% %';
SELECT count( * ) FROM tickets WHERE passenger_name LIKE '% % %';
SELECT count( * ) FROM tickets WHERE passenger_name LIKE '% %%';
\d tickets;
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '_____ %';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '___ %';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '___ % _____ %';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '_____ % _____ %';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '______ % _____ %';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE ' % _____ %';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '% _____ %';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '% %_____';
SELECT passenger_name
FROM tickets
WHERE passenger_name LIKE '% % _____';

\s sql_cmd_1406_1846.sql
SELECT * FROM aircrafts;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code WHERE a.model ~ '^Боинг 737'
GROUP BY 1, 2, 3, 4
ORDER BY 3 DESC;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Boeing 777-300'
ORDER BY 1;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300'
ORDER BY 1;
SELECT departure_city, arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300'
ORDER BY 1;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300' AND departure_city <> arrival_city
ORDER BY 1;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300' AND departure_city <> arrival_city
ORDER BY 1, 2;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300' AND departure_city = arrival_city
ORDER BY 1, 2;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
LEFT JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300' AND departure_city = arrival_city
ORDER BY 1, 2;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
LEFT JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300'
ORDER BY 1, 2;
SELECT r.flight_no, r.departure_city, r.arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
GROUP BY 1, 2
ORDER BY 1;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code WHERE a.model ~ '^Боинг 737'
GROUP BY 1, 2, 3, 4
ORDER BY 3 DESC;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
FULL OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code WHERE a.model ~ '^Боинг 737'
GROUP BY 1, 2, 3, 4
ORDER BY 3 DESC;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code WHERE a.model ~ '^Боинг 737'
GROUP BY 1, 2, 3, 4
ORDER BY 3 DESC;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
FULL OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code WHERE a.model ~ '^Боинг 737'
GROUP BY 1, 2, 3, 4
ORDER BY 3 DESC;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code WHERE a;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
FULL OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code;
SELECT r.flight_no, r.departure_city, r.arrival_city, a.model
FROM routes r
FULL OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Boeing 777-300'
ORDER BY 1;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
FUUL OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Boeing 777-300'
ORDER BY 1;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
FULL OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Boeing 777-300'
ORDER BY 1;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
LEFT OUTER JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Boeing 777-300'
ORDER BY 1;
SELECT DISTINCT departure_city, arrival_city
FROM routes r
JOIN aircrafts a ON r.aircraft_code = a.aircraft_code
WHERE a.model = 'Боинг 777-300' AND departure_city > arrival_city
ORDER BY 1, 2;
\d routes;
\s sql_cmd_1506.sql
/q
\q
SELECT * FROM routes;
\d routes;
\d aircrafts;
\d
\d aircrafts;
SELECT DISTINCT r.model, a.flight_no FROM routes r LEFT OUTER JOIN aircrafts a on r.aircraft_code = a.aircrfat_code;
SELECT DISTINCT r.model, a.flight_no FROM routes r LEFT OUTER JOIN aircrafts a on r.aircraft_code = a.aircrafat_code;
SELECT DISTINCT r.model, a.flight_no FROM routes r LEFT OUTER JOIN aircrafts a on r.aircraft_code = a.aircraft_code;
SELECT DISTINCT a.model, r.flight_no FROM routes r LEFT OUTER JOIN aircrafts a on r.aircraft_code = a.aircraft_code;
SELECT DISTINCT a.model, r.flight_no FROM routes r FULL OUTER JOIN aircrafts a on r.aircraft_code = a.aircraft_code;
\s sql_cmd_1506.sql
\s sql_cmd_1506.sql
\q
\l
demo
;
SELECT arrival_city, count(flight_no) FROM routes WHERE array_length(days_of_week, 1) = 7 AND departure_city = 'Москва'
GROUP BY arrival_city ORDER BY count DESC
LIMIT 5;
SELECT flight_no, unnest( days_of_week ) AS day_of_week
FROM routes
WHERE departure_city = 'Москва'
ORDER BY flight_no;
\s sql_cmd_2106.sql
\q
SELECT * FROM routes;
\q
SELECT dw.name_of_day, count( * ) AS num_flights
FROM (
SELECT unnest( days_of_week ) AS num_of_day
FROM routes
WHERE departure_city = 'Москва'
) AS r,
unnest( '{ 1, 2, 3, 4, 5, 6, 7 }'::integer[],
'{ "Пн.", "Вт.", "Ср.", "Чт.", "Пт.", "Сб.", "Вс."}'::text[]
) AS dw( num_of_day, name_of_day )
WHERE r.num_of_day = dw.num_of_day
GROUP BY r.num_of_day, dw.name_of_day
ORDER BY r.num_of_day;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE max = NULL AND min = null
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE max = null AND min = null
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ) AS max, min( tf.amount ) AS min
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE max = null AND min = null
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE tf.amount = NULL
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE tf.amount = NULL
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE tf.amount = NULL
GROUP BY 1, 2
HABING max( tf.amount )
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE tf.amount = NULL
GROUP BY 1, 2
HAvING max( tf.amount )
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE tf.amount = NULL
GROUP BY 1, 2
HAVING max( tf.amount ) = NULL
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
WHERE tf.amount = NULL
GROUP BY 1, 2
HAVING max( tf.amount ) = NULL AND max( tf.amount ) <> NULL
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
JOIN ticket_flights tf ON f.flight_id = tf.flight_id
GROUP BY 1, 2
HAVING max( tf.amount ) = NULL AND max( tf.amount ) <> NULL
ORDER BY 1, 2;
SELECT f.departure_city, f.arrival_city,
max( tf.amount ), min( tf.amount )
FROM flights_v f
LEFT OUTER JOIN ticket_flights tf ON f.flight_id = tf.flight_id
GROUP BY 1, 2
ORDER BY 1, 2;
SELECT * FROM tickets;
SELECT left( passenger_name, strpos( passenger_name, ' ' ) - 1 )
AS firstname, count( * )
FROM tickets
GROUP BY 1
ORDER BY 2 DESC;
SELECT right( passenger_name, strpos( passenger_name, ' ' ) - 1 )
AS secondname, count( * )
FROM tickets
GROUP BY 1
ORDER BY 2 DESC;
SELECT right( passenger_name, strpos( passenger_name, ' ' ) )
AS secondname, count( * )
FROM tickets
GROUP BY 1
ORDER BY 2 DESC;
SELECT right( passenger_name, strpos( passenger_name, ' ' ) + 1 )
AS secondname, count( * )
FROM tickets
GROUP BY 1
ORDER BY 2 DESC;
SELECT left( passenger_name, strpos( passenger_name, ' ' ) - 1 )
AS firstname, count( * )
FROM tickets
GROUP BY 1
ORDER BY 2 DESC;
SELECT split_part( passenger_name, ' ', 2)
AS secondname, count( * )
FROM tickets
GROUP BY 1
ORDER BY 2 DESC;
SELECT s2.model,
string_agg(
s2.fare_conditions || ' (' || s2.num || ')',
', '
)
FROM (
SELECT a.model,
s.fare_conditions,
count( * ) AS num
FROM aircrafts a
JOIN seats s ON a.aircraft_code = s.aircraft_code
GROUP BY 1, 2
ORDER BY 1, 2
) AS s2
GROUP BY s2.model
ORDER BY s2.model;
SELECT a.model,
s.fare_conditions,
count( * ) AS num
FROM aircrafts a
JOIN seats s ON a.aircraft_code = s.aircraft_code
GROUP BY 1, 2
ORDER BY 1, 2
;
SELECT a.aircraft_code, a.model,
s.fare_conditions,
count( * ) AS num
FROM aircrafts a
JOIN seats s ON a.aircraft_code = s.aircraft_code
GROUP BY 1, 2
ORDER BY 1, 2
;
SELECT a.aircraft_code, a.model,
s.fare_conditions,
count( * ) AS num
FROM aircrafts a
JOIN seats s ON a.aircraft_code = s.aircraft_code
GROUP BY 1, 2, 3
ORDER BY 1, 2, 3
;
\q sql_cmd_2206.sql
\s sql_cmd_2206.sql
WITH RECURSIVE ranges ( min_sum, max_sum, level )
AS (
VALUES( 0, 100000, 0 ),
( 100000, 200000, 0 ),
( 200000, 300000, 0 )
UNION
SELECT min_sum + 100000, max_sum + 100000, level + 1
FROM ranges
WHERE max_sum < ( SELECT max( total_amount ) FROM bookings )
)
SELECT * FROM ranges;
WITH RECURSIVE ranges ( min_sum, max_sum )
AS (
VALUES( 0, 100000 )
UNION ALL
SELECT min_sum + 100000, max_sum + 100000
FROM ranges
WHERE max_sum < ( SELECT max( total_amount ) FROM bookings )
)
SELECT r.min_sum,
r.max_sum,
count( b.* )
FROM bookings b
RIGHT OUTER JOIN ranges r
ON b.total_amount >= r.min_sum
AND b.total_amount < r.max_sum
GROUP BY r.min_sum, r.max_sum
ORDER BY r.min_sum;
WITH RECURSIVE ranges ( min_sum, max_sum )
AS (
VALUES( 0, 100000 )
UNION ALL
SELECT min_sum + 100000, max_sum + 100000
FROM ranges
WHERE max_sum < ( SELECT max( total_amount ) FROM bookings )
)
SELECT r.min_sum,
r.max_sum,
count( * )
FROM bookings b
RIGHT OUTER JOIN ranges r
ON b.total_amount >= r.min_sum
AND b.total_amount < r.max_sum
GROUP BY r.min_sum, r.max_sum
ORDER BY r.min_sum;
SELECT DISTINCT a.city
FROM airports a
WHERE NOT EXISTS (
SELECT * FROM routes r
WHERE r.departure_city = 'Москва'
AND r.arrival_city = a.city
)
AND a.city <> 'Москва'
ORDER BY city;
SELECT city, count( * )
FROM airports
GROUP BY city;

WITH a1 AS
(
SELECT DISTINCT city FROM airports
),
WITH a2 AS
(
 SELECT DISTINCT city FROM airports )
SELECT count ( * )
JOIN ON a1.city <> a2.city;
WITH a1 AS
(
SELECT DISTINCT city FROM airports
)
SELECT count ( * ) FROM a1
JOIN ( SELECT DISTINCT city FROM airports ) AS a2 ON a1.city <> a2.city;
\s sql_cmd_2506_1802.sql

SELECT count( s.seat_no )
FROM seats s
JOIN flights_v f
ON s.aircraft_code = f.aircraft_code
WHERE s.aircraft_code = f.aircraft_code
;
SELECT * FROM tickets;
SELECT * FROM ticket_flights;
SELECT * FROM ticket_flights;
\q
INSERT INTO aircrafts_tmp
VALUES ( 'SU9', 'Sukhoi SuperJet', 3000 )
ON CONFLICT ON CONSTRAINT aircrafts_tmp_pkey
DO UPDATE SET model = excluded.model,
range = excluded.range
RETURNING *;
\d
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_tmp
ADD PRIMARY KEY ( aircraft_code );
ALTER TABLE aircrafts_tmp
ADD UNIQUE ( model );
CREATE TEMP TABLE aircrafts_log AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_log
ADD COLUMN when_add timestamp;
ALTER TABLE aircrafts_log
ADD COLUMN operation text;
CREATE TEMP TABLE aircrafts_tmp
( LIKE aircrafts INCLUDING CONSTRAINTS INCLUDING INDEXES );
WITH add_row AS
( INSERT INTO aircrafts_tmp
SELECT * FROM aircrafts
RETURNING *
)
INSERT INTO aircrafts_log
SELECT add_row.aircraft_code, add_row.model, add_row.range,
current_timestamp, 'INSERT'
FROM add_row;
SELECT * FROM aircrafts_tmp ORDER BY model;
WITH add_row AS
( INSERT INTO aircrafts_tmp
VALUES ( 'SU9', 'Сухой Суперджет-100', 3000 )
ON CONFLICT DO NOTHING
RETURNING *
)
INSERT INTO aircrafts_log
SELECT add_row.aircraft_code, add_row.model, add_row.range,
current_timestamp, 'INSERT'
FROM add_row;
INSERT INTO aircrafts_tmp
VALUES ( 'SU9', 'Сухой Суперджет', 3000 )
ON CONFLICT ON CONSTRAINT aircrafts_tmp_pkey
DO UPDATE SET model = excluded.model,
range = excluded.range
RETURNING *;
COPY aircrafts_tmp FROM '/home/PostgreSQL/aircrafts.txt';
COPY aircrafts_tmp FROM '/home/workstation/PostgreSQL/aircrafts.sql';
COPY aircrafts_tmp FROM '/home/workstation/PostgreSQL/aircrafts.txt';
COPY aircrafts_tmp FROM '/home/workstation/aircrafts.txt';
COPY aircrafts_tmp TO '/home/workstation/aircrafts.txt'
WITH ( FORMAT csv );
WITH update_row AS
( UPDATE aircrafts_tmp
SET range = range * 1.2
WHERE model ~ '^Bom'
RETURNING *
)
INSERT INTO aircrafts_log
SELECT ur.aircraft_code, ur.model, ur.range,
current_timestamp, 'UPDATE'
FROM update_row ur;
WITH update_row AS
( UPDATE aircrafts_tmp
SET range = range * 1.2
WHERE model ~ '^Бом'
RETURNING *
)
INSERT INTO aircrafts_log
SELECT ur.aircraft_code, ur.model, ur.range,
current_timestamp, 'UPDATE'
FROM update_row ur;
SELECT * FROM aircrafts_log
WHERE model ~ '^Bom' ORDER BY when_add;
SELECT * FROM aircrafts_log
WHERE model ~ '^Бом' ORDER BY when_add;
CREATE TEMP TABLE tickets_directions AS
SELECT DISTINCT departure_city, arrival_city FROM routes;
ALTER TABLE tickets_directions
ADD COLUMN last_ticket_time timestamp;
ALTER TABLE tickets_directions
ADD COLUMN tickets_num integer DEFAULT 0;
CREATE TEMP TABLE ticket_flights_tmp AS
SELECT * FROM ticket_flights WITH NO DATA;
ALTER TABLE ticket_flights_tmp
ADD PRIMARY KEY ( ticket_no, flight_id );
WITH sell_ticket AS
( INSERT INTO ticket_flights_tmp
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '1234567890123', 30829, 'Economy', 12800 )
RETURNING *
)
UPDATE tickets_directions td
SET last_ticket_time = current_timestamp,
tickets_num = tickets_num + 1
WHERE ( td.departure_city, td.arrival_city ) =
( SELECT departure_city, arrival_city
FROM flights_v
WHERE flight_id = ( SELECT flight_id FROM sell_ticket )
);
SELECT *
FROM tickets_directions
WHERE tickets_num > 0;
WITH sell_ticket AS
( INSERT INTO ticket_flights_tmp
(ticket_no, flight_id, fare_conditions, amount )
VALUES ( '1234567890123', 7757, 'Economy', 3400 )
RETURNING *
)
UPDATE tickets_directions td
SET last_ticket_time = current_timestamp,
tickets_num = tickets_num + 1
FROM flights_v f
WHERE td.departure_city = f.departure_city
AND td.arrival_city
= f.arrival_city
AND f.flight_id = ( SELECT flight_id FROM sell_ticket );
SELECT *
FROM tickets_directions
WHERE tickets_num > 0;
WITH delete_row AS
( DELETE FROM aircrafts_tmp
WHERE model ~ '^Бом'
RETURNING *
)
INSERT INTO aircrafts_log
SELECT dr.aircraft_code, dr.model, dr.range,
current_timestamp, 'DELETE'
FROM delete_row dr;
SELECT * FROM aircrafts_log
WHERE model ~ '^Бом'
ORDER BY when_add;
WITH min_ranges AS
( SELECT aircraft_code,
rank() OVER (
PARTITION BY left( model, 6 )
ORDER BY range
) AS rank
FROM aircrafts_tmp
WHERE model ~ '^Аэробус' OR model ~ '^Боинг'
)
DELETE FROM aircrafts_tmp a
USING min_ranges mr
WHERE a.aircraft_code = mr.aircraft_code
AND mr.rank = 1
RETURNING *;
\s sql_cmd_2706_1435.sql
--Контрольные вопросы глава 7
SELECT * FROM aircrafts_log;
SELECT * FROM aircrafts_tmp;
\q
\d
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_tmp
ADD PRIMARY KEY ( aircraft_code );
ALTER TABLE aircrafts_tmp
ADD UNIQUE ( model );
CREATE TEMP TABLE aircrafts_log AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_log
ADD COLUMN when_add timestamp;
ALTER TABLE aircrafts_log
ADD COLUMN operation text;
WITH add_row AS
( INSERT INTO aircrafts_tmp
SELECT * FROM aircrafts
RETURNING *
)
INSERT INTO aircrafts_log
SELECT add_row.aircraft_code, add_row.model, add_row.range,
current_timestamp, 'INSERT'
FROM add_row;
SELECT * FROM aircrafts_tmp ORDER BY model;
CREATE TEMP TABLE tickets_directions AS
SELECT DISTINCT departure_city, arrival_city FROM routes;
ALTER TABLE tickets_directions
ADD COLUMN last_ticket_time timestamp;
ALTER TABLE tickets_directions
ADD COLUMN tickets_num integer DEFAULT 0;
CREATE TEMP TABLE ticket_flights_tmp AS
SELECT * FROM ticket_flights WITH NO DATA;
ALTER TABLE ticket_flights_tmp
ADD PRIMARY KEY ( ticket_no, flight_id );
WITH add_row AS
( INSERT INTO aircrafts_tmp
SELECT * FROM aircrafts
RETURNING aircraft_code, model, range,
current_timestamp, 'INSERT'
)
INSERT INTO aircrafts_log
SELECT * FROM add_row;
\q
\d seats
\d seats_pkey 
\d seats_tmp
\q
\d seats_tmp
\d
\q
\d
\d seats_tmp
\d seats
\d seats
\q
\d
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_tmp
ADD PRIMARY KEY ( aircraft_code );
ALTER TABLE aircrafts_tmp
ADD UNIQUE ( model );
CREATE TEMP TABLE aircrafts_log AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_log
ADD COLUMN when_add timestamp;
ALTER TABLE aircrafts_log
ADD COLUMN operation text;
WITH add_row AS
( INSERT INTO aircrafts_tmp
SELECT * FROM aircrafts
RETURNING aircraft_code, model, range,
current_timestamp, 'INSERT'
)
INSERT INTO aircrafts_log
SELECT * FROM add_row;
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH DATA;
CREATE TEMP TABLE seats_tmp AS
SELECT * FROM seats WITH DATA;
\d seats_tmp 
ALTER TABLE seats_tmp ADD PRIMARY KEY (aircraft_code, seat_no);
\d seats_tmp 
\d
\d
SELECT * FROM seats_tmp;

INSERT INTO seats_tmp VALUES (319, '6A', 'Business') ON CONFLICT (aircraft_code, seat_no) DO UPDATE SET fare_conditions = excluded.fare_conditions RETURNING *;
SELECT * FROM seats_tmp;
-----------
COPY aircrafts_tmp FROM '/home/workstation/PostgreSQL/aircrafts.txt';
\q
\q
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH NO DATA;
SELECT * FROM aircrafts_tmp;

COPY aircrafts_tmp FROM '/home/workstation/PostgreSQL/aircrafts.txt' WITH (FORMAT csv);
\q
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH DATA;
SELECT * FROM aircrafts_tmp;
COPY aircrafts_tmp FROM '/home/workstation/PostgreSQL/aircrafts.txt' WITH (FORMAT csv);
SELECT * FROM aircrafts_tmp;
\q
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH DATA;
ALTER TABLE aircrafts_tmp
ADD PRIMARY KEY ( aircraft_code );
ALTER TABLE aircrafts_tmp
ADD UNIQUE ( model );
CREATE TEMP TABLE aircrafts_log AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_log
ADD COLUMN when_add timestamp;
ALTER TABLE aircrafts_log
ADD COLUMN operation text;
COPY aircrafts_tmp FROM '/home/workstation/PostgreSQL/aircrafts.txt' WITH (FORMAT csv);
SELECT * FROM aircrafts_tmp;
WITH sell_tickets AS
( INSERT INTO ticket_flights_tmp
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '1234567890123', 13829, 'Economy', 10500 ),
( '1234567890123', 4728, 'Economy', 3400 ),
( '1234567890123', 30523, 'Economy', 3400 ),
( '1234567890123', 7757, 'Economy', 3400 ),
( '1234567890123', 30829, 'Economy', 12800 )
RETURNING *
)
UPDATE tickets_directions td
SET last_ticket_time = current_timestamp,
tickets_num = tickets_num +
( SELECT count( * )
FROM sell_tickets st, flights_v f
WHERE st.flight_id = f.flight_id
AND f.departure_city = td.departure_city
AND f.arrival_city = td.arrival_city
)
WHERE ( td.departure_city, td.arrival_city ) IN
( SELECT departure_city, arrival_city
FROM flights_v
WHERE flight_id IN ( SELECT flight_id FROM sell_tickets )
);
CREATE TEMP TABLE aircrafts_log AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_log
ADD COLUMN when_add timestamp;
ALTER TABLE aircrafts_log
ADD COLUMN operation text;
CREATE TEMP TABLE tickets_directions AS
SELECT DISTINCT departure_city, arrival_city FROM routes;
ALTER TABLE tickets_directions
ADD COLUMN last_ticket_time timestamp;
ALTER TABLE tickets_directions
ADD COLUMN tickets_num integer DEFAULT 0;
\d
CREATE TEMP TABLE ticket_flights_tmp AS
SELECT * FROM ticket_flights WITH NO DATA;
ALTER TABLE ticket_flights_tmp
ADD PRIMARY KEY ( ticket_no, flight_id );
WITH sell_ticket AS
( INSERT INTO ticket_flights_tmp
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '1234567890123', 30829, 'Economy', 12800 )
RETURNING *
)
UPDATE tickets_directions td
SET last_ticket_time = current_timestamp,
tickets_num = tickets_num + 1
WHERE ( td.departure_city, td.arrival_city ) =
( SELECT departure_city, arrival_city
FROM flights_v
WHERE flight_id = ( SELECT flight_id FROM sell_ticket )
);

WITH sell_tickets AS
( INSERT INTO ticket_flights_tmp
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '1234567890123', 13829, 'Economy', 10500 ),
( '1234567890123', 4728, 'Economy', 3400 ),
( '1234567890123', 30523, 'Economy', 3400 ),
( '1234567890123', 7757, 'Economy', 3400 )
RETURNING *
)
UPDATE tickets_directions td
SET last_ticket_time = current_timestamp,
tickets_num = tickets_num +
( SELECT count( * )
FROM sell_tickets st, flights_v f
WHERE st.flight_id = f.flight_id
AND f.departure_city = td.departure_city
AND f.arrival_city = td.arrival_city
)
WHERE ( td.departure_city, td.arrival_city ) IN
( SELECT departure_city, arrival_city
FROM flights_v
WHERE flight_id IN ( SELECT flight_id FROM sell_tickets )
);
SELECT departure_city AS dep_city,
arrival_city AS arr_city,
last_ticket_time,
tickets_num AS num
FROM tickets_directions
WHERE tickets_num > 0
ORDER BY departure_city, arrival_city;
\d
SELECT * FROM tickets_directions;
SELECT flight_no, flight_id, departure_city,
arrival_city, scheduled_departure
FROM flights_v
WHERE scheduled_departure
BETWEEN bookings.now() AND bookings.now() + INTERVAL '15 days'
AND ( departure_city, arrival_city ) IN
( ( 'Красноярск', 'Москва' ),
( 'Москва', 'Сочи'),
( 'Сочи', 'Москва' ),
( 'Сочи', 'Красноярск' )
)
ORDER BY departure_city, arrival_city, scheduled_departure;
SELECT * FROM tickets_directions;
SELECT * FROM tickets_directions;
\d
\d seats
ALTER TABLE tickets_directions
ADD COLUMN economy varvhar(10);
ALTER TABLE tickets_directions
ADD COLUMN economy varchar(10);
ALTER TABLE tickets_directions
ADD COLUMN business varchar(10);
ALTER TABLE tickets_directions
ADD COLUMN comfort varchar(10);
SELECT * FROM tickets_directions;
\d
SELECT * FROM tickets_directions;


UPDATE tickets_directions td
  SET economy =
        ( SELECT count( * )
            FROM ticket_flights_tmp tft, flights_v f
            WHERE tft.flight_id = f.flight_id
              AND f.departure_city = td.departure_city
              AND f.arrival_city = td.arrival_city
              AND tft.fare_conditions = 'Economy'
)
WHERE ( td.departure_city, td.arrival_city ) IN
( SELECT departure_city, arrival_city
FROM flights_v
WHERE flight_id IN ( SELECT flight_id FROM ticket_flights_tmp )
);
SELECT departure_city AS dep_city,
arrival_city AS arr_city,
last_ticket_time,
tickets_num AS num
FROM tickets_directions
WHERE tickets_num > 0
ORDER BY departure_city, arrival_city;
SELECT departure_city AS dep_city,
arrival_city AS arr_city,
last_ticket_time,
economy,
tickets_num AS num
FROM tickets_directions
WHERE tickets_num > 0
ORDER BY departure_city, arrival_city;

UPDATE tickets_directions td
  SET economy =
        ( SELECT count( fare_conditions )
            FROM ticket_flights_tmp tft, flights_v f
            WHERE tft.flight_id = f.flight_id
              AND f.departure_city = td.departure_city
              AND f.arrival_city = td.arrival_city
              AND tft.fare_conditions = 'Economy'
),
business =
        ( SELECT count( fare_conditions )
            FROM ticket_flights_tmp tft, flights_v f
            WHERE tft.flight_id = f.flight_id
              AND f.departure_city = td.departure_city
              AND f.arrival_city = td.arrival_city
              AND tft.fare_conditions = 'Business'
),
comfort =
( SELECT count( fare_conditions )
FROM ticket_flights_tmp tft, flights_v f
WHERE tft.flight_id = f.flight_id
AND f.departure_city = td.departure_city
AND f.arrival_city = td.arrival_city
AND tft.fare_conditions = 'Comfort'
)
WHERE ( td.departure_city, td.arrival_city ) IN
( SELECT departure_city, arrival_city
FROM flights_v
WHERE flight_id IN ( SELECT flight_id FROM ticket_flights_tmp )
);
SELECT departure_city AS dep_city,
arrival_city AS arr_city,
last_ticket_time,
economy,
business,
comfort,
tickets_num AS num
FROM tickets_directions
WHERE tickets_num > 0
ORDER BY departure_city, arrival_city;
INSERT INTO ticket_flights_tmp
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '1234567890123', 13829, 'Comfort', 35000 ),
( '1234567890123', 4728, 'Business', 25000 );
-----------
\q
\s sql_cmd_2806.sql
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH DATA;
ALTER TABLE aircrafts_tmp
ADD PRIMARY KEY ( aircraft_code );
ALTER TABLE aircrafts_tmp
ADD UNIQUE ( model );
CREATE TEMP TABLE aircrafts_log AS
SELECT * FROM aircrafts WITH NO DATA;
ALTER TABLE aircrafts_log
ADD COLUMN when_add timestamp;
ALTER TABLE aircrafts_log
ADD COLUMN operation text;

\d airports;
\d airports;
\q
\d
CREATE TEMP TABLE aircrafts_tmp AS
SELECT * FROM aircrafts WITH DATA;
ALTER TABLE aircrafts_tmp
ADD PRIMARY KEY ( aircraft_code );
ALTER TABLE aircrafts_tmp
ADD UNIQUE ( model );

WITH aicrafts_seats AS
( SELECT aircraft_code, model, seats_num,
         rank() OVER (
           PARTITION BY left( model, strpos( model, ' ' ) - 1 )
           ORDER BY seats_num
         )
    FROM
      ( SELECT a.aircraft_code, a.model, count( * ) AS seats_num
          FROM aircrafts_tmp a, seats s
          WHERE a.aircraft_code = s.aircraft_code
          GROUP BY 1, 2
      ) AS seats_numbers
)
DELETE FROM aircrafts_tmp a
  WHERE a.aircraft_code IN
    ( SELECT aircraft_code
    	FROM aicrafts_seats AS a_s
    	WHERE left( a.model, strpos( a.model, ' ' ) - 1 )
        IN ( 'Боинг', 'Аэробус' )
    AND a_s.rank = 1)
RETURNING *;
----------------
CREATE INDEX
ON airports ( airport_name );
\d
\d airports
CREATE TABLE airpots_tbl AS SELECT FROM airports;
\d airports
\d airports_tbl;
\d
\d airpots_tbl ;
\d airpots_tbl;
DROP TABLE airpots;
DROP TABLE airpots_tbl;
CREATE TABLE airports_tbl AS SELECT * FROM airports;
\d airports_tbl;
[200~CREATE INDEX
ON airports ( airport_name );
CREATE INDEX
ON airports_tbl ( airport_name );
\d airports_tbl;
\timing on
\d tickets;
SELECT count( * )
FROM tickets
WHERE passenger_name = 'IVAN IVANOV';
\d tickets;
\d tickets;
q
;
CREATE INDEX passenger_name
ON tickets ( passenger_name );
\d tickets;
SELECT count( * )
FROM tickets
WHERE passenger_name = 'IVAN IVANOV';
\di
\di+
DROP INDEX passenger_name;
\q
\s sql_cmd_2906.sql
\q
\d
\d seats
\d tickets
CREATE INDEX tickets_book_ref_test_key
ON tickets ( book_ref );
\timing on
SELECT *
FROM tickets
ORDER BY book_ref
LIMIT 5;
DROP INDEX tickets_book_ref_test_key;
SELECT *
FROM tickets
ORDER BY book_ref
LIMIT 5;
CREATE UNIQUE INDEX aircrafts_unique_model_key
ON aircrafts ( model );
\d
CREATE UNIQUE INDEX aircrafts_unique_model_key
ON aircrafts_tbl ( model );
CREATE TABLE aircrafts_tbl AS SELECT * FROM aircrafts;
CREATE UNIQUE INDEX aircrafts_unique_model_key
ON aircrafts_tbl ( model );
\d ticket_flights
CREATE INDEX ON ticket_flights ( fare_conditions );
SELECT count( * )
FROM ticket_flights
WHERE fare_conditions = 'Economy';
SELECT count( * )
FROM ticket_flights
WHERE fare_conditions = 'Business';
SELECT count( * )
FROM ticket_flights
WHERE fare_conditions = 'Comfort';
SELECT count( * )
FROM ticket_flights
WHERE fare_conditions = 'Economy';
SELECT count( * )
FROM ticket_flights
WHERE fare_conditions = 'Business';
SELECT count( * )
FROM ticket_flights
WHERE fare_conditions = 'Comfort';
\d
\d aircrafts_tbl 
DROP INDEX aircrafts_unique_model_key;
SELECT * FROM ticket_flights ;
\d tickets
SELECT * FROM bookings;
SELECT * FROM routes;
\d
\d ticket_flights
\d aircrafts_data 
\d aircrafts_data 
\d
SELECT * FROM bookings;
\d ticket_flights
SELECT * FROM routes;
\d
SELECT * FROM seats;
SELECT * FROM routes;
SELECT * FROM airports;
SELECT * FROM bookings;
CREATE INDEX ON bookings(book_ref NULLS FIRST, total_amount DESC NULLS LAST);
\d bookings;
CREATE INDEX bookings_book_date_part_key
ON bookings ( book_date )
WHERE total_amount > 1000000;
CREATE INDEX bookings_total_amount_key
ON bookings ( total_amount );
DROP INDEX bookings_book_date_part_key;
\d bookings;
DROP INDEX bookings_book_date_part_key;
CREATE INDEX bookings_book_date_part_key
ON bookings ( book_date )
WHERE total_amount > 1000000;
SELECT *
FROM bookings
WHERE total_amount > 1000000
ORDER BY book_date DESC;
DROP INDEX bookings_book_date_part_key;
CREATE INDEX bookings_total_amount_key
ON bookings ( total_amount );
SELECT *
FROM bookings
WHERE total_amount > 1000000
ORDER BY book_date DESC;
\й
\q
SELECT * FROM bookings;
\di bookings_book_ref_total_amount_idx;
\di+ bookings_book_ref_total_amount_idx;
\s sql_cmd_3006.sql
\q
CREATE TABLE aircrafts_tmp
AS SELECT * FROM aircrafts;
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SHOW transaction_isolation;
UPDATE aircrafts_tmp
SET range = range + 100
WHERE aircraft_code = 'SU9';
SELECT *
FROM aircrafts_tmp
WHERE aircraft_code = 'SU9';
ROLLBACK;
BEGIN ISOLATION LEVEL READ COMMITTED;
SHOW transaction_isolation;
UPDATE aircrafts_tmp
SET range = range + 100
WHERE aircraft_code = 'SU9';
SELECT *
FROM aircrafts_tmp
WHERE aircraft_code = 'SU9';
COMMIT;
BEGIN;
SELECT * FROM aircrafts_tmp;
SELECT * FROM aircrafts_tmp;
END;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT * FROM aircrafts_tmp;
SELECT *
FROM aircrafts_tmp;
END;
SELECT *
FROM aircrafts_tmp;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE aircrafts_tmp
SET range = range + 100
WHERE aircraft_code = '320';
END;
CREATE TABLE modes (
num integer,
mode text
);
INSERT INTO modes VALUES ( 1, 'LOW' ), ( 2, 'HIGH' );
SELECT * FROM modes;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE modes
SET mode = 'HIGH'
WHERE mode = 'LOW'
RETURNING *;
SELECT * FROM modes;
COMMIT;
UPDATE modes
SET mode = 'LOW'
WHERE num = 1
RETURNING *;
COMMIT;
SELECT * FROM modes;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE modes
SET mode = 'HIGH'
WHERE mode = 'LOW'
RETURNING *;
END;
SELECT * FROM modes;
UPDATE modes
SET mode = 'HIGH'
WHERE num = 2
RETURNING *;
END;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE modes
SET mode = 'LOW'
WHERE mode = 'HIGH'
RETURNING *;
END;
SELECT * FROM modes;
INSERT INTO bookings ( book_ref, book_date, total_amount )
VALUES ( 'ABC123', bookings.now(), 0 );
INSERT INTO tickets ( ticket_no, book_ref, passenger_id, passenger_name)
VALUES ( '9991234567890', 'ABC123', '1234 123456', 'IVAN PETROV' );
INSERT INTO tickets ( ticket_no, book_ref, passenger_id, passenger_name)
VALUES ( '9991234567891', 'ABC123', '4321 654321', 'PETR IVANOV' );
INSERT INTO ticket_flights
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '9991234567890', 5572, 'Business', 12500 ),
( '9991234567890', 13881, 'Economy', 8500 );
INSERT INTO ticket_flights
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '9991234567891', 5572, 'Business', 12500 ),
( '9991234567891', 13881, 'Economy', 8500 );
DELETE FROM bookings WHERE book_ref = 'ABC123';
DELETE FROM tickets WHERE passenger_id = '1234 123456';
DELETE FROM ticket_flights WHERE ticket_no = '9991234567891';
DELETE FROM tickets WHERE passenger_id = '1234 123456';
DELETE FROM ticket_flights WHERE ticket_no = '9991234567890';
DELETE FROM tickets WHERE passenger_id = '1234 123456';
DELETE FROM tickets WHERE passenger_id = '4321 654321';
DELETE FROM bookings WHERE book_ref = 'ABC123';
END;
BEGIN;
INSERT INTO bookings ( book_ref, book_date, total_amount )
VALUES ( 'ABC123', bookings.now(), 0 );
INSERT INTO tickets ( ticket_no, book_ref, passenger_id, passenger_name)
VALUES ( '9991234567890', 'ABC123', '1234 123456', 'IVAN PETROV' );
INSERT INTO tickets ( ticket_no, book_ref, passenger_id, passenger_name)
VALUES ( '9991234567891', 'ABC123', '4321 654321', 'PETR IVANOV' );
INSERT INTO ticket_flights
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '9991234567890', 5572, 'Business', 12500 ),
( '9991234567890', 13881, 'Economy', 8500 );
INSERT INTO ticket_flights
( ticket_no, flight_id, fare_conditions, amount )
VALUES ( '9991234567891', 5572, 'Business', 12500 ),
( '9991234567891', 13881, 'Economy', 8500 );
UPDATE bookings
SET total_amount =
( SELECT sum( amount )
FROM ticket_flights
WHERE ticket_no IN
( SELECT ticket_no
FROM tickets
WHERE book_ref = 'ABC123'
)
)
WHERE book_ref = 'ABC123';
SELECT *
FROM bookings
WHERE book_ref = 'ABC123';
COMMIT;
BEGIN ISOLATION LEVEL READ COMMITTED;
SHOW transaction_isolation;
SELECT *
FROM aircrafts_tmp
WHERE model ~ '^Аэро'
FOR UPDATE;
UPDATE aircrafts_tmp
SET range = 5800
WHERE aircraft_code = '320';
END;
BEGIN ISOLATION LEVEL READ COMMITTED;
SHOW transaction_isolation;
LOCK TABLE aircrafts_tmp
IN ACCESS EXCLUSIVE MODE;
 ROLLBACK;
\s sql_cmd_307.sql
\q
BEGIN;
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT *
FROM aircrafts_tmp
WHERE aircraft_code = 'SU9';
ROLLBACK;
BEGIN;
UPDATE aircrafts_tmp
SET range = range + 200
WHERE aircraft_code = 'SU9';
SELECT *
FROM aircrafts_tmp
WHERE aircraft_code = 'SU9';
END;
BEGIN;
DELETE FROM aircrafts_tmp
WHERE model ~ '^Боин';
SELECT * FROM aircrafts_tmp;
END;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
INSERT INTO aircrafts_tmp
VALUES ( 'IL9', 'Ильюшин ИЛ96', 9800 );
UPDATE aircrafts_tmp
SET range = range + 100
WHERE aircraft_code = '320';
END;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
UPDATE aircrafts_tmp
SET range = range + 200
WHERE aircraft_code = '320';
END;
SELECT *
FROM aircrafts_tmp
WHERE aircraft_code = '320';
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE modes
SET mode = 'LOW'
WHERE mode = 'HIGH'
RETURNING *;
SELECT * FROM modes;
COMMIT;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE modes
SET mode = 'LOW'
WHERE mode = 'HIGH'
RETURNING *;
END;
SELECT * FROM modes;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE modes
SET mode = 'HIGH'
WHERE mode = 'LOW'
RETURNING *;
END;
SELECT * FROM modes;
BEGIN ISOLATION LEVEL READ COMMITTED;
SHOW transaction_isolation;
SELECT *
FROM aircrafts_tmp
WHERE model ~ '^Аэро'
FOR UPDATE;
END;
SELECT *
FROM aircrafts_tmp
WHERE model ~ '^Аэро';
\q
\s sql_cmd_307.sql
\q
BEGIN;
SELECT * FROM aircrafts_tmp WHERE range < 2000;
UPDATE aircrafts_tmp SET range = 2100 WHERE aircraft_code = 'CN1';
UPDATE aircrafts_tmp SET range = 1900 WHERE aircraft_code = 'CR2';
COMMIT;
BEGIN;
UPDATE aircrafts_tmp SET range = 2100 WHERE aircraft_code = 'CR2';
UPDATE aircrafts_tmp SET range = 1200 WHERE aircraft_code = 'CN1';
ROLLBACK;
BEGIN;
SELECT * FROM aircrafts_tmp WHERE range > 6000;
SELECT * FROM aircrafts_tmp WHERE range > 6000;
END;
BEGIN;
SELECT * FROM aircrafts_tmp WHERE range > 6000;
SELECT * FROM aircrafts_tmp WHERE range > 6000;
END;
CREATE TABLE modes AS
SELECT num::integer, 'LOW' || num::text AS mode
FROM generate_series( 1, 100000 ) AS gen_ser( num )
UNION ALL
SELECT num::integer, 'HIGH' || ( num - 100000 )::text AS mode
FROM generate_series( 100001, 200000 ) AS gen_ser( num );
CREATE TABLE modes2 AS
SELECT num::integer, 'LOW' || num::text AS mode
FROM generate_series( 1, 100000 ) AS gen_ser( num )
UNION ALL
SELECT num::integer, 'HIGH' || ( num - 100000 )::text AS mode
FROM generate_series( 100001, 200000 ) AS gen_ser( num );
SELECT * FROM modes2;
CREATE INDEX modes_ind
ON modes ( num );
SELECT *
FROM modes
WHERE mode IN ( 'LOW1', 'HIGH1' );
CREATE INDEX modes_ind
ON modes2 ( num );
CREATE INDEX modes_ind2
ON modes2 ( num );
SELECT *
FROM modes2
WHERE mode IN ( 'LOW1', 'HIGH1' );
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;
UPDATE modes2 SET mode = 'HIGH1' WHERE num = 1;
COMMIT;
SELECT * FROM modes2 WHERE mode IN ('LOW1', 'HIGH1');
\s sql_cmd_407.sql
