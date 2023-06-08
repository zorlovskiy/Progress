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
