CREATE DATABASE isro_mission_operations;
USE isro_mission_operations;
CREATE TABLE Admin (
    AdminID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(30) UNIQUE NOT NULL,
    Password VARCHAR(255) NOT NULL,
    Name VARCHAR(50) NOT NULL,
    Role VARCHAR(30) DEFAULT 'Administrator'
);
CREATE TABLE Rocket (
    RocketID INT PRIMARY KEY AUTO_INCREMENT,
    RocketCode VARCHAR(10) UNIQUE NOT NULL,
    RocketName VARCHAR(50) NOT NULL,
    RocketType VARCHAR(40),
    Stages INT,
    PayloadCapacity DECIMAL(10,2),
    FuelType VARCHAR(50),
    Status VARCHAR(20)
);
CREATE TABLE Satellite (
    SatelliteID INT PRIMARY KEY AUTO_INCREMENT,
    SatelliteCode VARCHAR(10) UNIQUE NOT NULL,
    SatelliteName VARCHAR(80) NOT NULL,
    Purpose VARCHAR(80),
    OrbitType VARCHAR(40),
    Weight DECIMAL(10,2),
    Status VARCHAR(20),
    MissionID INT,

    FOREIGN KEY (MissionID)
        REFERENCES Mission(MissionID)
);

DESCRIBE Mission;
CREATE DATABASE isro_mission_operations;
USE isro_mission_operations;
INSERT INTO Admin
(Username, Password, Name, Role)
VALUES
('admin', 'admin123', 'System Administrator', 'Administrator');
INSERT INTO Rocket
(RocketCode, RocketName, RocketType, Stages, PayloadCapacity, FuelType, Status)
VALUES
('RKT101', 'PSLV', 'Polar Satellite Launch Vehicle', 4, 3800.00, 'Solid and Liquid', 'Active'),

('RKT102', 'GSLV Mk II', 'Geosynchronous Launch Vehicle', 3, 5000.00, 'Solid, Liquid and Cryogenic', 'Active'),

('RKT103', 'LVM3', 'Heavy Lift Launch Vehicle', 3, 8000.00, 'Solid, Liquid and Cryogenic', 'Active'),

('RKT104', 'SSLV', 'Small Satellite Launch Vehicle', 3, 500.00, 'Solid', 'Active'),

('RKT105', 'SLV-3', 'Satellite Launch Vehicle', 4, 40.00, 'Solid', 'Retired');
INSERT INTO Satellite
(SatelliteCode, SatelliteName, Purpose, OrbitType, Weight, Status, MissionID)
VALUES
('SAT101', 'Chandrayaan-1', 'Lunar Exploration', 'Lunar Orbit', 1380.00, 'Completed', 1),

('SAT102', 'Mars Orbiter Mission', 'Mars Exploration', 'Mars Orbit', 1337.00, 'Completed', 2),

('SAT103', 'Chandrayaan-2 Orbiter', 'Lunar Mapping', 'Lunar Orbit', 2379.00, 'Active', 3),

('SAT104', 'Chandrayaan-3 Propulsion Module', 'Lunar Exploration', 'Lunar Orbit', 2148.00, 'Completed', 4),

('SAT105', 'Aditya-L1', 'Solar Observation', 'Halo Orbit', 1480.00, 'Active', 5),

('SAT106', 'EOS-07', 'Earth Observation', 'Low Earth Orbit', 156.00, 'Completed', 7);

SELECT * FROM Admin;
SELECT * FROM Rocket;
SELECT * FROM Mission;
