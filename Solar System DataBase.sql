CREATE DATABASE Solar_System;

USE Solar_System;

drop database solar_system;

-- 11. Create a table named Student with the data fields,data types and primary Key.
-- Creating Planets table
CREATE TABLE Planet
(
Planet_id INT PRIMARY KEY auto_increment,
Planet_name VARCHAR(50) NOT NULL UNIQUE,
Planet_age BIGINT(30) NOT NULL,
Planet_mass FLOAT(10,10),
Planet_radius FLOAT(10,10),
Distance_from_Sun FLOAT(10,10),
Atmosphere_type VARCHAR(50),
Orbital_period Float(10,10)
);


-- 12. Describe the primary key and forgein key. Use an example to explain the one to many relationship. 
-- Primary key is Unique and cannot be null and cannot be duplicated

/*So my Planet table exemplifies the one to many relatationship as for example,
The Planet Saturn hold the relationships of many moons as the foriegn key as the moons orbits saturn as their home planet */


CREATE TABLE Moons
(
Moon_id INT PRIMARY KEY auto_increment,
Moon_name VARCHAR(30) NOT NULL UNIQUE,
Planet_id INT(4) NOT NULL,
Moon_mass FLOAT(6,5),
Diameter FLOAT(6,5),
Radius FLOAT(6,5),
Orbital_period Float(6,5),
FOREIGN KEY (Planet_id) REFERENCES Planet(Planet_id) ON DELETE CASCADE
);
DROP TABLE moons;

CREATE TABLE Nearby_Stars
(
Star_id INT PRIMARY KEY auto_increment,
Star_name VARCHAR(50) NOT NULL UNIQUE,
Constellation_id INT(4) NOT NULL,
Star_age BIGINT(30) NOT NULL,
Spectral_type VARCHAR(50), /* (e.g., "G-type", "M-type", "O-type") */
Mass FLOAT(6,5), /* (in solar masses) */
Radius FLOAT(6,5), /* (in solar masses) */
Luminosity FLOAT(6,5), /* (relative to Sun) */
distance_from_earth FLOAT(6,5), /* (in light-years) */
FOREIGN KEY (Constellation_id) REFERENCES Constellations(Constellation_id) ON DELETE CASCADE
);
DROP TABLE Nearby_Stars;

CREATE TABLE Constellations (
    Constellation_id INT PRIMARY KEY auto_increment,
    Constellation_name VARCHAR(50) NOT NULL UNIQUE,
    main_stars_count INT(10) NOT NULL,
    brightest_star VARCHAR(50) NOT NULL
);

select * from Planet;
select * from Moons;
select * from Nearby_Stars;
select * from Constellations;

INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Mercury",4500000000, 0.330, 2439.7, 0.39, "Thin", 88.0);
INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Venus",4500000000, 4.87, 6051.8, 6051.8, "Thick", 224.7);
INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Earth",4500000000, 5.97, 6371.0, 6371.0, "Rich", 365.2);
INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Mars",4500000000, 0.642, 3389.5, 3389.5, "Thin", 687.0);
INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Jupiter",4500000000, 1898.0, 778.5, 778.5, "Thick", 4332.6);
INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Saturn",4500000000, 568.0, 1433.5, 1433.5, "Thick", 10759.0);
INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Uranus",4500000000, 86.8, 2872.5, 2872.5, "Thick", 30687.0 );
INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Neptune",4500000000, 102.0, 24622.0, 24622.0,"Thick", 60190.0);
/* INSERT INTO Planet(Planet_name, Planet_age, Planet_mass, Planet_radius, Distance_from_Sun, Atmosphere_type, Orbital_period) values("Pluto",4500000000, ); */

INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Moon", 3, 7.35, 34748, 1737, 27.3);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Phobos", 4, 10.6, 22.4, 11.2, 0.32);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Deimos", 4, 2.4, 12.4, 6.2, 1.26);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Ganymede", 5, 148.2, 5268, 2634, 7.15);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Callisto", 5, 107.6, 4821, 2410.5, 16.69);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Lo", 5, 89.3, 3643, 1821.5, 1.77);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Europa", 5, 48.0, 3122, 1561, 3.55);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Titan", 6, 134.5, 5151, 2575.5, 15.95);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Rhea", 6, 2.3, 1527, 763.5, 4.52);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Lapetus", 6, 1.8, 1469, 734.5, 79.32);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Dione", 6, 1.1, 1123, 561.5, 2.74);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Tethys", 6, 0.617, 1066, 533, 1.89);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Titania", 7, 3.4, 1578, 789, 8.71);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Oberon", 7, 3.0, 1523, 761.5, 13.46);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Umbriel", 7, 1.3, 1169, 584.5, 4.14);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Ariel", 7, 1.3, 1158, 579, 2.52);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Miranda", 7, 0.0666, 471, 235.5, 1.41);
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Triton", 8, 21.4, 27-6, 1353,-5.88); /* Retrograde*/
INSERT INTO Moons(Moon_name, Planet_id, Moon_mass, Diameter, Radius, Orbital_period) values ("Proteus", 8, 0.05, 420, 210, 1.12);

INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values ("Centaurus", 11, "Alpha Centauri"); /* I LEFT OFF HERE WHERE I'M DETERMINGING THE FOREIGN KEYS NOW FOR SOME OF THESE ARGS */
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Ophiuchus", 10, "Rasahague");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Leo", 9, "Regulus");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Ursa Major", 7, "Alioth");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Canis Major", 5, "Sirius");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Canis Minor", 2, "Procyon");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Sagittarius", 9, "Kaus Australis");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Taurus", 9, "Aldebaran");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Cancer", 5, "Beta Council");
INSERT INTO Constellations(Constellation_name, main_stars_count, brightest_star) values  ("Libra", 4, "Zubenelgenubi");

INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Alpha Centauri", 1, 6000000000, "G27", 1.10, 1.22, 1.519, 4.37);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Alpha Centauri B", 1, 6000000000, "K1V", 0.91, 0.86, 0.503, 4.37);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Proxima Centauri", 1, 4800000000, "M5.5Ve", 0.12, 0.14, 0.0017, 4.25);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Rasalhague", 2, 770000000, "A5III", 2.40, 2.70, 25.0, 47.0);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Banard's Star", 2, 10000000000, "M4.0VE", 0.16, 0.20, 0.0035, 5.96);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Regulus", 3, 300000000, "B8IV", 3.80, 3.20, 288.0, 79.3);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Alioth", 4, 300000000, "A0p", 2.91, 4.14, 102.0, 81.2);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Dubhe", 4, 300000000, "K0III", 4.25, 20.0, 316.0, 123.0);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Sirius A", 5, 242000000, "A1V", 2.02, 1.71, 25.4, 8.60);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Sirius B", 5, 242000000, "DA2", 1.00, 0.0084, 0.0025, 8.60);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Procyon A", 6, 1870000000, "F5IV-V", 1.50, 2.00, 6.90, 11.46);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Procyon B", 6, 1370000000, "DQZ", 0.60, 0.01, 0.0006, 11.46);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Kaus Australis", 7, 50000000, "B9.5III", 3.51, 6.80, 363.0, 143.0);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Aldebaran", 8, 6400000000, "K5+III", 1.16, 44.13, 518.0, 65.0);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Beta Cancri", 9, 35000000000, "K4III", 1.70, 14.00, 620.0, 290.0);
INSERT INTO Nearby_Stars(Star_name, Constellation_id, Star_age, Spectral_type, Mass, Radius, Luminosity, distance_from_earth) values ("Zubenelgenubi", 10, 1300000000, "A3IV", 2.21, 2.32, 49.0, 77.3);

-- 1. Get all employees.
select * from Constellations;


-- 2. Display the first name and last name of all employees.
-- I am using my Solar System Databse and am retrieving Luminousity & Spectral_Type
select Spectral_Type, Luminosity from Nearby_Stars;


-- 3. Display all the values of the “First_Name” column using the alias “Employee Name”
select Star_name, Star_age as Oldest_Stars from Nearby_Stars where Star_age > 1000000000 order by Oldest_Stars desc;

-- 4. Get all “Last_Name” in lowercase
select lower(Moon_name) as Moon_Names from Moons;
select upper(Moon_name) as Moon_Names from Moons;


-- 6. Get unique “DEPARTMENT”
-- I am getting Unique Atmosphere Type from Planet table
select distinct Atmosphere_type from Planet;


-- Get the first 4 characters of “FIRST_NAME” column
-- For my databse I will be retrieving the first 4 chars of Constellation_name column
select left(Constellation_name,4) as First_4_character from Constellations;
select right(Constellation_name,4) as Last_4_character from Constellations;


-- 8. Get the position of the letter ‘h’ in ‘John’.
-- I will be getting the position of the letter h in Alpha Centauri
select locate('h','Alpha Centauri') as position_of_h;
select position('C' in 'Alpha Centauri') as position_of_C;


-- 9. Get all values from the “FIRST_NAME” column after removing white space on the right.
-- My database will be retrieving the values from the Star_name column removing the white space from the right
select rtrim(Star_name) as Star_Names from Nearby_Stars;

-- 10. Get all values from the “FIRST_NAME” column after removing white space on the left.
-- My database will be retrieving the values from the Planet_name column removing the white space from the left
select rtrim(Planet_name) as Planet_Names from Planet;







