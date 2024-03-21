-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2024 at 10:26 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cakeshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `id`) VALUES
('Andreas', '27', 1),
('Vincent', '14', 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_id`
--

CREATE TABLE `admin_id` (
  `username` varchar(100) NOT NULL,
  `id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_id`
--

INSERT INTO `admin_id` (`username`, `id`) VALUES
('Andreas', 1),
('Vincent', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `productname` varchar(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `sid` int(100) NOT NULL,
  `customername` varchar(200) NOT NULL,
  `mobilenumber` bigint(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`productname`, `quantity`, `sid`, `customername`, `mobilenumber`) VALUES
('Kue Bika', 12, 1, 'Budi', 82113131313),
('Kue Coro', 1, 2, 'Jane', 89441413131),
('Kue Apel', 15, 3, 'Kelly', 899284421),
('Kue Soes', 1, 8, 'Halim', 39850380989134),
('Pie', 20, 10, 'Pan', 17472359578),
('Kue Putu', 1, 14, 'Leon', 13892022611),
('Pie', 3, 23, 'Kim', 134141413413),
('Kue Apel', 5, 24, 'Tom', 290500941411),
('Sorabi', 1, 26, 'Kelly', 98839242),
('Kue Coro', 3, 27, 'Catherine', 436436336363),
('Bika Ambon', 3, 43, 'Terry', 807108734001),
('Roti Goreng', 12, 55, 'Kudjang', 78284812312),
('Sorabi', 1, 67, 'Leo', 983883848),
('Kue Apem', 1, 76, 'Matt', 98842991932),
('Sifon', 12, 98, 'Jake', 9823727813123),
('Kue Vitnoven', 1, 141, 'Pom Mom', 134141),
('Kue Apel', 2, 365, 'Andreas Matthew', 491384014114),
('Kue Lapis', 1, 421, 'Jane', 34111113),
('Brownies', 2, 1942, 'Jack Michklesen', 91801008130123),
('Red Velvet', 1, 2314, 'Muhammad Adris', 241311414),
('Kue Apel', 1, 2441, 'Sam', 12423131),
('Kue Bika', 1, 4231, 'Jack', 23414121),
('Kue Apel', 2, 6442, 'Alyssa', 1413234141),
('Kue Putu', 1, 33121, 'James', 4141412312),
('Roti Goreng', 3, 112232, 'Yuli Wanto', 141132414),
('Pie', 2, 71134212, 'Halim', 64292023);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(50) NOT NULL,
  `productname` varchar(200) NOT NULL,
  `price` int(200) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `flavour` varchar(100) NOT NULL,
  `quality` varchar(100) NOT NULL,
  `descriptions` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `productname`, `price`, `colour`, `flavour`, `quality`, `descriptions`) VALUES
(1, 'Kue Apem', 25000, 'Pink', 'Sweet', 'Good', 'Kue yang terbuat dari tepung beras yang didiamkan semalam dengan mencampurkan telur, santan, gula dan tape serta sedikit garam kemudian dibakar atau dikukus..'),
(2, 'Kue Cucur', 35000, 'Brown', 'Sweet', 'Good', 'Makanan penutup yang terbuat dari tepung beras goreng dicampur gula aren ini kental di tengah dan tipis di tepinya.'),
(3, 'Kue Putu', 25000, 'Green', 'Sweet', 'Excellent', 'Disebut suji dan berwarna hijau dengan daun pandan, diisi dengan gula aren, dikukus dalam tabung bambu (sesuai namanya), dan disajikan dengan kelapa kering..'),
(4, 'Kue Nastar', 20000, 'Yellow', 'Sweet', 'Good', 'Kue kering dari adonan tepung terigu, mentega, dan telur yang diisi dengan selai nanas atau cokelat, dan rasa lainnya..'),
(5, 'Kue Mangkok', 15000, 'Pink', 'Sweet', 'Bad', 'penganan yang terbuat dari tepung beras, tepung terigu dan tapai singkong yang dimasak dengan cara dikukus dan berbentuk seperti mangkuk dan mekar pada ujungnya..'),
(6, 'Bika Ambon', 20000, 'Yellow', 'Sweet', 'Good', 'penganan yang terbuat dari tepung beras, tepung terigu dan tapai singkong yang dimasak dengan cara dikukus dan berbentuk seperti mangkuk dan mekar pada ujungnya..'),
(7, 'Kue Kastengel', 20000, 'Yellow', 'Savory', 'Bad', 'Kastengel atau kue keju adalah snack keju Belanda berbentuk stik.'),
(8, 'Kue Kacang', 20000, 'Yellow', 'Sweet', 'Medium', ' kue kering yang berbahan dasar kacang tanah'),
(9, 'Kue Vitnoven', 20000, 'Blue', 'Sweet', 'Good', ''),
(10, 'Kue Apel', 25000, 'Yellow', 'Sweet', 'Excellent', 'Sebuah hidangan penutup populer yang diproduksi dengan bahan utama apel.'),
(11, 'Kue Bika', 25000, 'Black', 'Bitter', 'Good', ''),
(12, 'Brownies', 25000, 'Brown', 'Sweet', 'Good', 'makanan yang dipanggang atau dikukus yang berbentuk persegi, datar atau bar dikembangkan di Amerika Serikat pada akhir abad ke-19 dan dipopulerkan di Amerika Serikat dan Kanada pada paruh pertama abad ke-20.'),
(13, 'Roti Bakar', 20000, 'Brown', 'Crispy', 'Good', 'Roti lapis khas Indonesia yang dibakar, yang terdiri dari dua potong roti dan isian, seperti gula, margarin, mentega, meses, selai coklat, keju, selai kacang, selai stroberi, serikaya atau nutella.'),
(14, 'Roti Tawar', 15000, 'White', 'Plain', 'Good', 'Roti Biasa'),
(15, 'Roti Goreng', 20000, 'Black', 'Crispy', 'Bad', 'Roti Biasa Di Goreng'),
(16, 'Pie', 20000, 'Yellow', 'Sweet', 'Excellent', 'Hidangan panggang yang biasanya terbuat dari casing adonan kue yang berisi isian berbagai bahan manis atau gurih.'),
(17, 'Sorabi', 10000, 'White', 'Sweet', 'Excellent', 'Makanan ringan yang berasal dari Solo, Jawa Tengah. Makanan ini terbuat dari tepung beras yang dicampur dengan santan dan digoreng di atas arang mirip pancake ( roti loyang ) atau pancake.'),
(18, 'Kue Lapis', 5000, 'Rainbow', 'Sweet', 'Good', ''),
(19, 'Kue Soes', 5000, 'Yellow', 'Sweet', 'Good', ''),
(20, 'Sifon', 15000, 'Yellow', 'Sweet', 'Good', ''),
(21, 'Red Velvet', 10000, 'Red', 'Sweet', 'Bad', 'Kue beludru merah secara tradisional adalah kue lapis cokelat merah, merah-cokelat, merah tua, atau merah tua, dilapisi dengan lapisan gula cerpelai.'),
(22, 'Kue Coro', 15000, 'Green', 'Sweet', 'Good', ''),
(23, 'Dadar Gulung', 15000, 'Green', 'Sweet', 'Good', ''),
(24, 'Donat Kentang', 5000, 'Brown', 'Plain', 'Good', ''),
(25, 'Kue Molen', 15000, 'Kuning', 'Sweet', 'Good', ''),
(26, 'Chocolate Cake', 30000, 'Brown', 'Sweet', 'Good', '');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sid` int(100) NOT NULL,
  `cname` varchar(200) NOT NULL,
  `cmobile` bigint(250) NOT NULL,
  `pname` varchar(200) NOT NULL,
  `quantity` int(200) NOT NULL,
  `price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sid`, `cname`, `cmobile`, `pname`, `quantity`, `price`) VALUES
