CREATE USER 'admin'@'%' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
FLUSH PRIVILEGES;

CREATE DATABASE IF NOT EXISTS `dev`;
USE `dev`;

DROP TABLE IF EXISTS `table_1_10015132_11`;
CREATE TABLE `table_1_10015132_11` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Player` text DEFAULT NULL,
	`No.` text DEFAULT NULL,
	`Nationality` text DEFAULT NULL,
	`Position` text DEFAULT NULL,
	`Years_in_Toronto` text DEFAULT NULL,
	`School/Club_Team` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10015132_11` WRITE;
INSERT INTO `table_1_10015132_11` VALUES (1, 'Antonio Lang', '21', 'United States', 'Guard-Forward', '1999-2000', 'Duke'),(2, 'Voshon Lenard', '2', 'United States', 'Guard', '2002-03', 'Minnesota'),(3, 'Martin Lewis', '32, 44', 'United States', 'Guard-Forward', '1996-97', 'Butler CC (KS)'),(4, 'Brad Lohaus', '33', 'United States', 'Forward-Center', '1996', 'Iowa'),(5, 'Art Long', '42', 'United States', 'Forward-Center', '2002-03', 'Cincinnati'),(6, 'John Long', '25', 'United States', 'Guard', '1996-97', 'Detroit'),(7, 'Kyle Lowry', '3', 'United States', 'Guard', '2012-Present', 'Villanova');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10015132_9`;
CREATE TABLE `table_1_10015132_9` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Player` text DEFAULT NULL,
	`No.` text DEFAULT NULL,
	`Nationality` text DEFAULT NULL,
	`Position` text DEFAULT NULL,
	`Years_in_Toronto` text DEFAULT NULL,
	`School/Club_Team` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10015132_9` WRITE;
INSERT INTO `table_1_10015132_9` VALUES (1, 'Jarrett Jack', '1', 'United States', 'Guard', '2009-10', 'Georgia Tech'),(2, 'Jermaine Jackson', '8', 'United States', 'Guard', '2002-03', 'Detroit'),(3, 'Luke Jackson', '6', 'United States', 'Guard-Forward', '2007', 'Oregon'),(4, 'Mark Jackson', '13', 'United States', 'Guard', '2000-01', "St. John's"),(5, 'Mike James', '13', 'United States', 'Guard', '2005-06', 'Duquesne'),(6, 'Nathan Jawai', '21', 'Australia', 'Forward-Center', '2009', 'Midland College'),(7, 'Chris Jefferies', '1, 32', 'United States', 'Forward', '2002-03', 'Fresno State'),(8, 'Amir Johnson', '15', 'United States', 'Forward-Center', '2009-present', 'Westchester High School'),(9, 'James Johnson', '0, 2', 'United States', 'Forward', '2011-2012', 'Wake Forest'),(10, 'Linton Johnson', '13', 'United States', 'Forward', '2008', 'Tulane'),(11, 'Trey Johnson', '12', 'United States', 'Guard', '2011', 'Jackson State'),(12, 'Fred Jones', '20', 'United States', 'Guard', '2006-07', 'Oregon'),(13, 'Popeye Jones', '54', 'United States', 'Forward', '1996-98', 'Murray State');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10026563_1`;
CREATE TABLE `table_1_10026563_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Entered_office_as_Head_of_State_or_Government` text DEFAULT NULL,
	`Began_time_as_senior_G8_leader` text DEFAULT NULL,
	`Ended_time_as_senior_G8_leader` text DEFAULT NULL,
	`Person` text DEFAULT NULL,
	`Office` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10026563_1` WRITE;
INSERT INTO `table_1_10026563_1` VALUES (1, '16 October 1964', '15 November 1975', '5 April 1976', 'Harold Wilson', 'Prime Minister of the United Kingdom'),(2, '16 May 1974', '5 April 1976', '27 June 1976', 'Helmut Schmidt', 'Chancellor of West Germany'),(3, '20 April 1968', '27 June 1976', '4 June 1979', 'Pierre Trudeau', 'Prime Minister of Canada'),(4, '16 May 1974', '4 June 1979', '1 October 1982', 'Helmut Schmidt', 'Chancellor of West Germany'),(5, '4 May 1979', '1 October 1982', '28 November 1990', 'Margaret Thatcher', 'Prime Minister of the United Kingdom'),(6, '10 May 1981', '28 November 1990', '17 May 1995', 'Franois Mitterrand', 'President of France'),(7, '1 October 1982', '17 May 1995', '27 October 1998', 'Helmut Kohl', 'Chancellor of Germany'),(8, '10 July 1991', '27 October 1998', '31 December 1999', 'Boris Yeltsin', 'President of Russia'),(9, '20 January 1993', '31 December 1999', '20 January 2001', 'Bill Clinton', 'President of the United States'),(10, '4 November 1993', '20 January 2001', '12 December 2003', 'Jean Chrtien', 'Prime Minister of Canada'),(11, '17 May 1995', '12 December 2003', '16 May 2007', 'Jacques Chirac', 'President of France'),(12, '2 May 1997', '16 May 2007', '27 June 2007', 'Tony Blair', 'Prime Minister of the United Kingdom'),(13, '31 December 1999', '27 June 2007', '7 May 2008', 'Vladimir Putin', 'President of Russia'),(14, '20 January 2001', '7 May 2008', '20 January 2009', 'George W. Bush', 'President of the United States'),(15, '10 May 1994', '20 January 2009', '16 November 2011', 'Silvio Berlusconi', 'Prime Minister of Italy'),(16, '22 November 2005', '16 November 2011', '7 May 2012', 'Angela Merkel', 'Chancellor of Germany');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1008653_1`;
CREATE TABLE `table_1_1008653_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Country_(_exonym_)` text DEFAULT NULL,
	`Capital_(_exonym_)` text DEFAULT NULL,
	`Country_(_endonym_)` text DEFAULT NULL,
	`Capital_(_endonym_)` text DEFAULT NULL,
	`Official_or_native_language(s)_(alphabet/script)` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1008653_1` WRITE;
INSERT INTO `table_1_1008653_1` VALUES (1, 'Afghanistan', 'Kabul', 'Afghanestan ', 'Kaalu ', 'Pashto / Dari ( Arabic script )'),(2, 'Albania', 'Tirana', 'Shqipria', 'Tiran', 'Albanian'),(3, 'American Samoa', 'Pago Pago', 'Amerika Smoa American Samoa', 'Pago Pago Pago Pago', 'Samoan English'),(4, 'Andorra', 'Andorra la Vella', 'Andorra', 'Andorra la Vella', 'Catalan'),(5, 'Angola', 'Luanda', 'Angola', 'Luanda', 'Portuguese'),(6, 'Anguilla', 'The Valley', 'Anguilla', 'The Valley', 'English'),(7, 'Antigua and Barbuda', "Saint John's", 'Antigua and Barbuda', "St. John's", 'English'),(8, 'Argentina', 'Buenos Aires', 'Argentina', 'Buenos Aires', 'Spanish'),(9, 'Armenia', 'Yerevan', 'Hayastn ', 'Yerevan ', 'Armenian ( Armenian alphabet )'),(10, 'Aruba', 'Oranjestad', 'Aruba Aruba', 'Oranjestad Oranjestad', 'Dutch Papiamento'),(11, 'Australia', 'Canberra', 'Australia', 'Canberra', 'English / Aboriginal native languages'),(12, 'Austria', 'Vienna', 'sterreich', 'Wien', 'German');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10088101_1`;
CREATE TABLE `table_1_10088101_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`No._in_set` double DEFAULT NULL,
	`No._in_series` double DEFAULT NULL,
	`Title` text DEFAULT NULL,
	`Directed_by` text DEFAULT NULL,
	`Written_by` text DEFAULT NULL,
	`Original_air_date` text DEFAULT NULL,
	`Production_code` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10088101_1` WRITE;
INSERT INTO `table_1_10088101_1` VALUES (1, 1.0, 174.0, '" Per Manum "', 'Kim Manners', 'Chris Carter & Frank Spotnitz', 'February18,2001', '8ABX13'),(2, 2.0, 175.0, '" This is Not Happening "', 'Kim Manners', 'Chris Carter & Frank Spotnitz', 'February25,2001', '8ABX14'),(3, 3.0, 176.0, '" Deadalive "', 'Tony Wharmby', 'Chris Carter & Frank Spotnitz', 'April1,2001', '8ABX15'),(4, 4.0, 177.0, '" Three Words "', 'Tony Wharmby', 'Chris Carter & Frank Spotnitz', 'April8,2001', '8ABX16'),(5, 5.0, 179.0, '" Vienen "', 'Rod Hardy', 'Steven Maeda', 'April29,2001', '8ABX18'),(6, 6.0, 181.0, '" Essence "', 'Kim Manners', 'Chris Carter', 'May13,2001', '8ABX20'),(7, 7.0, 182.0, '" Existence "', 'Kim Manners', 'Chris Carter', 'May20,2001', '8ABX21'),(8, 8.0, 183.0, '" Nothing Important Happened Today "', 'Kim Manners', 'Chris Carter & Frank Spotnitz', 'November11,2001', '9ABX01'),(9, 9.0, 184.0, '" Nothing Important Happened Today II "', 'Tony Wharmby', 'Chris Carter & Frank Spotnitz', 'November18,2001', '9ABX02'),(10, 10.0, 188.0, '" Trust No 1 "', 'Tony Wharmby', 'Chris Carter & Frank Spotnitz', 'January6,2002', '9ABX06'),(11, 11.0, 191.0, '" Provenance "', 'Kim Manners', 'Chris Carter & Frank Spotnitz', 'March3,2002', '9ABX09'),(12, 12.0, 192.0, '" Providence "', 'Chris Carter', 'Chris Carter & Frank Spotnitz', 'March10,2002', '9ABX10');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10295819_2`;
CREATE TABLE `table_1_10295819_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Player` text DEFAULT NULL,
	`Highest_singles_ranking` text DEFAULT NULL,
	`Highest_doubles_ranking` text DEFAULT NULL,
	`First_year_played` double DEFAULT NULL,
	`Years_played` double DEFAULT NULL,
	`Ties_played` double DEFAULT NULL,
	`Total_W–L` text DEFAULT NULL,
	`Singles_W–L` text DEFAULT NULL,
	`Doubles_W–L` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10295819_2` WRITE;
INSERT INTO `table_1_10295819_2` VALUES (1, 'Aivaras Balekas Category:Articles with hCards', '926', '939', 1999.0, 5.0, 19.0, '1013', '912', '11'),(2, 'Riardas Berankis Category:Articles with hCards', '67', '285', 2007.0, 6.0, 13.0, '179', '145', '34'),(3, 'Mantas Bugailikis Category:Articles with hCards', 'N/A', 'N/A', 2013.0, 1.0, 1.0, '01', '00', '01'),(4, 'Eugenijus Cariovas Category:Articles with hCards', 'N/A', 'N/A', 2006.0, 2.0, 8.0, '85', '23', '62'),(5, 'Mindaugas eledinas', 'N/A', 'N/A', 2006.0, 2.0, 3.0, '04', '01', '03'),(6, 'Artras Gotovskis Category:Articles with hCards', 'N/A', 'N/A', 2005.0, 1.0, 2.0, '11', '01', '10'),(7, 'Julius Gotovskis Category:Articles with hCards', 'N/A', 'N/A', 2011.0, 1.0, 1.0, '01', '01', '00'),(8, 'Laurynas Grigelis Category:Articles with hCards', '183', '132', 2008.0, 4.0, 9.0, '79', '47', '32'),(9, 'Denis Ivancovas Category:Articles with hCards', 'N/A', 'N/A', 1994.0, 3.0, 8.0, '74', '22', '52'),(10, 'Paulius Jurknas Category:Articles with hCards', 'N/A', '1434', 2000.0, 2.0, 5.0, '14', '00', '14'),(11, 'Aurimas Karpaviius Category:Articles with hCards', 'N/A', 'N/A', 2003.0, 1.0, 2.0, '02', '01', '01'),(12, 'Daniel Lencina-Ribes Category:Articles with hCards', '591', '671', 2005.0, 5.0, 20.0, '199', '114', '85'),(13, 'Gitanas Maonas Category:Articles with hCards', 'N/A', 'N/A', 1994.0, 4.0, 13.0, '107', '74', '33'),(14, 'Lukas Mugeviius Category:Articles with hCards', 'N/A', '1513', 2010.0, 4.0, 6.0, '37', '24', '13'),(15, 'Rolandas Muraka Category:Articles with hCards', '575', '1100', 1994.0, 12.0, 49.0, '5632', '3712', '1920'),(16, 'Tomas Petrauskas Category:Articles with hCards', 'N/A', 'N/A', 1998.0, 1.0, 2.0, '21', '10', '11'),(17, 'Vadim Pinko Category:Articles with hCards', 'N/A', 'N/A', 2009.0, 1.0, 1.0, '01', '00', '01'),(18, 'Denis Riabuchin Category:Articles with hCards', 'N/A', 'N/A', 2006.0, 1.0, 2.0, '02', '00', '02'),(19, 'Arnas Rozga Category:Articles with hCards', 'N/A', 'N/A', 1999.0, 2.0, 8.0, '44', '00', '44'),(20, 'Gvidas Sabeckis Category:Articles with hCards', '488', '548', 2002.0, 8.0, 31.0, '2321', '117', '1214'),(21, 'Dovydas akinis', '808', '1214', 2009.0, 5.0, 10.0, '48', '35', '13'),(22, 'Aistis lajus', '1346', '1434', 1998.0, 3.0, 11.0, '610', '47', '23'),(23, 'Julius Tverijonas Category:Articles with hCards', '1418', 'N/A', 2011.0, 1.0, 1.0, '01', '01', '00'),(24, 'Giedrius Velis Category:Articles with hCards', 'N/A', 'N/A', 1994.0, 1.0, 3.0, '12', '10', '02');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10342194_3`;
CREATE TABLE `table_1_10342194_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`District` text DEFAULT NULL,
	`Total_amount_of_trees` double DEFAULT NULL,
	`Prevailing_types,_%` text DEFAULT NULL,
	`Amount_of_old_trees` text DEFAULT NULL,
	`Amount_of_trees,_that_require_replacement` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10342194_3` WRITE;
INSERT INTO `table_1_10342194_3` VALUES (1, 'Kirovsky', 188497.0, 'Pine  29.37 Poplar  26.12 Acer negundo  13.2', '98,374 (52.18%)', '2,322 (2.36%)'),(2, 'Motovilikhinsky', 129888.0, 'Acer negundo  27.62 Poplar  15.88 Willow  14.05', '13,603 (10.47%)', '1,419 (10.43%)'),(3, 'Ordzhonikidzevsky', 101566.0, 'Poplar  24.09 Birch  17.32 Acer negundo  13.02', '1,928 (1.89%)', '1,297 (67.27%)'),(4, 'Sverdlovsky', 163945.0, 'Acer negundo  24.82 Willow  15.94 Poplar  13.18', '6,133 (3.74%)', '642 (10.47%)'),(5, 'Leninsky', 13151.0, 'Acer negundo  30.22 Tilia  18.6 Poplar  15.23', '3,283 (14.53%)', '897 (27.32%)');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10429820_13`;
CREATE TABLE `table_1_10429820_13` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Iowa_State_vs.` text DEFAULT NULL,
	`Overall_Record` text DEFAULT NULL,
	`in_Ames` text DEFAULT NULL,
	`at_Opponents_Venue` text DEFAULT NULL,
	`at_Neutral_Site` text DEFAULT NULL,
	`Last_5_Meetings` text DEFAULT NULL,
	`Last_10_Meetings` text DEFAULT NULL,
	`Current_Streak` text DEFAULT NULL,
	`Since_Beginning_of_Big_12` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10429820_13` WRITE;
