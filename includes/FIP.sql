-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Nov 27, 2020 at 12:24 AM
-- Server version: 5.7.30
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `FIP`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_data`
--

CREATE TABLE `tbl_data` (
  `Id` int(11) NOT NULL,
  `img` varchar(100) NOT NULL,
  `title` varchar(90) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_data`
--

INSERT INTO `tbl_data` (`Id`, `img`, `title`, `Description`) VALUES
(1, '2p.png', 'Double Page Magazine', 'Simply, an article that takes up 2 pages and incorporates duplicate and photos. It is normally the \'middle\' two pages of a magazine and will as a rule highlight the principle cover star from the intro page. All in all, it is THE BIG STORY.'),
(2, 'coffee.png', 'CoffeeMate', 'David Carson (Raygun/Transworld Snowboarding/ Beach Culture) + DISPLAYFORMAT: package design (3D model(s) sourced, templates or your own unique ‘folded’ creation) + ASSETS & CONTENT: Coffee Mate was our final product'),
(3, 'friday.png', 'Black Friday', 'Owen Jones make all his designs with pattern so, I design Black Friday sale with some pattern and color combination.'),
(4, 'tim.png', 'Tim Horton ', ' Joseph Muller-Broackmann (Switzerland) +DISPLAYFORMAT: Brochure + ASSETS & CONTENT: Tim Horton was my finished product.'),
(5, 'pizza.png', 'Pizza Pizza', 'Louise Fili + DISPLAY FORMAT: Editorial Design + ASSETS & CONTENT: Pizza Pizza was finished product.'),
(6, 'D.tif', 'Cinema 4d', 'This was sportsnet stadium that i design in cinema.'),
(7, 'D3.tif', 'Cinema 4d', 'This was sportsnet stadium that i design in cinema. This is with lower angel of camera.'),
(8, 'logo.png', 'Garuda', 'Garuda Robotics Pte. Ltd. is a leading developer of enterprise-grade drone and drone data solutions for enterprises, governments, and professional drone operators.'),
(9, 'im1.jpg', 'Photography ', 'Nature photography is a wide range of photography taken outdoors and devoted to displaying natural elements such as landscapes, wildlife, plants, and close-ups of natural scenes and textures'),
(10, 'im2.jpg', 'Photography-2', 'Depth of field is the distance between the closest and farthest objects in a photo that appears acceptably sharp. Now your camera can only focus sharply at one point.'),
(11, 'im3.jpg', 'Photography-3', 'Blurry images are directional or streaky, while unfocused images are fuzzy. To achieve intentionally blurred images, photograph a moving subject and/or move the camera during an exposure.'),
(12, 'makeup.png', 'Makeup product', 'Responsible for applying makeup and prosthetics to aesthetically enhance celebrities, performers, individuals, entertainers, or for special events such as weddings or dates.'),
(13, 'makeup3.png', 'Makeup product 2', 'Here are some adjectives for cosmetics: little give-away, beautiful, subtle, provocative, off-beat, indecently expensive, bold, exciting, pricey japanese, favorite and famous, other tedious, agreeable and elegant, other caustic, give-away, on-the-go and various popular.'),
(14, 'purple.jpg', 'Duracell beer', 'Combination of Duracell battery and Cowbell beer = product duracell beer'),
(15, 'red.jpg', 'Red Duracell beer', 'Combination of Duracell battery and Cowbell beer = product duracell beer with strawberry flavour'),
(16, 'yellow.jpg', 'yellow Duracell beer', 'Combination of Duracell battery and Cowbell beer = product duracell beer with banana flavour'),
(17, 'snow.jpg', 'Snow Global', 'Basic Cinema 4d rendered snow global with black background and some lighting effect');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video`
--

CREATE TABLE `tbl_video` (
  `Id` int(11) NOT NULL,
  `video` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_video`
--

INSERT INTO `tbl_video` (`Id`, `video`) VALUES
(1, 'sportsnet.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_data`
--
ALTER TABLE `tbl_data`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tbl_video`
--
ALTER TABLE `tbl_video`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_data`
--
ALTER TABLE `tbl_data`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbl_video`
--
ALTER TABLE `tbl_video`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
