-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.40 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for mywebsite
CREATE DATABASE IF NOT EXISTS `mywebsite` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mywebsite`;

-- Dumping structure for table mywebsite.diadiem
CREATE TABLE IF NOT EXISTS `diadiem` (
  `ID` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `giatour` int DEFAULT '0',
  `thoigian` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoiluong` float DEFAULT '0',
  `diadiem` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkggmap` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img2` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img3` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diadiem1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_dd1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_dd1` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diadiem2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_dd2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mota_dd2` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.diadiem: ~2 rows (approximately)
DELETE FROM `diadiem`;
INSERT INTO `diadiem` (`ID`, `name`, `giatour`, `thoigian`, `thoiluong`, `diadiem`, `linkggmap`, `img`, `img2`, `img3`, `diadiem1`, `img_dd1`, `mota_dd1`, `diadiem2`, `img_dd2`, `mota_dd2`) VALUES
	('19LTT', 'Đại học Tổng Hợp', 10000, '2025', 2, '19 Lê Thánh Tông', NULL, 'img/slider/BN1.png', 'img/slider/BN2.png', 'img/slider/BN3.png', NULL, NULL, NULL, NULL, NULL, NULL),
	('334', 'Trường Đại học khoa học Tự nhiên, Đại học Quốc gia Hà Nội', 2500, '30 tháng 11 năm 2024', 1.5, '334 Nguyễn Trãi, Thanh Xuân, Hà Nội, Viêt  Nam', 'https://maps.app.goo.gl/dz8deHHuXs6g2ZLRA', 'img/slider/BN1.png', 'img/slider/BN2.png', 'img/slider/BN3.png', NULL, NULL, NULL, NULL, NULL, NULL);

-- Dumping structure for table mywebsite.khachhang
CREATE TABLE IF NOT EXISTS `khachhang` (
  `makhachhang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tendangnhap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `matkhau` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hoten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gioitinh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `diachinhanhang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diachimuahang` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngaysinh` date DEFAULT NULL,
  `sodienthoai` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dangkinhanbangtin` tinyint DEFAULT NULL,
  `maxacthuc` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thoigianhieulucmaxacthuc` datetime DEFAULT NULL,
  `trangthaixacthuc` tinyint DEFAULT NULL,
  `duongdananh` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`makhachhang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table mywebsite.khachhang: ~22 rows (approximately)
DELETE FROM `khachhang`;
INSERT INTO `khachhang` (`makhachhang`, `tendangnhap`, `matkhau`, `hoten`, `gioitinh`, `diachi`, `diachinhanhang`, `diachimuahang`, `ngaysinh`, `sodienthoai`, `email`, `dangkinhanbangtin`, `maxacthuc`, `thoigianhieulucmaxacthuc`, `trangthaixacthuc`, `duongdananh`) VALUES
	('1667732670893', 'tungitv', '123456', 'Le Nhat Tung', 'Nam', 'Poland', 'France', 'Vietnam', '2022-11-06', '+48123456789', 'abc123@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1667732836737', 'tung456', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Le Nhat Tung', 'Nam', 'Poland', 'France', 'Vietnam', '2022-11-06', '+48123456789', 'abc123@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1667826672782', 'tung4567', 'B+4zZ7z0Okk8LmjVpPHTNHEQQNE=', 'Le Nhat Tung', 'Nam', 'Poland 100', 'France 300', 'Vietnam 200', '2022-11-07', '+48123456789', 'abc123@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1668435194168', 'tungnew', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung New 123', 'Nam', 'Poland', 'France', 'Vietnam', '2022-11-14', '+48123456789', 'tungnew@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1668934786489', 'tung2011', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456789', 'tungnew@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1668935133463', 'tung20112', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tungnew@gmail.com', 0, '813842', '2022-11-21 00:00:00', 0, NULL),
	('1668936004618', 'tung20115', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '', 'tungnew@gmail.com', 0, '388175', '2022-11-21 00:00:00', 0, NULL),
	('1668936062581', 'tung20116', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tn.le@uw.edu.pl', 0, '546129', '2022-11-21 00:00:00', 0, NULL),
	('1668936750222', 'tung20117', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tn.le@uw.edu.pl', 0, '844825', '2022-11-21 00:00:00', 0, NULL),
	('1668936887622', 'tung20118', '6NWFIsI1V5KNFeeazNcq35qxRUE=', 'Tung', 'Nam', 'Vietnam', 'Vietnam', 'Poland', '2022-11-20', '123456', 'tn.le@uw.edu.pl', 0, '266553', '2022-11-21 00:00:00', 1, '16689458899311-removebg-preview.png'),
	('1732584744361', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'phat', 'Nam', 'yt', 'yty', 'tyt', '2024-11-30', '33545', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732584842253', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-13', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732584976318', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-08', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732585084151', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-01', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732585234680', 'Nguyen Ba Tien Phat', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-23', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732585524661', 'Nguyen Phat555', 'zCZM1aOSMbcIGkbHfjRK3y/8px4=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-23', '112', '', 1, NULL, NULL, NULL, NULL),
	('1732586279740', 'Nguyen Phat', 'dkY0kSZpUYPO+ki4Ww3cG1NS/LA=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-16', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732586344404', 'Nguyen Phat111', 'zCZM1aOSMbcIGkbHfjRK3y/8px4=', 'Ph Ng', 'Nam', 'Bn', 'Hn', 'Hn', '2024-11-22', '112', 'ngph1538@gmail.com', 1, NULL, NULL, NULL, NULL),
	('1732637304265', 'Phuong Anh', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'PA', 'Nữ', 'BG', 'HN', 'HN', '2024-11-28', '123', 'ngph1538@gmail.com', 0, NULL, NULL, NULL, NULL),
	('1732674303478', 'Nguyen Phat111', 'D3NSjWjXX5uhVxmiXhmziBcY5qE=', 'PA', 'Nam', 'BG', 'HN', 'HN', '2024-11-14', '123', 'ngph1538@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH1', 'abc123', '147258', 'Nguyen Chau Anh', 'Nu', 'HCM', 'q2 tp.hcm', 'q10 tp.hcm', '2000-10-31', '0123654789', 'xyz@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH2', 'qwerty', 'abcdef', 'Ngoc Long', 'Nam', 'Ha Noi', 'Dong Da, Ha Noi', 'Hai Phong', '1950-12-07', '0987456321', 'eghugkjv@gmail.com', 1, NULL, NULL, NULL, NULL),
	('KH3', 'zxcvbnm', 'asdfgh', 'Phi Hoang', 'Nam', 'Gia Lai', 'Thu Duc', 'Binh Dinh', '2003-06-14', '0123654725', 'poiuyt@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH4', 'abcxyz', '159753', 'Duy Vu', 'Nam', 'Dong Nai', 'Ben Tre', 'Kien Giang', '1989-10-31', '0123457896', 'lmxjcnan@gmail.com', 0, NULL, NULL, NULL, NULL),
	('KH5', 'jafueasd123', 'zxcvbnm123', 'k', 'k', '123', 'k', 'k', NULL, 'k', 'k', 0, NULL, NULL, NULL, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
