-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 03, 2020 at 12:01 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `miniApp`
--

-- --------------------------------------------------------

--
-- Table structure for table `car_info`
--

CREATE TABLE `car_info` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `about` text NOT NULL,
  `image` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `car_info`
--

INSERT INTO `car_info` (`id`, `name`, `about`, `image`) VALUES
(1, 'Clubman', 'The MINI Clubman ushers in a new era of sophistication with comfortable seating for five, iconic split rear doors that open with a foot-activated sensor, and a top-shelf interior outfitted with premium materials and cutting-edge technology. Announcing the 2021 MINI Clubman. ... find the mini clubman that suits your style.', 'club.jpg'),
(2, 'Compatible ', 'The EPA definition of a subcompact is a passenger car with a combined interior and cargo volume of between 85–99 cubic feet (2,410–2,800 L). ... The prevalence of small cars in the United States increased in the 1960s due to increased imports of cars from Europe and Japan.', 'con.jpg'),
(3, 'Double doors', 'In 2019, J.D. Power deemed the Mini Cooper as its most dependable compact car and ranked the Mini brand fourth overall for dependability. Four years prior, J.D. Power ranked the Mini as 28th out of 32 for reliability. J.D. Power\'s rankings indicate that the Mini Cooper\'s quality has significantly improved.', 'model.jpg'),
(4, 'Countryman', 'Yes, the Mini Countryman is a good SUV. It offers some potent powertrains, gets decent gas mileage, and is more enjoyable to drive than most other small crossovers. Inside, you\'ll find luxury vehicle levels of quality and supportive seats', 'man.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car_info`
--
ALTER TABLE `car_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car_info`
--
ALTER TABLE `car_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
