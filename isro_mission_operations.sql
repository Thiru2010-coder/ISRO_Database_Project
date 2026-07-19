-- CREATE TABLE `admin` (
--   `AdminID` int NOT NULL AUTO_INCREMENT,
--   `Username` varchar(30) NOT NULL,
--   `Password` varchar(255) NOT NULL,
--   `Name` varchar(50) NOT NULL,
--   `Role` varchar(30) DEFAULT 'Administrator',
--   PRIMARY KEY (`AdminID`),
--   UNIQUE KEY `Username` (`Username`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE payload (
    PayloadID INT PRIMARY KEY AUTO_INCREMENT,
    PayloadName VARCHAR(100) NOT NULL,
    PayloadType VARCHAR(50)
);