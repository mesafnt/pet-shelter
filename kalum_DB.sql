-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 09, 2022 at 01:34 AM
-- Server version: 8.0.30
-- PHP Version: 7.2.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kalum_DB`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `ADOPTED_PETS`
-- (See below for the actual view)
--
CREATE TABLE `ADOPTED_PETS` (
`PetsName` varchar(15)
,`Fname` varchar(15)
,`Lname` varchar(15)
,`DateofAdoption` date
,`PetsStatus` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `ADOPTION`
--

CREATE TABLE `ADOPTION` (
  `AdoptionNum` char(9) NOT NULL,
  `DateofAdoption` date DEFAULT NULL,
  `Owner_id` char(9) NOT NULL,
  `PetsStatus` varchar(15) NOT NULL,
  `OwnersStatus` varchar(15) NOT NULL,
  `P_id` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ADOPTION`
--

INSERT INTO `ADOPTION` (`AdoptionNum`, `DateofAdoption`, `Owner_id`, `PetsStatus`, `OwnersStatus`, `P_id`) VALUES
('1000', '2020-01-01', '1', 'adopted', 'approved', '100'),
('1001', '2020-10-20', '2', 'adopted', 'approved', '101'),
('1002', '2020-03-04', '3', 'adopted', 'approved', '102'),
('1003', '2020-09-28', '4', 'unadopted', 'pending', '103'),
('1004', '2020-08-19', '5', 'unadopted', 'denied', '104'),
('1005', '2020-03-09', '6', 'adopted', 'approved', '105'),
('1006', '2020-06-23', '7', 'unadopted', 'pending', '106'),
('1007', '2020-01-27', '8', 'unadopted', 'pending', '107'),
('1008', '2020-12-28', '10', 'unadopted', 'denied', '109'),
('1009', '2020-02-04', '13', 'unadopted', 'denied', '112'),
('1010', '2021-03-02', '14', 'adopted', 'approved', '113'),
('1011', '2021-08-09', '15', 'unadopted', 'pending', '114'),
('1012', '2021-01-24', '17', 'adopted', 'approved', '116'),
('1013', '2021-11-10', '18', 'adopted', 'approved', '117'),
('1014', '2021-10-28', '19', 'returned', 'approved', '118'),
('1015', '2021-08-21', '16', 'adopted', 'approved', '115'),
('1016', '2021-07-11', '20', 'returned', 'approved', '119'),
('1017', '2021-11-09', '22', 'returned', 'approved', '102'),
('1018', '2021-12-01', '24', 'returned', 'approved', '109'),
('1019', '2021-01-29', '25', 'unadopted', 'pending', '110'),
('1020', '2021-09-09', '26', 'adopted', 'approved', '120'),
('1021', '2021-08-08', '27', 'adopted', 'approved', '121'),
('1022', '2021-07-07', '30', 'adopted', 'approved', '108'),
('1023', '2021-06-01', '32', 'adopted', 'approved', '121'),
('1024', '2021-12-04', '35', 'adopted', 'approved', '111'),
('1025', '2022-01-01', '36', 'adopted', 'approved', '112'),
('1026', '2022-02-03', '38', 'adopted', 'approved', '121'),
('1027', '2022-03-09', '39', 'adopted', 'approved', '122'),
('1028', '2022-04-01', '40', 'adopted', 'approved', '123'),
('1029', '2022-11-27', '45', 'adopted', 'approved', '128'),
('1030', '2022-04-01', '47', 'adopted', 'approved', '130');

-- --------------------------------------------------------

