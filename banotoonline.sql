-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2015 at 10:46 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `banotoonline`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE IF NOT EXISTS `account` (
`id_ac` int(5) NOT NULL,
  `name_ac` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `address_ac` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `birth_ac` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `sex_ac` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `email_ac` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `username_ac` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `password_ac` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `status_ac` bit(1) DEFAULT NULL,
  `id_autho` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_ac`, `name_ac`, `address_ac`, `birth_ac`, `sex_ac`, `email_ac`, `username_ac`, `password_ac`, `status_ac`, `id_autho`) VALUES
(1, 'Nguyễn Xuân Tiến', '55 Giải Phóng', '24/01/2003', 'Nam', 'danongxda@gmail.com', 'danongxda', '12345', b'1', 3),
(3, 'Nguyễn Nhân Viên', '55 Nghệ An', '12/02/1993', 'Nam', 'vien@gmail.com', 'nhanvien', '12345', b'1', 2),
(4, 'Nguyễn Giám Đốc', '99 Lê Phong', '12/02/1990', 'Nam', 'giamdoc@gmail.com', 'admin', '12345', b'1', 1),
(5, 'Bùi Thái Trường', '44 Lê Đức Thọ', '3/02/2014', 'Nam', 'truong@gmail.com', 'nhanvien2', '12345', b'1', 2);

-- --------------------------------------------------------

--
-- Table structure for table `authority`
--

CREATE TABLE IF NOT EXISTS `authority` (
`id_autho` int(5) NOT NULL,
  `name_autho` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `desc_autho` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authority`
--

INSERT INTO `authority` (`id_autho`, `name_autho`, `desc_autho`) VALUES
(1, 'Admin', 'Quyền admin'),
(2, 'Nhanvien', 'Quyền nhân viên'),
(3, 'Khachhang', 'Quyền khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `authority_category`
--

CREATE TABLE IF NOT EXISTS `authority_category` (
`id_autho_cate` int(5) NOT NULL,
  `id_autho` int(5) DEFAULT NULL,
  `id_category` int(5) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authority_category`
--

INSERT INTO `authority_category` (`id_autho_cate`, `id_autho`, `id_category`) VALUES
(41, 2, 2),
(42, 2, 4),
(43, 2, 5),
(44, 2, 6),
(45, 2, 7),
(46, 2, 12),
(47, 1, 1),
(48, 1, 2),
(49, 1, 3),
(50, 1, 4),
(51, 1, 5),
(52, 1, 6),
(53, 1, 7),
(54, 1, 8),
(55, 1, 9),
(56, 1, 10),
(57, 1, 11),
(58, 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `bill_import`
--

CREATE TABLE IF NOT EXISTS `bill_import` (
`id_bill_im` int(11) NOT NULL,
  `id_ac` int(11) DEFAULT NULL,
  `manufacturer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill_sale`
--

CREATE TABLE IF NOT EXISTS `bill_sale` (
`id_bill_sale` int(11) NOT NULL,
  `id_ac` int(11) DEFAULT NULL,
  `id_car` int(11) DEFAULT NULL,
  `manufacturer` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `VAT` int(11) DEFAULT NULL,
  `total_price` int(11) DEFAULT NULL,
  `status_bill` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bill__import_detail`
--

CREATE TABLE IF NOT EXISTS `bill__import_detail` (
`id_import_detail` int(11) NOT NULL,
  `id_bill_im` int(11) DEFAULT NULL,
  `id_car` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price_import` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE IF NOT EXISTS `car` (
`id_car` int(5) NOT NULL,
  `id_category_car` int(5) DEFAULT NULL,
  `image_car` text NOT NULL,
  `price_car` int(255) NOT NULL,
  `name_car` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `size_car` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `quantity_car` int(50) DEFAULT NULL,
  `capacity_car` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `momen_car` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `speedmax_car` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tonnage_car` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id_car`, `id_category_car`, `image_car`, `price_car`, `name_car`, `size_car`, `quantity_car`, `capacity_car`, `momen_car`, `speedmax_car`, `tonnage_car`) VALUES
(1, 1, 'c200.jpg', 100000, 'C200', '4555 x 34535 x 6764 (mm)', 25, '280KW', '1500 vòng/phút', '250 KM/H', '1000KG'),
(2, 2, 'glk450.jpg', 200000, 'GLK 450', '5666 x 55555 x 3987 (mm)', 20, '200KW', '3000 vòng/phút', '300 KM/H', '2000KG'),
(13, 2, 'glk350.jpg', 120000, 'GLK 350', '5666 x 86886 x 3987 (mm)', 18, '200KW', '2000 vòng/phút', '360 KM/H', '3000KG'),
(21, 1, 'c250.jpg', 300000, 'C250', '4353 x 5678 x 9858 (mm)', 26, '120KW', '3500 vòng/phút', '450 KM/H', ' 800 KG'),
(23, 1, 'cla300.jpg', 90000, 'CLA200', '5666 x 6789 x 3987 (mm)', 20, '200KW', '2000 vòng/phút', '300 KM/H', '1500KG'),
(24, 4, 'e300.jpg', 150000, 'E300', '5666 x 6789 x 3987 (mm)', 24, '200KW', '2000 vòng/phút', '300 KM/H', '2000KG'),
(25, 2, 'glk400.jpg', 100000, 'GLK 550', '5666 x 86886 x 3987 (mm)', 18, '200KW', '2000 vòng/phút', '360 KM/H', '3000KG'),
(26, 1, 'c300.jpg', 200000, 'C300', '5666 x 55555 x 3987 (mm)', 20, '200KW', '2000 vòng/phút', '300 KM/H', '1800KG'),
(27, 2, 'glk450.jpg', 1700000, 'GLK 200', '5666 x 55555 x 3987 (mm)', 20, '200KW', '2000 vòng/phút', '300 KM/H', '4500KG'),
(28, 1, 'c300.jpg', 125000, 'C300 - 2015', '5666 x 55555 x 3987 (mm)', 20, '180KW', '2500 vòng/phút', '300 KM/H', '1500KG');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
`id_category` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL,
  `name_category` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `id_parent`, `name_category`) VALUES
(1, 0, 'Quản trị hệ thống'),
(2, 0, 'Quản trị dữ liệu'),
(3, 0, 'Báo cáo thống kê'),
(4, 2, 'Quản lý loại xe'),
(5, 2, 'Quản lý ảnh'),
(6, 2, 'Quản lý xe'),
(7, 2, 'Quản lý hóa đơn bán'),
(8, 1, 'Quản lý danh mục'),
(9, 1, 'Quản lý quyền'),
(10, 1, 'Quản lý tài khoản'),
(11, 1, 'Phân quyền'),
(12, 2, 'Quản lý menu hiển thị');

-- --------------------------------------------------------

--
-- Table structure for table `category_car`
--

CREATE TABLE IF NOT EXISTS `category_car` (
`id_category_car` int(5) NOT NULL,
  `desc_category_car` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category_car`
--

INSERT INTO `category_car` (`id_category_car`, `desc_category_car`) VALUES
(1, 'C - Class'),
(2, 'A - Class'),
(3, 'S - Class'),
(4, 'E - Class'),
(5, 'CLS  - Class'),
(6, 'GLK - Class');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE IF NOT EXISTS `images` (
`id_img` int(11) NOT NULL,
  `id_car` int(11) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id_img`, `id_car`, `url`) VALUES
(1, 1, 'noithat.jpg'),
(19, 1, 'noithat2.jpg'),
(21, 2, 'noithat4.jpg'),
(23, 13, 'noithat5.jpg'),
(27, 21, 'noithat6.jpg'),
(28, 2, 'noithat2.jpg'),
(29, 24, 'noithat2.jpg'),
(31, 1, 'noithat5.jpg'),
(32, 13, 'noithat3.jpg'),
(33, 2, 'noithat6.jpg'),
(34, 1, 'noithat6.jpg'),
(35, 13, 'noithat.jpg'),
(36, 13, 'noithat5.jpg'),
(37, 21, 'noithat2.jpg'),
(38, 21, 'noithat3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id_menu` int(5) NOT NULL,
  `name_menu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `name_menu`) VALUES
(2, 'Giới thiệu'),
(3, 'Tuyển dụng'),
(4, 'Tin tức'),
(5, 'Liên hệ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
 ADD PRIMARY KEY (`id_ac`), ADD KEY `id_autho` (`id_autho`);

--
-- Indexes for table `authority`
--
ALTER TABLE `authority`
 ADD PRIMARY KEY (`id_autho`);

--
-- Indexes for table `authority_category`
--
ALTER TABLE `authority_category`
 ADD PRIMARY KEY (`id_autho_cate`), ADD KEY `id_autho` (`id_autho`), ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `bill_import`
--
ALTER TABLE `bill_import`
 ADD PRIMARY KEY (`id_bill_im`), ADD KEY `id_ac` (`id_ac`);

--
-- Indexes for table `bill_sale`
--
ALTER TABLE `bill_sale`
 ADD PRIMARY KEY (`id_bill_sale`), ADD KEY `id_ac` (`id_ac`), ADD KEY `id_car` (`id_car`);

--
-- Indexes for table `bill__import_detail`
--
ALTER TABLE `bill__import_detail`
 ADD PRIMARY KEY (`id_import_detail`), ADD KEY `id_car` (`id_car`), ADD KEY `id_bill_im` (`id_bill_im`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
 ADD PRIMARY KEY (`id_car`), ADD KEY `id_category_car` (`id_category_car`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
 ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `category_car`
--
ALTER TABLE `category_car`
 ADD PRIMARY KEY (`id_category_car`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
 ADD PRIMARY KEY (`id_img`), ADD KEY `id_car` (`id_car`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
MODIFY `id_ac` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `authority`
--
ALTER TABLE `authority`
MODIFY `id_autho` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `authority_category`
--
ALTER TABLE `authority_category`
MODIFY `id_autho_cate` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=59;
--
-- AUTO_INCREMENT for table `bill_import`
--
ALTER TABLE `bill_import`
MODIFY `id_bill_im` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bill_sale`
--
ALTER TABLE `bill_sale`
MODIFY `id_bill_sale` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `bill__import_detail`
--
ALTER TABLE `bill__import_detail`
MODIFY `id_import_detail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
MODIFY `id_car` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
MODIFY `id_category` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `category_car`
--
ALTER TABLE `category_car`
MODIFY `id_category_car` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
MODIFY `id_img` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`id_autho`) REFERENCES `authority` (`id_autho`);

--
-- Constraints for table `authority_category`
--
ALTER TABLE `authority_category`
ADD CONSTRAINT `authority_category_ibfk_1` FOREIGN KEY (`id_autho`) REFERENCES `authority` (`id_autho`),
ADD CONSTRAINT `authority_category_ibfk_2` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`);

--
-- Constraints for table `bill_import`
--
ALTER TABLE `bill_import`
ADD CONSTRAINT `bill_import_ibfk_1` FOREIGN KEY (`id_ac`) REFERENCES `account` (`id_ac`);

--
-- Constraints for table `bill_sale`
--
ALTER TABLE `bill_sale`
ADD CONSTRAINT `bill_sale_ibfk_1` FOREIGN KEY (`id_ac`) REFERENCES `account` (`id_ac`),
ADD CONSTRAINT `bill_sale_ibfk_2` FOREIGN KEY (`id_car`) REFERENCES `car` (`id_car`);

--
-- Constraints for table `bill__import_detail`
--
ALTER TABLE `bill__import_detail`
ADD CONSTRAINT `bill__import_detail_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id_car`),
ADD CONSTRAINT `bill__import_detail_ibfk_2` FOREIGN KEY (`id_bill_im`) REFERENCES `bill_import` (`id_bill_im`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`id_category_car`) REFERENCES `category_car` (`id_category_car`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`id_car`) REFERENCES `car` (`id_car`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
