-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2017 at 04:13 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `EventID` int(16) NOT NULL,
  `RaceNum` int(16) NOT NULL,
  `Meeting` varchar(64) CHARACTER SET utf8 NOT NULL,
  `RaceType` varchar(1) CHARACTER SET utf8 NOT NULL,
  `Description` text NOT NULL,
  `Distance` varchar(16) CHARACTER SET utf8 NOT NULL,
  `TrackCondition` varchar(16) CHARACTER SET utf8 NOT NULL,
  `Weather` varchar(16) CHARACTER SET utf8 NOT NULL,
  `Abandoned` int(1) NOT NULL,
  `SuspendDateTime` int(16) NOT NULL,
  `OutcomeDateTime` int(16) NOT NULL,
  `EffectiveRaceDate` int(16) NOT NULL,
  `Status` varchar(16) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`EventID`, `RaceNum`, `Meeting`, `RaceType`, `Description`, `Distance`, `TrackCondition`, `Weather`, `Abandoned`, `SuspendDateTime`, `OutcomeDateTime`, `EffectiveRaceDate`, `Status`) VALUES
(43734093, 1, 'Hobart', 'G', 'Surepick Ratings Division1', '340m', 'Good', 'Showery', 0, 1512257100, 1512257100, 1512223200, 'Open'),
(43734094, 2, 'Hobart', 'G', 'Cascade Draught Division2', '340m', 'Good', 'Showery', 0, 1512258540, 1512258540, 1512223200, 'Open'),
(43734095, 3, 'Hobart', 'G', 'Luxdiv Division3', '340m', 'Good', 'Showery', 0, 1512259440, 1512259440, 1512223200, 'Open'),
(43734096, 4, 'Hobart', 'G', 'Barry Heawood Division1', '599m', 'Good', 'Showery', 0, 1512260520, 1512260520, 1512223200, 'Open'),
(43734097, 5, 'Hobart', 'G', 'O\'driscoll Coaches Division1', '461m', 'Good', 'Showery', 0, 1512261840, 1512261840, 1512223200, 'Open'),
(43734098, 6, 'Hobart', 'G', 'Hobart Thousand Prelude Noms', '461m', 'Good', 'Showery', 0, 1512263280, 1512263280, 1512223200, 'Open'),
(43805945, 1, 'Bunbury', 'T', 'Ford And Doonan Mdn Plate', '1690m', 'Good', 'Fine', 0, 1512273900, 1512273900, 1512223200, 'Open'),
(43842653, 5, 'Avondale', 'T', 'Gcs Logistics Mdn', '1400m', 'Dead', 'Fine', 0, 1512234120, 1512234120, 1512223200, 'Open'),
(43884408, 6, 'Woodbine', 'T', 'Race 6', '1700m', 'Tapeta', 'Fine', 0, 1512234600, 1512234600, 1512223200, 'Open'),
(43841201, 1, 'Scone', 'T', 'Kia Ora Mdn Plate', '900m', 'Good', 'Fine', 0, 1512270900, 1512270900, 1512223200, 'Open'),
(43842654, 6, 'Avondale', 'T', 'West Brook Wines Mdn', '1400m', 'Dead', 'Fine', 0, 1512272220, 1512272220, 1512223200, 'Open'),
(43884409, 7, 'Woodbine', 'T', 'Race 7', '1700m', 'Tapeta', 'Fine', 0, 1512272340, 1512272340, 1512223200, 'Open'),
(43930196, 8, 'Northfield Park', 'H', 'Pace (Nw $5,000 L5s) Ms', '1609m', 'Fast', 'Clear', 0, 1512269460, 1512269460, 1512223200, 'Open'),
(43804552, 1, 'Redcliffe', 'H', 'Five Star Horse Transport 3Yo Pace', '1660m', 'Good', 'Showery', 0, 1512270360, 1512270360, 1512223200, 'Open'),
(43930197, 9, 'Northfield Park', 'H', 'Trot (Nw $4,050 L5s) Ms', '1609m', 'Fast', 'Clear', 0, 1512234660, 1512234660, 1512223200, 'Open'),
(43804544, 1, 'Maryborough', 'H', 'Maryborough District Health Service \\/ Louise Hanby D\'wynn Real...', '1690m', 'Good', 'Fine', 0, 1512271560, 1512271560, 1512223200, 'Open'),
(43930198, 10, 'Northfield Park', 'H', 'Pace (Nw $4,000 L5s) Ms', '1609m', 'Fast', 'Clear', 0, 1512271980, 1512271980, 1512223200, 'Open'),
(43804553, 2, 'Redcliffe', 'H', 'Comfort Inn Northgate Pace', '1660m', 'Good', 'Showery', 0, 1512272520, 1512272520, 1512223200, 'Open');

