-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: skemakel8
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `id_cs` int(11) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_admin`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_service`
--

DROP TABLE IF EXISTS `customer_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_service` (
  `id_cs` int(11) NOT NULL,
  `id_pekerja` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `subjek` varchar(45) DEFAULT NULL,
  `status` enum('sudah','belum') DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  PRIMARY KEY (`id_cs`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_service`
--

LOCK TABLES `customer_service` WRITE;
/*!40000 ALTER TABLE `customer_service` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cv`
--

DROP TABLE IF EXISTS `cv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv` (
  `id_cv` int(11) NOT NULL,
  `id_pekerja` int(11) DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL,
  `file_cv` blob DEFAULT NULL,
  PRIMARY KEY (`id_cv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv`
--

LOCK TABLES `cv` WRITE;
/*!40000 ALTER TABLE `cv` DISABLE KEYS */;
/*!40000 ALTER TABLE `cv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komunikasi`
--

DROP TABLE IF EXISTS `komunikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `komunikasi` (
  `id_komunikasi` int(11) NOT NULL,
  `id_pekerja` int(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  PRIMARY KEY (`id_komunikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komunikasi`
--

LOCK TABLES `komunikasi` WRITE;
/*!40000 ALTER TABLE `komunikasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `komunikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lamaran`
--

DROP TABLE IF EXISTS `lamaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lamaran` (
  `id_lamaran` int(11) NOT NULL,
  `id_lowongan` int(11) DEFAULT NULL,
  `id_pekerja` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `pesan` text DEFAULT NULL,
  `tanggal_lamaran` date DEFAULT NULL,
  PRIMARY KEY (`id_lamaran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lamaran`
--

LOCK TABLES `lamaran` WRITE;
/*!40000 ALTER TABLE `lamaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `lamaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layanan_pelatihan`
--

DROP TABLE IF EXISTS `layanan_pelatihan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `layanan_pelatihan` (
  `id_pelatihan` int(11) NOT NULL,
  `id_pihaktiga` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `durasi` varchar(45) DEFAULT NULL,
  `tanggal_pelatihan` date DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pelatihan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layanan_pelatihan`
--

LOCK TABLES `layanan_pelatihan` WRITE;
/*!40000 ALTER TABLE `layanan_pelatihan` DISABLE KEYS */;
/*!40000 ALTER TABLE `layanan_pelatihan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lowongan`
--

DROP TABLE IF EXISTS `lowongan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lowongan` (
  `id_lowongan` int(11) NOT NULL,
  `id_perusahaan` int(11) DEFAULT NULL,
  `id_pihaktiga` int(11) DEFAULT NULL,
  `id_lamaran` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `lokasi` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `gaji` varchar(45) DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL,
  PRIMARY KEY (`id_lowongan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lowongan`
--

LOCK TABLES `lowongan` WRITE;
/*!40000 ALTER TABLE `lowongan` DISABLE KEYS */;
/*!40000 ALTER TABLE `lowongan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pekerja`
--

DROP TABLE IF EXISTS `pekerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pekerja` (
  `id_pekerja` int(11) NOT NULL,
  `id_lamaran` int(11) DEFAULT NULL,
  `id_ulasanpekerja` int(11) DEFAULT NULL,
  `id_komunikasi` int(11) DEFAULT NULL,
  `id_cs` int(11) DEFAULT NULL,
  `id_cv` int(11) DEFAULT NULL,
  `id_pengalaman` int(11) DEFAULT NULL,
  `id_sertifikasi` int(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `no_telepon` varchar(45) DEFAULT NULL,
  `lokasi` varchar(45) DEFAULT NULL,
  `fotoprofil` blob DEFAULT NULL,
  `status_validasi` enum('valid','no') DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `password_hash` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pekerja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pekerja`
--

LOCK TABLES `pekerja` WRITE;
/*!40000 ALTER TABLE `pekerja` DISABLE KEYS */;
/*!40000 ALTER TABLE `pekerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengalaman`
--

DROP TABLE IF EXISTS `pengalaman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengalaman` (
  `id_pengalaman` int(11) NOT NULL,
  `id_pekerja` int(11) DEFAULT NULL,
  `nama_perusahaan` varchar(45) DEFAULT NULL,
  `tahub` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `posisi` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pengalaman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengalaman`
--

LOCK TABLES `pengalaman` WRITE;
/*!40000 ALTER TABLE `pengalaman` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengalaman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengumuman`
--

DROP TABLE IF EXISTS `pengumuman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `id_admin` int(11) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `tanggal_terbit` date DEFAULT NULL,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengumuman`
--

LOCK TABLES `pengumuman` WRITE;
/*!40000 ALTER TABLE `pengumuman` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengumuman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pengusaha`
--

DROP TABLE IF EXISTS `pengusaha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pengusaha` (
  `id_pengusaha` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `kontak` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_pengusaha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pengusaha`
--

LOCK TABLES `pengusaha` WRITE;
/*!40000 ALTER TABLE `pengusaha` DISABLE KEYS */;
/*!40000 ALTER TABLE `pengusaha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perusahaan`
--

DROP TABLE IF EXISTS `perusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `id_ulasan` int(11) DEFAULT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `id_lowongan` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_perusahaan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perusahaan`
--

LOCK TABLES `perusahaan` WRITE;
/*!40000 ALTER TABLE `perusahaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `perusahaan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pihak_ketiga`
--

DROP TABLE IF EXISTS `pihak_ketiga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pihak_ketiga` (
  `id_pihaktiga` int(11) NOT NULL,
  `id_promosi` int(11) DEFAULT NULL,
  `id_lowongan` int(11) DEFAULT NULL,
  `id_pelatihan` int(11) DEFAULT NULL,
  `nama_lembaga` varchar(45) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `kontak` varchar(45) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  PRIMARY KEY (`id_pihaktiga`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pihak_ketiga`
--

LOCK TABLES `pihak_ketiga` WRITE;
/*!40000 ALTER TABLE `pihak_ketiga` DISABLE KEYS */;
/*!40000 ALTER TABLE `pihak_ketiga` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promosi`
--

DROP TABLE IF EXISTS `promosi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promosi` (
  `id_promosi` int(11) NOT NULL,
  `id_pengusaha` int(11) DEFAULT NULL,
  `id_pihaktiga` int(11) DEFAULT NULL,
  `id_perusahaan` int(11) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_promosi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promosi`
--

LOCK TABLES `promosi` WRITE;
/*!40000 ALTER TABLE `promosi` DISABLE KEYS */;
/*!40000 ALTER TABLE `promosi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sertifikasi`
--

DROP TABLE IF EXISTS `sertifikasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sertifikasi` (
  `id_sertifikasi` int(11) NOT NULL,
  `id_pekerja` int(11) DEFAULT NULL,
  `nama_sertifikat` varchar(45) DEFAULT NULL,
  `tahun` varchar(45) DEFAULT NULL,
  `lembaga` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_sertifikasi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sertifikasi`
--

LOCK TABLES `sertifikasi` WRITE;
/*!40000 ALTER TABLE `sertifikasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `sertifikasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulasan_pekerja`
--

DROP TABLE IF EXISTS `ulasan_pekerja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulasan_pekerja` (
  `id_ulasanpekerja` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `id_pekerja` int(11) DEFAULT NULL,
  `rating` varchar(45) DEFAULT NULL,
  `ulasan_pekerjacol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ulasanpekerja`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulasan_pekerja`
--

LOCK TABLES `ulasan_pekerja` WRITE;
/*!40000 ALTER TABLE `ulasan_pekerja` DISABLE KEYS */;
/*!40000 ALTER TABLE `ulasan_pekerja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ulasan_perusahaan`
--

DROP TABLE IF EXISTS `ulasan_perusahaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ulasan_perusahaan` (
  `id_ulasan` int(11) NOT NULL,
  `id_perusahaan` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  PRIMARY KEY (`id_ulasan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ulasan_perusahaan`
--

LOCK TABLES `ulasan_perusahaan` WRITE;
/*!40000 ALTER TABLE `ulasan_perusahaan` DISABLE KEYS */;
/*!40000 ALTER TABLE `ulasan_perusahaan` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-12-14 21:14:01
