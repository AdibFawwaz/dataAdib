-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.35-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dbadib
CREATE DATABASE IF NOT EXISTS `dbadib` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbadib`;

-- Dumping structure for table dbadib.kategori
CREATE TABLE IF NOT EXISTS `kategori` (
  `Kategori_id` varchar(50) NOT NULL,
  `Kategori_desc` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Kategori_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dbadib.kategori: ~0 rows (approximately)
/*!40000 ALTER TABLE `kategori` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategori` ENABLE KEYS */;

-- Dumping structure for table dbadib.produk
CREATE TABLE IF NOT EXISTS `produk` (
  `Kode_produk` varchar(20) NOT NULL,
  `Nama_produk` varchar(50) DEFAULT NULL,
  `Kategori_id` varchar(15) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `Foto_produk` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dbadib.produk: ~0 rows (approximately)
/*!40000 ALTER TABLE `produk` DISABLE KEYS */;
/*!40000 ALTER TABLE `produk` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
