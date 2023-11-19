-- DROP DATABASE gans;
CREATE DATABASE gans;
USE gans;

-- DROP TABLE cities;
CREATE TABLE IF NOT EXISTS cities (
	city_id INT AUTO_INCREMENT,
    city_name VARCHAR(200),
    country_code VARCHAR(3),
    latitude DECIMAL(8,4),
    longitude DECIMAL(8,4),
    UNIQUE(city_name),
	PRIMARY KEY(city_id)
);

CREATE TABLE IF NOT EXISTS populations (
	city_id INT,
    population INT,
    timestamp_population YEAR,
    FOREIGN KEY(city_id) REFERENCES cities(city_id)
);
SELECT* FROM populations;

CREATE TABLE IF NOT EXISTS weathers (
	id INT AUTO_INCREMENT,
    city_id INT,
    forecast_time DATETIME,
    outlook VARCHAR(200),
    temperature DECIMAL(4,2),
    feels_like DECIMAL(4,2),
    wind_speed DECIMAL(4,2),
    rain_prob DECIMAL(4,2),
	PRIMARY KEY(id),
    FOREIGN KEY(city_id) REFERENCES cities(city_id)
);

CREATE TABLE IF NOT EXISTS airports (
	airport_icao VARCHAR(25),
    airport_name VARCHAR(255),
    UNIQUE(airport_icao),
    PRIMARY KEY (airport_icao)
);

CREATE TABLE IF NOT EXISTS cities_airports (
	city_id INT,
    airport_icao VARCHAR(5),
    PRIMARY KEY(city_id, airport_icao),
    FOREIGN KEY(city_id) REFERENCES cities(city_id),
    FOREIGN KEY(airport_icao) REFERENCES airports(airport_icao)
);

CREATE TABLE IF NOT EXISTS flights (
	flight_id INT NOT NULL AUTO_INCREMENT,
	flight_num VARCHAR(25),
    departure_icao VARCHAR(25),
    arrival_icao VARCHAR(25),
    arrival_time DATETIME,
    PRIMARY KEY (flight_id),
	FOREIGN KEY (arrival_icao) REFERENCES airports(airport_icao)
);
-- SELECT * FROM cities;
-- SELECT * FROM airports;
-- SELECT * FROM weathers;
-- SELECT * FROM flights;