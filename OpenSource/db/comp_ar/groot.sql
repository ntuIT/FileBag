-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2019 at 05:57 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groot`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Description` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`) VALUES
(1, 'Beverages', 'Soft drinks, coffees, teas, beers, and ales'),
(2, 'Condiments', 'Sweet and savory sauces, relishes, spreads, and seasonings'),
(3, 'Confections', 'Desserts, candies, and sweet breads'),
(4, 'Dairy Products', 'Cheeses'),
(5, 'Grains/Cereals', 'Breads, crackers, pasta, and cereal'),
(6, 'Meat/Poultry', 'Prepared meats'),
(7, 'Produce', 'Dried fruit and bean curd'),
(8, 'Seafood', 'Seaweed and fish');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ContactName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Address` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `City` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Country` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CustomerName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '68306', 'Germany'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '67000', 'France'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '28023', 'Spain'),
(9, 'Bon app\'', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '13008', 'France'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', 'T2F 8M4', 'Canada'),
(11, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', 'EC2 5NT', 'UK'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '1010', 'Argentina'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '05022', 'Mexico'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '3012', 'Switzerland'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '05432-043', 'Brazil'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery ', 'London', 'WX1 6LT', 'UK'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '52066', 'Germany'),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '44000', 'France'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', 'WX3 6FW', 'UK'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '8010', 'Austria'),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '05442-030', 'Brazil'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '28034', 'Spain'),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '59000', 'France'),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', 'S-844 67', 'Sweden'),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '80805', 'Germany'),
(26, 'France restauration', 'Carine Schmitt', '54, rue Royale', 'Nantes', '44000', 'France'),
(27, 'Franchi S.p.A.', 'Paolo Accorti', 'Via Monte Bianco 34', 'Torino', '10100', 'Italy'),
(28, 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Jardim das rosas n. 32', 'Lisboa', '1675', 'Portugal'),
(29, 'Galería del gastrónomo', 'Eduardo Saavedra', 'Rambla de Cataluña, 23', 'Barcelona', '08022', 'Spain'),
(30, 'Godos Cocina Típica', 'José Pedro Freyre', 'C/ Romero, 33', 'Sevilla', '41101', 'Spain'),
(31, 'Gourmet Lanchonetes', 'André Fonseca', 'Av. Brasil, 442', 'Campinas', '04876-786', 'Brazil'),
(32, 'Great Lakes Food Market', 'Howard Snyder', '2732 Baker Blvd.', 'Eugene', '97403', 'USA'),
(33, 'GROSELLA-Restaurante', 'Manuel Pereira', '5ª Ave. Los Palos Grandes', 'Caracas', '1081', 'Venezuela'),
(34, 'Hanari Carnes', 'Mario Pontes', 'Rua do Paço, 67', 'Rio de Janeiro', '05454-876', 'Brazil'),
(35, 'HILARIÓN-Abastos', 'Carlos Hernández', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', '5022', 'Venezuela'),
(36, 'Hungry Coyote Import Store', 'Yoshi Latimer', 'City Center Plaza 516 Main St.', 'Elgin', '97827', 'USA'),
(37, 'Hungry Owl All-Night Grocers', 'Patricia McKenna', '8 Johnstown Road', 'Cork', '', 'Ireland'),
(38, 'Island Trading', 'Helen Bennett', 'Garden House Crowther Way', 'Cowes', 'PO31 7PJ', 'UK'),
(39, 'Königlich Essen', 'Philip Cramer', 'Maubelstr. 90', 'Brandenburg', '14776', 'Germany'),
(40, 'La corne d\'abondance', 'Daniel Tonini', '67, avenue de l\'Europe', 'Versailles', '78000', 'France'),
(41, 'La maison d\'Asie', 'Annette Roulet', '1 rue Alsace-Lorraine', 'Toulouse', '31000', 'France'),
(42, 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', '1900 Oak St.', 'Vancouver', 'V3F 2K1', 'Canada'),
(43, 'Lazy K Kountry Store', 'John Steel', '12 Orchestra Terrace', 'Walla Walla', '99362', 'USA'),
(44, 'Lehmanns Marktstand', 'Renate Messner', 'Magazinweg 7', 'Frankfurt a.M. ', '60528', 'Germany'),
(45, 'Let\'s Stop N Shop', 'Jaime Yorres', '87 Polk St. Suite 5', 'San Francisco', '94117', 'USA'),
(46, 'LILA-Supermercado', 'Carlos González', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', '3508', 'Venezuela'),
(47, 'LINO-Delicateses', 'Felipe Izquierdo', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', '4980', 'Venezuela'),
(48, 'Lonesome Pine Restaurant', 'Fran Wilson', '89 Chiaroscuro Rd.', 'Portland', '97219', 'USA'),
(49, 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Via Ludovico il Moro 22', 'Bergamo', '24100', 'Italy'),
(50, 'Maison Dewey', 'Catherine Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', 'B-1180', 'Belgium'),
(51, 'Mère Paillarde', 'Jean Fresnière', '43 rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada'),
(52, 'Morgenstern Gesundkost', 'Alexander Feuer', 'Heerstr. 22', 'Leipzig', '04179', 'Germany'),
(53, 'North/South', 'Simon Crowther', 'South House 300 Queensbridge', 'London', 'SW7 1RZ', 'UK'),
(54, 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', '1010', 'Argentina'),
(55, 'Old World Delicatessen', 'Rene Phillips', '2743 Bering St.', 'Anchorage', '99508', 'USA'),
(56, 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Mehrheimerstr. 369', 'Köln', '50739', 'Germany'),
(57, 'Paris spécialités', 'Marie Bertrand', '265, boulevard Charonne', 'Paris', '75012', 'France'),
(58, 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Calle Dr. Jorge Cash 321', 'México D.F.', '05033', 'Mexico'),
(59, 'Piccolo und mehr', 'Georg Pipps', 'Geislweg 14', 'Salzburg', '5020', 'Austria'),
(60, 'Princesa Isabel Vinhoss', 'Isabel de Castro', 'Estrada da saúde n. 58', 'Lisboa', '1756', 'Portugal'),
(61, 'Que Delícia', 'Bernardo Batista', 'Rua da Panificadora, 12', 'Rio de Janeiro', '02389-673', 'Brazil'),
(62, 'Queen Cozinha', 'Lúcia Carvalho', 'Alameda dos Canàrios, 891', 'São Paulo', '05487-020', 'Brazil'),
(63, 'QUICK-Stop', 'Horst Kloss', 'Taucherstraße 10', 'Cunewalde', '01307', 'Germany'),
(64, 'Rancho grande', 'Sergio Gutiérrez', 'Av. del Libertador 900', 'Buenos Aires', '1010', 'Argentina'),
(65, 'Rattlesnake Canyon Grocery', 'Paula Wilson', '2817 Milton Dr.', 'Albuquerque', '87110', 'USA'),
(66, 'Reggiani Caseifici', 'Maurizio Moroni', 'Strada Provinciale 124', 'Reggio Emilia', '42100', 'Italy'),
(67, 'Ricardo Adocicados', 'Janete Limeira', 'Av. Copacabana, 267', 'Rio de Janeiro', '02389-890', 'Brazil'),
(68, 'Richter Supermarkt', 'Michael Holz', 'Grenzacherweg 237', 'Genève', '1203', 'Switzerland'),
(69, 'Romero y tomillo', 'Alejandra Camino', 'Gran Vía, 1', 'Madrid', '28001', 'Spain'),
(70, 'Santé Gourmet', 'Jonas Bergulfsen', 'Erling Skakkes gate 78', 'Stavern', '4110', 'Norway'),
(71, 'Save-a-lot Markets', 'Jose Pavarotti', '187 Suffolk Ln.', 'Boise', '83720', 'USA'),
(72, 'Seven Seas Imports', 'Hari Kumar', '90 Wadhurst Rd.', 'London', 'OX15 4NB', 'UK'),
(73, 'Simons bistro', 'Jytte Petersen', 'Vinbæltet 34', 'København', '1734', 'Denmark'),
(74, 'Spécialités du monde', 'Dominique Perrier', '25, rue Lauriston', 'Paris', '75016', 'France'),
(75, 'Split Rail Beer & Ale', 'Art Braunschweiger', 'P.O. Box 555', 'Lander', '82520', 'USA'),
(76, 'Suprêmes délices', 'Pascale Cartrain', 'Boulevard Tirou, 255', 'Charleroi', 'B-6000', 'Belgium'),
(77, 'The Big Cheese', 'Liz Nixon', '89 Jefferson Way Suite 2', 'Portland', '97201', 'USA'),
(78, 'The Cracker Box', 'Liu Wong', '55 Grizzly Peak Rd.', 'Butte', '59801', 'USA'),
(79, 'Toms Spezialitäten', 'Karin Josephs', 'Luisenstr. 48', 'Münster', '44087', 'Germany'),
(80, 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Avda. Azteca 123', 'México D.F.', '05033', 'Mexico'),
(81, 'Tradição Hipermercados', 'Anabela Domingues', 'Av. Inês de Castro, 414', 'São Paulo', '05634-030', 'Brazil'),
(82, 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', '722 DaVinci Blvd.', 'Kirkland', '98034', 'USA'),
(83, 'Vaffeljernet', 'Palle Ibsen', 'Smagsløget 45', 'Århus', '8200', 'Denmark'),
(84, 'Victuailles en stock', 'Mary Saveley', '2, rue du Commerce', 'Lyon', '69004', 'France'),
(85, 'Vins et alcools Chevalier', 'Paul Henriot', '59 rue de l\'Abbaye', 'Reims', '51100', 'France'),
(86, 'Die Wandernde Kuh', 'Rita Müller', 'Adenauerallee 900', 'Stuttgart', '70563', 'Germany'),
(87, 'Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'),
(88, 'Wellington Importadora', 'Paula Parente', 'Rua do Mercado, 12', 'Resende', '08737-363', 'Brazil'),
(89, 'White Clover Markets', 'Karl Jablonski', '305 - 14th Ave. S. Suite 3B', 'Seattle', '98128', 'USA'),
(90, 'Wilman Kala', 'Matti Karttunen', 'Keskuskatu 45', 'Helsinki', '21240', 'Finland'),
(91, 'Wolski', 'Zbyszek', 'ul. Filtrowa 68', 'Walla', '01-012', 'Poland');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `FirstName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Notes` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `BirthDate`, `Photo`, `Notes`) VALUES
(1, 'Nancy', 'Davolio', '1968-12-08', 'EmpID1.pic', 'Education includes a BA in psychology from Colorado State University. She also completed (The Art of the Cold Call). Nancy is a member of \'Toastmasters International\'.'),
(2, 'Andrew', 'Fuller', '1952-02-19', 'EmpID2.pic', 'Andrew received his BTS commercial and a Ph.D. in international marketing from the University of Dallas. He is fluent in French and Italian and reads German. He joined the company as a sales representative, was promoted to sales manager and was then named vice president of sales. Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association.'),
(3, 'Janet', 'Leverling', '1963-08-30', 'EmpID3.pic', 'Janet has a BS degree in chemistry from Boston College). She has also completed a certificate program in food retailing management. Janet was hired as a sales associate and was promoted to sales representative.'),
(4, 'Margaret', 'Peacock', '1958-09-19', 'EmpID4.pic', 'Margaret holds a BA in English literature from Concordia College and an MA from the American Institute of Culinary Arts. She was temporarily assigned to the London office before returning to her permanent post in Seattle.'),
(5, 'Steven', 'Buchanan', '1955-03-04', 'EmpID5.pic', 'Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree. Upon joining the company as a sales representative, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London, where he was promoted to sales manager. Mr. Buchanan has completed the courses \'Successful Telemarketing\' and \'International Sales Management\'. He is fluent in French.'),
(6, 'Michael', 'Suyama', '1963-07-02', 'EmpID6.pic', 'Michael is a graduate of Sussex University (MA, economics) and the University of California at Los Angeles (MBA, marketing). He has also taken the courses \'Multi-Cultural Selling\' and \'Time Management for the Sales Professional\'. He is fluent in Japanese and can read and write French, Portuguese, and Spanish.'),
(7, 'Robert', 'King', '1960-05-29', 'EmpID7.pic', 'Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan and then joining the company. After completing a course entitled \'Selling in Europe\', he was transferred to the London office.'),
(8, 'Laura', 'Callahan', '1958-01-09', 'EmpID8.pic', 'Laura received a BA in psychology from the University of Washington. She has also completed a course in business French. She reads and writes French.'),
(9, 'Anne', 'Dodsworth', '1969-07-02', 'EmpID9.pic', 'Anne has a BA degree in English from St. Lawrence College. She is fluent in French and German.'),
(10, 'Adam', 'West', '1928-09-19', 'EmpID10.pic', 'An old chum.'),
(91, 'Express', 'Speedy', NULL, '', '(503) 555-9831'),
(92, 'Package', 'United', NULL, '', '(503) 555-3199'),
(93, 'Shipping', 'Federal', NULL, '', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) NOT NULL,
  `ProductID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--
