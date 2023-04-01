-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 06:57 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbphpsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `a_id` int(11) NOT NULL,
  `a_tittle` varchar(256) NOT NULL,
  `a_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`a_id`, `a_tittle`, `a_text`) VALUES
(1, 'Alluvial soil', 'The alluvial soil occurs mainly in the Satluj- Ganga- Brahmaputra Plains. They are also found in the valleys of the Narmada, Tapi, and the Eastern and Western coastal plains. These soils are mainly derived from the debris brown from the Himalayas. This soil is well-drained and poorly drained with an immature profile in undulating areas. This soil has a phosphorous deficiency. The color of soil varies from light grey to ash. This soil is suited for Rice, maize, wheat, sugarcane, oilseeds, etc.\r\n\r\nThis soil is divided into:\r\n\r\nKhadar Soil (New): the khadar soils are enriched with fresh silts. They are low lying, frequently inundated by floods during the rainy season. It occupies the flood plains of rivers. The khaddar tracts called as kankar are rich in concentration.\r\nBhangar Soil (Old): This soil lies above the flood level. It is well-drained but because of the calcium carbonate nodules, the texture of soil varies from the loamy soil to clayey soil.'),
(2, 'Red soil', 'This soil developed on Archean granite occupies the second largest area of the country. They are mainly found in the Peninsula from Tamil Nadu in the south to Bundelkhand in the north and Raj Mahal in the east to Kathiawad in the west. This soil is also known as the omnibus group. The presence of ferric oxides makes the colour of soil red. The top layer of the soil is red and the horizon below is yellowish. Generally, these soils are deficient in phosphate, lime, magnesia, humus and nitrogen. This soil is good for the cultivation of wheat, cotton, pulses, tobacco, millets, orchards, potato and oilseeds.'),
(3, 'Black Soil', 'Black soil is typical of the Deccan trap (Basalt) region spread over northwests Deccan plateau and is made up of lava flows. They cover the plateaus of Maharashtra, Saurashtra, Malwa, Madhya Pradesh, and Chattishgarh and extend in the south-east direction along the Godavari and the Krishna valleys.\r\nAlso known as regur soil, black soil is ideal for growing cotton and is known as black cotton soil. They are rich in soil nutrients, such as calcium carbonate, magnesium, potash and lime. These soils are generally poor in phosphoric contents.\r\n\r\nThe black soils are made up of clayey soil, well-known for their capacity to hold moisture. Because of their high clay content, black soils develop wide cracks during the dry season, but their iron-rich granular structure makes them resistant to wind and water erosion. They are poor in humus yet highly moisture-retentive, thus responding well to irrigation. Those soils are also found on many peripheral tracts where the underlying basalt has been shifted from its original location by fluvial processes. The sifting has only led to an increased concentration of clastic contents.'),
(4, 'Desert Soil', 'This soil is deposited by wind action and mainly found in the arid and semi-arid areas like Rajasthan, West of the Aravallis, Northern Gujarat, Saurashtra, Kachchh, Western parts of Haryana and southern part of Punjab. They are sandy with low organic matter. It has low soluble salts and moisture with very low retaining capacity. If irrigated these soil give a high agricultural return. These are suitable for less water-intensive crops like Bajra, pulses, fodder, and guar.'),
(5, 'Laterite Soil', 'Laterite soils are mainly found in Karnataka, Kerala, Tamil Nadu, Madhya Pradesh, and the hilly areas of Odisha and Assam. After adopting appropriate soil conservation techniques particularly in the hilly areas of Karnataka, Kerala and Tamil Nadu, this soil is very useful for growing tea and coffee. Red laterite soils in Tamil Nadu, Andhra Pradesh and Kerala are more suitable for crops like cashew nut.\r\nThe laterite soil develops in areas with high temperature and heavy rainfall. This is the result of intense leaching due to heavy rain. Humus content of the soil is low because most of the microorganisms, particularly the decomposers, like bacteria, get destroyed due to high temperature. Laterite soils are suitable for cultivation with adequate doses of manure sand fertilizers.'),
(6, 'Arid soil', 'Arid soils range from red to brown in colour. They are generally sandy in texture and saline in nature. In some areas the salt content is very high and common salt is obtained by evaporating the water. Due to the dry climate, high temperature, evaporation is faster and the soil lacks humus and moisture. The lower horizons of the soil are occupied by Kankar because of the increasing calcium content downwards. The Kankar layer formations in the bottom horizons restrict the infiltration of water. After proper irrigation these soils become cultivable as has been in the case of western Rajasthan.'),
(7, 'Forest soil', 'Forests soils are found in the hilly and mountainous areas where sufficient rainforests are available. The soils texture varies according to the mountain environment where they are formed. They are loamy and silty in valley sides and coarse grained in the upper slopes. In the snow covered areas of Himalayas, these soils experience denudation and are acidic with low humus content. The soils found in the lower parts of the valleys particularly on the river terraces and alluvial fans are fertile.'),
(8, 'Mountain soil', 'Mountain soils are found in the valleys and hill slopes of the Himalayas at altitudes of 2500 m to 3000 m. These soils are least studied and often the vegetation cover helps in their classification. The carbon nitrogen ratio is very wide. They are silty loam to loam in texture and dark brown in colour.This soil has very low humus and it is acidic. The orchards, fodder, legumes are grown in this soil.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`a_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