INSERT INTO `table_1_10429820_13` VALUES (1, 'Baylor', 'ISU, 148', 'ISU, 100', 'BU, 27', 'ISU, 21', 'ISU, 41', 'ISU, 64', 'W 3', 'ISU, 137'),(2, 'Kansas', 'KU, 17459', 'KU, 6737', 'KU, 8915', 'KU, 187', 'KU, 41', 'KU, 91', 'L 3', 'KU, 287'),(3, 'Kansas State', 'KSU, 13477', 'KSU, 5048', 'KSU, 7821', 'ISU, 97', 'ISU, 32', 'KSU, 64', 'L 1', 'KSU, 1815'),(4, 'Oklahoma', 'OU, 11179', 'ISU, 4637', 'OU, 6122', 'OU, 1311', 'ISU, 41', 'Tied, 55', 'W 1', 'OU, 137'),(5, 'Oklahoma State', 'OSU, 6253', 'ISU, 3414', 'OSU, 3613', 'OSU, 126', 'OSU, 32', 'OSU, 73', 'W 1', 'OSU, 165'),(6, 'Texas', 'UT, 1410', 'ISU, 74', 'UT, 19', 'ISU, 21', 'UT, 32', 'UT, 82', 'L 1', 'UT, 136'),(7, 'TCU', 'TCU, 53', 'ISU, 21', 'TCU, 21', 'TCU, 20', 'TCU, 32', 'TCU, 53', 'W 2', 'N/A'),(8, 'Texas Tech', 'ISU, 1211', 'ISU, 73', 'TTU, 72', 'Tied, 11', 'ISU, 32', 'TTU, 64', 'W 1', 'TTU, 118'),(9, 'West Virginia', 'ISU, 2-0', 'ISU, 1-0', 'ISU, 1-0', 'N/A', 'ISU, 2-0', 'ISU, 2-0', 'W 2', 'ISU, 2-0'),(10, 'Iowa State vs.', 'Overall Record', 'in Ames', "at Opponent's Venue", 'at Neutral Site', 'Last 5 Meetings', 'Last 10 Meetings', 'Current Streak', 'Since Beginning of Big 12'),(11, 'Colorado', 'ISU, 7770', 'ISU, 4818', 'CU, 4816', 'ISU, 134', 'CU, 32', 'Tied, 55', 'L 1', 'Tied, 1616'),(12, 'Missouri', 'MU, 14784', 'ISU, 5847', 'MU, 8421', 'MU, 516', 'MU, 50', 'MU, 82', 'L 9', 'MU, 1814'),(13, 'Nebraska', 'NU, 131103', 'ISU, 6248', 'NU, 7833', 'ISU, 85', 'ISU, 32', 'ISU, 73', 'W 1', 'ISU, 1812'),(14, 'Texas A&M', 'TAMU, 107', 'ISU, 43', 'TAMU, 53', 'Tied, 11', 'TAMU, 32', 'TAMU, 82', 'W 2', 'TAMU, 107');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1046170_5`;
CREATE TABLE `table_1_1046170_5` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Year` double DEFAULT NULL,
	`Division` text DEFAULT NULL,
	`League` text DEFAULT NULL,
	`Regular_Season` text DEFAULT NULL,
	`Playoffs` text DEFAULT NULL,
	`U.S._Open_Cup` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1046170_5` WRITE;
INSERT INTO `table_1_1046170_5` VALUES (1, 1993.0, '3', 'USISL', '4th, Atlantic Division', 'Divisional Semifinals', 'Did Not Enter'),(2, 1994.0, '3', 'USISL', '9th, Atlantic Division', 'Did Not Qualify', 'Did Not Enter'),(3, 1994.0, 'N/A', 'USISL Indoor', '2nd, Northern Division', 'Did Not Qualify', 'Did Not Enter'),(4, 1995.0, '4', 'USISL Premier League', '2nd, Eastern Division', 'Champions', 'Champions'),(5, 1996.0, '3', 'USISL Select League', '2nd, North Atlantic Division', 'Final', 'Did Not Qualify'),(6, 1997.0, '2', 'USISL A-League', '3rd, Atlantic Division', 'Division Semifinals', '3rd Round'),(7, 1998.0, '2', 'USISL A-League', '1st, Atlantic Division', 'Conference Semifinals', 'Did Not Qualify'),(8, 1999.0, '2', 'USL A-League', '2nd, Atlantic Division', 'Second Round', 'Did Not Qualify'),(9, 2000.0, '2', 'USL A-League', '2nd, Atlantic Division', 'Conference Semifinals', '3rd round'),(10, 2001.0, '2', 'USL A-League', '1st, Central Conference', 'Quarterfinals', 'Quarterfinals'),(11, 2002.0, '2', 'USL A-League', '2nd, Southeast Division', 'Final', '3rd Round'),(12, 2003.0, '2', 'USL A-League', '3rd, Southeast Division', 'Did Not Qualify', 'Did Not Qualify'),(13, 2004.0, '2', 'USL A-League', '2nd, Eastern Conference', 'Quarterfinals', 'Quarterfinals'),(14, 2005.0, '2', 'USL First Division', '6th', 'Final', '4th Round'),(15, 2006.0, '3', 'USL Second Division', '1st', 'Champions', '2nd Round'),(16, 2007.0, '3', 'USL Second Division', '1st', 'Final', 'Quarterfinals'),(17, 2008.0, '3', 'USL Second Division', '2nd', 'Semifinals', '3rd Round'),(18, 2009.0, '3', 'USL Second Division', '2nd', 'Champions', '1st Round'),(19, 2010.0, '3', 'USL Second Division', '2nd', 'Final', '3rd Round'),(20, 2011.0, '3', 'USL Pro', '3rd, American Division', 'Semifinals', 'Semifinals'),(21, 2012.0, '3', 'USL Pro', '4th', '1st Round', '3rd Round');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1061075_1`;
CREATE TABLE `table_1_1061075_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Season` text DEFAULT NULL,
	`Competition` text DEFAULT NULL,
	`Round` text DEFAULT NULL,
	`Opponents` text DEFAULT NULL,
	`1st_leg` text DEFAULT NULL,
	`2nd_leg` text DEFAULT NULL,
	`Aggregate` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1061075_1` WRITE;
INSERT INTO `table_1_1061075_1` VALUES (1, '1980-81', "UEFA Cup Winners' Cup", 'First round', 'Haugar', '1-1', '0-2', '1-3'),(2, '1992-93', 'UEFA Champions League', 'First round', 'Tavriya Simferopol', '4-1 (h)', '3-1 (a)', '7-2'),(3, '1992-93', 'UEFA Champions League', 'Second round', 'Porto', '2-2 (h)', '0-4 (a)', '2-6'),(4, '200708', 'UEFA Cup', 'Second qualifying round', 'Ried', '11', '30', '41'),(5, '200708', 'UEFA Cup', 'First round', 'Galatasaray', '32', '15', '47'),(6, '200910', 'UEFA Europa League', 'Play-off round', 'Fenerbahe', '02', '22', '24');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10706879_3`;
CREATE TABLE `table_1_10706879_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Rd` double DEFAULT NULL,
	`Name` text DEFAULT NULL,
	`Pole_Position` text DEFAULT NULL,
	`Fastest_Lap` text DEFAULT NULL,
	`Winning_driver` text DEFAULT NULL,
	`Winning_team` text DEFAULT NULL,
	`Report` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10706879_3` WRITE;
INSERT INTO `table_1_10706879_3` VALUES (1, 1.0, 'Kraco Car Stereo 200', 'Bobby Unser', 'Unknown', 'Johnny Rutherford', 'Chaparral', 'Report'),(2, 2.0, 'Gould-Rex Mays 150', 'Gordon Johncock', 'Unknown', 'Mike Mosley', 'All American Racers', 'Report'),(3, 3.0, 'Kraco Twin 125 (R1)', 'Johnny Rutherford', 'Unknown', 'Rick Mears', 'Penske Racing', 'Report'),(4, 4.0, 'Kraco Twin 125 (R2)', 'Rick Mears', 'Unknown', 'Rick Mears', 'Penske Racing', 'Report'),(5, 5.0, 'Norton Michigan 500', 'Tom Sneva', 'Unknown', 'Pancho Carter', 'Alex Foods', 'Report'),(6, 6.0, 'Los Angeles Times 500', 'Geoff Brabham', 'Unknown', 'Rick Mears', 'Penske Racing', 'Report'),(7, 7.0, 'Tony Bettenhausen 200', 'Johnny Rutherford', 'Unknown', 'Tom Sneva', 'Bignotti-Cotter', 'Report'),(8, 8.0, 'Detroit News Grand Prix', 'Rick Mears', 'Unknown', 'Rick Mears', 'Penske Racing', 'Report'),(9, 9.0, 'Watkins Glen 200', 'Mario Andretti', 'Unknown', 'Rick Mears', 'Penske Racing', 'Report'),(10, 10.0, 'II Copa Mexico 150', 'Bobby Unser', 'Unknown', 'Rick Mears', 'Penske Racing', 'Report');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10706961_2`;
CREATE TABLE `table_1_10706961_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Rd` double DEFAULT NULL,
	`Name` text DEFAULT NULL,
	`Pole_Position` text DEFAULT NULL,
	`Fastest_Lap` text DEFAULT NULL,
	`Winning_driver` text DEFAULT NULL,
	`Winning_team` text DEFAULT NULL,
	`Report` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10706961_2` WRITE;
INSERT INTO `table_1_10706961_2` VALUES (1, 1.0, 'Kraco Dixie 200', 'Rick Mears', '26.730', 'Gordon Johncock', 'Patrick Racing', 'Report'),(2, 2.0, 'Indianapolis 500', 'Teo Fabi', '2:53.582', 'Tom Sneva', 'Bignotti-Cotter Racing', 'Report'),(3, 3.0, 'Dana-Rex Mays 150', 'Teo Fabi', '26.259', 'Tom Sneva', 'Bignotti-Cotter Racing', 'Report'),(4, 4.0, 'Budweiser Cleveland 500', 'Mario Andretti', '1:13.516', 'Al Unser', 'Penske Racing', 'Report'),(5, 5.0, 'Michigan 500', 'Teo Fabi', '35.621', 'John Paul, Jr.', 'VDS Racing', 'Report'),(6, 6.0, 'Promi Veal 200', 'Mario Andretti', '1:58.898', 'Mario Andretti', 'Newman/Haas Racing', 'Report'),(7, 7.0, "Domino's Pizza 500", 'Tom Sneva', '46.912', 'Teo Fabi', 'Forsythe Racing', 'Report'),(8, 8.0, 'LA Times/Budweiser 500', 'Teo Fabi', '1:30.887', 'Bobby Rahal', 'Truesports', 'Report'),(9, 9.0, 'Escort Radar Warning 200', 'Bobby Rahal', '1:21.364', 'Teo Fabi', 'Forsythe Racing', 'Report'),(10, 10.0, 'Detroit News Grand Prix', 'Bobby Rahal', '35.075', 'Rick Mears', 'Penske Racing', 'Report'),(11, 11.0, 'Caesars Palace Grand Prix', 'John Paul, Jr.', '34.888', 'Mario Andretti', 'Newman/Haas Racing', 'Report'),(12, 12.0, 'Cribari Wines 300k', 'Teo Fabi', '56.920', 'Teo Fabi', 'Forsythe Racing', 'Report');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10707176_2`;
CREATE TABLE `table_1_10707176_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Rnd` text DEFAULT NULL,
	`Race_Name` text DEFAULT NULL,
	`Circuit` text DEFAULT NULL,
	`City/Location` text DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Pole_position` text DEFAULT NULL,
	`Winning_driver` text DEFAULT NULL,
	`Winning_team` text DEFAULT NULL,
	`Report` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10707176_2` WRITE;
INSERT INTO `table_1_10707176_2` VALUES (1, '1', 'Checker Autoworks 200', 'Phoenix International Raceway', 'Phoenix, Arizona', 'April 9', 'Rick Mears', 'Rick Mears', 'Team Penske', 'Report'),(2, '2', 'Long Beach Grand Prix', 'Streets of Long Beach', 'Long Beach, California', 'April 16', 'Al Unser, Jr.', 'Al Unser, Jr.', 'Galles Racing', 'Report'),(3, '3', '73rd Indianapolis 500', 'Indianapolis Motor Speedway', 'Speedway, Indiana', 'May 28', 'Rick Mears', 'Emerson Fittipaldi', 'Patrick Racing', 'Report'),(4, '4', 'Dana-Rex Mays 200', 'Milwaukee Mile', 'West Allis, Wisconsin', 'June 4', 'Rick Mears', 'Rick Mears', 'Team Penske', 'Report'),(5, '5', 'Valvoline Detroit Grand Prix', 'Streets of Detroit', 'Detroit, Michigan', 'June 18', 'Michael Andretti', 'Emerson Fittipaldi', 'Patrick Racing', 'Report'),(6, '6', "Budweiser/G. I. Joe's 200", 'Portland International Raceway', 'Portland, Oregon', 'June 25', 'Teo Fabi', 'Emerson Fittipaldi', 'Patrick Racing', 'Report'),(7, '7', 'Cleveland Grand Prix', 'Cleveland Burke Lakefront Airport', 'Cleveland, Ohio', 'July 2', 'Michael Andretti', 'Emerson Fittipaldi', 'Patrick Racing', 'Report'),(8, '8', 'Meadowlands Grand Prix', 'Meadowlands Sports Complex', 'East Rutherford, New Jersey', 'July 16', 'Emerson Fittipaldi', 'Bobby Rahal', 'Kraco Racing', 'Report'),(9, '9', 'Molson Indy Toronto', 'Exhibition Place', 'Toronto, Ontario', 'July 23', 'Emerson Fittipaldi', 'Michael Andretti', 'Newman/Haas Racing', 'Report'),(10, '10', 'Marlboro 500', 'Michigan International Speedway', 'Brooklyn, Michigan', 'August 6', 'Emerson Fittipaldi', 'Michael Andretti', 'Newman/Haas Racing', 'Report'),(11, '11', 'Pocono 500', 'Pocono Raceway', 'Long Pond, Pennsylvania', 'August 20', 'Emerson Fittipaldi', 'Danny Sullivan', 'Team Penske', 'Report'),(12, '12', 'Red Roof Inns 200', 'Mid-Ohio Sports Car Course', 'Lexington, Ohio', 'September 3', 'Teo Fabi', 'Teo Fabi', 'Porsche North America', 'Report'),(13, '13', 'Race for Life 200', 'Road America', 'Elkhart Lake, Wisconsin', 'September 10', 'Danny Sullivan', 'Danny Sullivan', 'Team Penske', 'Report'),(14, '14', 'Bosch Spark Plug Grand Prix', 'Nazareth Speedway', 'Nazareth, Pennsylvania', 'September 24', 'Rick Mears', 'Emerson Fittipaldi', 'Patrick Racing', 'Report'),(15, 'NC', 'Marlboro Challenge', 'Mazda Raceway Laguna Seca', 'Monterey, California', 'October 14', 'Emerson Fittipaldi', 'Al Unser, Jr.', 'Galles Racing', 'Report');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10712301_5`;
CREATE TABLE `table_1_10712301_5` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Region` text DEFAULT NULL,
	`Operator` text DEFAULT NULL,
	`Licence_award_date` text DEFAULT NULL,
	`On_air_date` text DEFAULT NULL,
	`Closure_date` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10712301_5` WRITE;
INSERT INTO `table_1_10712301_5` VALUES (1, 'Central Scotland', 'Switch Digital', '6 October 2000', 'June 2001', 'N/A'),(2, 'North East England', 'MXR Ltd', '15 December 2000', 'July 2001', '29 July 2013'),(3, 'South Wales and the Severn Estuary', 'MXR Ltd', '23 January 2001', 'July 2001', '29 July 2013'),(4, 'West Midlands', 'MXR Ltd', '9 February 2001', 'August 2001', '27 August 2013'),(5, 'North West England', 'MXR Ltd', '9 March 2001', 'September 2001', '24 September 2013');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10733530_3`;
CREATE TABLE `table_1_10733530_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Nation` text DEFAULT NULL,
	`Population_(thousands)` double DEFAULT NULL,
	`Internet_subscriptions_(2000)_(thousands_of_users)` double DEFAULT NULL,
	`Internet_subscriptions_(2008)_(thousands_of_users)` double DEFAULT NULL,
	`%_growth_(2000–2008)` double DEFAULT NULL,
	`%_Internet_users` double DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10733530_3` WRITE;
INSERT INTO `table_1_10733530_3` VALUES (1, 'Algeria', 33770.0, 50.0, 3500.0, 69.0, 10.0),(2, 'Angola', 12531.0, 30.0, 100.0, 233.0, 1.0),(3, 'Benin', 8295.0, 15.0, 150.0, 900.0, 2.0),(4, 'Botswana', 1842.0, 15.0, 80.0, 433.0, 4.0),(5, 'Burkina Faso', 15265.0, 10.0, 80.0, 700.0, 1.0),(6, 'Burundi', 8691.0, 3.0, 60.0, 1900.0, 1.0),(7, 'Camerun', 18468.0, 20.0, 370.0, 1750.0, 2.0),(8, 'Cape Verde', 427.0, 8.0, 37.0, 362.0, 9.0),(9, 'Central African Republic', 4435.0, 1.0, 13.0, 767.0, 1.0),(10, 'Chad', 10111.0, 1.0, 60.0, 5900.0, 1.0),(11, 'Comoros', 732.0, 1.0, 21.0, 1300.0, 3.0),(12, 'Congo', 3903.0, 1.0, 70.0, 13900.0, 2.0),(13, 'DR Congo', 66514.0, 1.0, 230.0, 45980.0, 1.0),(14, "Cte d'Ivoire", 18373.0, 40.0, 300.0, 650.0, 2.0),(15, 'Djibouti', 506.0, 1.0, 11.0, 685.0, 2.0),(16, 'Egypt', 81713.0, 450.0, 8620.0, 1815.0, 10.0),(17, 'Equatorial Guinea', 616.0, 1.0, 8.0, 1500.0, 1.0),(18, 'Eritrea', 5028.0, 5.0, 120.0, 2300.0, 2.0),(19, 'Ethiopia', 78254.0, 10.0, 291.0, 2810.0, 1.0),(20, 'Gabon', 1486.0, 15.0, 81.0, 440.0, 5.0),(21, 'Gambia', 1735.0, 4.0, 100.0, 2405.0, 6.0),(22, 'Ghana', 23383.0, 30.0, 650.0, 2066.0, 3.0),(23, 'Guinea', 10211.0, 8.0, 50.0, 525.0, 1.0),(24, 'Guinea Bissau', 1503.0, 1.0, 37.0, 2366.0, 2.0),(25, 'Kenya', 37954.0, 200.0, 3000.0, 1400.0, 8.0),(26, 'Lesotho', 2128.0, 4.0, 70.0, 1650.0, 3.0),(27, 'Liberia', 3335.0, 1.0, 1.0, 100.0, 1.0),(28, 'Libya', 6174.0, 10.0, 260.0, 2500.0, 4.0),(29, 'Madagascar', 20043.0, 30.0, 110.0, 266.0, 1.0),(30, 'Malawi', 13932.0, 15.0, 139.0, 830.0, 1.0),(31, 'Mali', 12324.0, 18.0, 100.0, 431.0, 1.0),(32, 'Mauritania', 3365.0, 5.0, 30.0, 500.0, 1.0),(33, 'Mauritius', 1274.0, 87.0, 340.0, 291.0, 27.0),(34, 'Morocco', 34343.0, 100.0, 7300.0, 7200.0, 21.0),(35, 'Mozambique', 21285.0, 30.0, 200.0, 566.0, 1.0),(36, 'Namibia', 2089.0, 30.0, 100.0, 233.0, 5.0),(37, 'Niger', 13273.0, 5.0, 40.0, 703.0, 1.0),(38, 'Nigeria', 138283.0, 200.0, 10000.0, 4900.0, 7.0),(39, 'Rwanda', 10186.0, 5.0, 150.0, 2900.0, 1.0),(40, 'So Tom and Prncipe', 206.0, 6.0, 23.0, 253.0, 11.0),(41, 'Senegal', 12853.0, 40.0, 820.0, 1950.0, 6.0),(42, 'Seychelles', 82.0, 6.0, 32.0, 433.0, 39.0),(43, 'Sierra Leone', 6295.0, 5.0, 13.0, 160.0, 1.0),(44, 'Somalia', 9559.0, 1.0, 98.0, 48900.0, 1.0),(45, 'South Africa', 43786.0, 2400.0, 5100.0, 112.0, 22.0),(46, 'Sudan', 40218.0, 30.0, 1500.0, 4900.0, 4.0),(47, 'Swaziland', 1128.0, 10.0, 42.0, 320.0, 4.0),(48, 'Tanzania', 40213.0, 115.0, 400.0, 248.0, 1.0),(49, 'Togo', 5859.0, 100.0, 320.0, 220.0, 5.0),(50, 'Tunisia', 10383.0, 100.0, 1722.0, 1622.0, 17.0),(51, 'Uganda', 31368.0, 40.0, 2000.0, 4900.0, 6.0),(52, 'Zambia', 11669.0, 20.0, 500.0, 2400.0, 4.0),(53, 'Zimbabwe', 12382.0, 50.0, 1351.0, 2602.0, 11.0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10798421_1`;
CREATE TABLE `table_1_10798421_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Village_(German)` text DEFAULT NULL,
	`Village_(Slovenian)` text DEFAULT NULL,
	`Number_of_people_1991` double DEFAULT NULL,
	`Percent_of_Slovenes_1991` text DEFAULT NULL,
	`Percent_of_Slovenes_1951` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10798421_1` WRITE;
INSERT INTO `table_1_10798421_1` VALUES (1, 'Zell Freibach', 'Sele Borovnica', 187.0, '92.5%', '96.9%'),(2, 'Zell Homlisch', 'Sele Hmele', 23.0, '47.8%', '76.3%'),(3, 'Zell Mitterwinkel', 'Sele Srednji Kot', 98.0, '98%', '95.7%'),(4, 'Zell Oberwinkel', 'Sele Zvrhnji Kot', 91.0, '96.7%', '97.1%'),(5, 'Zell Pfarre', 'Sele Fara', 235.0, '93.2%', '92.1%');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10812293_3`;
CREATE TABLE `table_1_10812293_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Game` double DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Team` text DEFAULT NULL,
	`Score` text DEFAULT NULL,
	`High_points` text DEFAULT NULL,
	`High_rebounds` text DEFAULT NULL,
	`High_assists` text DEFAULT NULL,
	`Location_Attendance` text DEFAULT NULL,
	`Record` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10812293_3` WRITE;
