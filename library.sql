-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 14, 2024 at 01:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `admin_id` varchar(45) NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`admin_id`, `username`, `password`) VALUES
('admin01', 'arwindasalsa', 'qwerty'),
('admin02', 'agusard', 'qwerty'),
('admin03', 'hussainabdi', 'qwerty'),
('admin04', 'mirashanti', 'qwerty'),
('admin05', 'nasywaa', 'qwerty');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `book_id` char(10) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `book_title` varchar(50) DEFAULT NULL,
  `book_author` varchar(225) DEFAULT NULL,
  `book_publication_year` varchar(50) DEFAULT NULL,
  `genre` varchar(50) NOT NULL,
  `book_quantity` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`book_id`, `image`, `book_title`, `book_author`, `book_publication_year`, `genre`, `book_quantity`) VALUES
('01', '0', 'A Promised Land Barack Obama', 'Barack Obama', '2020', 'Autobiografi', '5'),
('02', '0', 'Detektif hantu', 'Risa Saraswati', '2023', '', '5'),
('03', '0', 'Kisah Tanah Jawa', 'Bonaventura D. Genta, Mada Zidan (Mbah KJ, Hari Kurniawan.', '2018', '', '8'),
('04', '0', 'KKN di Desa Penari', 'SimpleMan', '2019', '', '12'),
('05', '0', 'Rich Dad, Poor Dad', 'Robert Kiyosaki dan Sharon Lechter', '1997', '', '15'),
('06', '0', 'Sebuah Seni untuk Bersikap Bodo Amat', 'Mark Manson', '2018', '', '12'),
('07', '0', 'spyxfamily2', 'Tatsuya Endō', '2019', '', '5'),
('08', '0', 'spyxfamily8', 'Tatsuya Endō', '2020', '', '5'),
('09', '0', 'The Lean Startup', 'Ries, Eric (penulis) Reni Indardini (penerjemah) Yusa Tripeni (penyunting', '2022', '', '17'),
('10', '0', 'The Millionaire Fast Lane', 'MJ DeMarco', '2011', '', '15'),
('11', '0', 'The Psychology Of Money', 'Housel, Morgan ', '2020', '', '16'),
('12', '0', 'The Millionaire Next Door', 'Thomas J. Stanley dan William D. Danko', '1996', '', '19'),
('13', '0', 'Think and grow rich', 'Napoleon Hill', '1937', '', '10'),
('14', '0', 'How Rich People Think', 'Steve Siebold', '2019', '', '14'),
('15', '0', 'Ten Years Challenge', 'Mutriani', '2021', 'romance', '3'),
('16', '0', 'I Think I Love You', 'Cha Mirae', '2022', 'romace', '2'),
('17', '0', 'Perpustakaan Tengah Malam (The Midnight Library)', 'Matt Haig', '2020', 'Fantasy', '2'),
('18', '0', 'Wingit', 'Sara Wijayanto', '2021', 'Horor', '5'),
('19', '0', 'Minimarket', 'Sayaka Murata', '2016', 'comedy', '3'),
('20', '0', 'Laut Bercerita', 'Leila Salikha Chudori', '2017', 'Fiction', '10');

-- --------------------------------------------------------

--
-- Table structure for table `borrow`
--

CREATE TABLE `borrow` (
  `borrow_id` varchar(50) NOT NULL,
  `date` date DEFAULT NULL,
  `book_id` varchar(50) NOT NULL,
  `member_id` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` char(10) NOT NULL,
  `member_name` varchar(50) NOT NULL,
  `member_address` varchar(255) NOT NULL,
  `member_email` varchar(45) NOT NULL,
  `member_DOB` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_name`, `member_address`, `member_email`, `member_DOB`) VALUES
('01', 'Agus Adi', 'Jl. Merdeka No. 12, Jakarta', 'agusadi@example.com', '1990-01-01'),
('02', 'Budi Santoso', 'Jl. Pahlawan No. 45, Bandung', 'budisantoso@example.com', '1992-02-02'),
('03', 'Citra Wardhani', 'Jl. Diponegoro No. 7, Surabaya', 'citrawardhani@example.com', '1995-03-03'),
('04', 'Dewi Sari', 'Jl. Sudirman No. 3, Yogyakarta', 'dewisari@example.com', '1988-04-04'),
('05', 'Eko Prasetyo', 'Jl. Gajah Mada No. 6, Semarang', 'ekoprasetyo@example.com', '1991-05-05'),
('06', 'Fitriani Setiawan', 'Jl. Thamrin No. 9, Medan', 'fitrianisetiawan@example.com', '1994-06-06'),
('07', 'Gunawan Aji', 'Jl. A. Yani No. 1, Makassar', 'gunawankusuma@example.com', '1987-07-07'),
('08', 'Hesti Wijayanti', 'Jl. Hayam W No. 7, Malang', 'hestiwijayanti@example.com', '1993-08-08'),
('09', 'Indra Cahyono', 'Jl. Veteran No. 8, Denpasar', 'indracahyono@example.com', '1996-09-09'),
('10', 'Joko Susanto', 'Jl. Surya S No. 4, Bandung', 'jokosusanto@example.com', '1989-10-10'),
('11', 'Kartika Dewi', 'Jl. Asia Afrika No. 789, Jakarta', 'kartikadewi@example.com', '1992-11-11'),
('12', 'Lukman Hakim', 'Jl. Dipatiukur No. 1, Bandung', 'lukmanhakim@example.com', '1995-12-12'),
('13', 'Mega Permata', 'Jl. Ganesha No. 3, Bandung', 'megapermata@example.com', '1986-01-13'),
('14', 'Nadia Suryani', 'Jl. Pemuda No. 4, Jakarta', 'nadiasuryani@example.com', '1994-02-14'),
('15', 'Oscar Pratama', 'Jl. Asia No. 7, Surabaya', 'oscarpratama@example.com', '1987-03-15'),
('16', 'Putri Amelia', 'Jl. Teuku Umar No. 159, Medan', 'putriamelia@example.com', '1991-04-16'),
('17', 'Rahmat Hidayat', 'Jl. Sudirman No. 3, Jakarta', 'rahmathidayat@example.com', '1993-05-17'),
('18', 'Sari Purnama', 'Jl. Imam Bonjol No. 852, Jakarta', 'saripurnama@example.com', '1997-06-18'),
('19', 'Tegar Pramudya', 'Jl. Gatot No. 456, Surabaya', 'tegarpramu@example.com', '1990-07-19'),
('20', 'Ulfa W', 'Jl. Diponegoro No. 7, Bandung', 'ulfawulandari@example.com', '1996-08-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`book_id`);

--
-- Indexes for table `borrow`
--
ALTER TABLE `borrow`
  ADD PRIMARY KEY (`borrow_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
