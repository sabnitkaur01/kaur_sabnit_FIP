-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 06, 2020 at 10:07 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Final`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_fip`
--

CREATE TABLE `tbl_fip` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `about` text NOT NULL,
  `image` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_fip`
--

INSERT INTO `tbl_fip` (`id`, `name`, `about`, `image`) VALUES
(1, 'Brand Mashup ', 'When brands collaborate with each other to launch new projects and products known as brand mashups synergies are created that effectively leverage the unique strengths of each brand. This is an effective means to drive shopper excitement. For this assignment i mashup the \"Duracell battery\" with \"Cowbell beer\". I chose typography of duracell but layout and template was cowbell beer.A mashup is a web application that uses content from more than one source to create a single new service displayed in a single graphical interface. For example, you could combine the addresses and photo- graphs of your library branches with a Google map to create a map mashup', 'purple.jpg'),
(2, 'Garuda Responders ', 'Garuda Responder is an end-to-end Aerial Emergency Medical Device Delivery System that combines the best of class Beyond-Visual-Line-Of-Sight (BVLOS) unmanned aircraft control system with a light weight time critical medical equipment, such as an AED. At a time when numerous beneficial applications of drones are being trialled, these ... Garuda Responder is now live! ... the continued safe operation of drones in our tight and dense airspace will rely on regulations, technology and education.Unmanned aerial vehicles, or drones, provide energy operators with a ... image, the drones provide an attractive alternative to more conventional monitoring operations. ... ING will mount a FLIR A6700sc infrared camera to its Responder drones. ... Bombardier faces UK fraud investigation over plane contracts for Garuda.\r\n', 'garuda.png'),
(3, 'Double page magazine', 'Louise Fili is an Italian-American graphic designer recognized for her elegant use of typography and timeless quality in her design. Her work often draws on inspiration from her love of Italy, Modernism, and European Art Deco styles. Considered a leader in the postmodern return to historical styles in book jacket design, Fili explores historic typography combined with modern colors and compositions.\r\nBeginning her career in the publishing industry, she became known for her strong typographic approach, designing nearly 2,000 book jackets during her time with Random House. \r\n\r\n\r\n\r\n', 'pizza.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_fip`
--
ALTER TABLE `tbl_fip`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_fip`
--
ALTER TABLE `tbl_fip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