INSERT INTO `table_1_10812293_3` VALUES (1, 2.0, 'November 3', 'Milwaukee', 'W 10992 (OT)', 'Chris Bosh (26)', 'Chris Bosh (15)', 'T. J. Ford (11)', 'Air Canada Centre 19,832', '11'),(2, 3.0, 'November 5', 'San Antonio', 'L 94103 (OT)', 'Chris Bosh (19)', 'Chris Bosh (17)', 'T. J. Ford (5)', 'Air Canada Centre 18,098', '12'),(3, 4.0, 'November 8', 'Philadelphia', 'W 106104 (OT)', 'Chris Bosh (29)', 'Chris Bosh (44)', 'T. J. Ford (7)', 'Air Canada Centre 15,831', '22'),(4, 5.0, 'November 10', 'Atlanta', 'L 102111 (OT)', 'Chris Bosh (19)', 'Chris Bosh (17)', 'T. J. Ford (11)', 'Air Canada Centre 14,680', '2-3'),(5, 6.0, 'November 12', '@ Sacramento', 'L 92107 (OT)', 'Chris Bosh (19)', 'Chris Bosh (7)', 'T. J. Ford (7)', 'ARCO Arena 17,317', '24'),(6, 7.0, 'November 14', '@ Golden State', 'L 99110 (OT)', 'Chris Bosh (23)', 'Chris Bosh (22)', 'T. J. Ford (6)', 'Oracle Arena 16,182', '25'),(7, 8.0, 'November 17', '@ L.A. Lakers', 'L 100107 (OT)', 'Chris Bosh , Morris Peterson (20)', 'Chris Bosh (10)', 'T. J. Ford , Fred Jones (6)', 'Staples Center 18,997', '26'),(8, 9.0, 'November 18', '@ Denver', 'L 109117 (OT)', 'Chris Bosh (31)', 'Jorge Garbajosa (10)', 'T. J. Ford (18)', 'Pepsi Center 15,531', '27'),(9, 10.0, 'November 20', '@ Utah', 'L 96101 (OT)', 'Chris Bosh (17)', 'Chris Bosh (11)', 'T. J. Ford (5)', 'EnergySolutions Arena 18,881', '28'),(10, 11.0, 'November 22', 'Cleveland', 'W 9587 (OT)', 'Chris Bosh (25)', 'Chris Bosh (14)', 'Chris Bosh (6)', 'Air Canada Centre 19,800', '38'),(11, 12.0, 'November 24', '@ Atlanta', 'L 9397 (OT)', 'T. J. Ford (25)', 'Jorge Garbajosa (12)', 'T. J. Ford (12)', 'Philips Arena 16,630', '39'),(12, 13.0, 'November 26', 'Indiana', 'W 9283 (OT)', 'Chris Bosh (17)', 'Chris Bosh (11)', 'T. J. Ford (6)', 'Air Canada Centre 18,075', '49'),(13, 14.0, 'November 28', '@ New Orleans/Oklahoma City', 'W 9477 (OT)', 'Chris Bosh , Anthony Parker (19)', 'Chris Bosh (14)', 'Jos Caldern (4)', 'Ford Center 15,647', '59');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10935205_1`;
CREATE TABLE `table_1_10935205_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`No._in_season` double DEFAULT NULL,
	`No._in_series` double DEFAULT NULL,
	`Title` text DEFAULT NULL,
	`Canadian_airdate` text DEFAULT NULL,
	`US_airdate` text DEFAULT NULL,
	`Production_code` double DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10935205_1` WRITE;
INSERT INTO `table_1_10935205_1` VALUES (1, 1.0, 120.0, '"Standing in the Dark" Part One', '14 January 2008', '5 October 2007', 701.0),(2, 2.0, 121.0, '"Standing in the Dark" Part Two', '21 January 2008', '5 October 2007', 702.0),(3, 3.0, 122.0, '"Love is a Battlefield"', '19 May 2008', '12 October 2007', 703.0),(4, 4.0, 123.0, '"It\'s Tricky"', '28 January 2008', '19 October 2007', 704.0),(5, 5.0, 124.0, '"Death or Glory" Part One', '4 February 2008', '2 November 2007', 705.0),(6, 6.0, 125.0, '"Death or Glory" Part Two', '11 February 2008', '9 November 2007', 706.0),(7, 7.0, 126.0, '"We Got the Beat"', '18 February 2008', '16 November 2007', 707.0),(8, 8.0, 127.0, '"Jessie\'s Girl"', '25 February 2008', '8 February 2008', 708.0),(9, 9.0, 128.0, '"Hungry Eyes"', '3 March 2008', '15 February 2008', 709.0),(10, 10.0, 129.0, '"Pass the Dutchie"', '10 March 2008', '22 February 2008', 710.0),(11, 11.0, 130.0, '"Owner of a Lonely Heart"', '17 March 2008', '29 February 2008', 711.0),(12, 12.0, 131.0, '"Live to Tell"', '24 March 2008', '7 March 2008', 712.0),(13, 13.0, 132.0, '"Bust a Move" Part One', '31 March 2008', '4 April 2008', 713.0),(14, 14.0, 133.0, '"Bust a Move" Part Two', '7 April 2008', '4 April 2008', 714.0),(15, 15.0, 134.0, '"Got My Mind Set on You"', '14 April 2008', '11 April 2008', 715.0),(16, 16.0, 135.0, '"Sweet Child o\' Mine"', '21 April 2008', '18 April 2008', 716.0),(17, 17.0, 136.0, '"Talking in Your Sleep"', '28 April 2008', '9 May 2008', 717.0),(18, 18.0, 137.0, '"Another Brick in the Wall"', '5 May 2008', '25 April 2008', 718.0),(19, 19.0, 138.0, '"Broken Wings"', '12 May 2008', '11 July 2008', 719.0),(20, 20.0, 139.0, '"Ladies\' Night"', '26 May 2008', '18 July 2008', 720.0),(21, 21.0, 140.0, '"Everything She Wants"', '2 June 2008', '11 July 2008', 721.0),(22, 22.0, 141.0, '"Don\'t Stop Believin\'"', '9 June 2008', '25 July 2008', 722.0),(23, 23.0, 142.0, '"If This Is It"', '16 June 2008', '8 August 2008', 723.0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10953197_5`;
CREATE TABLE `table_1_10953197_5` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`No._in_series` double DEFAULT NULL,
	`No._in_season` double DEFAULT NULL,
	`Title` text DEFAULT NULL,
	`Director` text DEFAULT NULL,
	`Writer(s)` text DEFAULT NULL,
	`Original_air_date` text DEFAULT NULL,
	`Production_code` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10953197_5` WRITE;
INSERT INTO `table_1_10953197_5` VALUES (1, 131.0, 1.0, '"Living With Disaster"', 'Frank South', 'Frank South', 'September9,1996', '2396126'),(2, 132.0, 2.0, '"Over Dick\'s Dead Body"', 'Chip Chalmers', 'Charles Pratt, Jr.', 'September16,1996', '2396127'),(3, 133.0, 3.0, '"Moving Violations"', 'Richard Lang', 'Carol Mendelsohn', 'September23,1996', '2396128'),(4, 134.0, 4.0, '"Hunka Hunka Burnin\' Love"', 'Charles Correll', 'Dee Johnson', 'September30,1996', '2396129'),(5, 135.0, 5.0, '"Un-Janed Melody"', 'Jefferson Kibbee', 'James Kahn', 'October28,1996', '2396130'),(6, 136.0, 6.0, '"Jane\'s Addiction"', 'Chip Chalmers', 'Kathryn Baker', 'November4,1996', '2396131'),(7, 137.0, 7.0, '"Young Doctors in Heat"', 'Anson Williams', 'Edward Gold', 'November11,1996', '2396132'),(8, 138.0, 8.0, '"Mission: Interpersonal"', 'Charles Correll', 'Charles Pratt, Jr.', 'November11,1996', '2396133'),(9, 139.0, 9.0, '"Farewell, Mike\'s Concubine"', 'Jefferson Kibbee', 'Carol Mendelsohn', 'November18,1996', '2396134'),(10, 140.0, 10.0, '"Nice Work If You Can Get It"', 'Charles Correll', 'Dee Johnson', 'November25,1996', '2396135'),(11, 141.0, 11.0, '"Sole Sister"', 'Chip Hayes', 'Chip Hayes', 'December2,1996', '2396136'),(12, 142.0, 12.0, '"Quest for Mother"', 'Charles Correll', 'James Kahn', 'December9,1996', '2396137'),(13, 143.0, 13.0, '"Crazy Love"', 'Chip Chalmers', 'Kathryn Baker', 'December16,1996', '2396138'),(14, 144.0, 14.0, '"The Accidental Doctor"', 'Charles Correll', 'Edward Gold', 'January6,1997', '2396139'),(15, 145.0, 15.0, '"Escape From L.A."', 'Richard Lang', 'Frank South', 'January13,1997', '2396140'),(16, 146.0, 16.0, '"The Eyes of the Storm"', 'Harvey Frost', 'Cynthia J. Cohen', 'January20,1997', '2396141'),(17, 147.0, 17.0, '"Better Homes and Condos"', 'Janet Greek', 'James Kahn', 'January27,1997', '2396142'),(18, 148.0, 18.0, '"Great Sexpectations (1)"', 'Richard Lang', 'Carol Mendelsohn & Dee Johnson', 'February3,1997', '2396143A'),(19, 149.0, 19.0, '"Great Sexpectations (2)"', 'Richard Lang', 'Carol Mendelsohn & Dee Johnson', 'February3,1997', '2396143B'),(20, 150.0, 20.0, '"Catch Her in the Lie"', 'Charles Pratt, Jr.', 'Charles Pratt, Jr.', 'February10,1997', '2396144'),(21, 151.0, 21.0, '"Men Are From Melrose"', 'Chip Hayes', 'Frank South', 'February17,1997', '2396145'),(22, 152.0, 22.0, '"Frames \'R\' Us"', 'Robert J. Metoyer', 'James Kahn', 'February24,1997', '2396146'),(23, 153.0, 23.0, '"Screams From a Marriage"', 'Charles Correll', 'Edward Gold', 'March3,1997', '2396147'),(24, 154.0, 24.0, '"101 Damnations"', 'Richard Lang', 'Carol Mendelsohn', 'March10,1997', '2396148'),(25, 155.0, 25.0, '"From Here to Maternity"', 'Thomas Calabro', 'Dee Johnson', 'March17,1997', '2396149'),(26, 156.0, 26.0, '"Last Exit to Ohio"', 'Jefferson Kibbee', 'Frank South', 'March31,1997', '2396150'),(27, 157.0, 27.0, '"The Dead Wives Club"', 'Chip Chalmers', 'Charles Pratt, Jr.', 'April7,1997', '2396151'),(28, 158.0, 28.0, '"Deja Vu, All Over Again"', 'James Darren', 'Neil Landau', 'April14,1997', '2396152'),(29, 159.0, 29.0, '"All Beths Are Off"', 'Charles Correll', 'Chip Hayes', 'April21,1997', '2396153'),(30, 160.0, 30.0, '"Ultimatums and the Single Guy"', 'Anson Williams', 'Dee Johnson', 'April28,1997', '2396154'),(31, 161.0, 31.0, '"Going Places"', 'Charles Pratt, Jr.', 'Carol Mendelsohn', 'May5,1997', '2396155'),(32, 162.0, 32.0, '"Secrets and Lies and More Lies"', 'Frank South', 'Frank South', 'May12,1997', '2396156'),(33, 163.0, 33.0, '"Who\'s Afraid of Amanda Woodward? (1)"', 'Charles Correll', 'Charles Pratt, Jr.', 'May19,1997', '2396157A');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10975034_2`;
CREATE TABLE `table_1_10975034_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Pick_#` double DEFAULT NULL,
	`CFL_Team` text DEFAULT NULL,
	`Player` text DEFAULT NULL,
	`Position` text DEFAULT NULL,
	`College` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10975034_2` WRITE;
INSERT INTO `table_1_10975034_2` VALUES (1, 10.0, 'Edmonton Eskimos', 'Gilles Lezi', 'FB', 'Northwestern'),(2, 11.0, 'Calgary Stampeders', 'Tyler Lymem', 'DL', 'Calgary'),(3, 12.0, 'Ottawa Renegades', 'Christian Leibl-Cote', 'OL', 'New Hampshire'),(4, 13.0, 'BC Lions (via Toronto)', 'Nautyn McKay-Loescher', 'DE', 'Alabama'),(5, 14.0, 'Hamilton Tiger-Cats', 'Marwan Hage', 'OL', 'Colorado'),(6, 15.0, 'Montreal Alouettes', 'Ryan Jeffrey', 'OL', 'Wilfrid Laurier'),(7, 16.0, 'Calgary Stampeders', 'Pascal Masson', 'DB', 'Laval');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_10992_3`;
CREATE TABLE `table_1_10992_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`No` text DEFAULT NULL,
	`City_district_(Stadtteil)` text DEFAULT NULL,
	`Area_in_km²` text DEFAULT NULL,
	`Population` text DEFAULT NULL,
	`Foreign_nationals` text DEFAULT NULL,
	`Foreign_nationals_in_%` text DEFAULT NULL,
	`Area_district_(Ortsbezirk)` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_10992_3` WRITE;