-- --------------------------------------------------------

--
-- Table structure for table `runner`
--

CREATE TABLE `runner` (
  `id` int(16) NOT NULL,
  `event_id` int(16) NOT NULL,
  `name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `jockey_name` varchar(64) CHARACTER SET utf8 NOT NULL,
  `weight` int(4) NOT NULL,
  `position` int(1) NOT NULL,
  `created_at` int(16) NOT NULL DEFAULT '0',
  `status` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `runner`
--

INSERT INTO `runner` (`id`, `event_id`, `name`, `jockey_name`, `weight`, `position`, `created_at`, `status`) VALUES
(1, 43842653, 'CODE', 'KIM ERIKSSON', 60, 1, 0, 1),
(2, 43842653, 'MR PLANNER', 'DAN ROCKLINGER', 60, 2, 0, 1),
(3, 43842653, 'COSMO FRAZER', 'TOBIAS J GUSTAFSSON', 50, 3, 0, 1),
(4, 43842653, 'ALL STAR MAN\r\n', 'MORGAN IVARSSON', 50, 4, 0, 1),
(5, 43884408, 'LIVTRASIR\r\n', 'ANNA ISABELLE KARLSS', 65, 1, 0, 1),
(6, 43884408, 'WIND KNIGHT', 'MATS GUNNARSSON', 65, 2, 0, 1),
(7, 43884408, 'FRISCO RUNNER\r\n', 'CARL JOHAN JEPSON', 55, 3, 0, 1),
(8, 43884408, 'QUICK C.D.', 'JIMMI EHLERS', 66, 4, 0, 1),
(9, 43734093, 'TAILGATE\r\n', 'KAJ WIDELL', 44, 1, 0, 1),
(10, 43734093, 'VIKENS PRINCE', 'MAGNUS JAKOBSSON', 55, 2, 0, 1),
(11, 43734093, 'REAL DOC\r\n', 'DANNE JANSSON', 88, 3, 0, 1),
(12, 43734093, 'HOPE OF JOY', 'JORMA KONTIO', 77, 4, 0, 1),
(13, 43734094, 'NOSIGNATALL\r\n', 'TOBIAS MODIG', 77, 1, 0, 1),
(14, 43734094, 'MIGHTINESS', 'ANDERS GOSTASSON', 88, 2, 0, 1),
(15, 43734094, 'SUSU', 'MICAEL LINDBLOM', 99, 3, 0, 1),
(16, 43734094, 'LJUSTEROS LOVE', 'MAGNUS S KARLSSON', 88, 4, 0, 1),
(17, 43734095, 'APPLE ROSE', 'CARL JOHAN JEPSON', 66, 1, 0, 1),
(18, 43734095, 'CHARLOCK ALMA', 'MAGNUS JAKOBSSON', 77, 2, 0, 1),
(19, 43734095, 'TRITOLINA F.', 'JAN-ERIK LUNDKVIST', 88, 3, 0, 1),
(20, 43734095, 'SHUTTER ISLAND\r\n', 'MATS GUNNARSSON', 99, 4, 0, 1),
(21, 43734096, 'CONCETTA', 'MARCUS HULTMAN', 77, 1, 0, 1),
(22, 43734096, 'MAY GRACE', 'MARIA TORNQVIST', 111, 2, 0, 1),
(23, 43734096, 'LIVI LIMIT\r\n', 'PER FROMELL', 77, 3, 0, 1),
(24, 43734096, 'SERIOUS SISTER', 'JORMA KONTIO', 66, 4, 0, 1),
(25, 43734097, 'REARCROSS', 'S LINLEY', 67, 1, 0, 1),
(26, 43734097, 'MALBAY DUCHESS', 'P MILLER', 68, 2, 0, 1),
(27, 43734097, 'SHAUNAS VISION ', 'A J MCNICHOLAS', 78, 3, 0, 1),
(28, 43734097, 'GLENBURN ANGEL', 'G STRIKE', 67, 4, 0, 1),
(29, 43734098, 'RYECROFT JONAH ', 'M C MURRAY', 65, 1, 0, 1),
(30, 43734098, 'COPPICE AMY', 'S LINLEY', 67, 2, 0, 1),
(31, 43734098, 'JACKS CHAMP ', 'E Y BELL', 56, 3, 0, 1),
(32, 43734098, 'LINTON LITTLEMIX', 'J A TEAL', 67, 4, 0, 1),
(33, 43930196, 'BALLYMAC RIO', 'G A STARK', 67, 1, 0, 1),
(34, 43930196, 'AUTUMN MARINA ', 'J A TEAL', 78, 2, 0, 1),
(35, 43930196, 'MY GIRL LAVA', 'C JOHANNSEN', 56, 3, 0, 1),
(36, 43930196, 'RIVIERA CRUZ', 'R BRITTON', 67, 4, 0, 1),
(37, 43804552, 'SHARE', 'A CAMPBELL', 67, 1, 0, 1),
(38, 43804552, 'CROWN PRINCESS', 'W VASSALLO', 45, 2, 0, 1),
(39, 43804552, 'LITTLE TOBY', 'J BRITTON', 56, 3, 0, 1),
(40, 43804552, 'CRACKERJACK KACK ', 'C CAPUANO', 67, 4, 0, 1),
(41, 43930197, 'CHATTY GARRY', 'K PITT', 67, 1, 0, 1),
(42, 43930197, 'BROOKLYN SKYE', 'C HUGHES', 56, 2, 0, 1),
(43, 43930197, 'CHALLICO', 'HARRY COBDEN', 56, 3, 0, 1),
(44, 43930197, 'BIG TIME FRANK', 'THOMAS CHEESMAN', 67, 4, 0, 1),
(45, 43841201, 'TRIPLE CHIEF', 'L TREADWELL', 77, 1, 0, 1),
(46, 43841201, 'JUSTICE KNIGHT', 'NICO DE BOINVILLE', 78, 2, 0, 1),
(47, 43841201, 'DUNN\'S RIVER', 'SEAN BOWEN', 56, 3, 0, 1),
(48, 43841201, 'PRINCESS ROANIA', 'MR C BARBER', 78, 4, 0, 1),
(49, 43804544, 'ARISTOCLES ', 'DAVID NOONAN', 78, 1, 0, 1),
(50, 43804544, 'ICE KONIG ', 'BRODIE HAMPSON', 67, 2, 0, 1),
(51, 43804544, 'THEGIRLFROMMILAN', 'SEAN BOWEN', 56, 3, 0, 1),
(52, 43804544, 'THAT\'S GONNA STING', 'MR G TREACY', 67, 4, 0, 1),
(53, 43930198, 'TAKE A BREAK', 'JAMES BOWEN', 56, 1, 0, 1),
(54, 43930198, 'CABERNET D\'ALENE', 'LIZZIE KELLY', 67, 2, 0, 1),
(55, 43930198, 'AMBRE DES MARAIS', 'N D FEHILY', 55, 3, 0, 1),
(56, 43930198, 'MONDAY CLUB', 'M D GRANT', 68, 4, 0, 1),
(57, 43842654, 'MIGHTY MISSILE', 'MITCHELL BASTYAN', 66, 1, 0, 1),
(58, 43842654, 'I\'LL BE YOUR CLOWN ', 'MR G TREACY', 67, 2, 0, 1),
(59, 43842654, 'BERRY DE CARJAC ', 'CONOR RING', 77, 3, 0, 1),
(60, 43842654, 'GOAL ', 'BRODIE HAMPSON', 78, 4, 0, 1),
(61, 43884409, 'FAHEEM', 'M GOLDSTEIN', 57, 1, 0, 1),
(62, 43884409, 'SERVEONTIME', 'PAUL O\'BRIEN', 67, 2, 0, 1),
(63, 43884409, 'COCOLEGUSTACHOCHO ', 'A LECORDIER', 67, 3, 0, 1),
(64, 43884409, 'MY POTTINGUER', 'B PORIER', 76, 4, 0, 1),
(65, 43804553, 'KAPELOI ', 'T GUEGUEN', 67, 1, 0, 1),
(66, 43804553, 'SPIRIT SUN', 'J PLOUGANOU', 56, 2, 0, 1),
(67, 43804553, 'EPOPEE DU LARGE', 'C CAYEUX', 77, 3, 0, 1),
(68, 43804553, 'WHETSTONE', 'B LESTRADE', 67, 4, 0, 1),
(69, 43805945, 'AFTER RAIN', 'R A DOYLE', 66, 1, 0, 1),
(70, 43805945, 'BALBIR DU MATHAN', 'B J FOLEY', 78, 2, 0, 1),
(71, 43805945, 'BRIDIES BOY ', 'A MCCURTIN', 77, 3, 0, 1),
(72, 43805945, 'FIDDLERS BOW', 'D N RUSSELL', 78, 4, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`EventID`);

--
-- Indexes for table `runner`
--
ALTER TABLE `runner`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `EventID` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43930199;
--
-- AUTO_INCREMENT for table `runner`
--
ALTER TABLE `runner`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