(100, 'Declan Shaw', 840536444, 'Kue Coro', 1, 15000),
(102, 'Jake Wazawoski', 6902846092, 'Pie', 3, 60000),
(199, 'Kevin Hart', 87733312123, 'Pie', 2, 40000),
(456, 'Vincent Wijaya', 88414131332, 'Kue Molen', 1, 15000),
(504, 'Mike LongJohn', 423214233, 'Sorabi', 4, 40000),
(832, 'Kelly Melly', 423214233, 'Sifon', 5, 75000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sid` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sid`, `username`, `password`) VALUES
(1, 'Budi', '10'),
(2, 'Ahmad', '11'),
(3, 'Jayy', '13'),
(4, 'Ken', '14');

-- --------------------------------------------------------

--
-- Table structure for table `userproduct`
--

CREATE TABLE `userproduct` (
  `productname` varchar(200) NOT NULL,
  `price` int(200) NOT NULL,
  `colour` varchar(100) NOT NULL,
  `flavour` varchar(100) NOT NULL,
  `quality` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userproduct`
--

INSERT INTO `userproduct` (`productname`, `price`, `colour`, `flavour`, `quality`, `description`) VALUES
('Bika Ambon', 20000, 'Yellow', 'Sweet', 'Good', 'penganan yang terbuat dari tepung beras, tepung terigu dan tapai singkong yang dimasak dengan cara dikukus dan berbentuk seperti mangkuk dan mekar pada ujungnya..'),
('Brownies', 25000, 'Brown', 'Sweet', 'Good', 'makanan yang dipanggang atau dikukus yang berbentuk persegi, datar atau bar dikembangkan di Amerika Serikat pada akhir abad ke-19 dan dipopulerkan di Amerika Serikat dan Kanada pada paruh pertama abad ke-20.'),
('Dadar Gulung', 15000, 'Green', 'Sweet', 'Good', ''),
('Donat Kentang', 5000, 'Brown', 'Plain', 'Good', ''),
('Kue Apel', 25000, 'Yellow', 'Sweet', 'Excellent', 'Sebuah hidangan penutup populer yang diproduksi dengan bahan utama apel.'),
('Kue Apem', 25000, 'Pink', 'Sweet', 'Good', 'Kue yang terbuat dari tepung beras yang didiamkan semalam dengan mencampurkan telur, santan, gula dan tape serta sedikit garam kemudian dibakar atau dikukus..'),
('Kue Bika', 25000, 'Black', 'Bitter', 'Good', ''),
('Kue Coro', 15000, 'Green', 'Sweet', 'Good', ''),
('Kue Cucur', 35000, 'Brown', 'Sweet', 'Good', 'Makanan penutup yang terbuat dari tepung beras goreng dicampur gula aren ini kental di tengah dan tipis di tepinya.'),
('Kue Kacang', 20000, 'Yellow', 'Sweet', 'Medium', ' kue kering yang berbahan dasar kacang tanah'),
('Kue Kastengel', 20000, 'Yellow', 'Savory', 'Bad', 'Kastengel atau kue keju adalah snack keju Belanda berbentuk stik.'),
('Kue Lapis', 5000, 'Rainbow', 'Sweet', 'Good', ''),
('Kue Mangkok', 15000, 'Pink', 'Sweet', 'Bad', 'penganan yang terbuat dari tepung beras, tepung terigu dan tapai singkong yang dimasak dengan cara dikukus dan berbentuk seperti mangkuk dan mekar pada ujungnya..'),
('Kue Nastar', 20000, 'Yellow', 'Sweet', 'Good', 'Kue kering dari adonan tepung terigu, mentega, dan telur yang diisi dengan selai nanas atau cokelat, dan rasa lainnya..'),
('Kue Putu', 25000, 'Green', 'Sweet', 'Excellent', 'Disebut suji dan berwarna hijau dengan daun pandan, diisi dengan gula aren, dikukus dalam tabung bambu (sesuai namanya), dan disajikan dengan kelapa kering..'),
('Kue Soes', 5000, 'Yellow', 'Sweet', 'Good', ''),
('Kue Vitnoven', 20000, 'Blue', 'Sweet', 'Good', ''),
('Pie', 20000, 'Yellow', 'Sweet', 'Excellent', 'Hidangan panggang yang biasanya terbuat dari casing adonan kue yang berisi isian berbagai bahan manis atau gurih.'),
('Red Velvet', 10000, 'Red', 'Sweet', 'Bad', 'Kue beludru merah secara tradisional adalah kue lapis cokelat merah, merah-cokelat, merah tua, atau merah tua, dilapisi dengan lapisan gula cerpelai.'),
('Roti Bakar', 20000, 'Brown', 'Crispy', 'Good', 'Roti lapis khas Indonesia yang dibakar, yang terdiri dari dua potong roti dan isian, seperti gula, margarin, mentega, meses, selai coklat, keju, selai kacang, selai stroberi, serikaya atau nutella.'),
('Roti Goreng', 20000, 'Black', 'Crispy', 'Bad', 'Roti Biasa Di Goreng'),
('Roti Tawar', 15000, 'White', 'Plain', 'Good', 'Roti Biasa'),
('Sifon', 15000, 'Yellow', 'Sweet', 'Good', ''),
('Sorabi', 10000, 'White', 'Sweet', 'Excellent', 'Makanan ringan yang berasal dari Solo, Jawa Tengah. Makanan ini terbuat dari tepung beras yang dicampur dengan santan dan digoreng di atas arang mirip pancake ( roti loyang ) atau pancake.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_id`
--
ALTER TABLE `admin_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `productname` (`productname`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `userproduct`
--
ALTER TABLE `userproduct`
  ADD PRIMARY KEY (`productname`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