INSERT INTO `table_1_10992_3` VALUES (1, '0 1', 'Altstadt', '0,51 km', '3.475', '1.122', '32,3%', '01  Innenstadt 1'),(2, '0 2', 'Innenstadt', '1,52 km', '6.577', '2.529', '38,5%', '01  Innenstadt 1'),(3, '0 3', 'Bahnhofsviertel', '0,53 km', '2.125', '810', '38,1%', '01  Innenstadt 1'),(4, '0 4', 'Westend-Sd', '2,47 km', '17.288', '3.445', '19,9%', '02  Innenstadt 2'),(5, '0 5', 'Westend-Nord', '1,67 km', '8.854', '2.184', '24,7%', '02  Innenstadt 2'),(6, '0 6', 'Nordend-West', '3,07 km', '28.808', '5.162', '17,9%', '03  Innenstadt 3'),(7, '0 7', 'Nordend-Ost', '1,69 km', '26.619', '5.580', '21,0%', '03  Innenstadt 3'),(8, '0 8', 'Ostend', '5,40 km', '26.955', '7.213', '26,8%', '04  Innenstadt 4'),(9, '0 9', 'Bornheim', '2,66 km', '27.184', '6.240', '23,0%', '04  Innenstadt 4'),(10, '10', 'Gutleutviertel', '2,20 km', '5.843', '1.953', '33,4%', '01  Innenstadt 1'),(11, '11', 'Gallus', '4,22 km', '26.716', '11.012', '41,2%', '01  Innenstadt 1'),(12, '12', 'Bockenheim', '8,04 km', '34.740', '9.034', '26,0%', '02  Innenstadt 2'),(13, '13', 'Sachsenhausen-Nord', '4,24 km', '30.374', '6.507', '21,4%', '05  Sd'),(14, '14', 'Sachsenhausen-Sd', '34,91 km', '26.114', '4.847', '18,6%', '05  Sd'),(15, '15', 'Flughafen', '20,00 km', '211', '14', '6,6%', '05  Sd'),(16, '16', 'Oberrad', '2,74 km', '12.828', '3.113', '24,3%', '05  Sd'),(17, '17', 'Niederrad', '2,93 km', '22.954', '6.569', '28,6%', '05  Sd'),(18, '18', 'Schwanheim', '17,73 km', '20.162', '3.532', '17,5%', '06  West'),(19, '19', 'Griesheim', '4,90 km', '22.648', '8.029', '35,5%', '06  West'),(20, '20', 'Rdelheim', '5,15 km', '17.841', '4.863', '27,3%', '07  Mitte-West'),(21, '21', 'Hausen', '1,26 km', '7.178', '2.135', '29,7%', '07  Mitte-West'),(22, '22/23', 'Praunheim', '4,55 km', '15.761', '3.197', '20,3%', '07  Mitte-West'),(23, '24', 'Heddernheim', '2,49 km', '16.443', '3.194', '19,4%', '08  Nord-West'),(24, '25', 'Niederursel', '7,22 km', '16.394', '3.671', '22,4%', '08  Nord-West'),(25, '26', 'Ginnheim', '2,73 km', '16.444', '4.024', '24,5%', '09  Mitte-Nord'),(26, '27', 'Dornbusch', '2,38 km', '18.511', '3.482', '18,8%', '09  Mitte-Nord'),(27, '28', 'Eschersheim', '3,34 km', '14.808', '2.657', '17,9%', '09  Mitte-Nord'),(28, '29', 'Eckenheim', '2,23 km', '14.277', '3.674', '25,7%', '10  Nord-Ost'),(29, '30', 'Preungesheim', '3,74 km', '13.568', '3.442', '25,4%', '10  Nord-Ost'),(30, '31', 'Bonames', '1,24 km', '6.362', '1.288', '20,2%', '10  Nord-Ost'),(31, '32', 'Berkersheim', '3,18 km', '3.400', '592', '17,4%', '10  Nord-Ost'),(32, '33', 'Riederwald', '1,04 km', '4.911', '1.142', '23,3%', '11  Ost'),(33, '34', 'Seckbach', '8,04 km', '10.194', '1.969', '19,3%', '11  Ost'),(34, '35', 'Fechenheim', '7,18 km', '16.061', '5.635', '35,1%', '11  Ost'),(35, '36', 'Hchst', '4,73 km', '13.888', '5.279', '38,0%', '06  West'),(36, '37', 'Nied', '3,82 km', '17.829', '5.224', '29,3%', '06  West'),(37, '38', 'Sindlingen', '3,98 km', '9.032', '2.076', '23,0%', '06  West'),(38, '39', 'Zeilsheim', '5,47 km', '11.984', '2.555', '21,3%', '06  West'),(39, '40', 'Unterliederbach', '5,85 km', '14.350', '3.511', '24,5%', '06  West'),(40, '41', 'Sossenheim', '5,97 km', '15.853', '4.235', '26,7%', '06  West'),(41, '42', 'Nieder-Erlenbach', '8,34 km', '4.629', '496', '10,7%', '13  Nieder-Erlenbach'),(42, '43', 'Kalbach-Riedberg', '6,90 km', '8.482', '1.279', '15,1%', '12  Kalbach-Riedberg'),(43, '44', 'Harheim', '5,02 km', '4.294', '446', '10,4%', '14  Harheim'),(44, '45', 'Nieder-Eschbach', '6,35 km', '11.499', '1.978', '17,2%', '15  Nieder-Eschbach'),(45, '46', 'Bergen-Enkheim', '12,54 km', '17.954', '2.764', '15,4%', '16  Bergen-Enkheim'),(46, '47', 'Frankfurter Berg', '2,16 km', '7.149', '1.715', '24,0%', '10  Nord-Ost');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11044765_1`;
CREATE TABLE `table_1_11044765_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`School` text DEFAULT NULL,
	`Mascot` text DEFAULT NULL,
	`Location` text DEFAULT NULL,
	`League` text DEFAULT NULL,
	`Enrollment` double DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11044765_1` WRITE;
INSERT INTO `table_1_11044765_1` VALUES (1, 'Carson', 'Senators', 'Carson City, Nevada', 'Sierra', 2503.0),(2, 'Damonte Ranch', 'Mustangs', 'Reno, Nevada', 'Sierra', 1253.0),(3, 'Douglas', 'Tigers', 'Minden, Nevada', 'Sierra', 1522.0),(4, 'Galena', 'Grizzlies', 'Reno, Nevada', 'Sierra', 1510.0),(5, 'Hug', 'Hawks', 'Reno, Nevada', 'High Desert', 1266.0),(6, 'Manogue', 'Miners', 'Reno, Nevada', 'Sierra', 650.0),(7, 'McQueen', 'Lancers', 'Reno, Nevada', 'High Desert', 1945.0),(8, 'North Valleys', 'Panthers', 'Reno, Nevada', 'High Desert', 2227.0),(9, 'Reed', 'Raiders', 'Sparks, Nevada', 'High Desert', 2464.0),(10, 'Reno', 'Huskies', 'Reno, Nevada', 'High Desert', 1896.0),(11, 'Spanish Springs', 'Cougars', 'Sparks, Nevada', 'High Desert', 2186.0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11210576_4`;
CREATE TABLE `table_1_11210576_4` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Character` text DEFAULT NULL,
	`Fate` text DEFAULT NULL,
	`Actor` text DEFAULT NULL,
	`First_Episode` text DEFAULT NULL,
	`Final_Episode` text DEFAULT NULL,
	`Duration` text DEFAULT NULL,
	`Final_Episode_Count` double DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11210576_4` WRITE;