INSERT INTO groot.orderdetails (OrderDetailID, OrderID, ProductID, Quantity)  
VALUES (1, 1, 11, 12) 
 , (2, 1, 42, 10) 
 , (3, 1, 72, 5) 
 , (4, 2, 14, 9) 
 , (5, 2, 51, 40) 
 , (6, 3, 41, 10) 
 , (7, 3, 51, 35) 
 , (8, 3, 65, 15) 
 , (9, 4, 22, 6) 
 , (10, 4, 57, 15) 
 , (11, 4, 65, 20) 
 , (12, 5, 20, 40) 
 , (13, 5, 33, 25) 
 , (14, 5, 60, 40) 
 , (15, 6, 31, 20) 
 , (16, 6, 39, 42) 
 , (17, 6, 49, 40) 
 , (18, 7, 24, 15) 
 , (19, 7, 55, 21) 
 , (20, 7, 74, 21) 
 , (21, 8, 2, 20) 
 , (22, 8, 16, 35) 
 , (23, 8, 36, 25) 
 , (24, 8, 59, 30) 
 , (25, 9, 53, 15) 
 , (26, 9, 77, 12) 
 , (27, 10, 27, 25) 
 , (28, 10, 39, 6) 
 , (29, 10, 77, 15) 
 , (30, 11, 2, 50) 
 , (31, 11, 5, 65) 
 , (32, 11, 32, 6) 
 , (33, 12, 21, 10) 
 , (34, 12, 37, 1) 
 , (35, 13, 41, 16) 
 , (36, 13, 57, 50) 
 , (37, 13, 62, 15) 
 , (38, 13, 70, 21) 
 , (39, 14, 21, 20) 
 , (40, 14, 35, 20) 
 , (41, 15, 5, 12) 
 , (42, 15, 7, 15) 
 , (43, 15, 56, 2) 
 , (44, 16, 16, 60) 
 , (45, 16, 24, 28) 
 , (46, 16, 30, 60) 
 , (47, 16, 74, 36) 
 , (48, 17, 2, 35) 
 , (49, 17, 41, 25) 
 , (50, 18, 17, 30) 
 , (51, 18, 70, 20) 
 , (52, 19, 12, 12) 
 , (53, 20, 40, 50) 
 , (54, 20, 59, 70) 
 , (55, 20, 76, 15) 
 , (56, 21, 29, 10) 
 , (57, 21, 72, 4) 
 , (58, 22, 33, 60) 
 , (59, 22, 72, 20) 
 , (60, 23, 36, 30) 
 , (61, 23, 43, 25) 
 , (62, 24, 33, 24) 
 , (63, 25, 20, 6) 
 , (64, 25, 31, 40) 
 , (65, 25, 72, 24) 
 , (66, 26, 10, 24) 
 , (67, 26, 31, 15) 
 , (68, 26, 33, 20) 
 , (69, 26, 40, 60) 
 , (70, 26, 76, 33) 
 , (71, 27, 71, 20) 
 , (72, 27, 72, 7) 
 , (73, 28, 24, 12) 
 , (74, 28, 59, 6) 
 , (75, 29, 10, 15) 
 , (76, 29, 13, 10) 
 , (77, 30, 28, 20) 
 , (78, 30, 62, 12) 
 , (79, 31, 44, 16) 
 , (80, 31, 59, 15) 
 , (81, 31, 63, 8) 
 , (82, 31, 73, 25) 
 , (83, 32, 17, 15) 
 , (84, 33, 24, 12) 
 , (85, 33, 55, 20) 
 , (86, 33, 75, 30) 
 , (87, 34, 19, 1) 
 , (88, 34, 24, 6) 
 , (89, 34, 35, 4) 
 , (90, 35, 30, 6) 
 , (91, 35, 57, 2) 
 , (92, 36, 15, 20) 
 , (93, 36, 19, 18) 
 , (94, 36, 60, 35) 
 , (95, 36, 72, 3) 
 , (96, 37, 27, 15) 
 , (97, 37, 44, 21) 
 , (98, 37, 60, 20) 
 , (99, 37, 67, 5) 
 , (100, 38, 1, 45) 
 , (101, 38, 40, 40) 
 , (102, 38, 53, 36) 
 , (103, 39, 35, 100) 
 , (104, 39, 62, 40) 
 , (105, 40, 16, 40) 
 , (106, 40, 34, 20) 
 , (107, 40, 46, 15) 
 , (108, 41, 54, 10) 
 , (109, 41, 68, 3) 
 , (110, 42, 3, 30) 
 , (111, 42, 64, 9) 
 , (112, 43, 5, 20) 
 , (113, 43, 29, 15) 
 , (114, 43, 49, 15) 
 , (115, 43, 77, 10) 
 , (116, 44, 13, 20) 
 , (117, 44, 44, 24) 
 , (118, 44, 51, 2) 
 , (119, 45, 20, 20) 
 , (120, 46, 18, 12) 
 , (121, 46, 24, 10) 
 , (122, 46, 63, 5) 
 , (123, 46, 75, 6) 
 , (124, 47, 1, 18) 
 , (125, 47, 17, 15) 
 , (126, 47, 43, 15) 
 , (127, 47, 60, 21) 
 , (128, 47, 75, 6) 
 , (129, 48, 56, 4) 
 , (130, 49, 11, 12) 
 , (131, 49, 16, 30) 
 , (132, 49, 69, 15) 
 , (133, 50, 39, 60) 
 , (134, 50, 72, 20) 
 , (135, 51, 2, 40) 
 , (136, 51, 36, 40) 
 , (137, 51, 59, 30) 
 , (138, 51, 62, 15) 
 , (139, 52, 19, 15) 
 , (140, 52, 70, 20) 
 , (141, 53, 66, 30) 
 , (142, 53, 68, 20) 
 , (143, 54, 40, 10) 
 , (144, 54, 56, 20) 
 , (145, 55, 17, 40) 
 , (146, 55, 28, 28) 
 , (147, 55, 43, 12) 
 , (148, 56, 40, 40) 
 , (149, 56, 65, 30) 
 , (150, 56, 68, 15) 
 , (151, 57, 49, 30) 
 , (152, 57, 59, 10) 
 , (153, 57, 71, 2) 
 , (154, 58, 18, 25) 
 , (155, 58, 29, 25) 
 , (156, 58, 39, 30) 
 , (157, 59, 30, 10) 
 , (158, 59, 53, 10) 
 , (159, 59, 54, 5) 
 , (160, 60, 62, 10) 
 , (161, 60, 68, 3) 
 , (162, 61, 69, 1) 
 , (163, 61, 70, 5) 
 , (164, 62, 4, 20) 
 , (165, 62, 6, 30) 
 , (166, 62, 42, 2) 
 , (167, 62, 43, 20) 
 , (168, 62, 71, 3) 
 , (169, 63, 16, 10) 
 , (170, 63, 62, 5) 
 , (171, 64, 42, 6) 
 , (172, 64, 69, 7) 
 , (173, 65, 28, 4) 
 , (174, 65, 43, 24) 
 , (175, 65, 53, 20) 
 , (176, 65, 75, 10) 
 , (177, 66, 36, 12) 
 , (178, 67, 32, 40) 
 , (179, 67, 58, 30) 
 , (180, 67, 62, 25) 
 , (181, 68, 34, 14) 
 , (182, 68, 70, 30) 
 , (183, 69, 41, 10) 
 , (184, 69, 62, 70) 
 , (185, 70, 1, 20) 
 , (186, 71, 41, 20) 
 , (187, 71, 76, 6) 
 , (188, 72, 17, 8) 
 , (189, 72, 28, 14) 
 , (190, 72, 76, 30) 
 , (191, 73, 71, 30) 
 , (192, 74, 35, 10) 
 , (193, 75, 52, 20) 
 , (194, 76, 15, 5) 
 , (195, 76, 25, 4) 
 , (196, 76, 39, 4) 
 , (197, 77, 16, 21) 
 , (198, 77, 35, 70) 
 , (199, 77, 46, 30) 
 , (200, 77, 59, 40) 
 , (201, 77, 63, 80) 
 , (202, 78, 6, 6) 
 , (203, 78, 13, 12) 
 , (204, 78, 14, 9) 
 , (205, 78, 31, 4) 
 , (206, 78, 72, 40) 
 , (207, 79, 4, 24) 
 , (208, 79, 57, 16) 
 , (209, 79, 75, 50) 
 , (210, 80, 2, 25) 
 , (211, 80, 11, 50) 
 , (212, 80, 30, 35) 
 , (213, 80, 58, 30) 
 , (214, 81, 59, 9) 
 , (215, 81, 65, 40) 
 , (216, 81, 68, 10) 
 , (217, 82, 19, 10) 
 , (218, 82, 30, 8) 
 , (219, 82, 38, 20) 
 , (220, 82, 56, 12) 
 , (221, 83, 26, 50) 
 , (222, 83, 72, 25) 
 , (223, 84, 54, 15) 
 , (224, 85, 18, 40) 
 , (225, 85, 42, 10) 
 , (226, 85, 47, 16) 
 , (227, 86, 14, 10) 
 , (228, 86, 21, 10) 
 , (229, 86, 71, 40) 
 , (230, 87, 52, 8) 
 , (231, 87, 68, 10) 
 , (232, 88, 2, 7) 
 , (233, 88, 31, 25) 
 , (234, 88, 32, 6) 
 , (235, 88, 51, 48) 
 , (236, 89, 4, 18) 
 , (237, 90, 23, 40) 
 , (238, 90, 26, 24) 
 , (239, 90, 36, 20) 
 , (240, 90, 37, 28) 
 , (241, 90, 72, 25) 
 , (242, 91, 17, 20) 
 , (243, 91, 30, 15) 
 , (244, 92, 4, 10) 
 , (245, 92, 17, 70) 
 , (246, 92, 62, 28) 
 , (247, 9944, 30, 20) 
 , (248, 93, 41, 12) 
 , (249, 93, 43, 40) 
 , (250, 94, 33, 8) 
 , (251, 94, 59, 9) 
 , (252, 95, 2, 24) 
 , (253, 95, 31, 56) 
 , (254, 95, 36, 40) 
 , (255, 95, 55, 40) 
 , (256, 96, 64, 50) 
 , (257, 96, 68, 4) 
 , (258, 96, 76, 15) 
 , (259, 97, 4, 35) 
 , (260, 97, 8, 70) 
 , (261, 98, 8, 70) 
 , (262, 98, 19, 80) 
 , (263, 98, 42, 9) 
 , (264, 99, 17, 36) 
 , (265, 99, 56, 20) 
 , (266, 100, 25, 10) 
 , (267, 100, 39, 50) 
 , (268, 100, 40, 4) 
 , (269, 100, 75, 6) 
 , (270, 101, 1, 15) 
 , (271, 101, 23, 25) 
 , (272, 102, 54, 24) 
 , (273, 103, 50, 15) 
 , (274, 103, 69, 18) 
 , (275, 104, 38, 20) 
 , (276, 104, 41, 13) 
 , (277, 104, 44, 77) 
 , (278, 104, 65, 10) 
 , (279, 105, 24, 10) 
 , (280, 105, 54, 20) 
 , (281, 106, 11, 12) 
 , (282, 106, 38, 50) 
 , (283, 107, 1, 12) 
 , (284, 107, 29, 4) 
 , (285, 108, 24, 25) 
 , (286, 108, 57, 25) 
 , (287, 109, 31, 30) 
 , (288, 109, 55, 12) 
 , (289, 109, 69, 20) 
 , (290, 110, 10, 30) 
 , (291, 110, 26, 16) 
 , (292, 110, 60, 8) 
 , (293, 111, 24, 10) 
 , (294, 111, 34, 10) 
 , (295, 111, 36, 20) 
 , (296, 112, 16, 56) 
 , (297, 112, 31, 70) 
 , (298, 112, 60, 80) 
 , (299, 113, 28, 30) 
 , (300, 113, 29, 35) 
 , (301, 113, 38, 10) 
 , (302, 113, 49, 35) 
 , (303, 113, 54, 28) 
 , (304, 114, 39, 54) 
 , (305, 114, 60, 55) 
 , (306, 115, 25, 50) 
 , (307, 115, 51, 20) 
 , (308, 115, 54, 24) 
 , (309, 116, 31, 20) 
 , (310, 116, 75, 12) 
 , (311, 116, 76, 12) 
 , (312, 117, 69, 30) 
 , (313, 117, 71, 5) 
 , (314, 118, 11, 24) 
 , (315, 119, 65, 5) 
 , (316, 119, 77, 5) 
 , (317, 120, 34, 36) 
 , (318, 120, 54, 18) 
 , (319, 120, 65, 15) 
 , (320, 120, 77, 7) 
 , (321, 121, 21, 5) 
 , (322, 121, 28, 13) 
 , (323, 121, 57, 25) 
 , (324, 121, 64, 35) 
 , (325, 122, 29, 20) 
 , (326, 122, 56, 18) 
 , (327, 123, 1, 15) 
 , (328, 123, 64, 30) 
 , (329, 123, 74, 20) 
 , (330, 124, 36, 6) 
 , (331, 125, 20, 12) 
 , (332, 125, 38, 40) 
 , (333, 125, 60, 70) 
 , (334, 125, 72, 42) 
 , (335, 126, 58, 80) 
 , (336, 126, 71, 50) 
 , (337, 127, 31, 30) 
 , (338, 127, 58, 15) 
 , (339, 128, 14, 15) 
 , (340, 128, 54, 10) 
 , (341, 129, 31, 42) 
 , (342, 130, 28, 20) 
 , (343, 130, 39, 20) 
 , (344, 131, 71, 6) 
 , (345, 132, 41, 8) 
 , (346, 132, 63, 16) 
 , (347, 132, 65, 20) 
 , (348, 133, 30, 18) 
 , (349, 133, 53, 20) 
 , (350, 133, 60, 6) 
 , (351, 133, 70, 30) 
 , (352, 134, 74, 14) 
 , (353, 135, 5, 32) 
 , (354, 135, 18, 9) 
 , (355, 135, 29, 14) 
 , (356, 135, 33, 60) 
 , (357, 135, 74, 50) 
 , (358, 136, 13, 20) 
 , (359, 136, 50, 15) 
 , (360, 136, 56, 20) 
 , (361, 137, 20, 28) 
 , (362, 137, 60, 15) 
 , (363, 138, 7, 10) 
 , (364, 138, 60, 20) 
 , (365, 138, 68, 8) 
 , (366, 139, 24, 15) 
 , (367, 139, 34, 10) 
 , (368, 140, 24, 15) 
 , (369, 140, 28, 6) 
 , (370, 140, 59, 12) 
 , (371, 140, 71, 15) 
 , (372, 141, 45, 15) 
 , (373, 141, 52, 20) 
 , (374, 141, 53, 40) 
 , (375, 142, 10, 16) 
 , (376, 142, 55, 15) 
 , (377, 142, 62, 20) 
 , (378, 142, 70, 30) 
 , (379, 143, 31, 60) 
 , (380, 143, 35, 40) 
 , (381, 143, 46, 45) 
 , (382, 143, 72, 24) 
 , (383, 144, 13, 18) 
 , (384, 145, 69, 50) 
 , (385, 146, 2, 25) 
 , (386, 146, 14, 42) 
 , (387, 146, 25, 7) 
 , (388, 146, 26, 70) 
 , (389, 146, 31, 32) 
 , (390, 147, 13, 10) 
 , (391, 147, 62, 10) 
 , (392, 148, 46, 28) 
 , (393, 148, 53, 70) 
 , (394, 148, 69, 8) 
 , (395, 149, 23, 40) 
 , (396, 149, 71, 60) 
 , (397, 149, 72, 21) 
 , (398, 150, 21, 10) 
 , (399, 150, 51, 18) 
 , (400, 151, 35, 30) 
 , (401, 151, 55, 120) 
 , (402, 152, 68, 60) 
 , (403, 152, 71, 30) 
 , (404, 152, 76, 35) 
 , (405, 152, 77, 14) 
 , (406, 153, 29, 21) 
 , (407, 153, 35, 35) 
 , (408, 153, 49, 30) 
 , (409, 154, 30, 18) 
 , (410, 154, 56, 70) 
 , (411, 154, 65, 20) 
 , (412, 154, 71, 60) 
 , (413, 155, 23, 60) 
 , (414, 155, 63, 65) 
 , (415, 156, 16, 21) 
 , (416, 156, 48, 70) 
 , (417, 157, 26, 30) 
 , (418, 157, 42, 40) 
 , (419, 157, 49, 30) 
 , (420, 158, 3, 50) 
 , (421, 159, 1, 10) 
 , (422, 159, 21, 30) 
 , (423, 159, 28, 42) 
 , (424, 159, 36, 5) 
 , (425, 159, 40, 2) 
 , (426, 160, 11, 30) 
 , (427, 160, 69, 15) 
 , (428, 160, 71, 15) 
 , (429, 161, 37, 10) 
 , (430, 161, 54, 6) 
 , (431, 161, 62, 35) 
 , (432, 162, 14, 12) 
 , (433, 162, 21, 12) 
 , (434, 163, 33, 49) 
 , (435, 163, 59, 16) 
 , (436, 164, 41, 25) 
 , (437, 164, 44, 40) 
 , (438, 164, 59, 9) 
 , (439, 165, 14, 20) 
 , (440, 166, 1, 24) 
 , (441, 166, 62, 40) 
 , (442, 166, 76, 14) 
 , (443, 167, 19, 18) 
 , (444, 167, 33, 50) 
 , (445, 168, 17, 2) 
 , (446, 168, 33, 20) 
 , (447, 169, 19, 20) 
 , (448, 169, 53, 10) 
 , (449, 169, 57, 20) 
 , (450, 170, 38, 50) 
 , (451, 170, 46, 2) 
 , (452, 170, 68, 36) 
 , (453, 170, 77, 35) 
 , (454, 171, 2, 60) 
 , (455, 171, 47, 55) 
 , (456, 171, 61, 16) 
 , (457, 171, 74, 15) 
 , (458, 172, 60, 60) 
 , (459, 172, 69, 20) 
 , (460, 173, 9, 20) 
 , (461, 173, 13, 2) 
 , (462, 173, 70, 8) 
 , (463, 173, 73, 20) 
 , (464, 174, 19, 4) 
 , (465, 174, 26, 30) 
 , (466, 174, 53, 15) 
 , (467, 174, 77, 10) 
 , (468, 175, 26, 2) 
 , (469, 176, 31, 14) 
 , (470, 176, 59, 20) 
 , (471, 177, 35, 60) 
 , (472, 177, 38, 49) 
 , (473, 177, 68, 30) 
 , (474, 178, 55, 10) 
 , (475, 178, 76, 20) 
 , (476, 179, 56, 5) 
 , (477, 179, 64, 7) 
 , (478, 180, 14, 35) 
 , (479, 181, 46, 20) 
 , (480, 182, 50, 40) 
 , (481, 182, 63, 35) 
 , (482, 183, 17, 45) 
 , (483, 183, 21, 50) 
 , (484, 183, 56, 30) 
 , (485, 183, 59, 70) 
 , (486, 184, 17, 50) 
 , (487, 184, 40, 50) 
 , (488, 184, 47, 30) 
 , (489, 185, 26, 10) 
 , (490, 185, 54, 40) 
 , (491, 186, 56, 28) 
 , (492, 187, 11, 6) 
 , (493, 187, 76, 18) 
 , (494, 188, 2, 10) 
 , (495, 188, 22, 12) 
 , (496, 188, 72, 10) 
 , (497, 189, 46, 5) 
 , (498, 189, 56, 40) 
 , (499, 189, 64, 30) 
 , (500, 189, 75, 24) 
 , (501, 190, 53, 15) 
 , (502, 191, 19, 15) 
 , (503, 191, 34, 20) 
 , (504, 191, 57, 15) 
 , (505, 192, 12, 15) 
 , (506, 192, 16, 16) 
 , (507, 192, 64, 6) 
 , (508, 192, 74, 30) 
 , (509, 193, 2, 45) 
 , (510, 193, 16, 49) 
 , (511, 193, 29, 24) 
 , (512, 193, 61, 90) 
 , (513, 194, 27, 50) 
 , (514, 195, 11, 30) 
 , (515, 195, 54, 80) 
 , (516, 195, 66, 60) 
 , (517, 196, 11, 6) 
 , (518, 196, 28, 12) 
 , (519, 1, 11, 12) 
 , (520, 1, 42, 10) 
 , (521, 1, 72, 5) 
 , (522, 2, 14, 9) 
 , (523, 2, 51, 40) 
 , (524, 3, 41, 10) 
 , (525, 3, 51, 35) 
 , (526, 3, 65, 15) 
 , (527, 4, 22, 6) 
 , (528, 4, 57, 15) 
 , (529, 4, 65, 20) 
 , (530, 5, 20, 40) 
 , (531, 5, 33, 25) 
 , (532, 5, 60, 40) 
 , (533, 6, 31, 20) 
 , (534, 6, 39, 42) 
 , (535, 6, 49, 40) 
 , (536, 7, 24, 15) 
 , (537, 7, 55, 21) 
 , (538, 7, 74, 21) 
 , (539, 8, 2, 20) 
 , (540, 8, 16, 35) 
 , (541, 8, 36, 25) 
 , (542, 8, 59, 30) 
 , (543, 9, 53, 15) 
 , (544, 9, 77, 12) 
 , (545, 10, 27, 25) 
 , (546, 10, 39, 6) 
 , (547, 10, 77, 15) 
 , (548, 11, 2, 50) 
 , (549, 11, 5, 65) 
 , (550, 11, 32, 6) 
 , (551, 12, 21, 10) 
 , (552, 12, 37, 1) 
 , (553, 13, 41, 16) 
 , (554, 13, 57, 50) 
 , (555, 13, 62, 15) 
 , (556, 13, 70, 21) 
 , (557, 14, 21, 20) 
 , (558, 14, 35, 20) 
 , (559, 15, 5, 12) 
 , (560, 15, 7, 15) 
 , (561, 15, 56, 2) 
 , (562, 16, 16, 60) 
 , (563, 16, 24, 28) 
 , (564, 16, 30, 60) 
 , (565, 16, 74, 36) 
 , (566, 17, 2, 35) 
 , (567, 17, 41, 25) 
 , (568, 18, 17, 30) 
 , (569, 18, 70, 20) 
 , (570, 19, 12, 12) 
 , (571, 20, 40, 50) 
 , (572, 20, 59, 70) 
 , (573, 20, 76, 15) 
 , (574, 21, 29, 10) 
 , (575, 21, 72, 4) 
 , (576, 22, 33, 60) 
 , (577, 22, 72, 20) 
 , (578, 23, 36, 30) 
 , (579, 23, 43, 25) 
 , (580, 24, 33, 24) 
 , (581, 25, 20, 6) 
 , (582, 25, 31, 40) 
 , (583, 25, 72, 24) 
 , (584, 26, 10, 24) 
 , (585, 26, 31, 15) 
 , (586, 26, 33, 20) 
 , (587, 26, 40, 60) 
 , (588, 26, 76, 33) 
 , (589, 27, 71, 20) 
 , (590, 27, 72, 7) 
 , (591, 28, 24, 12) 
 , (592, 28, 59, 6) 
 , (593, 29, 10, 15) 
 , (594, 29, 13, 10) 
 , (595, 30, 28, 20) 
 , (596, 30, 62, 12) 
 , (597, 31, 44, 16) 
 , (598, 31, 59, 15) 
 , (599, 31, 63, 8) 
 , (600, 31, 73, 25) 
 , (601, 32, 17, 15) 
 , (602, 33, 24, 12) 
 , (603, 33, 55, 20) 
 , (604, 33, 75, 30) 
 , (605, 34, 19, 1) 
 , (606, 34, 24, 6) 
 , (607, 34, 35, 4) 
 , (608, 35, 30, 6) 
 , (609, 35, 57, 2) 
 , (610, 36, 15, 20) 
 , (611, 36, 19, 18) 
 , (612, 36, 60, 35) 
 , (613, 36, 72, 3) 
 , (614, 37, 27, 15) 
 , (615, 37, 44, 21) 
 , (616, 37, 60, 20) 
 , (617, 37, 67, 5) 
 , (618, 38, 1, 45) 
 , (619, 38, 40, 40) 
 , (620, 38, 53, 36) 
 , (621, 39, 35, 100) 
 , (622, 39, 62, 40) 
 , (623, 40, 16, 40) 
 , (624, 40, 34, 20) 
 , (625, 40, 46, 15) 
 , (626, 41, 54, 10) 
 , (627, 41, 68, 3) 
 , (628, 42, 3, 30) 
 , (629, 42, 64, 9) 
 , (630, 43, 5, 20) 
 , (631, 43, 29, 15) 
 , (632, 43, 49, 15) 
 , (633, 43, 77, 10) 
 , (634, 44, 13, 20) 
 , (635, 44, 44, 24) 
 , (636, 44, 51, 2) 
 , (637, 45, 20, 20) 
 , (638, 46, 18, 12) 
 , (639, 46, 24, 10) 
 , (640, 46, 63, 5) 
 , (641, 46, 75, 6) 
 , (642, 47, 1, 18) 
 , (643, 47, 17, 15) 
 , (644, 47, 43, 15) 
 , (645, 47, 60, 21) 
 , (646, 47, 75, 6) 
 , (647, 48, 56, 4) 
 , (648, 49, 11, 12) 
 , (649, 49, 16, 30) 
 , (650, 49, 69, 15) 
 , (651, 50, 39, 60) 
 , (652, 50, 72, 20) 
 , (653, 51, 2, 40) 
 , (654, 51, 36, 40) 
 , (655, 51, 59, 30) 
 , (656, 51, 62, 15) 
 , (657, 52, 19, 15) 
 , (658, 52, 70, 20) 
 , (659, 53, 66, 30) 
 , (660, 53, 68, 20) 
 , (661, 54, 40, 10) 
 , (662, 54, 56, 20) 
 , (663, 55, 17, 40) 
 , (664, 55, 28, 28) 
 , (665, 55, 43, 12) 
 , (666, 56, 40, 40) 
 , (667, 56, 65, 30) 
 , (668, 56, 68, 15) 
 , (669, 57, 49, 30) 
 , (670, 57, 59, 10) 
 , (671, 57, 71, 2) 
 , (672, 58, 18, 25) 
 , (673, 58, 29, 25) 
 , (674, 58, 39, 30) 
 , (675, 59, 30, 10) 
 , (676, 59, 53, 10) 
 , (677, 59, 54, 5) 
 , (678, 60, 62, 10) 
 , (679, 60, 68, 3) 
 , (680, 61, 69, 1) 
 , (681, 61, 70, 5) 
 , (682, 62, 4, 20) 
 , (683, 62, 6, 30) 
 , (684, 62, 42, 2) 
 , (685, 62, 43, 20) 
 , (686, 62, 71, 3) 
 , (687, 63, 16, 10) 
 , (688, 63, 62, 5) 
 , (689, 64, 42, 6) 
 , (690, 64, 69, 7) 
 , (691, 65, 28, 4) 
 , (692, 65, 43, 24) 
 , (693, 65, 53, 20) 
 , (694, 65, 75, 10) 
 , (695, 66, 36, 12) 
 , (696, 67, 32, 40) 
 , (697, 67, 58, 30) 
 , (698, 67, 62, 25) 
 , (699, 68, 34, 14) 
 , (700, 68, 70, 30) 
 , (701, 69, 41, 10) 
 , (702, 69, 62, 70) 
 , (703, 70, 1, 20) 
 , (704, 71, 41, 20) 
 , (705, 71, 76, 6) 
 , (706, 72, 17, 8) 
 , (707, 72, 28, 14) 
 , (708, 72, 76, 30) 
 , (709, 73, 71, 30) 
 , (710, 74, 35, 10) 
 , (711, 75, 52, 20) 
 , (712, 76, 15, 5) 
 , (713, 76, 25, 4) 
 , (714, 76, 39, 4) 
 , (715, 77, 16, 21) 
 , (716, 77, 35, 70) 
 , (717, 77, 46, 30) 
 , (718, 77, 59, 40) 
 , (719, 77, 63, 80) 
 , (720, 78, 6, 6) 
 , (721, 78, 13, 12) 
 , (722, 78, 14, 9) 
 , (723, 78, 31, 4) 
 , (724, 78, 72, 40) 
 , (725, 79, 4, 24) 
 , (726, 79, 57, 16) 
 , (727, 79, 75, 50) 
 , (728, 80, 2, 25) 
 , (729, 80, 11, 50) 
 , (730, 80, 30, 35) 
 , (731, 80, 58, 30) 
 , (732, 81, 59, 9) 
 , (733, 81, 65, 40) 
 , (734, 81, 68, 10) 
 , (735, 82, 19, 10) 
 , (736, 82, 30, 8) 
 , (737, 82, 38, 20) 
 , (738, 82, 56, 12) 
 , (739, 83, 26, 50) 
 , (740, 83, 72, 25) 
 , (741, 84, 54, 15) 
 , (742, 85, 18, 40) 
 , (743, 85, 42, 10) 
 , (744, 85, 47, 16) 
 , (745, 86, 14, 10) 
 , (746, 86, 21, 10) 
 , (747, 86, 71, 40) 
 , (748, 87, 52, 8) 
 , (749, 87, 68, 10) 
 , (750, 88, 2, 7) 
 , (751, 88, 31, 25) 
 , (752, 88, 32, 6) 
 , (753, 88, 51, 48) 
 , (754, 89, 4, 18) 
 , (755, 90, 23, 40) 
 , (756, 90, 26, 24) 
 , (757, 90, 36, 20) 
 , (758, 90, 37, 28) 
 , (759, 90, 72, 25) 
 , (760, 91, 17, 20) 
 , (761, 91, 30, 15) 
 , (762, 92, 4, 10) 
 , (763, 92, 17, 70) 
 , (764, 92, 62, 28) 
 , (765, 93, 18, 20) 
 , (766, 93, 41, 12) 
 , (767, 93, 43, 40) 
 , (768, 94, 33, 8) 
 , (769, 94, 59, 9) 
 , (770, 95, 2, 24) 
 , (771, 95, 31, 56) 
 , (772, 95, 36, 40) 
 , (773, 95, 55, 40) 
 , (774, 96, 64, 50) 
 , (775, 96, 68, 4) 
 , (776, 96, 76, 15) 
 , (777, 97, 4, 35) 
 , (778, 97, 8, 70) 
 , (779, 98, 8, 70) 
 , (780, 98, 19, 80) 
 , (781, 98, 42, 9) 
 , (782, 99, 17, 36) 
 , (783, 99, 56, 20) 
 , (784, 100, 25, 10) 
 , (785, 100, 39, 50) 
 , (786, 100, 40, 4) 
 , (787, 100, 75, 6) 
 , (788, 101, 1, 15) 
 , (789, 101, 23, 25) 
 , (790, 102, 54, 24) 
 , (791, 103, 50, 15) 
 , (792, 103, 69, 18) 
 , (793, 104, 38, 20) 
 , (794, 104, 41, 13) 
 , (795, 104, 44, 77) 
 , (796, 104, 65, 10) 
 , (797, 105, 24, 10) 
 , (798, 105, 54, 20) 
 , (799, 106, 11, 12) 
 , (800, 106, 38, 50) 
 , (801, 107, 1, 12) 
 , (802, 107, 29, 4) 
 , (803, 108, 24, 25) 
 , (804, 108, 57, 25) 
 , (805, 109, 31, 30) 
 , (806, 109, 55, 12) 
 , (807, 109, 69, 20) 
 , (808, 110, 10, 30) 
 , (809, 110, 26, 16) 
 , (810, 110, 60, 8) 
 , (811, 111, 24, 10) 
 , (812, 111, 34, 10) 
 , (813, 111, 36, 20) 
 , (814, 112, 16, 56) 
 , (815, 112, 31, 70) 
 , (816, 112, 60, 80) 
 , (817, 113, 28, 30) 
 , (818, 113, 29, 35) 
 , (819, 113, 38, 10) 
 , (820, 113, 49, 35) 
 , (821, 113, 54, 28) 
 , (822, 114, 39, 54) 
 , (823, 114, 60, 55) 
 , (824, 115, 25, 50) 
 , (825, 115, 51, 20) 
 , (826, 115, 54, 24) 
 , (827, 116, 31, 20) 
 , (828, 116, 75, 12) 
 , (829, 116, 76, 12) 
 , (830, 117, 69, 30) 
 , (831, 117, 71, 5) 
 , (832, 118, 11, 24) 
 , (833, 119, 65, 5) 
 , (834, 119, 77, 5) 
 , (835, 120, 34, 36) 
 , (836, 120, 54, 18) 
 , (837, 120, 65, 15) 
 , (838, 120, 77, 7) 
 , (839, 121, 21, 5) 
 , (840, 121, 28, 13) 
 , (841, 121, 57, 25) 
 , (842, 121, 64, 35) 
 , (843, 122, 29, 20) 
 , (844, 122, 56, 18) 
 , (845, 123, 1, 15) 
 , (846, 123, 64, 30) 
 , (847, 123, 74, 20) 
 , (848, 124, 36, 6) 
 , (849, 125, 20, 12) 
 , (850, 125, 38, 40) 
 , (851, 125, 60, 70) 
 , (852, 125, 72, 42) 
 , (853, 126, 58, 80) 
 , (854, 126, 71, 50) 
 , (855, 127, 31, 30) 
 , (856, 127, 58, 15) 
 , (857, 128, 14, 15) 
 , (858, 128, 54, 10) 
 , (859, 129, 31, 42) 
 , (860, 130, 28, 20) 
 , (861, 130, 39, 20) 
 , (862, 131, 71, 6) 
 , (863, 132, 41, 8) 
 , (864, 132, 63, 16) 
 , (865, 132, 65, 20) 
 , (866, 133, 30, 18) 
 , (867, 133, 53, 20) 
 , (868, 133, 60, 6) 
 , (869, 133, 70, 30) 
 , (870, 134, 74, 14) 
 , (871, 135, 5, 32) 
 , (872, 135, 18, 9) 
 , (873, 135, 29, 14) 
 , (874, 135, 33, 60) 
 , (875, 135, 74, 50) 
 , (876, 136, 13, 20) 
 , (877, 136, 50, 15) 
 , (878, 136, 56, 20) 
 , (879, 137, 20, 28) 
 , (880, 137, 60, 15) 
 , (881, 138, 7, 10) 
 , (882, 138, 60, 20) 
 , (883, 138, 68, 8) 
 , (884, 139, 24, 15) 
 , (885, 139, 34, 10) 
 , (886, 140, 24, 15) 
 , (887, 140, 28, 6) 
 , (888, 140, 59, 12) 
 , (889, 140, 71, 15) 
 , (890, 141, 45, 15) 
 , (891, 141, 52, 20) 
 , (892, 141, 53, 40) 
 , (893, 142, 10, 16) 
 , (894, 142, 55, 15) 
 , (895, 142, 62, 20) 
 , (896, 142, 70, 30) 
 , (897, 143, 31, 60) 
 , (898, 143, 35, 40) 
 , (899, 143, 46, 45) 
 , (900, 143, 72, 24) 
 , (901, 144, 13, 18) 
 , (902, 145, 69, 50) 
 , (903, 146, 2, 25) 
 , (904, 146, 14, 42) 
 , (905, 146, 25, 7) 
 , (906, 146, 26, 70) 
 , (907, 146, 31, 32) 
 , (908, 147, 13, 10) 
 , (909, 147, 62, 10) 
 , (910, 148, 46, 28) 
 , (911, 148, 53, 70) 
 , (912, 148, 69, 8) 
 , (913, 149, 23, 40) 
 , (914, 149, 71, 60) 
 , (915, 149, 72, 21) 
 , (916, 150, 21, 10) 
 , (917, 150, 51, 18) 
 , (918, 151, 35, 30) 
 , (919, 151, 55, 120) 
 , (920, 152, 68, 60) 
 , (921, 152, 71, 30) 
 , (922, 152, 76, 35) 
 , (923, 152, 77, 14) 
 , (924, 153, 29, 21) 
 , (925, 153, 35, 35) 
 , (926, 153, 49, 30) 
 , (927, 154, 30, 18) 
 , (928, 154, 56, 70) 
 , (929, 154, 65, 20) 
 , (930, 154, 71, 60) 
 , (931, 155, 23, 60) 
 , (932, 155, 63, 65) 
 , (933, 156, 16, 21) 
 , (934, 156, 48, 70) 
 , (935, 157, 26, 30) 
 , (936, 157, 42, 40) 
 , (937, 157, 49, 30) 
 , (938, 158, 3, 50) 
 , (939, 159, 1, 10) 
 , (940, 159, 21, 30) 
 , (941, 159, 28, 42) 
 , (942, 159, 36, 5) 
 , (943, 159, 40, 2) 
 , (944, 160, 11, 30) 
 , (945, 160, 69, 15) 
 , (946, 160, 71, 15) 
 , (947, 161, 37, 10) 
 , (948, 161, 54, 6) 
 , (949, 161, 62, 35) 
 , (950, 162, 14, 12) 
 , (951, 162, 21, 12) 
 , (952, 163, 33, 49) 
 , (953, 163, 59, 16) 
 , (954, 164, 41, 25) 
 , (955, 164, 44, 40) 
 , (956, 164, 59, 9) 
 , (957, 165, 14, 20) 
 , (958, 166, 1, 24) 
 , (959, 166, 62, 40) 
 , (960, 166, 76, 14) 
 , (961, 167, 19, 18) 
 , (962, 167, 33, 50) 
 , (963, 168, 17, 2) 
 , (964, 168, 33, 20) 
 , (965, 169, 19, 20) 
 , (966, 169, 53, 10) 
 , (967, 169, 57, 20) 
 , (968, 170, 38, 50) 
 , (969, 170, 46, 2) 
 , (970, 170, 68, 36) 
 , (971, 170, 77, 35) 
 , (972, 171, 2, 60) 
 , (973, 171, 47, 55) 
 , (974, 171, 61, 16) 
 , (975, 171, 74, 15) 
 , (976, 172, 60, 60) 
 , (977, 172, 69, 20) 
 , (978, 173, 9, 20) 
 , (979, 173, 13, 2) 
 , (980, 173, 70, 8) 
 , (981, 173, 73, 20) 
 , (982, 174, 19, 4) 
 , (983, 174, 26, 30) 
 , (984, 174, 53, 15) 
 , (985, 174, 77, 10) 
 , (986, 175, 26, 2) 
 , (987, 176, 31, 14) 
 , (988, 176, 59, 20) 
 , (989, 177, 35, 60) 
 , (990, 177, 38, 49) 
 , (991, 177, 68, 30) 
 , (992, 178, 55, 10) 
 , (993, 178, 76, 20) 
 , (994, 179, 56, 5) 
 , (995, 179, 64, 7) 
 , (996, 180, 14, 35) 
 , (997, 181, 46, 20) 
 , (998, 182, 50, 40) 
 , (999, 182, 63, 35) 
 , (1000, 183, 17, 45) 
 , (1001, 183, 21, 50) 
 , (1002, 183, 56, 30) 
 , (1003, 183, 59, 70) 
 , (1004, 184, 17, 50) 
 , (1005, 184, 40, 50) 
 , (1006, 184, 47, 30) 
 , (1007, 185, 26, 10) 
 , (1008, 185, 54, 40) 
 , (1009, 186, 56, 28) 
 , (1010, 187, 11, 6) 
 , (1011, 187, 76, 18) 
 , (1012, 188, 2, 10) 
 , (1013, 188, 22, 12) 
 , (1014, 188, 72, 10) 
 , (1015, 189, 46, 5) 
 , (1016, 189, 56, 40) 
 , (1017, 189, 64, 30) 
 , (1018, 189, 75, 24) 
 , (1019, 190, 53, 15) 
 , (1020, 191, 19, 15) 
 , (1021, 191, 34, 20) 
 , (1022, 191, 57, 15) 
 , (1023, 192, 12, 15) 
 , (1024, 192, 16, 16) 
 , (1025, 192, 64, 6) 
 , (1026, 192, 74, 30) 
 , (1027, 193, 2, 45) 
 , (1028, 193, 16, 49) 
 , (1029, 193, 29, 24) 
 , (1030, 193, 61, 90) 
 , (1031, 194, 27, 50) 
 , (1032, 195, 11, 30) 
 , (1033, 195, 54, 80) 
 , (1034, 195, 66, 60) 
 , (1035, 196, 11, 6) 
 , (1036, 196, 28, 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `CustomerID` int(11) DEFAULT NULL,
  `EmployeeID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `ShipperID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--
INSERT INTO groot.orders(OrderID, CustomerID, EmployeeID, OrderDate, ShipperID)
    VALUES(1, 90, 5, '1996-07-04', 3)
 , (2, 81, 6, '1996-07-05', 3)
 , (3, 34, 4, '1996-07-08', 3)
 , (4, 84, 3, '1996-07-08', 2)
 , (5, 76, 4, '1996-07-09', 2)
 , (6, 34, 3, '1996-07-10', 2)
 , (7, 14, 5, '1996-07-11', 3)
 , (8, 68, 9, '1996-07-12', 1)
 , (9, 88, 3, '1996-07-15', 2)
 , (10, 35, 4, '1996-07-16', 2)
 , (11, 20, 1, '1996-07-17', 1)
 , (12, 13, 4, '1996-07-18', 3)
 , (13, 55, 4, '1996-07-19', 2)
 , (14, 61, 4, '1996-07-19', 1)
 , (15, 65, 8, '1996-07-22', 3)
 , (16, 20, 9, '1996-07-23', 3)
 , (17, 24, 6, '1996-07-24', 3)
 , (18, 7, 2, '1996-07-25', 3)
 , (19, 87, 3, '1996-07-26', 3)
 , (20, 25, 4, '1996-07-29', 3)
 , (21, 33, 8, '1996-07-30', 3)
 , (22, 89, 5, '1996-07-31', 1)
 , (23, 87, 1, '1996-08-01', 1)
 , (24, 75, 6, '1996-08-01', 3)
 , (25, 65, 6, '1996-08-02', 2)
 , (26, 63, 3, '1996-08-05', 2)
 , (27, 85, 6, '1996-08-06', 2)
 , (28, 49, 1, '1996-08-07', 1)
 , (29, 80, 8, '1996-08-08', 3)
 , (30, 52, 2, '1996-08-09', 3)
 , (31, 5, 8, '1996-08-12', 2)
 , (32, 44, 8, '1996-08-13', 3)
 , (33, 5, 2, '1996-08-14', 1)
 , (34, 69, 4, '1996-08-14', 3)
 , (35, 69, 4, '1996-08-15', 3)
 , (36, 46, 3, '1996-08-16', 2)
 , (37, 44, 4, '1996-08-19', 2)
 , (38, 63, 1, '1996-08-20', 2)
 , (39, 63, 8, '1996-08-21', 2)
 , (40, 67, 8, '1996-08-22', 2)
 , (41, 66, 4, '1996-08-23', 2)
 , (42, 11, 7, '1996-08-26', 2)
 , (43, 15, 8, '1996-08-27', 1)
 , (44, 61, 6, '1996-08-27', 2)
 , (45, 81, 1, '1996-08-28', 2)
 , (46, 80, 1, '1996-08-29', 3)
 , (47, 65, 4, '1996-08-30', 3)
 , (48, 85, 2, '1996-09-02', 2)
 , (49, 46, 6, '1996-09-03', 1)
 , (50, 7, null, '1996-09-04', 1)
 , (51, 37, 6, '1996-09-05', 3)
 , (52, 67, 4, '1996-09-06', 2)
 , (53, 49, 2, '1996-09-09', 3)
 , (54, 86, 8, '1996-09-09', 3)
 , (55, 76, 4, '1996-09-10', 2)
 , (56, 30, 7, '1996-09-11', 1)
 , (57, 80, 1, '1996-09-12', 3)
 , (58, 55, 8, '1996-09-13', 1)
 , (59, 69, 1, '1996-09-16', 3)
 , (60, 48, 2, '1996-09-17', 2)
 , (61, 2, 7, '1996-09-18', 2)
 , (62, 37, 3, '1996-09-19', 1)
 , (63, 77, 8, '1996-09-20', 3)
 , (64, 18, 1, '1996-09-20', 3)
 , (65, 86, 2, '1996-09-23', 2)
 , (66, 63, 2, '1996-09-24', 2)
 , (67, 65, 1, '1996-09-25', 3)
 , (68, 38, 4, '1996-09-26', 2)
 , (69, 65, 1, '1996-09-27', 1)
 , (70, 48, 6, '1996-09-30', 1)
 , (71, 38, 8, '1996-10-01', 1)
 , (72, 80, 7, '1996-10-02', 3)
 , (73, 87, 5, '1996-10-03', 1)
 , (74, 38, 3, '1996-10-03', 3)
 , (75, 58, 7, '1996-10-04', 3)
 , (76, 39, 4, '1996-10-07', 3)
 , (77, 71, 9, '1996-10-08', 3)
 , (78, 39, 1, '1996-10-09', 3)
 , (79, 8, 4, '1996-10-10', 2)
 , (80, 24, 2, '1996-10-11', 1)
 , (81, 28, 4, '1996-10-14', 3)
 , (82, 75, 4, '1996-10-15', 2)
 , (83, 46, 3, '1996-10-16', 3)
 , (84, 9, 9, '1996-10-16', 1)
 , (85, 51, 3, '1996-10-17', 3)
 , (86, 87, 5, '1996-10-18', 2)
 , (87, 84, 8, '1996-10-21', 2)
 , (88, 37, 7, '1996-10-22', 2)
 , (89, 60, 7, '1996-10-23', 2)
 , (90, 25, 4, '1996-10-24', 3)
 , (91, 55, 4, '1996-10-25', 3)
 , (92, 51, 2, '1996-10-28', 3)
 , (93, 9, 1, '1996-10-29', 3)
 , (94, 73, 7, '1996-10-29', 3)
 , (95, 25, 4, '1996-10-30', 2)
 , (96, 44, 4, '1996-10-31', 1)
 , (97, 89, 4, '1996-11-01', 2)
 , (98, 63, 2, '1996-11-04', 2)
 , (99, 65, 3, '1996-11-05', 3)
 , (100, 21, 4, '1996-11-06', 3)
 , (101, 86, 4, '1996-11-07', 2)
 , (102, 75, 7, '1996-11-08', 1)
 , (103, 41, 6, '1996-11-11', 2)
 , (104, 20, 1, '1996-11-11', 1)
 , (105, 28, 3, '1996-11-12', 3)
 , (106, 59, 7, '1996-11-13', 3)
 , (107, 58, 8, '1996-11-14', 3)
 , (108, 4, 6, '1996-11-15', 1)
 , (109, 86, 6, '1996-11-18', 2)
 , (110, 46, 1, '1996-11-19', 3)
 , (111, 41, 5, '1996-11-20', 1)
 , (112, 72, 5, '1996-11-21', 3)
 , (113, 7, 4, '1996-11-22', 3)
 , (114, 63, 1, '1996-11-22', 2)
 , (115, 9, 3, '1996-11-25', 1)
 , (116, 17, 4, '1996-11-26', 3)
 , (117, 19, 1, '1996-11-26', 1)
 , (118, 3, 3, '1996-11-27', 2)
 , (119, 29, 8, '1996-11-28', 2)
 , (120, 83, 7, '1996-11-28', 3)
 , (121, 20, 2, '1996-11-29', 2)
 , (122, 75, 8, '1996-12-02', 2)
 , (123, 14, 6, '1996-12-03', 2)
 , (124, 41, 1, '1996-12-03', 1)
 , (125, 62, 5, '1996-12-04', 2)
 , (126, 37, 4, '1996-12-05', 3)
 , (127, 91, 1, '1996-12-05', 3)
 , (128, 36, 3, '1996-12-06', 2)
 , (129, 51, 1, '1996-12-09', 2)
 , (130, 72, 1, '1996-12-09', 3)
 , (131, 24, 5, '1996-12-10', 3)
 , (132, 61, 2, '1996-12-11', 1)
 , (133, 37, 8, '1996-12-12', 3)
 , (134, 46, 3, '1996-12-12', 3)
 , (135, 20, 4, '1996-12-13', 1)
 , (136, 4, 8, '1996-12-16', 3)
 , (137, 5, 3, '1996-12-16', 3)
 , (138, 75, 1, '1996-12-17', 2)
 , (139, 21, 9, '1996-12-18', 3)
 , (140, 70, 1, '1996-12-18', 2)
 , (141, 72, 2, '1996-12-19', 1)
 , (142, 10, 4, '1996-12-20', 2)
 , (143, 20, 6, '1996-12-23', 1)
 , (144, 17, 3, '1996-12-23', 3)
 , (145, 59, 2, '1996-12-24', 3)
 , (146, 71, 1, '1996-12-25', 3)
 , (147, 36, 1, '1996-12-25', 3)
 , (148, 35, 6, '1996-12-26', 1)
 , (149, 25, 1, '1996-12-27', 3)
 , (150, 60, 5, '1996-12-27', 1)
 , (151, 71, 2, '1996-12-30', 3)
 , (152, 83, 8, '1996-12-31', 3)
 , (153, 19, 1, '1997-01-01', 3)
 , (154, 65, 1, '1997-01-01', 1)
 , (155, 20, 8, '1997-01-02', 2)
 , (156, 20, 4, '1997-01-03', 3)
 , (157, 49, 2, '1997-01-03', 1)
 , (158, 47, 1, '1997-01-06', 1)
 , (159, 62, 7, '1997-01-07', 1)
 , (160, 56, 2, '1997-01-07', 2)
 , (161, 23, 8, '1997-01-08', 1)
 , (162, 54, 3, '1997-01-09', 1)
 , (163, 10, 3, '1997-01-10', 3)
 , (164, 10, 9, '1997-01-10', 3)
 , (165, 87, 8, '1997-01-13', 2)
 , (166, 41, 3, '1997-01-14', 2)
 , (167, 21, 2, '1997-01-14', 3)
 , (168, 36, 3, '1997-01-15', 1)
 , (169, 87, 8, '1997-01-16', 3)
 , (170, 73, 4, '1997-01-16', 3)
 , (171, 63, 4, '1997-01-17', 1)
 , (172, 68, 4, '1997-01-20', 2)
 , (173, 88, 3, '1997-01-21', 1)
 , (174, 61, 8, '1997-01-21', 1)
 , (175, 27, 2, '1997-01-22', 1)
 , (176, 31, 6, '1997-01-23', 3)
 , (177, 51, 7, '1997-01-23', 2)
 , (178, 41, 6, '1997-01-24', 2)
 , (179, 29, 4, '1997-01-27', 1)
 , (180, 59, 4, '1997-01-27', 2)
 , (181, 66, 7, '1997-01-28', 1)
 , (182, 37, 3, '1997-01-29', 2)
 , (183, 20, 4, '1997-01-30', 1)
 , (184, 10, 4, '1997-01-30', 2)
 , (185, 75, 3, '1997-01-31', 2)
 , (186, 60, 3, '1997-02-03', 3)
 , (187, 24, 3, '1997-02-03', 2)
 , (188, 16, 8, '1997-02-04', 2)
 , (189, 7, 3, '1997-02-05', 2)
 , (190, 87, 8, '1997-02-05', 1)
 , (191, 79, 3, '1997-02-06', 2)
 , (192, 51, 6, '1997-02-07', 3)
 , (193, 71, 4, '1997-02-10', 2)
 , (194, 55, 3, '1997-02-10', 2)
 , (195, 20, 3, '1997-02-11', 2)
 , (196, 66, 8, '1997-02-12', 1)
 , (197, 90, 5, '1996-07-04', 3)
 , (198, 81, 6, '1996-07-05', 1)
 , (199, 34, 4, '1996-07-08', 2)
 , (200, 84, 3, '1996-07-08', 1)
 , (201, 76, 4, '1996-07-09', 2)
 , (202, 34, 3, '1996-07-10', 2)
 , (203, 14, 5, '1996-07-11', 2)
 , (204, 68, 9, '1996-07-12', 3)
 , (205, 88, 3, '1996-07-15', 2)
 , (206, 35, 4, '1996-07-16', 3)
 , (207, 20, 1, '1996-07-17', 1)
 , (208, 13, 4, '1996-07-18', 3)
 , (209, 55, 4, '1996-07-19', 1)
 , (210, 61, 4, '1996-07-19', 2)
 , (211, 65, 8, '1996-07-22', 3)
 , (212, 20, 9, '1996-07-23', 3)
 , (213, 24, 6, '1996-07-24', 3)
 , (214, 7, 2, '1996-07-25', 1)
 , (215, 87, 3, '1996-07-26', 3)
 , (216, 25, 4, '1996-07-29', 1)
 , (217, 33, 8, '1996-07-30', 3)
 , (218, 89, 5, '1996-07-31', 1)
 , (219, 87, 1, '1996-08-01', 1)
 , (220, 75, 6, '1996-08-01', 2)
 , (221, 65, 6, '1996-08-02', 2)
 , (222, 63, 3, '1996-08-05', 3)
 , (223, 85, 6, '1996-08-06', 1)
 , (224, 49, 1, '1996-08-07', 1)
 , (225, 80, 8, '1996-08-08', 3)
 , (226, 52, 2, '1996-08-09', 3)
 , (227, 5, 8, '1996-08-12', 2)
 , (228, 44, 8, '1996-08-13', 2)
 , (229, 5, 2, '1996-08-14', 1)
 , (230, 69, 4, '1996-08-14', 1)
 , (231, 69, 4, '1996-08-15', 1)
 , (232, 46, 3, '1996-08-16', 3)
 , (233, 44, 4, '1996-08-19', 1)
 , (234, 63, 1, '1996-08-20', 2)
 , (235, 63, 8, '1996-08-21', 3)
 , (236, 67, 8, '1996-08-22', 3)
 , (237, 66, 4, '1996-08-23', 1)
 , (238, 11, 7, '1996-08-26', 3)
 , (239, 15, 8, '1996-08-27', 1)
 , (240, 61, 6, '1996-08-27', 2)
 , (241, 81, 1, '1996-08-28', 2)
 , (242, 80, 1, '1996-08-29', 3)
 , (243, 65, 4, '1996-08-30', 2)
 , (244, 85, 2, '1996-09-02', 2)
 , (245, 46, 6, '1996-09-03', 1)
 , (246, 7, null, '1996-09-04', 2);
-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `SupplierID` int(11) DEFAULT NULL,
  `CategoryID` int(11) DEFAULT NULL,
  `Unit` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `Price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `Unit`, `Price`) VALUES
(1, 'Chais', 1, 1, '10 boxes x 20 bags', 18),
(2, 'Chang', 1, 1, '24 - 12 oz bottles', 19),
(3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10),
(4, 'Chef Anton\'s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22),
(5, 'Chef Anton\'s Gumbo Mix', 2, 2, '36 boxes', 21.35),
(6, 'Grandma\'s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25),
(7, 'Uncle Bob\'s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30),
(8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40),
(9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97),
(10, 'Ikura', 4, 8, '12 - 200 ml jars', 31),
(11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21),
(12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38),
(13, 'Konbu', 6, 8, '2 kg box', 6),
(14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25),
(15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.5),
(16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45),
(17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39),
(18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5),
(19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2),
(20, 'Sir Rodney\'s Marmalade', 8, 3, '30 gift boxes', 81),
(21, 'Sir Rodney\'s Scones', 8, 3, '24 pkgs. x 4 pieces', 10),
(22, 'Gustaf\'s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21),
(23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9),
(24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.5),
(25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14),
(26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23),
(27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9),
(28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6),
(29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79),
(30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89),
(31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5),
(32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32),
(33, 'Geitost', 15, 4, '500 g', 2.5),
(34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14),
(35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18),
(36, 'Inlagd Sill', 17, 8, '24 - 250 g jars', 19),
(37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26),
(38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5),
(39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18),
(40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.4),
(41, 'Jack\'s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65),
(42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14),
(43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46),
(44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45),
(45, 'Røgede sild', 21, 8, '1k pkg.', 9.5),
(46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12),
(47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5),
(48, 'Chocolade', 22, 3, '10 pkgs.', 12.75),
(49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20),
(50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25),
(51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53),
(52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7),
(53, 'Perth Pasties', 24, 6, '48 pieces', 32.8),
(54, 'Tourtière', 25, 6, '16 pies', 7.45),
(55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24),
(56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38),
(57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5),
(58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25),
(59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55),
(60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34),
(61, 'Sirop d\'érable', 29, 2, '24 - 500 ml bottles', 28.5),
(62, 'Tarte au sucre', 29, 3, '48 pies', 49.3),
(63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9),
(64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25),
(65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05),
(66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17),
(67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14),
(68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5),
(69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36),
(70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15),
(71, 'Fløtemysost', 15, 4, '10 - 500 g pkgs.', 21.5),
(72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8),
(73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15),
(74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10),
(75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75),
(76, 'Lakkalikööri', 23, 1, '500 ml ', 18),
(77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13);

-- --------------------------------------------------------

--
-- Stand-in structure for view `shippers`
-- (See below for the actual view)
--
CREATE TABLE `shippers` (
`ShipperID` int(11)
,`ShipperName` varchar(511)
,`Phone` text
);

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` text DEFAULT NULL,
  `seq` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sqlite_sequence`
--

INSERT INTO `sqlite_sequence` (`name`, `seq`) VALUES
('Customers', '91'),
('Categories', '8'),
('Employees', '10'),
('OrderDetails', '518'),
('Orders', '10443'),
('Products', '77'),
('Shippers', '3'),
('Suppliers', '29'),
('Customers', '91'),
('Categories', '8'),
('Employees', '10'),
('OrderDetails', '518'),
('Orders', '10443'),
('Products', '77'),
('Shippers', '3'),
('Suppliers', '29');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(11) NOT NULL,
  `SupplierName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ContactName` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `City` varchar(255) CHARACTER SET utf8 NOT NULL,
  `PostalCode` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Country` varchar(255) CHARACTER SET utf8 NOT NULL,
  `Phone` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`) VALUES
(1, 'Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK', '(171) 555-2222'),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA', '(100) 555-4822'),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA', '(313) 555-5735'),
(4, 'Tokyo Traders', 'Yoshi Nagase', '9-8 Sekimai Musashino-shi', 'Tokyo', '100', 'Japan', '(03) 3555-5011'),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra ', 'Calle del Rosal 4', 'Oviedo', '33007', 'Spain', '(98) 598 76 54'),
(6, 'Mayumi\'s', 'Mayumi Ohno', '92 Setsuko Chuo-ku', 'Osaka', '545', 'Japan', '(06) 431-7877'),
(7, 'Pavlova, Ltd.', 'Ian Devling', '74 Rose St. Moonie Ponds', 'Melbourne', '3058', 'Australia', '(03) 444-2343'),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '29 King\'s Way', 'Manchester', 'M14 GSD', 'UK', '(161) 555-4448'),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Kaloadagatan 13', 'Göteborg', 'S-345 67', 'Sweden ', '031-987 65 43'),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Av. das Americanas 12.890', 'São Paulo', '5442', 'Brazil', '(11) 555 4640'),
(11, 'Heli Süßwaren GmbH &amp;Co. KG', 'Petra Winkler', 'Tiergartenstraße 5', 'Berlin', '10785', 'Germany', '(010) 9984510'),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Bogenallee 51', 'Frankfurt', '60439', 'Germany', '(069) 992755'),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Frahmredder 112a', 'Cuxhaven', '27478', 'Germany', '(04721) 8713'),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Viale Dante, 75', 'Ravenna', '48100', 'Italy', '(0544) 60323'),
(15, 'Norske Meierier', 'Beate Vileid', 'Hatlevegen 5', 'Sandvika', '1320', 'Norway', '(0)2-953010'),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', '3400 - 8th Avenue Suite 210', 'Bend', '97101', 'USA', '(503) 555-9931'),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Brovallavägen 231', 'Stockholm', 'S-123 45', 'Sweden', '08-123 45 67'),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', '203, Rue des Francs-Bourgeois', 'Paris', '75004', 'France', '(1) 03.83.00.68'),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', '02134', 'USA', '(617) 555-3267'),
(20, 'Leka Trading', 'Chandra Leka', '471 Serangoon Loop, Suite #402', 'Singapore', '0512', 'Singapore', '555-8787'),
(21, 'Lyngbysild', 'Niels Petersen', 'Lyngbysild Fiskebakken 10', 'Lyngby', '2800', 'Denmark', '43844108'),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Verkoop Rijnweg 22', 'Zaandam', '9999 ZZ', 'Netherlands', '(12345) 1212'),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Valtakatu 12', 'Lappeenranta', '53120', 'Finland', '(953) 10956'),
(24, 'G\'day, Mate', 'Wendy Mackenzie', '170 Prince Edward Parade Hunter\'s Hill', 'Sydney', '2042', 'Australia', '(02) 555-5914'),
(25, 'Ma Maison', 'Jean-Guy Lauzon', '2960 Rue St. Laurent', 'Montréal', 'H1J 1C3', 'Canada', '(514) 555-9022'),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Via dei Gelsomini, 153', 'Salerno', '84100', 'Italy', '(089) 6547665'),
(27, 'Escargots Nouveaux', 'Marie Delamare', '22, rue H. Voiron', 'Montceau', '71300', 'France', '85.57.00.07'),
(28, 'Gai pâturage', 'Eliane Noz', 'Bat. B 3, rue des Alpes', 'Annecy', '74000', 'France', '38.76.98.06'),
(29, 'Forêts d\'érables', 'Chantal Goulet', '148 rue Chasseur', 'Ste-Hyacinthe', 'J2S 7S8', 'Canada', '(514) 555-2955');

-- --------------------------------------------------------

--
-- Structure for view `shippers`
--
DROP TABLE IF EXISTS `shippers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`groot`@`localhost` SQL SECURITY DEFINER VIEW `shippers`  AS  select `employees`.`EmployeeID` AS `ShipperID`,concat(`employees`.`FirstName`,' ',`employees`.`LastName`) AS `ShipperName`,`employees`.`Notes` AS `Phone` from `employees` where `employees`.`EmployeeID` >= 90 ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `OrderDID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1037;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
