SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE TABLE `booking` (
  `id` int(10) NOT NULL,
  `act_name` char(20) NOT NULL,
  `range` char(20) NOT NULL,
  `location` char(30) NOT NULL,
  `date` int(20) NOT NULL,
  `ad_count` int(15) NOT NULL,
  `ch_count` int(20) NOT NULL,
  `name` char(20) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `booking` (`id`, `act_name`, `range`, `location`, `date`, `ad_count`, `ch_count`,`name`,`phone`,`email`) VALUES
(1, 'kayaking', 'shore level', 'Goa', '10.12.2023', 2, 0, 'Harry', 9842105630, 'harry2023@hotmail.com'),
(2, 'sailing', 'shore level', 'Mauritius', '10.12.2023', 2, 0, 'Alice', 9876543210, 'alice.maldives@gmail.com'),
(3, 'Advanced Scuba diving', 'deep level', 'Portugal', '11.12.2023', 1, 0, 'Bob', 9988776655, 'bob.swissadventures@gmail.com'),
(4, 'snorkeling', 'shallow level', 'Thailand', '12.12.2023', 2, 1, 'Eve', 9871239870, 'eve.hawaiiexplorer@gmail.com'),
(5, 'Guided reef tour', 'shallow level', 'Carrebian island', '12.12.2023', 4, 0, 'Charlie', 9871239871, 'charlie.raftingadventures@gmail.com'),
(6, 'shark cage diving', 'middle level', 'Hawaii', '13.12.2023', 1, 0, 'Grace', 9871239872, 'grace.climbyosemite@gmail.com'),
(7, 'mantra ray snorkle', 'middle level', 'greece', '13.12.2023', 2, 0, 'David', 9871239873, 'david.exploreoregon@gmail.com'),
(8, 'parasailing', 'shore level', 'Goa', '14.12.2023', 1, 0, 'Frank', 9871239874, 'frank.baliadventures@gmail.com'),
(9, 'volcano tour', 'deep level', 'Portugal', '14.12.2023', 2, 0, 'Sarah', 9871239875, 'sarah.greatbarrierreef@gmail.com'),
(10, 'ruins exploration', 'deep level', 'Thailand', '15.12.2023', 1, 0, 'Michael', 9871239876, 'michael.skydivenz@gmail.com'),
(11, 'Shipwrek tour', 'deep level', 'Australia', '15.12.2023', 2, 0, 'Olivia', 9871239877, 'olivia.trekkingnepal@gmail.com');

CREATE TABLE `customer` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `city` varchar(10) NOT NULL,
  `phone` bigint(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `customer` (`id`, `fname`, `password`, `email`, `city`, `phone`) VALUES
(34, 'admin', 'Adm12345', 'admintms@gmail.com', 'Honnavar', 8971046276),
(51, 'Ganesh', 'Gane1234', 'ganeshravinaik2001@gmail.com', 'Honnavar', 8971046276),
(72, 'Aditya', 'Adi12389', 'adityag45@gmail.com', 'Manglore', 8574968283),
(73, 'Gajanan', 'GAjju700', 'gajabhat@gmail.com', 'Kumta', 7984768581),
(74, 'Kiran', 'AJkiran1', 'kiranaj56@gmail.com', 'Honnavar', 7586949199),
(75, 'Prasad', 'Pra23444', 'prasad24@gmail.com', 'Honnavar', 7485961256),
(76, 'Mahesh', 'Mahi1233', 'maheshmm@gmail.com', 'Kumta', 9978488656),
(78, 'Nishchay', 'Nishi789', 'nishibhatt234@gmail.com', 'Udupi', 7485961236);

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `feedbk` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `feedback` (`id`, `name`, `email`, `feedbk`) VALUES
(1, 'joy', 'joy123@gmail.com', 'good website'),
(2, 'amar', 'amar56@gmail.com', 'nice website'),
(3, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(4, 'adam', 'adamgray@gmail.com', 'your website looks good and nice user interface'),
(5, 'arjun', 'arjun45@gmal.com', 'good website'),
(6, 'Hitesh', 'hitesh43jk@gmai.com', 'its good website nice user interface'),
(7, 'kiran', 'kiran35@gmail.com', 'this is a good website');

CREATE TABLE `login` (
  `user` varchar(10) NOT NULL,
  `pass` varchar(10) NOT NULL,
  `date_time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `login` (`user`, `pass`, `date_time`) VALUES
('adii', '784596', '2021-01-20 05:56:33am'),
('anusha', '45789656', '2021-01-20 06:06:24am'),
('adii', '123456', '2021-01-20 08:15:18am'),
('gaja', '12356', '2021-01-22 10:13:22am'),
('gaja', '123456', '2021-01-24 06:40:56am'),
('nishchay', 'nishi123', '2021-01-24 07:09:22am'),
('mahesh', '12345mn', '2021-01-24 07:10:00am'),
('admin', 'ad123', '2021-01-24 07:10:24am'),
('admin', 'ad123', '2021-01-25 05:54:18am'),
('admin', 'ad123', '2021-01-25 06:07:10am'),
('admin', 'ad123', '2021-01-25 06:09:19am'),
('admin', 'ad123', '2021-01-27 01:30:47pm'),
('admin', 'ad123', '2021-01-29 09:23:58am'),
('Gajanan', 'GAjju700', '2021-01-30 06:13:16pm'),
('Ganesh', 'Gane1234', '2021-01-30 06:24:15pm'),
('admin', 'ad123', '2021-06-08 04:11:53pm'),
('admin', 'ad123', '2021-09-19 03:24:26pm'),
('admin', 'ad123', '2021-09-19 04:41:06pm');

CREATE TABLE `places` (
  `pid` int(10) NOT NULL,
  `pname` varchar(20) NOT NULL,
  `pcity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `places` (`pid`, `pname`, `pcity`) VALUES
(1, 'Tajmahal', 'Agra'),
(2, 'Beach', 'Goa'),
(3, 'India Gate', 'Delhi'),
(4, 'Kerala Beach', 'Kerala'),
(5, 'Mysore Palace', 'Mysore'),
(6, 'Ladakh', 'Ladakh India');

CREATE TABLE `travel_agent` (
  `aid` int(10) NOT NULL,
  `afname` varchar(20) NOT NULL,
  `aemail` varchar(30) NOT NULL,
  `aphone` int(15) NOT NULL,
  `acity` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `travel_agent` (`aid`, `afname`, `aemail`, `aphone`, `acity`) VALUES
(1, 'amar', 'amarraj123@gmail.com', 85749646, 'Mandya'),
(2, 'akhil', 'akhil23@gmai.com', 45968678, 'Manglore'),
(3, 'kiran', 'kiru34@gmail.com', 78969665, 'Mysore');

ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
 
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `hotels`
  ADD PRIMARY KEY (`hid`);

ALTER TABLE `places`
  ADD PRIMARY KEY (`pid`);

ALTER TABLE `travel_agent`
  ADD PRIMARY KEY (`aid`);

ALTER TABLE `booking`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `customer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

ALTER TABLE `hotels`
  MODIFY `hid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `places`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `travel_agent`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