--
-- Stand-in structure for view `ADOPTION_RATE`
-- (See below for the actual view)
--
CREATE TABLE `ADOPTION_RATE` (
`Breed` varchar(25)
,`rate_of_adoption` decimal(23,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `OWNERS_PERFORMANCE`
-- (See below for the actual view)
--
CREATE TABLE `OWNERS_PERFORMANCE` (
`Fname` varchar(15)
,`Lname` varchar(15)
,`PetsName` varchar(15)
,`Sizes` varchar(6)
,`Breed` varchar(25)
,`Species` varchar(15)
,`OwnersStatus` varchar(15)
,`PetsStatus` varchar(15)
);

-- --------------------------------------------------------

--
-- Table structure for table `PETS`
--

CREATE TABLE `PETS` (
  `PetId` char(9) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `BirthDate` date DEFAULT NULL,
  `Sex` char(1) DEFAULT NULL,
  `Catagory` varchar(15) NOT NULL,
  `Weight` decimal(10,2) DEFAULT NULL,
  `Description` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PETS`
--

INSERT INTO `PETS` (`PetId`, `Name`, `BirthDate`, `Sex`, `Catagory`, `Weight`, `Description`) VALUES
('100', 'Charlie', '2010-12-12', 'M', 'Dog', '34.30', 'charlie like to play ball'),
('101', 'Max', '2015-07-09', 'M', 'Dog', '23.40', ''),
('102', 'Buddy', '2012-09-23', 'M', 'Dog', '43.40', ''),
('103', 'Milo', '2019-08-08', 'M', 'Dog', '50.90', ''),
('104', 'Archie', '2017-03-28', 'M', 'Dog', '25.40', ''),
('105', 'Ollie', '2016-02-19', 'M', 'Dog', '22.40', ''),
('106', 'Oscar', '2020-12-23', 'M', 'Dog', '30.60', ''),
('107', 'Teddy', '2019-10-20', 'M', 'Dog', '38.50', ''),
('108', 'Leo', '2014-10-25', 'M', 'Dog', '34.10', ''),
('109', 'Alfie', '2016-05-28', 'M', 'Dog', '29.40', ''),
('110', 'Bella', '2019-08-24', 'F', 'Dog', '52.30', ''),
('111', 'Luna', '2013-02-19', 'F', 'Dog', '53.80', 'luna like walk'),
('112', 'Coco', '2017-05-18', 'F', 'Dog', '55.80', ''),
('113', 'Ruby', '2014-09-03', 'F', 'Dog', '28.30', ''),
('114', 'Molly', '2017-02-26', 'F', 'Dog', '44.60', 'molly like to eat bannana'),
('115', 'Frankie', '2019-03-25', 'F', 'Dog', '46.50', ''),
('116', 'Daisy', '2018-03-01', 'F', 'Dog', '40.90', ''),
('117', 'Rosie', '2017-04-18', 'F', 'Dog', '27.50', ''),
('118', 'Lucy', '2016-06-25', 'F', 'Dog', '22.50', ''),
('119', 'Lola', '2018-03-08', 'F', 'Dog', '35.50', 'lola is nice and beautiful dog'),
('120', 'Oliver', '2020-12-10', 'M', 'Cat', '10.30', ''),
('121', 'Simba', '2021-03-23', 'M', 'Cat', '12.40', ''),
('122', 'Jack', '2022-02-25', 'M', 'Cat', '8.80', ''),
('123', 'Loki', '2022-03-04', 'M', 'Cat', '9.90', ''),
('124', 'Tiger', '2020-09-23', 'M', 'Cat', '10.20', ''),
('125', 'Jasper', '2019-04-09', 'M', 'Cat', '11.10', ''),
('126', 'Lily', '2021-03-28', 'F', 'Cat', '8.90', ''),
('127', 'Kitty', '2020-12-03', 'F', 'Cat', '6.70', ''),
('128', 'Nala', '2021-04-03', 'F', 'Cat', '8.50', ''),
('129', 'Zoe', '2019-05-15', 'F', 'Cat', '9.40', ''),
('130', 'Stella', '2018-05-19', 'F', 'Cat', '10.30', ''),
('131', 'Chloe', '2017-03-03', 'F', 'Cat', '12.00', ''),
('132', 'Nala', '2018-04-02', 'F', 'Cat', '11.50', ''),
('133', 'Baby', '2018-05-01', 'M', 'Cat', '11.60', ''),
('134', 'Blue', '2020-01-02', 'M', 'Cat', '10.80', ''),
('135', 'Abby', '2019-12-09', 'F', 'Hamster', '0.30', ''),
('136', 'Belle', '2019-11-03', 'F', 'Hamster', '0.20', ''),
('137', 'Cleo', '2019-10-19', 'F', 'Hamster', '0.32', ''),
('138', 'Daisy', '2020-02-03', 'F', 'Hamster', '0.34', ''),
('139', 'Dolly', '2021-03-02', 'F', 'Hamster', '0.37', ''),
('140', 'Dora', '2021-12-10', 'F', 'Hamster', '0.26', ''),
('141', 'Evie', '2022-01-02', 'F', 'Hamster', '0.28', ''),
('142', 'Ginger', '2020-12-09', 'F', 'Hamster', '0.25', ''),
('143', 'Holly', '2021-02-28', 'F', 'Hamster', '0.31', ''),
('144', 'Ivy', '2019-10-09', 'F', 'Hamster', '0.34', ''),
('145', 'Alexander', '2019-09-09', 'M', 'Hamster', '0.36', ''),
('146', 'Arnold', '2022-01-09', 'M', 'Hamster', '0.39', ''),
('147', 'Chadwick', '2021-01-01', 'M', 'Hamster', '0.31', ''),
('148', 'Cletis', '2019-03-02', 'M', 'Hamster', '0.29', ''),
('149', 'Duncan', '2020-07-03', 'M', 'Hamster', '0.23', ''),
('150', 'Aja', '2022-01-01', 'F', 'Bird', '0.11', ''),
('151', 'Ala', '2021-03-02', 'F', 'Bird', '0.12', ''),
('152', 'Aubrey', '2021-12-02', 'F', 'Bird', '0.10', ''),
('153', 'Aubrey', '2022-03-03', 'F', 'Bird', '0.13', ''),
('154', 'Barry', '2022-09-01', 'M', 'Bird', '0.15', ''),
('155', 'Benny', '2021-12-28', 'M', 'Bird', '0.16', ''),
('156', 'Bertram', '2022-07-01', 'M', 'Bird', '0.12', ''),
('157', 'Boomslang', '2019-01-08', 'M', 'Snake', '1.00', ''),
('158', 'king', '2020-01-27', 'M', 'Snake', '1.20', ''),
('159', 'Banded', '2021-09-12', 'M', 'Snake', '1.50', ''),
('160', 'Skink', '2018-05-13', 'M', 'Lizard', '50.90', ''),
('161', 'Tegu', '2019-09-01', 'F', 'Lizard', '45.90', ''),
('162', 'Leopard', '2020-12-10', 'M', 'Lizard', '65.20', '');

-- --------------------------------------------------------

--
-- Table structure for table `PETS_OWNER`
--

CREATE TABLE `PETS_OWNER` (
  `Id` char(9) NOT NULL,
  `Fname` varchar(15) NOT NULL,
  `Lname` varchar(15) NOT NULL,
  `Street` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `City` varchar(15) NOT NULL,
  `States` varchar(15) NOT NULL,
  `ZipCode` char(6) NOT NULL,
  `Phone` char(11) NOT NULL,
  `Email` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sizes` varchar(6) NOT NULL,
  `Breed` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Species` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Pid` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `PETS_OWNER`
--

INSERT INTO `PETS_OWNER` (`Id`, `Fname`, `Lname`, `Street`, `City`, `States`, `ZipCode`, `Phone`, `Email`, `Sizes`, `Breed`, `Species`, `Pid`) VALUES
('1', 'james', 'Jabber', '1012 sable st', 'Aurora', 'CO', '80012', '7202209089', 'james@gmail.com', 'L', 'german shepherd', 'Dog', '100'),
('10', 'angel', 'hill', '100 FILLMORE ST ', 'denver', 'CO', '80206', '3032142142', 'foster@gmail.com', 'M', 'chihuahua', 'dog', '109'),
('11', 'sandra', 'foster', '8081 ORCHARD RD ', 'Greenwood', 'CO', '80111', '7202138124', 'lee@gmail.com', 'M', 'poodle', 'dog', '110'),
('12', 'visha', 'long', '100 FILLMORE ST ', 'Denver', 'CO', '80206', '3032142147', 'long@gmail.com', 'M', 'yorkshier terrier', 'dog', '111'),
('13', 'marty', 'wood', '1023 39TH AVE ', 'Greely', 'CO', '80634', '7208248498', 'wood@gmail.com', 'L', 'german shepherd', 'dog', '112'),
('14', 'sophia', 'jackson', '16701 REMINGTON RD ', 'Colorado Spring', 'CO', '80908', '3038642872', 'aiden@gmail.com', 'S', 'beagle', 'dog', '113'),
('15', 'emma', 'aiden', '2837 COUNTRY ', 'Denver', 'CO', '80909', '7202148643', 'jackson@gmail.com', 'S', 'beagle', 'dog', '114'),
('16', 'olive', 'lucas', '300 ADAMS AVE ', 'Puablo', 'CO', '81004', '3038632486', 'lucas@gmail.com', 'L', 'german shepherd', 'dog', '115'),
('17', 'ava', 'liam', '1800 BALDWIN PARK RD ', 'Castle Rock', 'CO', '80104', '7202214892', 'liam@gmail.com', 'L', 'german shepherd', 'dog', '116'),
('18', 'mia', 'anderson', '1600 COLUMBINE DR ', 'Aurora', 'CO', '80116', '3038498248', 'anderson@gmail.com', 'L', 'german shepherd', 'dog', '117'),
('19', 'ronnie', 'brown', '58801 US HIGHWAY 36  ', 'STRASBURG', 'CO', '80136', '7202896214', 'brown@gmail.com', 'M', 'boxer', 'dog', '118'),
('2', 'Mia', 'Yang', '1010 exposition cir', 'aurora', 'CO', '80011', '7202345656', 'mia@gmail.com', 'S', 'golden retriever', 'dog', '101'),
('20', 'john', 'brook', '58801 US HIGHWAY 36  ', 'STRASBURG', 'CO', '80136', '3038214892', 'brook@gmail.com', 'M', 'boxer', 'dog', '119'),
('21', 'frank', 'hill', '3333 WADSWORTH BLVD ', 'Lakewood', 'CO', '80227', '7203983489', 'hill@gmail.com', 'M', 'australian shepherd', 'dog', '102'),
('22', 'robert', 'fural', '1000 SUNDERING DR  CO -1809 USA', 'FORT COLLINS', 'CO', '80526', '3039844885', 'fural@gmail.com', 'M', 'australian shepherd', 'dog', '102'),
('23', 'betty', 'johnson', '3425 WINDMILL DR ', 'FORT COLLINS', 'CO', '80526', '3036354837', 'johnson@gmail.com', 'S', 'chihuahua', 'dog', '109'),
('24', 'aeron', 'patricia', '2467 44TH ST ', 'Loveland', 'CO', '80538', '3038732647', 'patricia@gmail.com', 'S', 'chihuahua', 'dog', '109'),
('25', 'aaron', 'petra', '1001 KNOBCONE PL ', 'Loveland', 'CO', '80538', '3037847658', 'petra@gmail.com', 'S', 'chihuahua', 'dog', '109'),
('26', 'abaineh', 'yohannes', '2120 IDALIA ST ', 'AURORA', 'CO', '80013', '7202498644', 'yohannes@gmail.com', 'S', 'chihuahua', 'dog', '109'),
('27', 'abdal-rahim', 'hamid', '17381 MANSFIELD AVE ', 'AURORA', 'CO', '80013', '7202348964', 'hamid@gmail.com', 'S', 'chihuahua', 'dog', '109'),
('28', 'abdi', 'ezkiel', '6767 SPRUCE ST  ', 'CENTENNIAL', 'CO', '80112', '3038940741', 'ezkiel@gmail.com', 'S', 'chihuahua', 'dog', '109'),
('29', 'abel', 'raymond', '5970 JELLISON ST ', 'LITTLETON', 'CO', '80123', '3039409742', 'raymond@gmail.com', 'M', 'australian shepherd', 'dog', '102'),
('3', 'Joanna', 'Smith', '2345 tower rd', 'aurora', 'CO', '80017', '7202349878', 'smith@gmail.com', 'L', 'australian shepherd', 'dog', '102'),
('30', 'abney', 'johnson', '2900 43RD AVE ', 'DENVER', 'CO', '80211', '7202340947', 'johnson@gmail.com', 'M', 'australian shepherd', 'dog', '102'),
('31', 'abraham', 'donat', '451 58TH AVE ', 'DENVER', 'CO', '80216', '3012489214', 'donat@gmail.com', 'M', 'australian shepherd', 'dog', '102'),
('32', 'pamela', 'hans', '401 GRANT AVE ', 'PUEBLO', 'CO', '81004', '3039832457', 'hans@gmail.com', 'M', 'australian shepherd', 'dog', '102'),
('33', 'jacqueline', 'hermann', '1 COUNTY ROAD 11  ', 'MONTE VISTA', 'CO', '81144', '7208294789', 'hermann@gmail.com', 'M', 'australian shepherd', 'dog', '102'),
('34', 'jose', 'perkins', '1552 XAVIER ST ', 'DENVER', 'CO', '80204', '7202473956', 'perkins@gmail.com', 'L', 'german shepherd', 'dog', '100'),
('35', 'rosario', 'roy', '13015 KANSAS PL ', 'AURORA', 'CO', '80012', '3038964571', 'roy@gmail.com', 'L', 'german shepherd', 'dog', '100'),
('36', 'ronaldo', 'clark', '2600 MEMPHIS WAY ', 'AURORA', 'CO', '80013', '7203490249', 'clark@gmail.com', 'L', 'german shepherd', 'dog', '100'),
('37', 'orlando', 'ellis', '1685 GIRARD PL  ', 'ENGLEWOOD', 'CO', '80112', '3039846127', 'ellis@gmail.com', 'L', 'siamese', 'cat', '120'),
('38', 'deborah', 'hart', '4875 BALSAM WAY  ', 'LITTLETON', 'CO', '80123', '3039042775', 'hart@gmail.com', 'S', 'british shorthair', 'cat', '121'),
('39', 'minnie', 'marquis', '1400 COLORADO BLVD ', 'DENVER', 'CO', '80222', '7202349874', 'marquis@gmail.com', 'S', 'maine', 'cat', '122'),
('4', 'Leonie', 'green', '2022 east blackhowk', 'aurora', 'CO', '80010', '7201232322', 'miller@gmail.com', 'M', 'pomeranian', 'dog', '103'),
('40', 'ellen', 'wild', '202 PARK AVE  ', 'FORT LUPTON', 'CO', '80612', '7202470975', 'wild@gmail.com', 'S', 'persian', 'cat', '123'),
('41', 'elias', 'coke', '1104 RACINE WAY ', 'AURORA', 'CO', '80014', '7202489562', 'coke@gmail.com', 'M', 'ragdoll', 'cat', '124'),
('42', 'devin', 'eisler', '2901 UMATILLA ST  ', '', 'CO', '80113', '7202489757', 'eisler@gmail.com', 'M', 'sphynx', 'cat', '125'),
('43', 'ellen', 'dudding', '4586 BEST RD  ', 'LARKSPUR', 'CO', '80118', '3038923549', 'dudding@gmail.com', 'M', 'abyssinian', 'cat', '126'),
('44', 'mozell', 'plasencia', '3927 ZUNI ST ', 'DENVER', 'CO', '80211', '7202489723', 'plasencia@gmail.com', 'M', 'exotic', 'cat', '127'),
('45', 'steve', 'old', '6165 ILIFF AVE ', 'DENVER', 'CO', '80222', '3039823754', 'old@gmail.com', 'M', 'scottish', 'cat', '128'),
('46', 'michale', 'dau', '3400 LAKEVIEW CIR  ', 'LONGMONT', 'CO', '80503', '7202489724', 'dau@gmail.com', 'M', 'scottish', 'cat', '129'),
('47', 'efren', 'litwiler', 'PO BOX 270001 S ', 'FORT COLLIN', 'CO', '80545', '3039821477', 'litwiler@gmail.com', 'M', 'exotic', 'cat', '130'),
('49', 'wilbur', 'fredricks', '208 SUNSET DR  CO ', 'FRUITA', 'CO', '81576', '3031982411', 'fredricks@gmail.com', 'M', 'ragdoll', 'cat', '132'),
('5', 'ashely', 'miller', '125 Rampart Way', 'denver', 'CO', '80012', '7202132143', 'white@gmail.com', 'M', 'shih tzu', 'dog', '104'),
('50', 'tiara', 'polidoro', '4500 WAKEFIELD AVE', ' CASTLE ROCK ', 'CO', '80104', '7202489254', 'polidoro@gmail.com', 'M', 'ragdoll', 'cat', '133'),
('51', 'julietta', 'madon', '3700 WONDER DR  ', 'CASTLE ROCK', 'CO', '80109', '3038932484', 'madon@gmail.com', 'S', 'persian', 'cat', '134'),
('52', 'heath', 'covalt', '16400 MARTINGALE ', 'PARKER', 'CO', '80134', '7202489658', 'covalt@gmail.com', 'S', 'persian', 'cat', '134'),
('53', 'buster', 'xiong', '4001 SAINT PAUL ST ', 'DENVER', 'CO', '80216', '3039824787', 'xiong@gmail.com', 'S', 'budgie', 'bird', '150'),
('54', 'tequila', 'guildford', '3888 45TH AVE ', 'DENVER', 'CO', '80216', '3039374590', 'guildford@gmail.com', 'S', 'cockatiel', 'bird', '151'),
('55', 'cheri', 'hochberg', '5400 MOUNT MEEKER RD  ', 'BOULDER', 'CO', '80301', '7202409711', 'hochberg@gmail.com', 'S', 'parrot', 'bird', '152'),
('56', 'sophia', 'clark', '4000 GROVE ST  ', 'MORRISON', 'CO', '80456', '3023198742', 'clark@gmail.com', 'S', 'canary', 'bird', '153'),
('57', 'samantha', 'harris', '4508 OXFORD RD  ', 'LONGMONT', 'CO', '80454', '3038974655', 'harris@gmail.com', 'S', 'monk parakeet', 'bird', '154'),
('59', 'isabella', 'rodriguez', '2100 IRONTON CT ', 'AURORA', 'CO', '80014', '3039800023', 'rodriguez@gmail.com', 'L', 'corn snake', 'snake', '158'),
('6', 'peter', 'white', '125 rampart way ', 'Denver', 'CO', '80013', '3031231242', 'clark@gmail.com', 'S', 'boredr collie', 'dog', '105'),
('60', 'olive', 'turner', '11600 100TH AVE ', 'BROOMFIELD', 'CO', '80021', '3039023490', 'turner@gmail.com', 'L', 'ball python', 'snake', '159'),
('61', 'elizabeth', 'waston', '3370 CANOSA CT ', 'ENGLEWOOD', 'CO', '80110', '3039823782', 'waston@gmail.com', 'L', 'green anole', 'lizard', '161'),
('62', 'jacob', 'barnes', '100 COMMERCE RD ', ' BERTHOUD', 'CO', '80514', '3039721484', 'barnes@gmail.com', 'L', 'syrian', 'hamster', '135'),
('63', 'robert', 'brooks', '8000 STEEPLECHASE DR C', 'WINDSOR ', 'CO', '80550', '3039714282', 'brooks@gmail.com', 'S', 'chinese', 'hamster', '136'),
('64', 'oliver', 'green', '5222 CEDAR DR  CO ', 'USAF ACADEMY', 'CO', '80840', '7202149872', 'green@gmail.com', 'S', 'winter white', 'hamster', '137'),
('67', 'oscar', 'johnson', '901 SPRUCE DR  ', 'DURANGO', 'CO', '81301', '3039274874', 'johnson@gmail.com', 'S', 'chinese', 'hamster', '140'),
('68', 'james', 'martin', '18101 LOYOLA DR ', 'DENVER', 'CO', '80014', '7202340973', 'martin@gmail.com', 'S', 'chinese', 'hamster', '141'),
('69', 'james', 'parker', '1135 CIMARRON DR  ', 'LAFAYETTE', 'CO', '80026', '3030214972', 'parker@gmail.com', 'M', 'syrian', 'hamster', '142'),
('7', 'melody', 'clark', '7101 PIERCE ST ', 'aArvada', 'CO', '80011', '3032142142', 'yang@gmail.com', 'M', 'boxer', 'dog', '106'),
('70', 'joseph', 'reed', '4B INVERNESS CT ', 'DENVER', 'CO', '80238', '3038948533', 'reed@gmail.com', 'M', 'syrian', 'hamster', '143'),
('71', 'liam', 'robinson', '6301 CANYON AVE  ', 'DENVER', 'CO', '80128', '3039024709', 'robinson@gmail.com', 'M', 'syrian', 'hamster', '144'),
('72', 'damien', 'ross', '2649 26TH AVE ', 'DENVER', 'CO', '80211', '3039075234', 'ross@gmail.com', 'M', 'campbell', 'hamster', '145'),
('73', 'micheal', 'scott', '953 JOHNSON ST  ', 'LAKEWOOD', 'CO', '80226', '7202194874', 'scott@gmail.com', 'M', 'campbell', 'hamster', '146'),
('74', 'jack', 'thomas', '1900 101ST CT  ', 'THORNTON', 'CO', '80118', '7202497424', 'thomas@gmail.com', 'M', 'chinese', 'hamster', '147'),
('75', 'daniel', 'william', '10000 ALAMEDA AVE ', 'DENVER', 'CO', '80247', '3039824723', 'william@gmail.com', 'M', 'chinese', 'hamster', '148'),
('8', 'ruby', 'yang', '3375 CASCINA CIR ', 'highland', 'CO', '80016', '3031122323', 'green@gmail.com', 'L', 'beagle', 'dog', '107'),
('9', 'bob', 'lee', '16701 REMINGTON RD ', '', 'CO', '80096', '7202132421', 'hill@gmail.com', 'S', 'dachshund', 'dog', '108');

-- --------------------------------------------------------

--
-- Stand-in structure for view `PETS_PROFILE`
-- (See below for the actual view)
--
CREATE TABLE `PETS_PROFILE` (
`Name` varchar(15)
,`BirthDate` date
,`Catagory` varchar(15)
,`PetsStatus` varchar(15)
,`Age` varchar(53)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `PET_MED_SERV`
-- (See below for the actual view)
--
CREATE TABLE `PET_MED_SERV` (
`Name` varchar(15)
,`Procedures` varchar(15)
,`DateofService` date
);

-- --------------------------------------------------------

--
-- Table structure for table `SERVICES`
--

CREATE TABLE `SERVICES` (
  `ServiceNum` char(9) NOT NULL,
  `DateofService` date DEFAULT NULL,
  `Amount` decimal(10,2) NOT NULL,
  `Procedures` varchar(15) NOT NULL,
  `Petsid` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `SERVICES`
--

INSERT INTO `SERVICES` (`ServiceNum`, `DateofService`, `Amount`, `Procedures`, `Petsid`) VALUES
('10001', '2022-05-15', '35.00', 'Shot', '101'),
('10002', '2022-05-16', '35.00', 'Shot', '102'),
('10003', '2022-05-17', '35.00', 'Shot', '103'),
('10004', '2022-05-18', '35.00', 'Shot', '104'),
('10005', '2022-05-19', '35.00', 'Shot', '105'),
('10006', '2022-05-20', '35.00', 'Shot', '106'),
('10007', '2022-05-21', '35.00', 'Shot', '107'),
('10008', '2022-05-22', '35.00', 'Shot', '108'),
('10009', '2022-05-23', '35.00', 'Shot', '109'),
('10010', '2022-05-24', '35.00', 'Shot', '110'),
('10011', '2022-05-25', '35.00', 'Shot', '111'),
('10012', '2022-05-26', '35.00', 'Shot', '112'),
('10013', '2022-05-27', '35.00', 'Shot', '113'),
('10014', '2022-05-28', '35.00', 'Shot', '114'),
('10015', '2022-05-29', '35.00', 'Shot', '115'),
('10016', '2022-05-30', '35.00', 'Shot', '116'),
('10017', '2022-05-31', '35.00', 'Shot', '117'),
('10018', '2022-06-01', '35.00', 'Shot', '118'),
('10019', '2022-06-02', '35.00', 'Shot', '119'),
('10020', '2022-08-20', '35.00', 'Shot', '120'),
('10021', '2022-08-21', '35.00', 'Shot', '121'),
('10022', '2022-08-22', '35.00', 'Shot', '122'),
('10023', '2022-08-23', '35.00', 'Shot', '123'),
('10024', '2022-08-24', '35.00', 'Shot', '124'),
('10025', '2022-08-25', '35.00', 'Shot', '125'),
('10026', '2022-08-26', '35.00', 'Shot', '126'),
('10027', '2022-08-27', '35.00', 'Shot', '127'),
('10028', '2022-08-28', '35.00', 'Shot', '128'),
('10029', '2022-08-29', '35.00', 'Shot', '129'),
('10030', '2022-08-30', '35.00', 'Shot', '130'),
('10031', '2022-08-31', '35.00', 'Shot', '131'),
('10032', '2022-09-01', '35.00', 'Shot', '132'),
('10033', '2022-09-02', '35.00', 'Shot', '133'),
('10034', '2022-09-03', '35.00', 'Shot', '134'),
('10035', '2022-09-04', '35.00', 'Shot', '135'),
('10036', '2022-09-05', '35.00', 'Shot', '136'),
('10037', '2022-09-06', '35.00', 'Shot', '137'),
('10038', '2022-09-07', '35.00', 'Shot', '138'),
('10039', '2022-09-08', '35.00', 'Shot', '139'),
('10040', '2022-09-09', '35.00', 'Shot', '140'),
('10041', '2022-10-01', '35.00', 'Shot', '141'),
('10042', '2022-10-02', '35.00', 'Shot', '142'),
('10043', '2022-10-03', '35.00', 'Shot', '143'),
('10044', '2022-10-04', '35.00', 'Shot', '144'),
('10045', '2022-10-05', '35.00', 'Shot', '145'),
('10046', '2022-10-06', '35.00', 'Shot', '146'),
('10047', '2022-10-07', '35.00', 'Shot', '147'),
('10048', '2022-10-08', '35.00', 'Shot', '148'),
('10049', '2022-10-09', '35.00', 'Shot', '149'),
('10050', '2022-10-10', '35.00', 'Shot', '150'),
('10051', '2022-10-11', '35.00', 'Shot', '151'),
('10052', '2022-10-12', '35.00', 'Shot', '152'),
('10053', '2022-10-13', '35.00', 'Shot', '153'),
('10054', '2022-10-14', '35.00', 'Shot', '154'),
('10055', '2022-10-15', '35.00', 'Shot', '155'),
('10056', '2022-10-16', '35.00', 'Shot', '156'),
('10057', '2022-10-17', '35.00', 'Shot', '157'),
('10058', '2022-10-18', '35.00', 'Shot', '158'),
('10059', '2022-10-19', '35.00', 'Shot', '159'),
('10060', '2022-10-20', '35.00', 'Shot', '160'),
('10061', '2022-10-21', '35.00', 'Shot', '100'),
('10062', '2022-10-22', '35.00', 'Shot', '161'),
('10063', '2022-10-23', '35.00', 'Shot', '162'),
('10064', '2022-10-24', '45.00', 'Vaccination', '101'),
('10065', '2022-10-25', '45.00', 'Vaccination', '102'),
('10066', '2022-10-26', '45.00', 'Vaccination', '103'),
('10067', '2022-10-27', '45.00', 'Vaccination', '104'),
('10068', '2022-10-28', '45.00', 'Vaccination', '105'),
('10069', '2022-10-29', '45.00', 'Vaccination', '106'),
('10070', '2022-10-30', '45.00', 'Vaccination', '107'),
('10071', '2022-10-31', '45.00', 'Vaccination', '108'),
('10072', '2022-11-01', '45.00', 'Vaccination', '109'),
('10073', '2022-11-02', '45.00', 'Vaccination', '110'),
('10074', '2022-11-03', '45.00', 'Vaccination', '111'),
('10075', '2022-11-04', '45.00', 'Vaccination', '112'),
('10076', '2022-11-05', '45.00', 'Vaccination', '113'),
('10077', '2022-11-06', '45.00', 'Vaccination', '114'),
('10078', '2022-11-07', '45.00', 'Vaccination', '115'),
('10079', '2022-11-08', '45.00', 'Vaccination', '116'),
('10080', '2022-11-09', '45.00', 'Vaccination', '117'),
('10081', '2022-11-10', '45.00', 'Vaccination', '118'),
('10082', '2022-11-11', '45.00', 'Vaccination', '119'),
('10083', '2022-11-12', '45.00', 'Vaccination', '120'),
('10084', '2022-11-13', '45.00', 'Vaccination', '121'),
('10085', '2022-11-14', '45.00', 'Vaccination', '122'),
('10086', '2022-04-01', '45.00', 'Vaccination', '123'),
('10087', '2022-04-02', '45.00', 'Vaccination', '124'),
('10088', '2022-04-03', '45.00', 'Vaccination', '125'),
('10089', '2022-04-04', '45.00', 'Vaccination', '126'),
('10090', '2022-04-05', '45.00', 'Vaccination', '127'),
('10091', '2022-04-06', '45.00', 'Vaccination', '128'),
('10092', '2022-04-07', '45.00', 'Vaccination', '129'),
('10093', '2022-04-08', '45.00', 'Vaccination', '130'),
('10094', '2022-04-09', '45.00', 'Vaccination', '131'),
('10095', '2022-04-10', '45.00', 'Vaccination', '132'),
('10096', '2022-04-11', '45.00', 'Vaccination', '133'),
('10097', '2022-04-12', '45.00', 'Vaccination', '134'),
('10098', '2022-04-13', '45.00', 'Vaccination', '135'),
('10099', '2022-04-14', '45.00', 'Vaccination', '136'),
('10100', '2022-04-15', '45.00', 'Vaccination', '137'),
('10101', '2022-04-16', '45.00', 'Vaccination', '138'),
('10102', '2022-04-17', '45.00', 'Vaccination', '139'),
('10103', '2022-04-18', '45.00', 'Vaccination', '140'),
('10104', '2022-04-19', '45.00', 'Vaccination', '141'),
('10105', '2022-04-20', '45.00', 'Vaccination', '142'),
('10106', '2022-04-21', '45.00', 'Vaccination', '143'),
('10107', '2022-04-22', '45.00', 'Vaccination', '144'),
('10108', '2022-04-23', '45.00', 'Vaccination', '145'),
('10109', '2022-04-24', '45.00', 'Vaccination', '146'),
('10110', '2022-04-25', '45.00', 'Vaccination', '147'),
('10111', '2022-04-26', '45.00', 'Vaccination', '148'),
('10112', '2022-04-27', '45.00', 'Vaccination', '149'),
('10113', '2022-04-28', '45.00', 'Vaccination', '150'),
('10114', '2022-04-29', '45.00', 'Vaccination', '151'),
('10115', '2022-04-30', '45.00', 'Vaccination', '152'),
('10116', '2022-05-01', '45.00', 'Vaccination', '153'),
('10117', '2022-05-02', '45.00', 'Vaccination', '154'),
('10118', '2022-05-03', '45.00', 'Vaccination', '155'),
('10119', '2022-05-04', '45.00', 'Vaccination', '156'),
('10120', '2022-05-05', '45.00', 'Vaccination', '157'),
('10121', '2022-05-06', '45.00', 'Vaccination', '158'),
('10122', '2022-05-07', '45.00', 'Vaccination', '159'),
('10123', '2022-05-08', '45.00', 'Vaccination', '160'),
('10124', '2022-05-09', '45.00', 'Vaccination', '100'),
('10125', '2022-05-10', '45.00', 'Vaccination', '161'),
('10126', '2022-05-11', '45.00', 'Vaccination', '162'),
('10127', '2022-05-12', '50.00', 'Examination', '101'),
('10128', '2022-05-13', '50.00', 'Examination', '102'),
('10129', '2022-05-14', '50.00', 'Examination', '103'),
('10130', '2022-05-15', '50.00', 'Examination', '104'),
('10131', '2022-05-16', '50.00', 'Examination', '105'),
('10132', '2022-05-17', '50.00', 'Examination', '106'),
('10133', '2022-05-18', '50.00', 'Examination', '107'),
('10134', '2022-05-19', '50.00', 'Examination', '108'),
('10135', '2022-05-20', '50.00', 'Examination', '109'),
('10136', '2022-05-21', '50.00', 'Examination', '110'),
('10137', '2022-05-22', '50.00', 'Examination', '111'),
('10138', '2022-05-23', '50.00', 'Examination', '112'),
('10139', '2022-05-24', '50.00', 'Examination', '113'),
('10140', '2022-05-25', '50.00', 'Examination', '114'),
('10141', '2022-05-26', '50.00', 'Examination', '115'),
('10142', '2022-05-27', '50.00', 'Examination', '116'),
('10143', '2022-05-28', '50.00', 'Examination', '117');

-- --------------------------------------------------------

--
-- Stand-in structure for view `SERVICE_COST_YEAR`
-- (See below for the actual view)
--
CREATE TABLE `SERVICE_COST_YEAR` (
`Procedures` varchar(15)
,`count(Procedures)` bigint
,`sum(Amount)` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `UNADOPTED_PETS`
-- (See below for the actual view)
--
CREATE TABLE `UNADOPTED_PETS` (
`Name` varchar(15)
,`BirthDate` date
,`PetsStatus` varchar(15)
,`DurationofTime` varchar(27)
);

-- --------------------------------------------------------

--
-- Structure for view `ADOPTED_PETS`
--
DROP TABLE IF EXISTS `ADOPTED_PETS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kalum`@`localhost` SQL SECURITY DEFINER VIEW `ADOPTED_PETS`  AS SELECT `PETS`.`Name` AS `PetsName`, `PETS_OWNER`.`Fname` AS `Fname`, `PETS_OWNER`.`Lname` AS `Lname`, `ADOPTION`.`DateofAdoption` AS `DateofAdoption`, `ADOPTION`.`PetsStatus` AS `PetsStatus` FROM ((`PETS` join `PETS_OWNER` on((`PETS`.`PetId` = `PETS_OWNER`.`Pid`))) join `ADOPTION` on((`PETS`.`PetId` = `ADOPTION`.`P_id`))) WHERE ((`ADOPTION`.`PetsStatus` = 'adopted') OR (`ADOPTION`.`PetsStatus` = 'returned')) ;

-- --------------------------------------------------------

--
-- Structure for view `ADOPTION_RATE`
--
DROP TABLE IF EXISTS `ADOPTION_RATE`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kalum`@`localhost` SQL SECURITY DEFINER VIEW `ADOPTION_RATE`  AS SELECT `PETS_OWNER`.`Breed` AS `Breed`, round((count((`ADOPTION`.`AdoptionNum` * 100.0)) / (select count(`ADOPTION`.`AdoptionNum`) from `ADOPTION`)),2) AS `rate_of_adoption` FROM (`PETS_OWNER` join `ADOPTION`) GROUP BY `PETS_OWNER`.`Breed` ORDER BY `rate_of_adoption` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `OWNERS_PERFORMANCE`
--
DROP TABLE IF EXISTS `OWNERS_PERFORMANCE`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kalum`@`localhost` SQL SECURITY DEFINER VIEW `OWNERS_PERFORMANCE`  AS SELECT `PETS_OWNER`.`Fname` AS `Fname`, `PETS_OWNER`.`Lname` AS `Lname`, `PETS`.`Name` AS `PetsName`, `PETS_OWNER`.`Sizes` AS `Sizes`, `PETS_OWNER`.`Breed` AS `Breed`, `PETS_OWNER`.`Species` AS `Species`, `ADOPTION`.`OwnersStatus` AS `OwnersStatus`, `ADOPTION`.`PetsStatus` AS `PetsStatus` FROM ((`PETS_OWNER` join `PETS` on((`PETS_OWNER`.`Pid` = `PETS`.`PetId`))) join `ADOPTION` on((`PETS`.`PetId` = `ADOPTION`.`P_id`))) WHERE (((`ADOPTION`.`PetsStatus` = 'unadopted') AND (`ADOPTION`.`OwnersStatus` = 'pending')) OR (`ADOPTION`.`OwnersStatus` = 'denied')) ;

-- --------------------------------------------------------

--
-- Structure for view `PETS_PROFILE`
--
DROP TABLE IF EXISTS `PETS_PROFILE`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kalum`@`localhost` SQL SECURITY DEFINER VIEW `PETS_PROFILE`  AS SELECT `PETS`.`Name` AS `Name`, `PETS`.`BirthDate` AS `BirthDate`, `PETS`.`Catagory` AS `Catagory`, `ADOPTION`.`PetsStatus` AS `PetsStatus`, concat(floor((timestampdiff(MONTH,`PETS`.`BirthDate`,curdate()) / 12)),'Year ',(timestampdiff(MONTH,`PETS`.`BirthDate`,curdate()) % 12),'Month') AS `Age` FROM (`PETS` join `ADOPTION` on((`PETS`.`PetId` = `ADOPTION`.`P_id`))) WHERE (`ADOPTION`.`PetsStatus` = 'adopted') ;

-- --------------------------------------------------------

--
-- Structure for view `PET_MED_SERV`
--
DROP TABLE IF EXISTS `PET_MED_SERV`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kalum`@`localhost` SQL SECURITY DEFINER VIEW `PET_MED_SERV`  AS SELECT `PETS`.`Name` AS `Name`, `SERVICES`.`Procedures` AS `Procedures`, `SERVICES`.`DateofService` AS `DateofService` FROM (`PETS` join `SERVICES` on((`PETS`.`PetId` = `SERVICES`.`Petsid`))) ORDER BY `SERVICES`.`DateofService` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `SERVICE_COST_YEAR`
--
DROP TABLE IF EXISTS `SERVICE_COST_YEAR`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kalum`@`localhost` SQL SECURITY DEFINER VIEW `SERVICE_COST_YEAR`  AS SELECT `SERVICES`.`Procedures` AS `Procedures`, count(`SERVICES`.`Procedures`) AS `count(Procedures)`, sum(`SERVICES`.`Amount`) AS `sum(Amount)` FROM `SERVICES` GROUP BY `SERVICES`.`Procedures` ORDER BY `SERVICES`.`Procedures` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `UNADOPTED_PETS`
--
DROP TABLE IF EXISTS `UNADOPTED_PETS`;

CREATE ALGORITHM=UNDEFINED DEFINER=`kalum`@`localhost` SQL SECURITY DEFINER VIEW `UNADOPTED_PETS`  AS SELECT `PETS`.`Name` AS `Name`, `PETS`.`BirthDate` AS `BirthDate`, `ADOPTION`.`PetsStatus` AS `PetsStatus`, concat(floor((timestampdiff(DAY,`PETS`.`BirthDate`,curdate()) / 12)),'Days ') AS `DurationofTime` FROM (`PETS` join `ADOPTION` on((`PETS`.`PetId` = `ADOPTION`.`P_id`))) WHERE (`ADOPTION`.`PetsStatus` = 'unadopted') ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADOPTION`
--
ALTER TABLE `ADOPTION`
  ADD PRIMARY KEY (`AdoptionNum`),
  ADD KEY `Owner_id` (`Owner_id`),
  ADD KEY `P_id` (`P_id`);

--
-- Indexes for table `PETS`
--
ALTER TABLE `PETS`
  ADD PRIMARY KEY (`PetId`);

--
-- Indexes for table `PETS_OWNER`
--
ALTER TABLE `PETS_OWNER`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Pid` (`Pid`);

--
-- Indexes for table `SERVICES`
--
ALTER TABLE `SERVICES`
  ADD PRIMARY KEY (`ServiceNum`),
  ADD KEY `Petsid` (`Petsid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ADOPTION`
--
ALTER TABLE `ADOPTION`
  ADD CONSTRAINT `ADOPTION_ibfk_1` FOREIGN KEY (`Owner_id`) REFERENCES `PETS_OWNER` (`Id`),
  ADD CONSTRAINT `ADOPTION_ibfk_2` FOREIGN KEY (`P_id`) REFERENCES `PETS` (`PetId`);

--
-- Constraints for table `PETS_OWNER`
--
ALTER TABLE `PETS_OWNER`
  ADD CONSTRAINT `PETS_OWNER_ibfk_1` FOREIGN KEY (`Pid`) REFERENCES `PETS` (`PetId`);

--
-- Constraints for table `SERVICES`
--
ALTER TABLE `SERVICES`
  ADD CONSTRAINT `SERVICES_ibfk_1` FOREIGN KEY (`Petsid`) REFERENCES `PETS` (`PetId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