INSERT INTO `table_1_11210576_4` VALUES (1, 'Rick Stetler', 'Arrested', 'David Lee Smith', '"Blood Brothers"', '"Time Bomb"', '02x0108x23', 34.0),(2, 'Clavo Cruz', 'Deceased: Gunshot Wound', 'Gonzalo Menendez', '"Blood Brothers"', '"Man Down"', '02x01; 03x15; 05x1405x15', 4.0),(3, 'Judge Joseph Ratner', 'Arrested', 'William Allen Young', '"After the Fall"', '"Death Eminent"', '03x10; 04x06; 05x05', 3.0),(4, 'Antonio Riaz', 'Deceased: Knife Wound', 'Vincent Laresca', '"Rampage"', '"Rio"', '04x2405x01', 3.0),(5, 'Memmo Fierro', 'Arrested', 'Robert LaSardo', '"Rampage"', '"Killer Regrets"', '04x2404x25; 09x04; 09x13; 10x05', 5.0),(6, "Scott O'Shay", 'Free', 'Ed Begley Jr.', '"A Grizzly Murder"', '"Dead Ringer"', '05x17; 05x19; 10x04; 10x05; 10x08', 5.0),(7, 'Joe LeBrock', 'Arrested', 'John Sharian', '"Inside Out"', '"See No Evil"', '06x03; 06x07; 09x03', 3.0),(8, 'Ron Saris', 'Free', 'Kim Coates', '"Ambush"', '"Dissolved"', '06x15-07x24', 6.0),(9, 'Ivan Sarnoff', 'Deceased: Gunshot Wound', 'Andrew Divoff', '"Raging Cannibal"', '"Seeing Red"', '07x0407x25', 4.0),(10, 'Darren Vogel', 'Free', 'Malcolm McDowell', '"L.A."', '"Habeas Corpse"', '08x16; 10x18; 10x19', 3.0),(11, 'Esteban Navarro', 'Arrested', 'Kuno Becker', '"Look Who\'s Taunting"', '"Rest in Pieces"', '10x04; 10x08; 10x16', 3.0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1121352_2`;
CREATE TABLE `table_1_1121352_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`No.` double DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Tournament` text DEFAULT NULL,
	`Winning_score` text DEFAULT NULL,
	`To_par` text DEFAULT NULL,
	`Margin_of_victory` text DEFAULT NULL,
	`Runner(s)-up` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1121352_2` WRITE;
INSERT INTO `table_1_1121352_2` VALUES (1, 1.0, 'Jun 4, 2000', 'Kathy Ireland Greens.com LPGA Classic', '66-68-70-70=274', '14', '1 stoke', 'Pat Hurst Juli Inkster'),(2, 2.0, 'Jan 28, 2001', 'The Office Depot', '70-69-70-71=280', '6', '1 stroke', 'Karrie Webb'),(3, 3.0, 'Nov 3, 2002', 'Cisco World Ladies Match Play Championship', '22 holes', '22 holes', '22 holes', 'Midori Yoneyama'),(4, 4.0, 'May 4, 2003', 'Michelob Light Open at Kingsmill', '67-68-69-71=275', '9', '1 stroke', 'Cristie Kerr Lorena Ochoa Karrie Webb'),(5, 5.0, 'Mar 28, 2004', 'Kraft Nabisco Championship', '72-69-67-69=277', '11', '1 stroke', 'Aree Song');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11214772_2`;
CREATE TABLE `table_1_11214772_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Year` double DEFAULT NULL,
	`Champion` text DEFAULT NULL,
	`Score` text DEFAULT NULL,
	`Runner-Up` text DEFAULT NULL,
	`Location` text DEFAULT NULL,
	`Semi-Finalist_#1` text DEFAULT NULL,
	`Semi-Finalist_#2` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11214772_2` WRITE;
INSERT INTO `table_1_11214772_2` VALUES (1, 2004.0, 'Duke', '6-5', 'Elon', 'Morrisville, NC', 'Western Carolina', 'Clemson'),(2, 2005.0, 'Elon', '12-1', 'Clemson', 'Morrisville, NC', 'Western Carolina', 'Longwood'),(3, 2005.0, 'Miami', '6-5', 'Emory', 'Ellenton, FL', 'Embry-Riddle', 'North Florida'),(4, 2006.0, 'Emory', '6-5 ot', 'Elon', 'Snellville, GA', 'Miami', 'Embry-Riddle'),(5, 2007.0, 'Emory', '6-5 ot', 'Miami', 'Snellville, GA', 'Elon', 'North Carolina');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1132600_3`;
CREATE TABLE `table_1_1132600_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Round` double DEFAULT NULL,
	`Grand_Prix` text DEFAULT NULL,
	`Pole_Position` text DEFAULT NULL,
	`Fastest_Lap` text DEFAULT NULL,
	`Winning_Driver` text DEFAULT NULL,
	`Winning_Constructor` text DEFAULT NULL,
	`Report` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1132600_3` WRITE;
INSERT INTO `table_1_1132600_3` VALUES (1, 1.0, 'Australian Grand Prix', 'Mika Hkkinen', 'Rubens Barrichello', 'Michael Schumacher', 'Ferrari', 'Report'),(2, 2.0, 'Brazilian Grand Prix', 'Mika Hkkinen', 'Michael Schumacher', 'Michael Schumacher', 'Ferrari', 'Report'),(3, 3.0, 'San Marino Grand Prix', 'Mika Hkkinen', 'Mika Hkkinen', 'Michael Schumacher', 'Ferrari', 'Report'),(4, 4.0, 'British Grand Prix', 'Rubens Barrichello', 'Mika Hkkinen', 'David Coulthard', 'McLaren - Mercedes', 'Report'),(5, 5.0, 'Spanish Grand Prix', 'Michael Schumacher', 'Mika Hkkinen', 'Mika Hkkinen', 'McLaren - Mercedes', 'Report'),(6, 6.0, 'European Grand Prix', 'David Coulthard', 'Michael Schumacher', 'Michael Schumacher', 'Ferrari', 'Report'),(7, 7.0, 'Monaco Grand Prix', 'Michael Schumacher', 'Mika Hkkinen', 'David Coulthard', 'McLaren - Mercedes', 'Report'),(8, 8.0, 'Canadian Grand Prix', 'Michael Schumacher', 'Mika Hkkinen', 'Michael Schumacher', 'Ferrari', 'Report'),(9, 9.0, 'French Grand Prix', 'Michael Schumacher', 'David Coulthard', 'David Coulthard', 'McLaren - Mercedes', 'Report'),(10, 10.0, 'Austrian Grand Prix', 'Mika Hkkinen', 'David Coulthard', 'Mika Hkkinen', 'McLaren - Mercedes', 'Report'),(11, 11.0, 'German Grand Prix', 'David Coulthard', 'Rubens Barrichello', 'Rubens Barrichello', 'Ferrari', 'Report'),(12, 12.0, 'Hungarian Grand Prix', 'Michael Schumacher', 'Mika Hkkinen', 'Mika Hkkinen', 'McLaren - Mercedes', 'Report'),(13, 13.0, 'Belgian Grand Prix', 'Mika Hkkinen', 'Rubens Barrichello', 'Mika Hkkinen', 'McLaren - Mercedes', 'Report'),(14, 14.0, 'Italian Grand Prix', 'Michael Schumacher', 'Mika Hkkinen', 'Michael Schumacher', 'Ferrari', 'Report'),(15, 15.0, 'United States Grand Prix', 'Michael Schumacher', 'David Coulthard', 'Michael Schumacher', 'Ferrari', 'Report'),(16, 16.0, 'Japanese Grand Prix', 'Michael Schumacher', 'Mika Hkkinen', 'Michael Schumacher', 'Ferrari', 'Report');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11336756_6`;
CREATE TABLE `table_1_11336756_6` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Route_Name` text DEFAULT NULL,
	`Direction` text DEFAULT NULL,
	`Termini` text DEFAULT NULL,
	`Junctions` text DEFAULT NULL,
	`Length` text DEFAULT NULL,
	`Population_Area` text DEFAULT NULL,
	`Remarks` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11336756_6` WRITE;
INSERT INTO `table_1_11336756_6` VALUES (1, 'SH 2', 'South North', 'Laredo, Texas La Salle County', 'none', 'miles (km)', 'Laredo Webb', 'Replaced by US 81'),(2, 'SH 4', 'South North', 'Zapata County Dimmit County', 'none', 'miles (km)', 'Laredo Webb', 'Replaced by US 83'),(3, 'US 81', 'South North', 'Laredo, Texas La Salle County', 'none', 'miles (km)', 'Laredo Webb', 'Replaced by I-35'),(4, 'US 83 Bus.', 'South North', "Gateway to the Americas Int'l Bridge I-35", 'I-35 US 83', 'miles (km)', 'Laredo', 'Replaced by BSI-35'),(5, 'SH 96', 'East West', 'Duval County Laredo', 'none', 'miles (km)', 'Las Lomas Laredo', 'Replaced by US 59'),(6, 'SH 202', 'East West', 'Duval County Laredo', 'none', 'miles (km)', 'Las Lomas Laredo', 'Replaced by US 96'),(7, 'LP 420', 'South North', "Gateway to the Americas Int'l Bridge I-35", 'I-35 US 83', 'miles (km)', 'Laredo', 'Replaced by US 83 Bus.'),(8, 'FM 863', 'East West', 'Duval County US 83', 'US 83', 'miles (km)', 'None', 'Replaced by SH 44');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1134091_4`;
CREATE TABLE `table_1_1134091_4` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`District` text DEFAULT NULL,
	`Vacator` text DEFAULT NULL,
	`Reason_for_change` text DEFAULT NULL,
	`Successor` text DEFAULT NULL,
	`Date_successor_seated` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1134091_4` WRITE;
INSERT INTO `table_1_1134091_4` VALUES (1, 'Michigan 7th', 'Donald W. Riegle, Jr. (R)', 'Switched party affiliation', 'Donald W. Riegle, Jr. (D)', 'February 27, 1973'),(2, 'Maryland 1st', 'William Mills (R)', 'Committed suicide May 24, 1973', 'Robert Bauman (R)', 'August 21, 1973'),(3, 'Pennsylvania 12th', 'John Saylor (R)', 'Died October 28, 1973', 'John Murtha (D)', 'February 5, 1974'),(4, 'Michigan 5th', 'Gerald Ford (R)', 'Resigned December 6, 1973 to become Vice President', 'Richard VanderVeen (D)', 'February 18, 1974'),(5, 'California 13th', 'Charles Teague (R)', 'Died January 1, 1974', 'Robert Lagomarsino (R)', '1974-03-05'),(6, 'Ohio 1st', 'William Keating (R)', 'Resigned January 3, 1974', 'Tom Luken (D)', 'March 5, 1974'),(7, 'California 6th', 'William Mailliard (R)', 'Resigned March 5, 1974', 'John Burton (D)', '1974-06-04'),(8, 'California 10th', 'Charles S. Gubser (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(9, 'California 19th', 'Chester E. Holifield (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(10, 'California 32nd', 'Craig Hosmer (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(11, 'California 34th', 'Richard T. Hanna (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(12, 'Illinois 24th', 'Kenneth J. Gray (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(13, 'Kentucky 1st', 'Frank Stubblefield (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(14, 'Massachusetts 3rd', 'Harold Donohue (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(15, 'Michigan 6th', 'Charles E. Chamberlain (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(16, 'Michigan 17th', 'Martha Griffiths (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(17, 'Minnesota 2nd', 'Ancher Nelsen (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(18, 'Minnesota 8th', 'John Blatnik (DFL)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(19, 'Nebraska 3rd', 'David T. Martin (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(20, 'New Jersey 7th', 'William B. Widnall (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(21, 'New York 14th', 'John J. Rooney (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(22, 'New York 15th', 'Hugh L. Carey (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(23, 'New York 29th', 'Carleton J. King (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(24, 'New York 37th', 'Thaddeus J. Dulski (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(25, 'Ohio 23rd', 'William Minshall (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(26, 'Oregon 3rd', 'Edith S. Green (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(27, 'Pennsylvania 25th', 'Frank M. Clark (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(28, 'South Carolina 3rd', 'W.J. Bryan Dorn (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(29, 'South Carolina 5th', 'Thomas S. Gettys (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(30, 'Texas 21st', 'O. C. Fisher (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(31, 'Washington 3rd', 'Julia B. Hansen (D)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress'),(32, 'Wisconsin 3rd', 'Vernon W. Thomson (R)', 'Resigned December 31, 1974', 'Remained vacant until next Congress', 'Remained vacant until next Congress');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11377572_3`;
CREATE TABLE `table_1_11377572_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`#` double DEFAULT NULL,
	`empty_col_0` text DEFAULT NULL,
	`Name` text DEFAULT NULL,
	`Party` text DEFAULT NULL,
	`Term_in_office` text DEFAULT NULL,
	`The_Times_overall` double DEFAULT NULL,
	`Matthew_Parris` double DEFAULT NULL,
	`Peter_Riddell` double DEFAULT NULL,
	`Ben_MacIntyre` double DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11377572_3` WRITE;
INSERT INTO `table_1_11377572_3` VALUES (1, 1.0, '1', 'Robert Walpole', 'Whig', '17211742', 9.0, 14.0, 16.0, 7.0),(2, 3.0, '3', 'Henry Pelham', 'Whig', '17431754', 29.0, 19.0, 34.0, 20.0),(3, 5.0, '5', 'William Cavendish, 4th Duke of Devonshire', 'Whig', '17561757', 44.0, 35.0, 44.0, 47.0),(4, 6.0, '7', 'John Stuart, 3rd Earl of Bute', 'Tory', '17621763', 46.0, 44.0, 49.0, 40.0),(5, 7.0, '8', 'George Grenville', 'Whig', '17631765', 48.0, 51.0, 48.0, 39.0),(6, 9.0, '10', 'William Pitt, 1st Earl of Chatham', 'Whig', '17661768', 16.0, 25.0, 14.0, 18.0),(7, 10.0, '11', 'Augustus FitzRoy, 3rd Duke of Grafton', 'Whig', '17681770', 49.0, 42.0, 50.0, 49.0),(8, 11.0, '12', 'Frederick North, Lord North', 'Tory', '17701782', 50.0, 49.0, 37.0, 44.0),(9, 12.0, '14', 'William Petty, 2nd Earl of Shelburne', 'Whig', '17821783', 26.0, 29.0, 41.0, 5.0),(10, 13.0, '15 20', 'William Cavendish-Bentinck, 3rd Duke of Portland', 'Whig', '1783 18071809', 39.0, 27.0, 43.0, 37.0),(11, 14.0, '16 18', 'William Pitt the Younger', 'Tory', '17831801 18041806', 4.0, 12.0, 5.0, 3.0),(12, 15.0, '17', 'Henry Addington, 1st Viscount Sidmouth', 'Tory', '18011804', 39.0, 36.0, 39.0, 36.0),(13, 16.0, '19', 'William Grenville, 1st Baron Grenville', 'Whig', '18061807', 43.0, 39.0, 40.0, 35.0),(14, 17.0, '21', 'Spencer Perceval', 'Tory', '18091812', 36.0, 38.0, 47.0, 33.0),(15, 18.0, '22', 'Robert Jenkinson, 2nd Earl of Liverpool', 'Tory', '18121827', 19.0, 22.0, 22.0, 15.0),(16, 19.0, '23', 'George Canning', 'Tory', '1827', 31.0, 8.0, 36.0, 23.0),(17, 21.0, '25 28', 'Arthur Wellesley, 1st Duke of Wellington', 'Tory', '18281830 1834', 24.0, 18.0, 30.0, 17.0),(18, 22.0, '26', 'Charles Grey, 2nd Earl Grey', 'Whig', '18301834', 8.0, 9.0, 10.0, 6.0),(19, 23.0, '27 30', 'William Lamb, 2nd Viscount Melbourne', 'Whig', '1834 18351841', 25.0, 26.0, 21.0, 32.0),(20, 24.0, '29 31', 'Robert Peel', 'Conservative', '18341835 18411846', 6.0, 6.0, 8.0, 8.0),(21, 25.0, '32', 'John Russell, 1st Earl Russell', 'Whig', '18461852', 21.0, 15.0, 29.0, 14.0),(22, 26.0, '33 36 39', 'Edward Smith-Stanley, 14th Earl of Derby', 'Conservative', '1852 18581859 18661868', 18.0, 23.0, 19.0, 16.0),(23, 27.0, '34', 'George Hamilton-Gordon, 4th Earl of Aberdeen', 'Peelite', '18521855', 42.0, 41.0, 31.0, 43.0),(24, 28.0, '35 37', 'Henry John Temple, 3rd Viscount Palmerston', 'Whig Liberal', '18551858 18591865', 13.0, 11.0, 20.0, 11.0),(25, 29.0, '38', 'John Russell, 1st Earl Russell', 'Whig', '18651866', 21.0, 15.0, 29.0, 14.0),(26, 30.0, '40 42', 'Benjamin Disraeli', 'Conservative', '1868 18741880', 10.0, 7.0, 6.0, 9.0),(27, 31.0, '41 43 45 47', 'William Ewart Gladstone', 'Liberal', '18681874 18801885 1886 18921894', 3.0, 4.0, 2.0, 4.0),(28, 32.0, '44 46 49', 'Robert Cecil, 3rd Marquess of Salisbury', 'Conservative', '18851886 18861892 18951902', 11.0, 10.0, 12.0, 25.0),(29, 33.0, '48', 'Archibald Primrose, 5th Earl of Rosebery', 'Liberal', '18941895', 45.0, 46.0, 46.0, 50.0),(30, 34.0, '50', 'Arthur Balfour', 'Conservative', '19021905', 30.0, 28.0, 38.0, 31.0),(31, 35.0, '51', 'Henry Campbell-Bannerman', 'Liberal', '19051908', 22.0, 24.0, 26.0, 30.0),(32, 36.0, '52', 'H. H. Asquith', 'Liberal', '19081916', 11.0, 21.0, 9.0, 26.0),(33, 37.0, '53', 'David Lloyd George', 'Liberal', '19161922', 2.0, 2.0, 3.0, 2.0),(34, 38.0, '54', 'Bonar Law', 'Conservative', '19221923', 34.0, 47.0, 35.0, 24.0),(35, 39.0, '55 57 59', 'Stanley Baldwin', 'Conservative', '19231924 19241929 19351937', 14.0, 20.0, 11.0, 13.0),(36, 40.0, '56 58', 'Ramsay MacDonald', 'Labour', '1924 19291935', 33.0, 48.0, 33.0, 29.0),(37, 41.0, '60', 'Neville Chamberlain', 'Conservative', '19371940', 35.0, 45.0, 28.0, 52.0),(38, 42.0, '61 63', 'Winston Churchill', 'Conservative', '19401945 19511955', 1.0, 1.0, 1.0, 1.0),(39, 43.0, '62', 'Clement Attlee', 'Labour', '19451951', 7.0, 5.0, 7.0, 22.0),(40, 44.0, '64', 'Anthony Eden', 'Conservative', '19551957', 47.0, 43.0, 45.0, 48.0),(41, 45.0, '65', 'Harold Macmillan', 'Conservative', '19571963', 15.0, 17.0, 13.0, 21.0),(42, 46.0, '66', 'Alec Douglas-Home', 'Conservative', '19631964', 36.0, 32.0, 27.0, 34.0),(43, 47.0, '67 69', 'Harold Wilson', 'Labour', '19641970 19741976', 20.0, 33.0, 17.0, 19.0),(44, 48.0, '68', 'Edward Heath', 'Conservative', '19701974', 23.0, 13.0, 18.0, 46.0),(45, 49.0, '70', 'James Callaghan', 'Labour', '19761979', 27.0, 31.0, 24.0, 27.0),(46, 50.0, '71', 'Margaret Thatcher', 'Conservative', '19791990', 5.0, 3.0, 4.0, 10.0),(47, 51.0, '72', 'John Major', 'Conservative', '19901997', 28.0, 16.0, 23.0, 28.0),(48, 52.0, '73', 'Tony Blair', 'Labour', '19972007', 16.0, 34.0, 15.0, 12.0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11449311_2`;
CREATE TABLE `table_1_11449311_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Week` text DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Opponent` text DEFAULT NULL,
	`Result` text DEFAULT NULL,
	`Kickoff_[a_]` text DEFAULT NULL,
	`Game_site` text DEFAULT NULL,
	`TV` text DEFAULT NULL,
	`Attendance` text DEFAULT NULL,
	`Record` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11449311_2` WRITE;
INSERT INTO `table_1_11449311_2` VALUES (1, 'Week', 'Date', 'Opponent', 'Result', 'Kickoff [a ]', 'Game site', 'TV', 'Attendance', 'Record'),(2, '1', 'September 8, 1985', 'at Chicago Bears', 'L 38-28', '1:00', 'Soldier Field', 'CBS', '57,828', '0-1'),(3, '2', 'September 15, 1985', 'Minnesota Vikings', 'L 31-16', '4:00', 'Tampa Stadium', 'CBS', '46,188', '0-2'),(4, '3', 'September 22, 1985', 'at New Orleans Saints', 'L 20-13', '1:00', 'Louisiana Superdome', 'CBS', '45,320', '0-3'),(5, '4', 'September 29, 1985', 'at Detroit Lions', 'L 30-9', '1:00', 'Pontiac Silverdome', 'CBS', '45,023', '0-4'),(6, '5', 'October 6, 1985', 'Chicago Bears', 'L 27-19', '1:00', 'Tampa Stadium', 'CBS', '51,795', '0-5'),(7, '6', 'October 13, 1985', 'Los Angeles Rams', 'L 31-27', '1:00', 'Tampa Stadium', 'CBS', '39,607', '0-6'),(8, '7', 'October 20, 1985', 'at Miami Dolphins', 'L 41-38', '4:00', 'Orange Bowl', 'CBS', '62,335', '0-7'),(9, '8', 'October 27, 1985', 'New England Patriots', 'L 32-14', '1:00', 'Tampa Stadium', 'NBC', '34,661', '0-8'),(10, '9', 'November 3, 1985', 'at New York Giants', 'L 22-20', '1:00', 'Giants Stadium', 'CBS', '72,031', '0-9'),(11, '10', 'November 10, 1985', 'St. Louis Cardinals', 'W 16-0', '1:00', 'Tampa Stadium', 'CBS', '34,736', '1-9'),(12, '11', 'November 17, 1985', 'at New York Jets', 'L 62-28', '1:00', 'The Meadowlands', 'CBS', '65,344', '1-10'),(13, '12', 'November 24, 1985', 'Detroit Lions', 'W 19-16 OT', '1:00', 'Tampa Stadium', 'CBS', '43,471', '2-10'),(14, '13', 'December 1, 1985', 'at Green Bay Packers', 'L 21-0', '1:00', 'Lambeau Field', 'CBS', '19,856', '2-11'),(15, '14', 'December 8, 1985', 'at Minnesota Vikings', 'L 26-7', '4:00', 'Hubert H. Humphrey Metrodome', 'CBS', '51,593', '2-12'),(16, '15', 'December 15, 1985', 'Indianapolis Colts', 'L 31-23', '1:00', 'Tampa Stadium', 'NBC', '25,577', '2-13');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11542215_3`;
CREATE TABLE `table_1_11542215_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Rank` double DEFAULT NULL,
	`Gymnast` text DEFAULT NULL,
	`Floor_Exercise` text DEFAULT NULL,
	`Pommel_Horse` text DEFAULT NULL,
	`Rings` text DEFAULT NULL,
	`Vault` text DEFAULT NULL,
	`Parallel_Bars` text DEFAULT NULL,
	`Horizontal_Bar` text DEFAULT NULL,
	`Total` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11542215_3` WRITE;
INSERT INTO `table_1_11542215_3` VALUES (1, 1.0, 'Paul Hamm ( USA )', '9.725', '9.737', '9.512', '9.575', '9.762', '9.750', '58.061'),(2, 2.0, 'Yang Tae-Young ( KOR )', '9.700', '9.625', '9.625', '9.650', '9.587', '9.737', '57.924'),(3, 3.0, 'Hiroyuki Tomita ( JPN )', '8.987', '9.750', '9.750', '9.650', '9.787', '9.725', '57.649'),(4, 4.0, 'Marian Drgulescu ( ROU )', '9.762', '9.325', '9.475', '9.762', '9.562', '9.550', '57.436'),(5, 5.0, 'Yernar Yerimbetov ( KAZ )', '9.687', '9.675', '9.300', '9.537', '9.725', '9.500', '57.424'),(6, 6.0, 'Ioan Silviu Suciu ( ROU )', '9.650', '9.712', '9.487', '9.637', '9.500', '9.412', '57.398'),(7, 7.0, 'Yang Wei ( CHN )', '9.412', '9.525', '9.712', '9.550', '9.625', '9.550', '57.374'),(8, 8.0, 'Roman Zozulya ( UKR )', '9.487', '9.562', '9.725', '9.337', '9.712', '9.450', '57.273'),(9, 9.0, 'Aleksei Bondarenko ( RUS )', '9.662', '8.650', '9.662', '9.825', '9.537', '9.600', '56.936'),(10, 10.0, 'Isao Yoneda ( JPN )', '9.725', '8.450', '9.625', '9.637', '9.687', '9.800', '56.924'),(11, 11.0, 'Kim Dae-Eun ( KOR )', '9.437', '9.537', '9.700', '9.600', '9.075', '9.462', '56.811'),(12, 12.0, 'Pavel Gofman ( ISR )', '9.437', '9.475', '9.462', '9.375', '9.612', '9.362', '56.723'),(13, 13.0, 'Ruslan Myezyentsev ( UKR )', '9.650', '9.425', '9.687', '9.475', '9.437', '9.037', '56.711'),(14, 14.0, 'Rafael Martnez ( ESP )', '9.562', '8.962', '9.675', '9.412', '9.325', '9.700', '56.636'),(15, 15.0, 'Benot Caranobe ( FRA )', '9.287', '9.162', '9.587', '9.612', '9.450', '9.537', '56.635'),(16, 16.0, 'Luis Felipe Vargas ( PUR )', '9.037', '9.675', '9.500', '9.425', '9.325', '9.625', '56.587'),(17, 17.0, 'Igors Vihrovs ( LAT )', '9.662', '9.462', '9.225', '9.425', '9.287', '9.362', '56.423'),(18, 18.0, 'Eric Lpez Ros ( CUB )', '9.062', '9.500', '9.637', '9.400', '9.687', '9.112', '56.398'),(19, 19.0, 'Brett McClure ( USA )', '9.437', '9.000', '9.037', '9.512', '9.675', '9.662', '56.323'),(20, 20.0, 'Georgy Grebenkov ( RUS )', '9.562', '8.300', '9.712', '9.400', '9.687', '9.487', '56.148'),(21, 21.0, 'Fabian Hambchen ( GER )', '9.637', '9.075', '8.537', '9.475', '9.600', '9.737', '56.061'),(22, 22.0, 'Ilia Giorgadze ( GEO )', '9.437', '9.100', '9.450', '9.350', '9.600', '9.075', '56.012'),(23, 23.0, 'Sergei Pfeifer ( GER )', '9.400', '9.575', '9.587', '9.150', '9.150', '9.125', '55.987');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11570261_1`;
CREATE TABLE `table_1_11570261_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Year` double DEFAULT NULL,
	`Championship` text DEFAULT NULL,
	`54_holes` text DEFAULT NULL,
	`Winning_score` text DEFAULT NULL,
	`Margin` text DEFAULT NULL,
	`Runner(s)-up` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11570261_1` WRITE;
INSERT INTO `table_1_11570261_1` VALUES (1, 1997.0, 'Masters Tournament', '9 shot lead', '18 (70-66-65-69=270)', '12 strokes', 'Tom Kite'),(2, 1999.0, 'PGA Championship', 'Tied for lead', '11 (70-67-68-72=277)', '1 stroke', 'Sergio Garca'),(3, 2000.0, 'U.S. Open', '10 shot lead', '12 (65-69-71-67=272)', '15 strokes', 'Ernie Els , Miguel ngel Jimnez'),(4, 2000.0, 'The Open Championship', '6 shot lead', '19 (67-66-67-69=269)', '8 strokes', 'Thomas Bjrn , Ernie Els'),(5, 2000.0, 'PGA Championship (2)', '1 shot lead', '18 (66-67-70-67=270)', 'Playoff 1', 'Bob May'),(6, 2001.0, 'Masters Tournament (2)', '1 shot lead', '16 (70-66-68-68=272)', '2 strokes', 'David Duval'),(7, 2002.0, 'Masters Tournament (3)', 'Tied for lead', '12 (70-69-66-71=276)', '3 strokes', 'Retief Goosen'),(8, 2002.0, 'U.S. Open (2)', '4 shot lead', '3 (67-68-70-72=277)', '3 strokes', 'Phil Mickelson'),(9, 2005.0, 'Masters Tournament (4)', '3 shot lead', '12 (74-66-65-71=276)', 'Playoff 2', 'Chris DiMarco'),(10, 2005.0, 'The Open Championship (2)', '2 shot lead', '14 (66-67-71-70=274)', '5 strokes', 'Colin Montgomerie'),(11, 2006.0, 'The Open Championship (3)', '1 shot lead', '18 (67-65-71-67=270)', '2 strokes', 'Chris DiMarco'),(12, 2006.0, 'PGA Championship (3)', 'Tied for lead', '18 (69-68-65-68=270)', '5 strokes', 'Shaun Micheel'),(13, 2007.0, 'PGA Championship (4)', '3 shot lead', '8 (71-63-69-69=272)', '2 strokes', 'Woody Austin');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11589522_3`;
CREATE TABLE `table_1_11589522_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`No._in_series` double DEFAULT NULL,
	`No._in_season` double DEFAULT NULL,
	`Title` text DEFAULT NULL,
	`Directed_by` text DEFAULT NULL,
	`Written_by` text DEFAULT NULL,
	`Original_air_date` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11589522_3` WRITE;
INSERT INTO `table_1_11589522_3` VALUES (1, 13.0, 1.0, '" A Good Opportunity "', 'James Bobin', 'James Bobin & Jemaine Clement & Bret McKenzie', 'January18,2009'),(2, 14.0, 2.0, '" The New Cup "', 'James Bobin', 'Duncan Sarkies', 'January25,2009'),(3, 15.0, 3.0, '" The Tough Brets "', 'James Bobin', 'James Bobin & Jemaine Clement & Bret McKenzie', 'February1,2009'),(4, 16.0, 4.0, '" Murray Takes It to the Next Level "', 'Troy Miller', 'James Bobin & Jemaine Clement & Bret McKenzie', 'February8,2009'),(5, 17.0, 5.0, '" Unnatural Love "', 'Michel Gondry', 'Iain Morris & Damon Beesley', 'February15,2009'),(6, 18.0, 6.0, '" Love Is a Weapon of Choice "', 'James Bobin', 'Paul Simms', 'February22,2009'),(7, 19.0, 7.0, '" Prime Minister "', 'James Bobin', 'James Bobin & Jemaine Clement & Bret McKenzie', 'March1,2009'),(8, 20.0, 8.0, '" New Zealand Town "', 'Taika Waititi', 'Taika Waititi', 'March8,2009'),(9, 21.0, 9.0, '" Wingmen "', 'James Bobin', 'James Bobin & Jemaine Clement & Bret McKenzie', 'March15,2009');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1160161_12`;
CREATE TABLE `table_1_1160161_12` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Target` text DEFAULT NULL,
	`Target_Code_(Allied)` text DEFAULT NULL,
	`Luftwaffe_unit_(wing)` text DEFAULT NULL,
	`Allied_forces` text DEFAULT NULL,
	`Effect_on_Allied_Squadrons_(according_to_official_figures)` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1160161_12` WRITE;
INSERT INTO `table_1_1160161_12` VALUES (1, 'Asch', 'Y-29', 'JG 11', 'USAAF 366th Fighter Group , 352nd Fighter Group .', 'One abandoned B-17 destroyed, three damaged.'),(2, 'BrusselsGrimbergen', 'B-60', 'JG 26 and JG 54', 'Only six aircraft were present', 'All six aircraft destroyed.'),(3, 'Ghent/Sint-Denijs-Westrem', 'B-61', 'JG 1', 'No. 131 Wing RAF', '16 destroyed several damaged.'),(4, 'GilzeRijen', 'B-77', 'JG 3 and KG 51', 'No. 35 Recce Wing RAF', 'One destroyed and one damaged.'),(5, 'Maldegem', 'B-65', 'JG 1', 'No. 485 Squadron RNZAF and No. 349 Squadron RAF', '13 destroyed, two damaged beyond repair.'),(6, 'Ophoven', 'Y-32', 'JG 4', 'No. 130 Squadron RAF , No. 350 Squadron RAF', 'One destroyed circa , six damaged.'),(7, 'SintTruiden', 'A-92', 'JG 2 , JG 4 and SG 4', 'USAAF 48th Fighter Group and 404th Fighter Group', '10 destroyed 31 damaged.'),(8, 'Volkel', 'B-80', 'JG 6', 'No. 56 Squadron RAF , No. 486 Squadron RNZAF', 'One aircraft destroyed.'),(9, 'Woensdrecht', 'B-79', 'JG 77', 'No. 132 Wing RAF', 'No effect');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_1160304_2`;
CREATE TABLE `table_1_1160304_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Chart` text DEFAULT NULL,
	`Date_of_Entry` text DEFAULT NULL,
	`Entry_Position` double DEFAULT NULL,
	`Peak_Position` double DEFAULT NULL,
	`Weeks_on_Peak` double DEFAULT NULL,
	`Weeks_on_Chart` double DEFAULT NULL,
	`Date_of_Exit` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_1160304_2` WRITE;
INSERT INTO `table_1_1160304_2` VALUES (1, 'UK Albums Top 75', '6 March 2005', 75.0, 6.0, 1.0, 32.0, '9 September 2005'),(2, 'Ireland Albums Top 75', '10 April 2005', 43.0, 15.0, 1.0, 19.0, '11 October 2005'),(3, 'Australia Albums Top 50', '19 June 2005', 48.0, 36.0, 1.0, 4.0, '17 July 2005'),(4, 'Austria Albums Top 75', '9 October 2005', 74.0, 73.0, 1.0, 2.0, '16 October 2005'),(5, 'Dutch Albums Top 100', '17 July 2005', 100.0, 98.0, 1.0, 2.0, '24 July 2005');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11609814_1`;
CREATE TABLE `table_1_11609814_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Acquisition` text DEFAULT NULL,
	`knowledge` text DEFAULT NULL,
	`penance` text DEFAULT NULL,
	`permanence_of_the_body` text DEFAULT NULL,
	`constancy` text DEFAULT NULL,
	`purity` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11609814_1` WRITE;
INSERT INTO `table_1_11609814_1` VALUES (1, 'Impurity', 'false conception', 'demerit', 'attachment', 'interestedness', 'falling'),(2, 'Expedient', 'use of habitation', 'pious muttering', 'meditation', 'constant recollection of Rudra', 'apprehension'),(3, 'Locality', 'spiritual teachers', 'a cavern', 'a special place', 'the burning ground', 'Rudra'),(4, 'Perseverance', 'the differenced', 'the undifferenced', 'muttering', 'acceptance', 'devotion'),(5, 'Purification', 'loss of ignorance', 'loss of demerit', 'loss of attachment', 'loss of interestedness', 'loss of falling'),(6, 'Initiations', 'the material', 'proper time', 'the rite', 'the image', 'the spiritual guide');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11630008_8`;
CREATE TABLE `table_1_11630008_8` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Series_#` double DEFAULT NULL,
	`Season_#` double DEFAULT NULL,
	`Title` text DEFAULT NULL,
	`Directed_by` text DEFAULT NULL,
	`Written_by` text DEFAULT NULL,
	`Original_air_date` text DEFAULT NULL,
	`Production_code` double DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11630008_8` WRITE;
INSERT INTO `table_1_11630008_8` VALUES (1, 127.0, 1.0, '"Where\'s the Payne?"', 'Kim Fields', 'Steve Coulter', 'November4,2009', 601.0),(2, 128.0, 2.0, '"Recurring Paynes"', 'Kim Fields', 'Robin M. Henry', 'November4,2009', 602.0),(3, 129.0, 3.0, '"Wigging Out"', 'Kim Fields', 'Don Woodard', 'November11,2009', 603.0),(4, 130.0, 4.0, '"Payne Speaking"', 'Kim Fields', 'Don Woodard', 'November11,2009', 604.0),(5, 131.0, 5.0, '"Parental Payne"', 'Kim Fields', 'Brian Egeston', 'November18,2009', 605.0),(6, 132.0, 6.0, '"Payne, Payne Go Away"', 'Kim Fields', 'Erika Kaestle and Stacey Evans Morgan', 'November18,2009', 606.0),(7, 133.0, 7.0, '"Marriage Paynes"', 'Kim Fields', 'Daniel Beaty and Stacey Evans Morgan', 'November25,2009', 607.0),(8, 134.0, 8.0, '"Ms. Curtis"', 'Kim Fields', 'Spencer Gilbert', 'December2,2009', 608.0),(9, 135.0, 9.0, '"Oh, Christmas Payne"', 'Chip Hurd', 'Brian Egeston & Torian Hughes', 'December9,2009', 609.0),(10, 136.0, 10.0, '"Til Payne Do We Part"', 'Chip Hurd', 'Adam Szymkowicz', 'December23,2009', 610.0),(11, 137.0, 11.0, '"Payneful Reunion"', 'Chip Hurd', 'Torian Hughes', 'March3,2010', 611.0),(12, 138.0, 12.0, '"From the Mouths of Babes"', 'Kim Fields', 'Lisa Michelle Payton', 'March3,2010', 612.0),(13, 139.0, 13.0, '"Blackout X 3"', 'Kim Fields', 'Adam Szymkowicz', 'March10,2010', 613.0),(14, 140.0, 14.0, '"Lady Sings the Blues"', 'Chip Hurd', 'Steve Coulter & Don Woodard', 'March10,2010', 614.0),(15, 141.0, 15.0, '"Something\'s Brewing"', 'Chip Hurd', 'Don Woodard & Steve Coulter', 'March17,2010', 615.0),(16, 142.0, 16.0, '"Seal of Approval"', 'Chip Hurd', 'Robin M. Henry & Don Woodard', 'March17,2010', 616.0),(17, 143.0, 17.0, '"Payneful Pie"', 'Chip Hurd', 'Kellie Zimmerman-Green', 'March25,2010', 617.0),(18, 144.0, 18.0, '"How Do You Like Your Roast?"', 'Chip Hurd', 'Robin M. Henry & Steve Coulter', 'March25,2010', 618.0),(19, 145.0, 19.0, '"Curtis Sings the Blues"', 'Chip Hurd', 'Robin M. Henry & Don Woodard', 'March31,2010', 619.0),(20, 146.0, 20.0, '"Firestorm"', 'Chip Hurd', 'Torian Hughes', 'March31,2010', 620.0),(21, 147.0, 21.0, '"Heartbeat"', 'Chip Hurd', 'Brian Egeston', 'April7,2010', 621.0),(22, 148.0, 22.0, '"Through the Fire"', 'Chip Hurd', 'Robin M. Henry', 'April7,2010', 622.0),(23, 149.0, 23.0, '"The Bible: King Payne\'s Version"', 'Chip Hurd', 'Don Woodard', 'April14,2010', 623.0),(24, 150.0, 24.0, '"Matured Investment"', 'Chip Hurd', 'Torian Hughes', 'April14,2010', 624.0),(25, 151.0, 25.0, '"Who\'s Your Daddy Now?"', 'Chip Hurd', 'Brian Egeston', 'April21,2010', 625.0),(26, 152.0, 26.0, '"Feet of Clay"', 'Chip Hurd', 'Don Woodard', 'April21,2010', 626.0),(27, 153.0, 27.0, '"Date Night x 3"', 'Chip Hurd', 'Adam Szymkowicz', 'April28,2010', 627.0),(28, 154.0, 28.0, '"Watch the Son Shine"', 'Chip Hurd', 'Brian Egeston & Adam Szymkowicz', 'April28,2010', 628.0),(29, 155.0, 29.0, '"Drinking Game"', 'Chip Hurd', 'Karen Felix and Don Woodard', 'May5,2010', 629.0),(30, 156.0, 30.0, '"Who\'s On Top?"', 'Chip Hurd', 'Robin M. Henry & Torian Hughes', 'May5,2010', 630.0),(31, 157.0, 31.0, '"Help, Help, Help"', 'Chip Hurd', 'Brian Egeston & Robin M. Henry', 'May12,2010', 631.0),(32, 158.0, 32.0, '"Stinging Payne"', 'Chip Hurd', 'Don Woodard', 'May12,2010', 632.0),(33, 159.0, 33.0, '"Worth Fighting For"', 'Chip Hurd', 'Torian Hughes', 'May19,2010', 633.0),(34, 160.0, 34.0, '"Who\'s Your Nanny?"', 'Chip Hurd', 'Robin M. Henry & Adam Szymkowicz', 'May19,2010', 634.0),(35, 161.0, 35.0, '"The Chef"', 'Chip Hurd', 'Anthony C. Hill', 'May26,2010', 635.0),(36, 162.0, 36.0, '"My Fair Curtis"', 'Chip Hurd', 'Don Woodard', 'May26,2010', 636.0),(37, 163.0, 37.0, '"Rest for the Weary"', 'Chip Hurd', 'Brian Egeston', 'June2,2010', 637.0),(38, 164.0, 38.0, '"Thug Life"', 'Chip Hurd', 'Torian Hughes', 'June2,2010', 638.0),(39, 165.0, 39.0, '"Rehabilitation"', 'Chip Hurd', 'Adam Szymkowicz', 'June9,2010', 639.0),(40, 166.0, 40.0, '"A Payne In Need Is A Pain Indeed"', 'Chip Hurd', 'Don Woodard', 'June9,2010', 640.0),(41, 167.0, 41.0, '"House Guest"', 'Chip Hurd', 'David A. Arnold', 'January5,2011', 641.0),(42, 168.0, 42.0, '"Payne Showers"', 'Chip Hurd', 'Omega Mariaunnie Stewart and Torian Hughes', 'January5,2011', 642.0),(43, 169.0, 43.0, '"Playing With Fire"', 'Chip Hurd', 'Carlos Portugal', 'January12,2011', 643.0),(44, 170.0, 44.0, '"When the Payne\'s Away"', 'Chip Hurd', 'Kristin Topps and Don Woodard', 'January12,2011', 644.0),(45, 171.0, 45.0, '"Beginnings"', 'Chip Hurd', 'Myra J.', 'January19,2011', 645.0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11727969_1`;
CREATE TABLE `table_1_11727969_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Taxonomy` text DEFAULT NULL,
	`Species_in_the_world` double DEFAULT NULL,
	`Species_in_Peru` double DEFAULT NULL,
	`Species_in_the_Peruvian_Amazon` double DEFAULT NULL,
	`Peru_Vs._world_(Percent)` double DEFAULT NULL,
	`Peruvian_Amazon_Vs._Peru_(Percent)` double DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11727969_1` WRITE;
INSERT INTO `table_1_11727969_1` VALUES (1, 'Amphibians', 5125.0, 403.0, 262.0, 8.0, 65.0),(2, 'Birds', 9672.0, 1816.0, 806.0, 19.0, 54.0),(3, 'Flowering plants (Angiosperms)', 263537.0, 17144.0, 7372.0, 7.0, 43.0),(4, 's Fern ( Pteridophyta )', 10000.0, 1000.0, 700.0, 10.0, 70.0),(5, 'Mammals', 4629.0, 462.0, 293.0, 10.0, 63.0),(6, 'Butterflies ( Lepidoptera )', 16000.0, 3366.0, 2500.0, 21.0, 74.0),(7, 'Fish (river fish)', 8411.0, 900.0, 697.0, 11.0, 77.0);
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11734041_2`;
CREATE TABLE `table_1_11734041_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Player` text DEFAULT NULL,
	`No.(s)` text DEFAULT NULL,
	`Height_in_Ft.` text DEFAULT NULL,
	`Position` text DEFAULT NULL,
	`Years_for_Rockets` text DEFAULT NULL,
	`School/Club_Team/Country` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11734041_2` WRITE;
INSERT INTO `table_1_11734041_2` VALUES (1, 'Bailey, Gus Gus Bailey', '22', '6-6', 'Guard', '1974-76', 'Texas-El Paso'),(2, 'Bailey, James James Bailey', '2', '6-9', 'Forward', '1982-84', 'Xavierian Brothers'),(3, 'Baker, Vin Vin Baker', '42', '6-11', 'Forward', '2004-05', 'Hartford'),(4, 'Barker, Tom Tom Barker', '15', '6-11', 'Center', '1978-79', 'Hawaii'),(5, 'Barkley, Charles Charles Barkley', '4', '6-6', 'Forward', '1996-2000', 'Auburn'),(6, 'Barnes, Harry Harry Barnes', '30', '6-3', 'Forward', '1968-69', 'Northeastern'),(7, 'Barnett, Jim Jim Barnett', '33', '6-4', 'Guard', '1967-70', 'Oregon'),(8, 'Barnhill, John John Barnhill', '30', '6-1', 'Guard', '1967-68', 'Tennessee State'),(9, 'Barrett, Andre Andre Barrett', '12', '5-10', 'Guard', '2004-05', 'Seton Hall'),(10, 'Barry, Brent Brent Barry', '17', '6-7', 'Guard', '2008-09', 'Oregon State'),(11, 'Barry, Jon Jon Barry', '20', '6-5', 'Guard', '2004-06', 'Georgia Tech'),(12, 'Barry, Rick Rick Barry', '2', '6-8', 'Forward', '1978-80', 'Miami'),(13, 'Battier, Shane Shane Battier', '31', '6-8', 'Forward', '2006-2011', 'Duke'),(14, 'Baxter, Lonny Lonny Baxter', '35', '6-8', 'Forward', '2005-06', 'Maryland'),(15, 'Behagen, Ron Ron Behagen', '34', '6-9', 'Forward', '1977-78', 'Minnesota'),(16, 'Bennett, Elmer Elmer Bennett', '6', '6-1', 'Guard', '1996-97', 'Notre Dame'),(17, 'Berry, Walter Walter Berry', '6', '6-8', 'Forward', '1988-89', 'St. Johns'),(18, 'Block, John John Block', '34', '6-9', 'Forward', '1967-71', 'USC'),(19, 'Bogans, Keith Keith Bogans', '10', '6-5', 'Guard / Forward', '2005-06', 'Kentucky'),(20, 'Bond, Phil Phil Bond', '30', '6-2', 'Guard', '1977-78', 'Louisville'),(21, 'Booker, Melvin Melvin Booker', '9', '6-1', 'Guard', '1995-96', 'Missouri'),(22, 'Bowen, Ryan Ryan Bowen', '40', '6-9', 'Forward', '2004-06', 'Iowa'),(23, 'Bowie, Anthony Anthony Bowie', '25', '6-6', 'Guard', '1989-90', 'Oklahoma'),(24, 'Bradley, Alonzo Alonzo Bradley', '22, 30', '6-7', 'Forward', '1977-80', 'Texas Southern'),(25, 'Braggs, Torraye Torraye Braggs', '32', '6-8', 'Forward', '2003-05', 'Xavier'),(26, 'Breaux, Tim Tim Breaux', '15', '6-7', 'Guard / Forward', '1994-96', 'Wyoming'),(27, 'Britt, Tyrone Tyrone Britt', '31', '6-4', 'Guard', '1967-68', 'Johnson C. Smith'),(28, 'Brooks, Aaron Aaron Brooks', '0', '6-0', 'Guard', '2007-2011, 2013', 'Oregon'),(29, 'Brooks, Scott Scott Brooks', '1', '5-11', 'Guard', '1992-95', 'UC-Irvine'),(30, 'Brown, Chucky Chucky Brown', '52', '6-8', 'Forward', '1994-96', 'North Carolina'),(31, 'Brown, Tony Tony Brown', '35', '6-6', 'Forward', '1988-89', 'Arkansas'),(32, 'Brown, Tierre Tierre Brown', '10', '6-2', 'Guard', '2001-02', 'McNesse State'),(33, 'Brunson, Rick Rick Brunson', '9', '6-4', 'Guard', '2005-06', 'Temple'),(34, 'Bryant, Joe Joe Bryant', '22', '6-9', 'Forward / Guard', '1982-83', 'LaSalle'),(35, 'Bryant, Mark Mark Bryant', '2', '6-9', 'Forward', '1995-96', 'Seton Hall'),(36, 'Budinger, Chase Chase Budinger', '10', '6-7', 'Forward', '2009-2012', 'Arizona'),(37, 'Bullard, Matt Matt Bullard', '50', '6-10', 'Forward', '1990-94, 1996-2001', 'Iowa');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11734041_9`;
CREATE TABLE `table_1_11734041_9` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Player` text DEFAULT NULL,
	`No.(s)` text DEFAULT NULL,
	`Height_in_Ft.` text DEFAULT NULL,
	`Position` text DEFAULT NULL,
	`Years_for_Rockets` text DEFAULT NULL,
	`School/Club_Team/Country` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11734041_9` WRITE;
INSERT INTO `table_1_11734041_9` VALUES (1, 'Jackson, Bobby Bobby Jackson', '8', '6-1', 'Guard', '2008', 'Minnesota'),(2, 'Jackson, Jaren Jaren Jackson', '12', '6-4', 'Guard', '1995', 'Georgetown'),(3, 'Jackson, Jim Jim Jackson', '21', '6-6', 'Guard / Forward', '2003-05', 'Ohio State'),(4, 'Jackson, Mark Mark Jackson', '31', '6-1', 'Guard', '2003-04', "St. John's"),(5, 'Jamerson, Dave Dave Jamerson', '32', '6-5', 'Guard', '1990-92', 'Ohio'),(6, 'James, Henry Henry James', '21', '6-8', 'Forward', '1995', "St. Mary's"),(7, 'James, Mike Mike James', '7, 13', '6-2', 'Guard', '2005, 2007-08', 'Duquesne'),(8, 'Jeffries, Jared Jared Jeffries', '20', '6-11', 'Forward / Center', '2010-11', 'Indiana'),(9, 'Jent, Chris Chris Jent', '21', '6-7', 'Guard', '1993-94', 'Ohio State'),(10, 'Johnson, Alexander Alexander Johnson', '30', '6-9', 'Forward', '2010-11', 'Florida State'),(11, 'Johnson, Avery Avery Johnson', '6', '5-11', 'Guard', '1991-92', 'Southern University'),(12, 'Johnson, Buck Buck Johnson', '1', '6-7', 'Forward', '1986-92', 'Alabama'),(13, 'Johnson, Eddie Eddie Johnson', '8', '6-7', 'Guard / Forward', '1996-98', 'Illinois'),(14, 'Johnson, Frank Frank Johnson', '15', '6-1', 'Guard', '1988-89', 'Wake Forest'),(15, 'Johnson, George George Johnson', '6, 16', '6-7', 'Forward', '1972-74', "St. John's"),(16, 'Johnson, John John Johnson', '27, 34', '6-7', 'Forward', '1975-77', 'Iowa'),(17, 'Johnson, Lee Lee Johnson', '1', '6-11', 'Forward', '1980', 'East Texas State'),(18, 'Jones, Bobby Bobby Jones', '15', '6-7', 'Forward', '2008', 'Washington'),(19, 'Jones, Caldwell Caldwell Jones', '27', '6-11', 'Center / Forward', '1982-84', 'Albany State'),(20, 'Jones, Charles Charles Jones', '27', '6-9', 'Forward / Center', '1994-98', 'Albany State'),(21, 'Jones, Dwight Dwight Jones', '13', '6-10', 'Forward / Center', '1976-80', 'Houston'),(22, 'Jones, Major Major Jones', '11', '6-9', 'Forward / Center', '1979-84', 'Albany State'),(23, 'Jones, Nick Nick Jones', '12', '6-2', 'Guard', '1967-68', 'Oregon');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11764007_2`;
CREATE TABLE `table_1_11764007_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Member` text DEFAULT NULL,
	`Week_Arrived_On_Main_Island` text DEFAULT NULL,
	`Week_Sent_To_Third_Island` text DEFAULT NULL,
	`Original_Tribe` text DEFAULT NULL,
	`Tribe_They_Chose_To_Win` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11764007_2` WRITE;
INSERT INTO `table_1_11764007_2` VALUES (1, 'Member', 'Week Arrived On Main Island', 'Week Sent To Third Island', 'Original Tribe', 'Tribe They Chose To Win'),(2, 'Nick Weston 25, Sussex Chef and Survival Expert', 'n/a', '1', 'Hawk', 'Tiger'),(3, 'Char Counsell 23, Somerset Farmer', '1', '2', 'Tiger', 'Tiger'),(4, 'James Ward 23, Northampton Riding Instructor', '1', '2', 'Shark', 'Tiger'),(5, 'Diva Morthor 19, Essex PA', '3', '4', 'Shark', 'Tiger'),(6, 'Mike McHale 23, London Graduate', '4', '5', 'Tiger', 'Tiger'),(7, 'Lottie Moore 22, Cheshire Graduate', '6', '7', 'Shark', 'Tiger'),(8, 'Rowan Bailey 26, Chichester Surf Fashion Salesman', '7', '8', 'Tiger', 'Tiger'),(9, 'Adelina Ekechukwu 22, Manchester Unemployed', '8', '9', 'Shark', 'Tiger'),(10, 'Beau Devonish-Inua 27, Essex Labourer', '9', '10', 'Tiger', 'Tiger'),(11, 'Brie Doffing 19, Berkshire GAP year student', '11', '12', 'Tiger', 'Tiger'),(12, 'Sarah Collings 26, London Receptionist', '12', '13', 'Tiger', 'Tiger'),(13, 'Sarah Sole 23, Devon Student', '13', '14', 'Shark', 'Tiger');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11800185_1`;
CREATE TABLE `table_1_11800185_1` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Region` text DEFAULT NULL,
	`Country` text DEFAULT NULL,
	`No._of_Sikhs` text DEFAULT NULL,
	`Sikh_%` text DEFAULT NULL,
	`%_of_all_Sikhs` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11800185_1` WRITE;
INSERT INTO `table_1_11800185_1` VALUES (1, 'Middle East', 'Afghanistan', '2,000 [ dead link ]', '<0.01%', '<0.01%'),(2, 'Oceania', 'Australia', '72,296', '0.12%', '0.12%'),(3, 'Central Europe', 'Austria', '2,794', '0.03%', '0.01%'),(4, 'Western Europe', 'Belgium', '10,000', '0.09%', '0.04%'),(5, 'Southeast Asia', 'Brunei', '1,000', '0.26%', '<0.01%'),(6, 'Southeast Asia', 'Burma', '70,000', '0.14 %', '0.29%'),(7, 'North America', 'Canada', '478,415', '0.9%', '2.01%'),(8, 'East Asia', "People's Republic of China", '7,500', '<0.01%', '0.03%'),(9, 'Northern Europe', 'Denmark', '700', '0.01%', '<0.01%'),(10, 'Oceania', 'Fiji', '4,676', '0.55%', '0.02%'),(11, 'Western Europe', 'France', '10,000', '0.02%', '0.04%'),(12, 'Central Europe', 'Germany', '12,00040,000', '0.03%', '0.11%'),(13, 'Southern Europe', 'Greece', '20,000', '<0.11%', '<0.11%'),(14, 'Western Europe', 'Iceland', '100', '0.03%', '<0.01%'),(15, 'South Asia', 'India', '21,500,000', '2.00%', '90.2%'),(16, 'Middle East', 'Iran', '6,000', '0.01%', '0.03%'),(17, 'Western Europe', 'Ireland', '1,200', '0.03%', '<0.01%'),(18, 'Southern Europe', 'Italy', '70,000', '0.11%', '0.29%'),(19, 'East Asia', 'Japan', '2,000', '<0.01%', '<0.01%'),(20, 'Central Asia', 'Kazakhstan', '800', '<0.01%', '<0.01%'),(21, 'East Africa', 'Kenya, Uganda and Tanzania', '50,000-100,000', '0.64%', '0.0005%'),(22, 'Middle East', 'Kuwait', '20,000', '0.64%', '0.08%'),(23, 'Middle East', 'Lebanon', '3,000', '0.07%', '0.01%'),(24, 'Southern Africa', 'Malawi', '3,000', '0.02%', '0.01%'),(25, 'Southeast Asia', 'Malaysia', '100,000', '0.37 %', '0.42%'),(26, 'Southern Africa', 'Mauritius', '37,700', '0.3%', '0.16%'),(27, 'North America', 'Mexico', '8,000', '<0.01%', '0.03%'),(28, 'South Asia', 'Nepal', '5,890', '0.02%', '0.02%'),(29, 'Western Europe', 'Netherlands', '12,000', '0.07%', '0.06%'),(30, 'Oceania', 'New Zealand', '9,507', '0.22%', '0.04%'),(31, 'West Africa', 'Niger', '3,000', '0.02%', '0.01%'),(32, 'Northern Europe', 'Norway', '5,000', '<0.01%', '0.02%'),(33, 'South Asia', 'Pakistan', '20,000', '0.04 %', '0.11%'),(34, 'Southeast Asia', 'Philippines', '20,000', '0.02%', '0.08%'),(35, 'Western Europe', 'Portugal', '9,000', '0.08%', '0.04%'),(36, 'Eastern Europe / North Asia', 'Russia', '5,000', '<0.01%', '0.02%'),(37, 'Southeast Asia', 'Singapore', '15,000', '0.32%', '0.06%'),(38, 'Southern Africa', 'South Africa', '4,000', '<0.01%', '0.02%'),(39, 'East Asia', 'South Korea', '2,000', '<0.01%', '<0.01%'),(40, 'Western Europe', 'Spain', '9,000', '0.02%', '0.04%'),(41, 'Northern Europe', 'Sweden', '1,0001,500', '0.01%', '<0.01%'),(42, 'Central Europe', 'Switzerland', '500', '<0.01%', '<0.01%'),(43, 'Central Africa', 'Tanzania', '14,000', '0.04%', '0.06%'),(44, 'Southeast Asia', 'Thailand', '70,000', '0.01 %', '0.29%'),(45, 'Middle East', 'United Arab Emirates', '50,000', '0.72%', '0.2%'),(46, 'Western Europe', 'United Kingdom', '336,179', '0.74%', '0.314%'),(47, 'Southern Africa', 'Zambia', '3,000', '0.03%', '0.01%');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11884814_3`;
CREATE TABLE `table_1_11884814_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Country` text DEFAULT NULL,
	`Interview` text DEFAULT NULL,
	`Swimsuit` text DEFAULT NULL,
	`Evening_Gown` text DEFAULT NULL,
	`Average` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11884814_3` WRITE;
INSERT INTO `table_1_11884814_3` VALUES (1, 'Tennessee', '9.74', '9.75', '9.75', '9.75'),(2, 'Illinois', '9.60', '9.67', '9.75', '9.67'),(3, 'Kansas', '9.55', '9.59', '9.70', '9.61'),(4, 'North Carolina', '9.55', '9.61', '9.54', '9.57'),(5, 'Oklahoma', '9.60', '9.57', '9.46', '9.54'),(6, 'Hawaii', '9.40', '9.51', '9.64', '9.52'),(7, 'Virginia', '9.50', '9.33', '9.58', '9.47'),(8, 'North Dakota', '9.40', '9.32', '9.60', '9.44'),(9, 'Massachusetts', '9.36', '9.42', '9.47', '9.42');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11960407_5`;
CREATE TABLE `table_1_11960407_5` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Game` double DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Team` text DEFAULT NULL,
	`Score` text DEFAULT NULL,
	`High_points` text DEFAULT NULL,
	`High_rebounds` text DEFAULT NULL,
	`High_assists` text DEFAULT NULL,
	`Location_Attendance` text DEFAULT NULL,
	`Record` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11960407_5` WRITE;
INSERT INTO `table_1_11960407_5` VALUES (1, 46.0, 'February 1', 'L.A. Lakers', 'L 101121 (OT)', 'Andrea Bargnani (28)', 'Chris Bosh (15)', 'Juan Dixon (6)', 'Air Canada Centre 19,800', '2521'),(2, 47.0, 'February 4', '@ Miami', 'W 11482 (OT)', 'Chris Bosh (24)', 'Jamario Moon (9)', 'Jos Caldern (10)', 'American Airlines Arena 19,600', '2621'),(3, 48.0, 'February 8', 'L.A. Clippers', 'L 98102 (OT)', 'Chris Bosh (29)', 'Chris Bosh (12)', 'Jos Caldern (14)', 'Air Canada Centre 19,800', '2622'),(4, 49.0, 'February 10', '@ Minnesota', 'W 10582 (OT)', 'Andrea Bargnani (16)', 'Chris Bosh , Carlos Delfino (9)', 'T. J. Ford (13)', 'Target Center 13,785', '2722'),(5, 50.0, 'February 11', 'San Antonio', 'L 8893 (OT)', 'Jos Caldern (27)', 'Chris Bosh , Carlos Delfino , Jamario Moon (8)', 'Jos Caldern (6)', 'Air Canada Centre 19,800', '2723'),(6, 51.0, 'February 13', 'New Jersey', 'W 10991 (OT)', 'Chris Bosh (27)', 'Chris Bosh , Carlos Delfino (9)', 'Jos Caldern (12)', 'Air Canada Centre 19,800', '2823'),(7, 52.0, 'February 20', 'Orlando', 'W 127110 (OT)', 'Chris Bosh (40)', 'Jamario Moon (12)', 'Jos Caldern (13)', 'Air Canada Centre 19,800', '2923'),(8, 53.0, 'February 22', '@ New York', 'L 99103 (OT)', 'Chris Bosh (23)', 'Chris Bosh , Jamario Moon (8)', 'Jos Caldern (6)', 'Madison Square Garden 19,763', '2924'),(9, 54.0, 'February 24', 'New York', 'W 11592 (OT)', 'Andrea Bargnani (25)', 'Jamario Moon , Radoslav Nesterovi (8)', 'Jos Caldern (7)', 'Air Canada Centre 19,800', '3024'),(10, 55.0, 'February 25', '@ Indiana', 'W 10298 (OT)', 'Chris Bosh (24)', 'Anthony Parker (11)', 'T. J. Ford (7)', 'Conseco Fieldhouse 10,468', '3124'),(11, 56.0, 'February 27', 'Minnesota', 'W 10785 (OT)', 'Chris Bosh (28)', 'Chris Bosh , Jamario Moon (7)', 'Jos Caldern (7)', 'Air Canada Centre 18,325', '3224');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11961582_6`;
CREATE TABLE `table_1_11961582_6` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Game` double DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Team` text DEFAULT NULL,
	`Score` text DEFAULT NULL,
	`High_points` text DEFAULT NULL,
	`High_rebounds` text DEFAULT NULL,
	`High_assists` text DEFAULT NULL,
	`Location_Attendance` text DEFAULT NULL,
	`Record` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11961582_6` WRITE;
INSERT INTO `table_1_11961582_6` VALUES (1, 44.0, 'February 2', 'New Jersey', 'W 10432', 'M. Williams (24)', 'J. Smith (8)', 'A. Law (8)', 'Philips Arena 18,102', '2024'),(2, 45.0, 'February 4', 'Philadelphia', 'W 9691', 'J. Childress (21)', 'A. Horford (8)', 'J. Smith (9)', 'Philips Arena 14,563', '2124'),(3, 46.0, 'February 6', 'LA Lakers', 'W 9895', 'J. Johnson (28)', 'A. Horford (20)', 'J. Smith (9)', 'Philips Arena 19,701', '2224'),(4, 47.0, 'February 8', 'Cleveland', 'L 10095', 'J. Johnson (23)', 'J. Smith (8)', 'J. Johnson (8)', 'Philips Arena 19,335', '2225'),(5, 48.0, 'February 9', '@ Houston', 'L 10889', 'J. Childress (21)', 'Z. Pachulia (9)', 'J. Johnson (4)', 'Toyota Center 18,177', '2226'),(6, 49.0, 'February 12', 'Detroit', 'L 9490', 'J. Smith (30)', 'A. Horford (16)', 'J. Johnson (4)', 'Philips Arena 18,227', '2227'),(7, 50.0, 'February 13', '@ Charlotte', 'L 10098', 'J. Johnson (23)', 'A. Horford (14)', 'J. Johnson (4)', 'Charlotte Bobcats Arena 11,213', '2228'),(8, 51.0, 'February 19', '@ LA Lakers', 'L 12293', 'J. Johnson (18)', 'Z. Pachulia (12)', 'J. Smith (6)', 'Staples Center 18,997', '2229'),(9, 52.0, 'February 20', '@ Sacramento', 'L 119107', 'J. Childress (18)', 'A. Horford (12)', 'J. Johnson (4)', 'ARCO Arena 13,641', '2230'),(10, 53.0, 'February 22', '@ Golden State', 'W 117110', 'J. Johnson (27)', 'M. Williams (14)', 'J. Johnson (8)', 'Oracle Arena 19,596', '2330'),(11, 54.0, 'February 23', '@ Utah', 'L 10094', 'J. Smith (30)', 'J. Smith (12)', 'M. Bibby J. Johnson (9)', 'EnergySolutions Arena 19,911', '2331'),(12, 55.0, 'February 25', '@ San Antonio', 'L 8974', 'J. Johnson (17)', 'A. Horford J. Smith (13)', 'M. Bibby J. Johnson (5)', 'AT&T Center 18,113', '2332'),(13, 56.0, 'February 27', 'Sacramento', 'W 123117', 'J. Johnson (26)', 'A. Horford (14)', 'M. Bibby (12)', 'Philips Arena 15,661', '2432');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11964047_5`;
CREATE TABLE `table_1_11964047_5` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`#` double DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Visitor` text DEFAULT NULL,
	`Score` text DEFAULT NULL,
	`Home` text DEFAULT NULL,
	`Leading_scorer` text DEFAULT NULL,
	`Attendance` text DEFAULT NULL,
	`Record` text DEFAULT NULL,
	`Streak` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11964047_5` WRITE;
INSERT INTO `table_1_11964047_5` VALUES (1, 2.0, 'November 2', 'Portland Trail Blazers', 'L 93113', 'New Orleans Hornets', 'Roy : 23', 'New Orleans Arena 9,817', '02', 'L2'),(2, 3.0, 'November 3', 'Portland Trail Blazers', 'L 8089', 'Houston Rockets', 'Roy : 23', 'Toyota Center 18,232', '03', 'L3'),(3, 4.0, 'November 7', 'New Orleans', 'W 9093', 'Portland Trail Blazers', 'West : 34', 'Rose Garden 19,980', '13', 'W1'),(4, 5.0, 'November 9', 'Memphis Grizzlies', 'W 98110', 'Portland Trail Blazers', 'Gay : 31', 'Rose Garden 18,112', '23', 'W2'),(5, 6.0, 'November 10', 'Dallas Mavericks', 'W 8291', 'Portland Trail Blazers', 'Roy : 32', 'Rose Garden 19,255', '33', 'W3'),(6, 7.0, 'November 13', 'Detroit Pistons', 'W 94102', 'Portland Trail Blazers', 'Aldridge : 22', 'Rose Garden 19,980', '43', 'W4'),(7, 8.0, 'November 14', 'Portland Trail Blazers', 'L 93110', 'Denver Nuggets', 'Anthony : 25', 'Pepsi Center 13,289', '44', 'L1'),(8, 9.0, 'November 16', 'Portland Trail Blazers', 'L 8892', 'Philadelphia 76ers', 'Roy : 25 Aldridge : 25', 'Wachovia Center 11,483', '45', 'L2'),(9, 10.0, 'November 17', 'Portland Trail Blazers', 'L 90109', 'Washington Wizards', 'Jamison : 30', 'Verizon Center 20,173', '46', 'L3'),(10, 11.0, 'November 19', 'Portland Trail Blazers', 'L 92101', 'Charlotte Bobcats', 'Wallace : 27', 'Charlotte Bobcats Arena 10,612', '47', 'L4'),(11, 12.0, 'November 21', 'New Jersey Nets', 'L 106101', 'Portland Trail Blazers', 'Jefferson : 30', 'Rose Garden 18,423', '48', 'L5'),(12, 13.0, 'November 23', 'Sacramento Kings', 'W 8487', 'Portland Trail Blazers', 'Aldridge : 28', 'Rose Garden 19,980', '58', 'W1'),(13, 14.0, 'November 26', 'Orlando Magic', 'L 8574', 'Portland Trail Blazers', 'Turkoglu : 21', 'Rose Garden 15,922', '59', 'L1'),(14, 15.0, 'November 28', 'Indiana Pacers', 'L 9589', 'Portland Trail Blazers', 'Outlaw : 26', 'Rose Garden 16,168', '510', 'L2');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11964047_7`;
CREATE TABLE `table_1_11964047_7` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`#` double DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Visitor` text DEFAULT NULL,
	`Score` text DEFAULT NULL,
	`Home` text DEFAULT NULL,
	`Leading_scorer` text DEFAULT NULL,
	`Attendance` text DEFAULT NULL,
	`Record` text DEFAULT NULL,
	`Streak` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11964047_7` WRITE;
INSERT INTO `table_1_11964047_7` VALUES (1, 32.0, 'January 2', 'Portland Trail Blazers', 'W 9079', 'Minnesota Timberwolves', 'Jefferson : 29', 'Target Center 13,339', '1913', 'W1'),(2, 33.0, 'January 3', 'Portland Trail Blazers', 'W 115109 2 OT', 'Chicago Bulls', 'Gordon : 32', 'United Center 21,756', '2013', 'W2'),(3, 34.0, 'January 5', 'Utah Jazz', 'W 89103', 'Portland Trail Blazers', 'Webster : 26', 'Rose Garden 20,451', '2113', 'W3'),(4, 35.0, 'January 9', 'Golden State Warriors', 'W 91109', 'Portland Trail Blazers', 'Blake : 24', 'Rose Garden 20,415', '2213', 'W4'),(5, 36.0, 'January 13', 'Portland Trail Blazers', 'L 109116 2 OT', 'Toronto Raptors', 'Bosh : 38', 'Air Canada Centre 19,800', '2214', 'L1'),(6, 37.0, 'January 14', 'Portland Trail Blazers', 'W 9973', 'New Jersey Nets', 'Aldridge : 20', 'Izod Center 14,242', '2314', 'W1'),(7, 38.0, 'January 16', 'Portland Trail Blazers', 'L 90100', 'Boston Celtics', 'Garnett : 36', 'TD Banknorth Garden 18,624', '2315', 'L1'),(8, 39.0, 'January 18', 'Portland Trail Blazers', 'W 9891', 'Miami Heat', 'Wade : 37', 'AmericanAirlines Arena 19,600', '2415', 'W1'),(9, 40.0, 'January 19', 'Portland Trail Blazers', 'L 94101', 'Orlando Magic', 'Roy : 25', 'Amway Arena 17,519', '2416', 'L1'),(10, 41.0, 'January 21', 'Portland Trail Blazers', 'W 111109 OT', 'Atlanta Hawks', 'Johnson : 37', 'Philips Arena 17,400', '2516', 'W1'),(11, 42.0, 'January 23', 'Portland Trail Blazers', 'L 8196', 'New Orleans Hornets', 'Pargo : 24', 'New Orleans Arena 11,006', '2517', 'L1'),(12, 43.0, 'January 25', 'Houston Rockets', 'L 8979', 'Portland Trail Blazers', 'Roy : 23', 'Rose Garden 20,576', '2518', 'L2'),(13, 44.0, 'January 27', 'Atlanta Hawks', 'W 9394', 'Portland Trail Blazers', 'Roy : 24', 'Rose Garden 20,438', '2618', 'W1');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_11965481_13`;
CREATE TABLE `table_1_11965481_13` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Game` double DEFAULT NULL,
	`Date` text DEFAULT NULL,
	`Team` text DEFAULT NULL,
	`Score` text DEFAULT NULL,
	`High_points` text DEFAULT NULL,
	`High_rebounds` text DEFAULT NULL,
	`High_assists` text DEFAULT NULL,
	`Location_Attendance` text DEFAULT NULL,
	`Series` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_11965481_13` WRITE;
INSERT INTO `table_1_11965481_13` VALUES (1, 1.0, 'June 5', '@ Boston', '8898', 'Bryant (24)', 'Gasol (8)', 'Bryant , Fisher (6)', 'TD Banknorth Garden 18,624', '01'),(2, 2.0, 'June 8', '@ Boston', '102108', 'Bryant (30)', 'Gasol , Radmanovi (10)', 'Bryant (8)', 'TD Banknorth Garden 18,624', '02'),(3, 3.0, 'June 10', 'Boston', '8781', 'Bryant (36)', 'Gasol (12)', 'Farmar (5)', 'Staples Center 18,997', '12'),(4, 4.0, 'June 12', 'Boston', '9197', 'Odom (19)', 'Gasol , Odom (10)', 'Bryant (10)', 'Staples Center 18,997', '13'),(5, 5.0, 'June 15', 'Boston', '10398', 'Bryant (25)', 'Gasol (13)', 'Gasol (6)', 'Staples Center 18,997', '23');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_12030612_3`;
CREATE TABLE `table_1_12030612_3` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Series_#` double DEFAULT NULL,
	`Season_#` double DEFAULT NULL,
	`Title` text DEFAULT NULL,
	`Directed_by` text DEFAULT NULL,
	`Written_by` text DEFAULT NULL,
	`Original_air_date` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_12030612_3` WRITE;
INSERT INTO `table_1_12030612_3` VALUES (1, 23.0, 1.0, '"It Happened One Summer (Part 1)"', 'Asaad Kelada', 'Martin Cohan & Blake Hunter', 'September24,1985'),(2, 24.0, 2.0, '"It Happened One Summer (Part 2)"', 'Asaad Kelada', 'Martin Cohan & Blake Hunter', 'October1,1985'),(3, 25.0, 3.0, '"Ad Man Micelli"', 'Asaad Kelada', 'Robert Sternin & Prudence Fraser', 'October8,1985'),(4, 26.0, 4.0, '"The Heiress"', 'Gary Brown', 'Alan L. Gansberg', 'October15,1985'),(5, 27.0, 5.0, '"Tony the Matchmaker"', 'Asaad Kelada', 'Paul Robinson Hunter', 'October29,1985'),(6, 28.0, 6.0, '"Custody (Part 1)"', 'Asaad Kelada', 'Robert Sternin & Prudence Fraser', 'November5,1985'),(7, 29.0, 7.0, '"Custody (Part 2)"', 'Asaad Kelada', 'Robert Sternin & Prudence Fraser', 'November12,1985'),(8, 30.0, 8.0, '"Hunk of the Month"', 'Michael Zinberg', 'Karen Wengrod & Ken Cinnmaon', 'November9,1985'),(9, 31.0, 9.0, '"Thanksgiving at Mrs. Rossini\'s"', 'Asaad Kelada', 'Dawn Aldredge & Judith Bustany', 'November26,1985'),(10, 32.0, 10.0, '"The Prodigal Father-in-Law"', 'Asaad Kelada', 'Cheri Eichen & Bill Steinkellner', 'December3,1985'),(11, 33.0, 11.0, '"The Graduate"', 'Asaad Kelada', 'Bud Wiser', 'December10,1985'),(12, 34.0, 12.0, '"Tony the Nanny"', 'Katherine Helmond & Gail L. Bergmann', 'Ellen Guylas', 'December17,1985'),(13, 35.0, 13.0, '"Junior Executive"', 'Tony Danza & Gail L. Bergmann', 'Cheri Eichen & Bill Steinkellner', 'January7,1986'),(14, 36.0, 14.0, '"Educating Tony"', 'Asaad Kelada', 'Michael Poryes', 'January14,1986'),(15, 37.0, 15.0, '"Gotta Dance"', 'Asaad Kelada', 'Howard Meyers', 'January21,1986'),(16, 38.0, 16.0, '"The Babysitter"', 'Asaad Kelada', 'Bud Wiser', 'January28,1986'),(17, 39.0, 17.0, '"Jonathan Plays Cupid "', 'Asaad Kelada', 'Paul Robinson Hunter', 'February11,1986'),(18, 40.0, 18.0, '"When Worlds Collide"', 'Asaad Kelada', 'Karen Wengrod & Ken Cinnamon', 'February18,1986'),(19, 41.0, 19.0, '"Losers and Other Strangers"', 'Asaad Kelada', 'Seth Weisbord', 'February25,1986'),(20, 42.0, 20.0, '"Tony for President"', 'Asaad Kelada', 'Howard Meyers', 'March4,1986'),(21, 43.0, 21.0, '"Not With My Client, You Don\'t"', 'Asaad Kelada', 'Dawn Aldredge & Judith Bustany', 'March18,1986'),(22, 45.0, 23.0, '"There\'s No Business Like Shoe Business"', 'Asaad Kelada', 'Karen Wengrod & Ken Cinnamon', 'April1,1986'),(23, 46.0, 24.0, '"The Unnatural"', 'Jim Drake', 'Ellen Guylas', 'April8,1986');
UNLOCK TABLES;

DROP TABLE IF EXISTS `table_1_12043148_2`;
CREATE TABLE `table_1_12043148_2` (
	`id_fake` int NOT NULL AUTO_INCREMENT,
	`Year` double DEFAULT NULL,
	`Premier_One` text DEFAULT NULL,
	`Premier_Two` text DEFAULT NULL,
	`Bristol_&_Somerset` text DEFAULT NULL,
	`Glos_&_Wilts` text DEFAULT NULL,
	`Bristol_&_N._Som` text DEFAULT NULL,
	`Somerset` text DEFAULT NULL,
	`Gloucestershire` text DEFAULT NULL,
	`Wiltshire` text DEFAULT NULL,
	PRIMARY KEY (`id_fake`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

LOCK TABLES `table_1_12043148_2` WRITE;
INSERT INTO `table_1_12043148_2` VALUES (1, 2007.0, 'Frocester', 'Downend', 'Lansdown', 'Warminster', 'Winterbourne', 'Winscombe', 'Rockhampton', 'Wootton Bassett'),(2, 2008.0, 'Bath (6)', 'Bristol', 'Taunton', 'Chippenham', 'Bedminster', 'Ashcott and Shapwick', 'Stroud', 'Lechlade'),(3, 2009.0, 'Taunton St Andrews (2)', 'Taunton', 'Ashcott and Shapwick', 'Westbury and District', 'Old Bristolians Westbury', 'Chard', 'Hatherley and Reddings', 'Potterne'),(4, 2010.0, 'Bath (7)', 'Downend', 'Bristol West Indian and Phoenix', 'Gloucester City Winget', 'Bishopston', 'Uphill Castle', 'Dumbleton', 'Goatacre'),(5, 2011.0, 'Bath (8)', 'Gloucester City Winget', 'Chard', 'Goatacre', 'Chipping Sodbury', 'Midsomer Norton', 'Painswick', 'Winsley'),(6, 2012.0, 'Bridgwater', 'Ashcott and Shapwick', 'Minehead', 'Cheltenham', 'Frenchay', 'Street', 'Dumbleton', 'Lechlade');
UNLOCK TABLES;

