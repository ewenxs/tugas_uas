-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Jun 18, 2024 at 06:10 PM
=======
-- Generation Time: May 25, 2024 at 07:14 PM
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progkeu`
--

-- --------------------------------------------------------

--
-- Table structure for table `bagians`
--

CREATE TABLE `bagians` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_bagian` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bagians`
--

INSERT INTO `bagians` (`id`, `nama_bagian`, `created_at`, `updated_at`) VALUES
(4, 'PEMERINTAHAN', '2024-01-27 01:24:45', '2024-01-27 01:24:45'),
(5, 'PELAYANAN', '2024-01-27 05:08:21', '2024-01-27 05:08:21'),
(6, 'KETENTRAMAN DAN KETERTIBAN', '2024-01-27 05:08:38', '2024-01-27 05:08:38'),
(8, 'PEMBERDAYAAN MASYARAKAT', '2024-02-08 03:15:10', '2024-02-08 03:15:10'),
(9, 'PROGRAM DAN KEUANGAN', '2024-02-08 03:16:42', '2024-02-08 03:16:42'),
(10, 'TATA USAHA', '2024-02-08 03:16:52', '2024-02-08 03:16:52');

-- --------------------------------------------------------

--
-- Table structure for table `detail_dpas`
--

CREATE TABLE `detail_dpas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dpa_id` bigint(20) NOT NULL,
  `nama_barang` text NOT NULL,
  `volume` double NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `harga` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_dpas`
--

INSERT INTO `detail_dpas` (`id`, `dpa_id`, `nama_barang`, `volume`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
(39, 11, 'Belanja Pemeliharaan Bangunan Gedung-Bangunan Gedung Tempat KerjaBangunan Gedung Kantor \r\nSpesifikasi: Rehab Pintu ruangan', 5.882352941176471, 'M2', 170000, '2024-05-13 07:08:21', '2024-05-13 07:08:21'),
(40, 12, 'Pekerjaan Pembangunan Gedung Kantor Permanen - Toilet untuk pelayanan\r\nSpesifikasi: Luasan per meter persegi', 2.6763013515321, 'm2', 7473000, '2024-05-13 07:14:09', '2024-05-13 07:14:09'),
(41, 12, 'Pengawasan Bangunan Gedung Sederhana - Toilet untuk pelayanan\r\nSpesifikasi: Nilai Fisik Pagu sampai dengan Rp. 2.500.000.000', 0.0057142857142857, 'kegiatan', 87500000, '2024-05-13 07:14:09', '2024-05-13 07:14:09'),
(42, 12, 'Perencanaan Bangunan Gedung Sederhana - Toilet untuk pelayanan\r\nSpesifikasi: Nilai Fisik Pagu sampai dengan 2.500.000.000', 0.0062222222222222, 'kegiatan', 112500000, '2024-05-13 07:14:09', '2024-05-13 07:14:09'),
(43, 12, 'Pekerjaan Pembangunan Gedung Kantor Permanen - Ruangan rumah dinas\r\nSpesifikasi: Luasan per meter persegi', 6.641509433962264, 'm2', 7473000, '2024-05-13 07:14:09', '2024-05-13 07:14:09'),
(44, 12, 'Pengawasan Bangunan Gedung Sederhana - Ruangan rumah dinas\r\nSpesifikasi: Nilai Fisik Pagu sampai dengan Rp. 2.500.000.000', 0.0150857142857143, 'kegiatan', 87500000, '2024-05-13 07:14:09', '2024-05-13 07:14:09'),
(45, 12, 'Perencanaan Bangunan Gedung Sederhana - Ruangan rumah dinas\r\nSpesifikasi: Nilai Fisik Pagu sampai dengan 2.500.000.000', 0.0164266666666667, 'kegiatan', 112500000, '2024-05-13 07:14:09', '2024-05-13 07:14:09'),
(46, 13, 'Pembayaran Pajak, Bea, dan Perizinan\r\nSpesifikasi: pajak kendaraan station wagon', 1, 'Unit / Tahun', 700000, '2024-05-13 07:19:46', '2024-05-13 07:19:46'),
(47, 14, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Penumpang - Kendaraan Dinas Penumpang\r\nSpesifikasi: Pertamax', 1168.96552, 'Liter', 14500, '2024-05-13 07:21:53', '2024-05-13 07:21:53'),
(48, 15, 'Pemeliharaan Alat Angkutan-Alat Angkutan Darat Bermotor-Kendaraan Bermotor Penumpang\r\nSpesifikasi: jasa service dan oli', 1, 'Unit / Tahun', 6000000, '2024-05-13 07:23:34', '2024-05-13 07:23:34'),
(49, 16, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Penumpang - Kendaraan Dinas Penumpang\r\nSpesifikasi: Suku cadang-suku cadang alat angkutan roda 4', 1, 'Tahun', 15000000, '2024-05-13 07:25:31', '2024-05-13 07:25:31'),
(50, 17, 'Makanan dan Minuman Jamuan Tamu \r\nSpesifikasi: Makanan dan Minuman Tamu/Kudapan', 1, 'Tahun', 5000000, '2024-05-13 15:08:56', '2024-05-13 15:08:56'),
(51, 18, 'Foto Copy\r\nSpesifikasi: Kertas F4', 100, 'Lembar', 300, '2024-05-13 15:20:07', '2024-05-13 15:20:07'),
(52, 19, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 600, 'Orang / Kali', 15000, '2024-05-13 15:25:19', '2024-05-13 15:25:19'),
(53, 19, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 700, 'Orang / Kali', 30000, '2024-05-13 15:25:19', '2024-05-13 15:25:19'),
(54, 20, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 106, 'Orang / Kali', 15000, '2024-05-13 15:27:00', '2024-05-13 15:27:00'),
(55, 21, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 106, 'Orang / Kali', 30000, '2024-05-13 15:28:32', '2024-05-13 15:28:32'),
(56, 22, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia \r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Penyusun Bahan / Materi', 2, 'Materi', 500000, '2024-05-13 15:30:14', '2024-05-13 15:30:14'),
(57, 23, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Penanggungjawab', 12, 'Orang / Bulan', 550000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(58, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Babinkamtibmas', 72, 'Orang / Bulan', 150000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(59, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Babinsa', 144, 'Orang / Bulan', 150000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(60, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Kasatgas Linmas', 72, 'Orang / Bulan', 250000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(61, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Kasi Trantib', 12, 'Orang / Bulan', 200000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(62, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Ketua', 36, 'Orang / Bulan', 475000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(63, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Linmas', 1080, 'Orang / Bulan', 225000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(64, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Pengarah', 12, 'Orang / Bulan', 650000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(65, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Polisi RW', 396, 'Orang / Bulan', 100000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(66, 23, 'Honorarum Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu\r\nSpesifikasi: Staf', 24, 'Orang / Bulan', 75000, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(67, 24, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Administrasi\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga Administrasi', 11, 'Orang / Bulan', 1790000, '2024-05-13 15:38:41', '2024-05-13 15:38:41'),
(68, 24, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Teknis\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga Teknis', 11, 'Orang / Bulan', 1870000, '2024-05-13 15:38:41', '2024-05-13 15:38:41'),
(69, 25, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 12, 'Meter', 25000, '2024-05-13 15:58:40', '2024-05-13 15:58:40'),
(70, 26, 'Sewa Alat Kantor Lainnya\r\nSpesifikasi: sewa tenda', 1, 'Set', 2500000, '2024-05-13 16:01:33', '2024-05-13 16:01:33'),
(71, 27, 'Sewa Alat Kantor Lainnya\r\nSpesifikasi: kursi plastik', 100, 'Buah', 4000, '2024-05-13 16:03:26', '2024-05-13 16:03:26'),
(72, 28, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 96, 'Orang / Hari', 50000, '2024-05-13 16:04:52', '2024-05-13 16:04:52'),
(73, 29, 'Foto Copy\r\nSpesifikasi: Kertas F4', 1583.333, 'Lembar', 300, '2024-05-13 16:09:47', '2024-05-13 16:09:47'),
(74, 30, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 45, 'Orang / Kali', 15000, '2024-05-13 16:11:46', '2024-05-13 16:11:46'),
(75, 30, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 45, 'Orang / Kali', 30000, '2024-05-13 16:11:46', '2024-05-13 16:11:46'),
(76, 31, 'Alat Tulis Kantor\r\nSpesifikasi: Cetak Buku', 29, 'Buku', 150000, '2024-05-14 15:48:36', '2024-05-14 15:48:36'),
(77, 32, 'Foto Copy\r\nSpesifikasi: Kertas F4', 2682.4, 'Lembar', 300, '2024-05-14 15:49:34', '2024-05-14 15:49:34'),
(78, 33, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 340, 'Orang / Kali', 15000, '2024-05-14 15:51:33', '2024-05-14 15:51:33'),
(79, 33, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 362, 'Orang / Kali', 30000, '2024-05-14 15:51:33', '2024-05-14 15:51:33'),
(80, 34, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Administrasi\r\nSpesifikasi: Tenaga Akuntansi', 11, 'Orang / Bulan', 2490500, '2024-05-14 15:52:53', '2024-05-14 15:52:53'),
(81, 35, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Informasi dan Teknologi\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga Teknis - Tenaga Informasi dan Teknologi (TI)', 3, 'Orang / Bulan', 2490500, '2024-05-14 15:54:07', '2024-05-14 15:54:07'),
(82, 36, 'Uang Lembur\r\nSpesifikasi: Non ASN', 387, 'Jam', 25000, '2024-05-14 15:55:08', '2024-05-14 15:55:08'),
(83, 37, 'Pembayaran Pajak, Bea, dan Perizinan\r\nSpesifikasi: Kendaraan Bermotor Roda 3', 7, 'Unit', 185500, '2024-05-14 16:01:31', '2024-05-14 16:01:31'),
(84, 37, 'Pembayaran Pajak, Bea, dan Perizinan\r\nSpesifikasi: Kendaraan Dinas Roda 2 (trail & Vixon)', 2, 'Unit', 500000, '2024-05-14 16:01:31', '2024-05-14 16:01:31'),
(85, 37, 'Pembayaran Pajak, Bea, dan Perizinan\r\nSpesifikasi: KIR pick up', 1, 'Unit', 200000, '2024-05-14 16:01:31', '2024-05-14 16:01:31'),
(86, 37, 'Pembayaran Pajak, Bea, dan Perizinan\r\nSpesifikasi: Sepeda Motor Roda 2', 17, 'Unit', 242000, '2024-05-14 16:01:31', '2024-05-14 16:01:31'),
(87, 37, 'Pembayaran Pajak, Bea, dan Perizinan\r\nSpesifikasi: Station wagon/Pick Up', 1, 'Unit', 900000, '2024-05-14 16:01:31', '2024-05-14 16:01:31'),
(88, 38, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Penumpang - Kendaraan Dinas Angkutan Barang\r\nSpesifikasi: Pertamax', 584.482759, 'Liter', 14500, '2024-05-14 16:02:51', '2024-05-14 16:02:51'),
(89, 39, 'Pemeliharaan Alat Angkutan Darat Bermotor Angkutan Barang \r\nSpesifikasi: Pemeliharaan Alat Angkutan Bermotor Angkutan Barang- Pick up(Jasa servis dan Oli Pelumas)', 1, 'Tahun', 2500000, '2024-05-14 16:04:18', '2024-05-14 16:04:18'),
(90, 40, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Penumpang - Kendaraan Dinas Angkutan Barang\r\nSpesifikasi: suku cadang pick up', 1, 'Tahun', 3000000, '2024-05-14 16:05:24', '2024-05-14 16:05:24'),
(91, 41, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Beroda Dua\r\nSpesifikasi: Pertamax', 1594.48276, 'Liter', 14500, '2024-05-14 16:06:34', '2024-05-14 16:06:34'),
(92, 42, 'Pemeliharaan Alat Angkutan-Alat Angkutan Darat Bermotor-Kendaraan Bermotor Beroda Dua \r\nSpesifikasi: Pemeliharaan alat angkutan roda 2 - Jasa service dan oli', 1, 'Tahun', 3000000, '2024-05-14 16:07:50', '2024-05-14 16:07:50'),
(93, 43, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Beroda Dua\r\nSpesifikasi: suku cadang roda 2', 1, 'Tahun', 4000000, '2024-05-14 16:11:43', '2024-05-14 16:11:43'),
(94, 44, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Beroda Tiga\r\nSpesifikasi: Pertamax', 360, 'Liter', 14500, '2024-05-14 16:16:35', '2024-05-14 16:16:35'),
(95, 45, 'Pemeliharaan Alat Darat Bermotor Beroda Tiga\r\nSpesifikasi: Pemeliharaan alat angkutan roda 3 - Jasa service dan Oli Pelumas', 1, 'Unit / Tahun', 1000000, '2024-05-14 16:18:00', '2024-05-14 16:18:00'),
(96, 46, 'Pemeliharaan Alat Angkutan-Kendaraan Bermotor Beroda Tiga\r\nSpesifikasi: suku cadang roda 3', 1, 'Tahun', 1000000, '2024-05-14 16:19:13', '2024-05-14 16:19:13'),
(97, 47, 'Pemeliharaan Alat Besar Alat Bantu Electric Generating Set\r\nSpesifikasi: Pemeliharaan Elektric Generating Set 15 kva - Jasa Servis dan Oli Pelumas', 1, 'Tahun', 1500000, '2024-05-15 05:36:58', '2024-05-15 05:36:58'),
(98, 48, 'Pemeliharaan Alat Kantor dan Rumah Tangga Alat Kantor Lainnya\r\nSpesifikasi: LCD', 1.45, 'Unit', 750000, '2024-05-15 05:39:01', '2024-05-15 05:39:01'),
(99, 49, 'Pemeliharaan Alat Kantor dan Rumah Tangga Alat Pendingin\r\nSpesifikasi: Pemeliharaan Sarana Kantor AC', 10, 'Unit / Tahun', 457500, '2024-05-15 05:40:37', '2024-05-15 05:40:37'),
(100, 50, 'Pemeliharaan Komputer Unit Personal Computer - Komputer\r\nSpesifikasi: Personal Computer PC / Laptop / Notebook', 10, 'Unit / Tahun', 547500, '2024-05-15 05:43:27', '2024-05-15 05:43:27'),
(101, 50, 'Pemeliharaan Komputer Unit Personal Computer - Laptop\r\nSpesifikasi: Personal Computer PC / Laptop / Notebook', 10, 'Unit / Tahun', 547500, '2024-05-15 05:43:27', '2024-05-15 05:43:27'),
(102, 51, 'Pemeliharaan Peralatan Komputer Lainnya\r\nSpesifikasi: Pemeliharaan komputerPeralatan Komputer Lainnya - Printer', 15, 'Unit / Tahun', 517500, '2024-05-15 05:44:37', '2024-05-15 05:44:37'),
(103, 52, 'Jasa Konsultansi Berorientasi Layanan-Jasa Khusus\r\nSpesifikasi: Jasa Konsultansi Penghapusan BMD', 1, 'Paket', 2000000, '2024-05-15 05:45:58', '2024-05-15 05:45:58'),
(104, 53, 'Rak Arsip\r\nSpesifikasi: Bahan Besi', 2, 'Buah', 7000000, '2024-05-15 05:47:53', '2024-05-15 05:47:53'),
(105, 54, 'Gimbal stabilizer\r\nSpesifikasi: Gimbal stabilizer', 1, 'Unit / Tahun', 1000000, '2024-05-15 05:48:42', '2024-05-15 05:48:42'),
(106, 55, 'Aplikasi tata kelola pemerintahan \r\nSpesifikasi: Aplikasi Sistem Informasi Penguatan Tata Laksana Kecamatan/SIPETA CAMAT', 1, 'Paket', 75000000, '2024-05-15 05:49:53', '2024-05-15 05:49:53'),
(107, 56, 'Ballpoin Pen\r\nSpesifikasi: Standart AE', 7, 'Pack', 21000, '2024-05-15 05:52:10', '2024-05-15 05:52:10'),
(108, 56, 'Buku NoteBook/Buku Agenda\r\nSpesifikasi: Buku NoteBook/Buku Agenda', 70, 'Buah', 5000, '2024-05-15 05:52:10', '2024-05-15 05:52:10'),
(109, 56, 'Foto Copy\r\nSpesifikasi: Kertas F4', 880, 'Lembar', 300, '2024-05-15 05:52:10', '2024-05-15 05:52:10'),
(110, 56, 'Stop map plastik\r\nSpesifikasi: stop map plastik kancing', 7, 'Pack', 37000, '2024-05-15 05:52:10', '2024-05-15 05:52:10'),
(111, 57, 'Belanja Jilid dan Sampul\r\nSpesifikasi: Jilid Soft Cover', 25, 'Buku', 25000, '2024-05-15 05:53:27', '2024-05-15 05:53:27'),
(112, 57, 'Foto Copy\r\nSpesifikasi: Kertas F4', 3250, 'Lembar', 300, '2024-05-15 05:53:27', '2024-05-15 05:53:27'),
(113, 58, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Kue Nampan', 6, 'Buah', 30000, '2024-05-15 05:55:36', '2024-05-15 05:55:36'),
(114, 58, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 70, 'Orang / Kali', 15000, '2024-05-15 05:55:36', '2024-05-15 05:55:36'),
(115, 58, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 70, 'Orang / Kali', 30000, '2024-05-15 05:55:36', '2024-05-15 05:55:36'),
(116, 59, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 20, 'Orang / Kali', 15000, '2024-05-15 05:57:11', '2024-05-15 05:57:11'),
(117, 59, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 20, 'Orang / Kali', 30000, '2024-05-15 05:57:11', '2024-05-15 05:57:11'),
(118, 60, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Pejabat Eselon III ke bawah / yang disetarakan', 2, 'Orang / Jam', 900000, '2024-05-15 05:58:34', '2024-05-15 05:58:34'),
(119, 61, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Administrasi\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga Administrasi', 22, 'Orang / Bulan', 1790000, '2024-05-15 06:00:34', '2024-05-15 06:00:34'),
(120, 61, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Teknis\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga Teknis', 11, 'Orang / Bulan', 1870000, '2024-05-15 06:00:34', '2024-05-15 06:00:34'),
(121, 62, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 10, 'Meter', 30000, '2024-05-15 06:02:05', '2024-05-15 06:02:05'),
(122, 62, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Dekorasi Taman', 1, 'Paket', 550000, '2024-05-15 06:02:05', '2024-05-15 06:02:05'),
(123, 63, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 60, 'Orang / Hari', 50000, '2024-05-15 06:03:14', '2024-05-15 06:03:14'),
(124, 64, 'Cetak Buku\r\nSpesifikasi: Buku Profil', 16, 'Buah', 275000, '2024-05-15 06:04:35', '2024-05-15 06:04:35'),
(125, 65, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 10, 'Orang / Kali', 15000, '2024-05-15 06:06:22', '2024-05-15 06:06:22'),
(126, 65, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 10, 'Orang / Kali', 30000, '2024-05-15 06:06:22', '2024-05-15 06:06:22'),
(127, 66, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 215, 'Orang / Kali', 15000, '2024-05-15 06:07:52', '2024-05-15 06:07:52'),
(128, 66, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 215, 'Orang / Kali', 30000, '2024-05-15 06:07:52', '2024-05-15 06:07:52'),
(129, 67, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 10, 'Orang / Kali', 15000, '2024-05-15 06:09:04', '2024-05-15 06:09:04'),
(130, 67, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 10, 'Orang / Kali', 30000, '2024-05-15 06:09:04', '2024-05-15 06:09:04'),
(131, 68, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Kepala Daerah/Pejabat Setingkat Kepala Daerah/Pejabat Daerah Lainnya yang disetarakan', 1, 'Orang / Jam', 1400000, '2024-05-15 06:11:42', '2024-05-15 06:11:42'),
(132, 68, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Pejabat Eselon III ke bawah / yang disetarakan', 1, 'Orang / Jam', 900000, '2024-05-15 06:11:42', '2024-05-15 06:11:42'),
(133, 69, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Teknis\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga Teknis', 11, 'Orang / Bulan', 1870000, '2024-05-15 06:12:53', '2024-05-15 06:12:53'),
(134, 70, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 9, 'Meter', 25000, '2024-05-15 06:13:58', '2024-05-15 06:13:58'),
(135, 71, 'Sewa Alat Kantor Lainnya\r\nSpesifikasi: kursi plastik', 150, 'buah', 4000, '2024-05-15 06:15:17', '2024-05-15 06:15:17'),
(136, 71, 'Sewa Alat Kantor Lainnya\r\nSpesifikasi: Tenda Perunit', 2, 'unit', 1500000, '2024-05-15 06:15:17', '2024-05-15 06:15:17'),
(137, 72, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 208, 'Orang / Hari', 50000, '2024-05-15 06:16:16', '2024-05-15 06:16:16'),
(138, 73, 'Uang yang Diberikan kepada RT atau dengan Sebutan Lain\r\nSpesifikasi: Honor RT', 2100, 'Orang / Bulan', 500000, '2024-05-15 06:17:22', '2024-05-15 06:17:22'),
(139, 74, 'Uang yang Diberikan kepada RW atau dengan Sebutan Lain\r\nSpesifikasi: Honor RW', 396, 'Orang / Bulan', 500000, '2024-05-15 06:18:33', '2024-05-15 06:18:33'),
(140, 75, 'Jasa yang Diberikan kepada Masyarakat\r\nSpesifikasi: Paket Data', 2496, 'Orang / Bulan', 50000, '2024-05-15 06:19:27', '2024-05-15 06:19:27'),
(141, 76, 'Cetak Map besar\r\nSpesifikasi: Glosy', 210, 'Buah', 18000, '2024-05-15 06:21:17', '2024-05-15 06:21:17'),
(142, 77, 'Foto Copy\r\nSpesifikasi: Kertas F4', 7800, 'Lembar', 300, '2024-05-15 06:22:40', '2024-05-15 06:22:40'),
(143, 78, 'Langganan Jurnal Surat Kabar Majalah\r\nSpesifikasi: Belanja Jasa surat Kabar/Majalah', 24, 'Bulan', 150000, '2024-05-15 06:23:56', '2024-05-15 06:23:56'),
(144, 79, 'Jasa Telepon - Tagihan Telepon\r\nSpesifikasi: Tagihan Rp. 450.000 / Bulan', 12, 'Per Bulan', 452500, '2024-05-15 06:44:05', '2024-05-15 06:44:05'),
(145, 80, 'Jasa Air - Tagihan Air\r\nSpesifikasi: Tagihan Rp. 150.000 / Bulan', 12, 'Per Bulan', 152500, '2024-05-15 06:45:04', '2024-05-15 06:45:04'),
(146, 81, 'Jasa Listrik - Tagihan Listrik\r\nSpesifikasi: Tagihan Rp. 5.050.000 / Bulan', 12.6892627, 'Per Bulan', 5052500, '2024-05-15 06:46:08', '2024-05-15 06:46:08'),
(147, 82, 'Jasa Kawat/Faksimili/Internet/TV Berlangganan - Tagihan Kawat/Faksimili/Internet/TV Berlangganan\r\nSpesifikasi: Tagihan Rp. 3.000.000 / Bulan', 11, 'Per Bulan', 3002500, '2024-05-15 06:47:20', '2024-05-15 06:47:20'),
(148, 83, 'Honorarium/Upah/Gaji untuk pegawai Non ASN Rumpun Tenaga Administrasi\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga', 11, 'Orang / Bulan', 1790000, '2024-05-15 06:49:39', '2024-05-15 06:49:39'),
(149, 83, 'Administrasi Honorarium/Upah/Gaji untuk pegawai Non ASN Tenaga Kontrak\r\nSpesifikasi: Tenaga Administrasi', 11, 'Orang / Bulan', 2486500, '2024-05-15 06:49:39', '2024-05-15 06:49:39'),
(150, 84, 'Honorarium/Upah/Gaji untuk Pegawai Non ASN Tenaga Supir \r\nSpesifikasi: Pengemudi Wali Kota, Wakil Wali Kota, Sekretaris Daerah,Pimpinan DPRD, Asisten Sekretaris Daerah, Staf Ahli, Kepala Bagian di Lingkungan Sekretariat Daerah, dan Kepala Perangkat Daerah', 11, 'Orang / Bulan', 3486088, '2024-05-15 06:51:31', '2024-05-15 06:51:31'),
(151, 85, 'Iuran Jaminan Kesehatan bagi Non ASN\r\nSpesifikasi: Iuran Jaminan Kesehatan bagi Non ASN', 333, 'Orang / Bulan', 103050, '2024-05-15 06:52:49', '2024-05-15 06:52:49'),
(152, 86, 'Iuran Jaminan Kecelakaan Kerja bagi Non ASN\r\nSpesifikasi: JKK', 11, 'Orang / Bulan', 6183, '2024-05-15 06:54:44', '2024-05-15 06:54:44'),
(153, 86, 'Iuran Jaminan Kecelakaan Kerja bagi Non ASN\r\nSpesifikasi: JKK', 322, 'Orang / Bulan', 6182, '2024-05-15 06:54:44', '2024-05-15 06:54:44'),
(154, 87, 'Iuran Jaminan Kematian bagi Non ASN\r\nSpesifikasi: JKM', 322, 'Orang / Bulan', 7728, '2024-05-15 06:55:51', '2024-05-15 06:55:51'),
(155, 87, 'Iuran Jaminan Kematian bagi Non ASN\r\nSpesifikasi: JKM', 11, 'Orang / Bulan', 7729, '2024-05-15 06:55:51', '2024-05-15 06:55:51'),
(156, 88, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 311, 'Orang / Kali', 15000, '2024-05-15 06:58:11', '2024-05-15 06:58:11'),
(157, 88, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 311, 'Orang / Kali', 30000, '2024-05-15 06:58:11', '2024-05-15 06:58:11'),
(158, 89, 'Bahan Bakar Minyak Perjalanan Dinas Biasa\r\nSpesifikasi: Pertamax', 237.895489, 'Liter', 13300, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(159, 89, 'Perjalanan Dinas Biasa\r\nSpesifikasi: Atcost Tol dan Parkir', 15, 'Kali', 200000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(160, 89, 'SATUAN BIAYA PENGINAPAN PERJALANAN DINAS DALAM NEGERI DKI JAKARTA\r\nSpesifikasi: PEJABAT ESELON IV / GOLONGAN III', 3, 'Orang / Hari', 730000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(161, 89, 'SATUAN BIAYA PENGINAPAN PERJALANAN DINAS DALAM NEGERI JAWA TIMUR\r\nSpesifikasi: GOLONGAN I / II', 15, 'Orang / Hari', 664000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(162, 89, 'SATUAN BIAYA PENGINAPAN PERJALANAN DINAS DALAM NEGERI JAWA TIMUR\r\nSpesifikasi: PEJABAT ESELON III / GOLONGAN IV', 5, 'Orang / Hari', 1076000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(163, 89, 'SATUAN BIAYA TAKSI PERJALANAN DINAS DALAM PROVINSI NEGERI\r\nSpesifikasi: D.K.I. Jakarta', 2, 'Orang / Kali', 256000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(164, 89, 'Satuan Biaya Tiket Pesawat Perjalanan Dinas Dalam Negeri - Luar Daerah (PP) Kelas Ekonomi\r\nSpesifikasi: Surabaya - Jakarta', 3, 'Orang / Kali', 2674000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(165, 89, 'Satuan Biaya Uang Harian Perjalanan Dinas Jabatan Keluar Wilayah Kota Probolinggo DKI Jakarta\r\nSpesifikasi: ASN - PNS, TNI, POLRI', 3, 'Orang / Hari', 520000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(166, 89, 'Satuan Biaya Uang Harian Perjalanan Dinas Jabatan Keluar Wilayah Kota Probolinggo Jawa Timur\r\nSpesifikasi: ASN - PNS, TNI, POLRI', 63, 'Orang / Hari', 400000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(167, 89, 'Satuan Biaya Uang Harian Perjalanan Dinas Jabatan Keluar Wilayah Kota Probolinggo Jawa Timur\r\nSpesifikasi: Non ASN', 15, 'Orang / Hari', 250000, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(168, 90, 'Foto Copy\r\nSpesifikasi: Kertas F4', 1583.333, 'Lembar', 300, '2024-05-15 07:11:06', '2024-05-15 07:11:06'),
(169, 91, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 45, 'Orang / Kali', 15000, '2024-05-15 07:12:40', '2024-05-15 07:12:40'),
(170, 91, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 45, 'Orang / Kali', 30000, '2024-05-15 07:12:40', '2024-05-15 07:12:40'),
(171, 92, 'ballpoint\r\nSpesifikasi: ballpoint', 10, 'Pak', 20000, '2024-05-15 07:22:35', '2024-05-15 07:22:35'),
(172, 92, 'Buku NoteBook/Buku Agenda\r\nSpesifikasi: Buku NoteBook/Buku Agenda', 100, 'Buah', 5000, '2024-05-15 07:22:35', '2024-05-15 07:22:35'),
(173, 92, 'Map plastik\r\nSpesifikasi: Map plastik kancing', 100, 'Buah', 7700, '2024-05-15 07:22:35', '2024-05-15 07:22:35'),
(174, 93, 'ballpoint\r\nSpesifikasi: ballpoint', 19, 'Pak', 20000, '2024-05-15 07:24:19', '2024-05-15 07:24:19'),
(175, 93, 'Buku NoteBook/Buku Agenda\r\nSpesifikasi: Buku NoteBook/Buku Agenda', 222, 'Buah', 5000, '2024-05-15 07:24:19', '2024-05-15 07:24:19'),
(176, 93, 'Map plastik\r\nSpesifikasi: Map plastik kancing', 222, 'Buah', 7700, '2024-05-15 07:24:19', '2024-05-15 07:24:19'),
(177, 94, 'Alat Tulis Kantor\r\nSpesifikasi: Cetak Buku', 30, 'Buku', 150000, '2024-05-15 07:25:11', '2024-05-15 07:25:11'),
(178, 95, 'Foto Copy\r\nSpesifikasi: Kertas F4', 1179.333, 'Lembar', 300, '2024-05-15 07:26:01', '2024-05-15 07:26:01'),
(179, 96, 'Foto Copy\r\nSpesifikasi: Kertas F4', 2320, 'Lembar', 300, '2024-05-15 07:26:57', '2024-05-15 07:26:57'),
(180, 97, 'Foto Copy\r\nSpesifikasi: Kertas F4', 2035.333, 'Lembar', 300, '2024-05-15 07:27:40', '2024-05-15 07:27:40'),
(181, 98, 'Foto Copy\r\nSpesifikasi: Kertas F4', 273.3333, 'Lembar', 300, '2024-05-15 07:28:35', '2024-05-15 07:28:35'),
(182, 99, 'Foto Copy\r\nSpesifikasi: Kertas F4', 201.666666, 'Lembar', 300, '2024-05-15 07:29:25', '2024-05-15 07:29:25'),
(183, 100, 'Foto Copy\r\nSpesifikasi: Kertas F4', 566, 'Lembar', 300, '2024-05-15 07:30:17', '2024-05-15 07:30:17'),
(184, 101, 'Foto Copy\r\nSpesifikasi: Kertas F4', 66.6667, 'Lembar', 300, '2024-05-15 07:31:02', '2024-05-15 07:31:02'),
(185, 102, 'Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH) - Mahmud NIK. 3574011005550001 Jl. Galunggung RT.01 RW.05 Kelurahan Triwung Kidul Kec. Kademangan\r\nSpesifikasi: Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH)', 1, 'Unit', 20000000, '2024-05-15 07:40:51', '2024-05-15 07:40:51'),
(186, 102, 'Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH) - Djumaina NIK. 3574015407600001 Dusun Makmur RT.02 RW.04 Kelurahan Triwung Kidul Kec. Kademangan\r\nSpesifikasi: Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH)', 1, 'Unit', 20000000, '2024-05-15 07:40:51', '2024-05-15 07:40:51'),
(187, 102, 'Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH) - Nati NIK. 3574014107670187 Jl. Merbabu III RT.06 RW.03 Kelurahan Triwung Lor Kec. Kademangan\r\nSpesifikasi: Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH)', 1, 'Unit', 20000000, '2024-05-15 07:40:51', '2024-05-15 07:40:51'),
(188, 102, 'Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH) - Suparmanto NIK. 3574010112730002 Jl. Tambora RT.01 RW.03 Kelurahan Kademangan Kec. Kademangan\r\nSpesifikasi: Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH)', 1, 'Unit', 20000000, '2024-05-15 07:40:51', '2024-05-15 07:40:51'),
(189, 102, 'Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH) - Gema NIK. 3574014107480015 Blok Jurang RT.05 RW.04 Kelurahan Kademangan Kec. Kademangan\r\nSpesifikasi: Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH)', 1, 'Unit', 20000000, '2024-05-15 07:40:51', '2024-05-15 07:40:51'),
(190, 102, 'Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH) - Hawa NIK. 3574014107520117 Dusun Bardin RT.06 RW.03 Kelurahan Triwung Lor Kec. Kademangan\r\nSpesifikasi: Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH)', 1, 'Unit', 20000000, '2024-05-15 07:40:51', '2024-05-15 07:40:51'),
(191, 103, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 75, 'Orang / Kali', 15000, '2024-05-15 07:42:52', '2024-05-15 07:42:52'),
(192, 103, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 75, 'Orang / Kali', 30000, '2024-05-15 07:42:52', '2024-05-15 07:42:52'),
(193, 104, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 140, 'Orang / Kali', 15000, '2024-05-15 07:44:19', '2024-05-15 07:44:19'),
(194, 104, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Nasi Kotak', 140, 'Orang / Kali', 25000, '2024-05-15 07:44:19', '2024-05-15 07:44:19'),
(195, 105, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 222, 'Orang / Kali', 15000, '2024-05-15 07:45:24', '2024-05-15 07:45:24'),
(196, 105, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Nasi Kotak', 222, 'Orang / Kali', 25000, '2024-05-15 07:45:24', '2024-05-15 07:45:24'),
(197, 106, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 335, 'Orang / Kali', 15000, '2024-05-15 07:46:30', '2024-05-15 07:46:30'),
(198, 106, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 335, 'Orang / Kali', 30000, '2024-05-15 07:46:30', '2024-05-15 07:46:30'),
(199, 107, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 70, 'Orang / Kali', 15000, '2024-05-15 07:47:41', '2024-05-15 07:47:41'),
(200, 107, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 70, 'Orang / Kali', 30000, '2024-05-15 07:47:41', '2024-05-15 07:47:41'),
(201, 108, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 70, 'Orang / Kali', 15000, '2024-05-15 07:49:33', '2024-05-15 07:49:33'),
(202, 108, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 70, 'Orang / Kali', 30000, '2024-05-15 07:49:33', '2024-05-15 07:49:33'),
(203, 109, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Kudapan', 98, 'Orang / Kali', 15000, '2024-05-15 07:50:42', '2024-05-15 07:50:42'),
(204, 109, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Nasi Kotak', 98, 'Orang / Kali', 25000, '2024-05-15 07:50:42', '2024-05-15 07:50:42'),
(205, 110, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Moderator', 2, 'Orang / Jam', 400000, '2024-05-15 07:51:50', '2024-05-15 07:51:50'),
(206, 111, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Moderator', 6, 'Orang / Jam', 400000, '2024-05-15 07:52:47', '2024-05-15 07:52:47'),
(207, 112, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Moderator', 1, 'Orang / Jam', 400000, '2024-05-15 07:53:32', '2024-05-15 07:53:32'),
(208, 113, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Moderator', 1, 'Orang / Jam', 400000, '2024-05-15 07:54:21', '2024-05-15 07:54:21'),
(209, 114, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Moderator', 2, 'Orang / Jam', 400000, '2024-05-15 07:55:13', '2024-05-15 07:55:13'),
(210, 115, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Moderator', 2, 'Orang / Jam', 400000, '2024-05-15 07:56:07', '2024-05-15 07:56:07'),
(211, 116, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Moderator', 6, 'Orang / Jam', 400000, '2024-05-15 07:56:59', '2024-05-15 07:56:59'),
(212, 117, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Pejabat Eselon III ke bawah / yang disetarakan', 1, 'Orang / Jam', 900000, '2024-05-15 07:58:10', '2024-05-15 07:58:10'),
(213, 118, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Pejabat Eselon III ke bawah / yang disetarakan', 1, 'Orang / Jam', 900000, '2024-05-15 07:59:11', '2024-05-15 07:59:11'),
(214, 119, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Pejabat Eselon III ke bawah / yang disetarakan', 1, 'Orang / Jam', 900000, '2024-05-15 08:00:14', '2024-05-15 08:00:14'),
(215, 120, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Pejabat Eselon III ke bawah / yang disetarakan', 2, 'Orang / Jam', 900000, '2024-05-15 08:00:58', '2024-05-15 08:00:58'),
(216, 121, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Tenaga Fasilitator Teknis Bangunan Fisik ( TFL )', 6, 'Orang / Kegiatan', 1500000, '2024-05-15 08:02:00', '2024-05-15 08:02:00'),
(217, 122, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Anggota', 180, 'Orang / Bulan', 200000, '2024-05-16 05:32:08', '2024-05-16 05:32:08'),
(218, 123, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Anggota', 1440, 'Orang / Bulan', 200000, '2024-05-16 05:33:36', '2024-05-16 05:33:36'),
(219, 124, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Bendahara', 12, 'Orang / Bulan', 225000, '2024-05-16 05:34:38', '2024-05-16 05:34:38'),
(220, 125, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Bendahara', 72, 'Orang / Bulan', 225000, '2024-05-16 05:35:40', '2024-05-16 05:35:40'),
(221, 126, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Ketua', 12, 'Orang / Bulan', 250000, '2024-05-16 05:36:42', '2024-05-16 05:36:42'),
(222, 127, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Ketua', 72, 'Orang / Bulan', 250000, '2024-05-16 05:37:51', '2024-05-16 05:37:51'),
(223, 128, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Sekretaris', 12, 'Orang / Bulan', 225000, '2024-05-16 05:38:45', '2024-05-16 05:38:45'),
(224, 129, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Sekretaris', 72, 'Orang / Bulan', 225000, '2024-05-16 05:39:42', '2024-05-16 05:39:42'),
(225, 130, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Wakil Ketua', 12, 'Orang / Bulan', 225000, '2024-05-16 05:40:46', '2024-05-16 05:40:46'),
<<<<<<< HEAD
=======
(226, 131, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Wakil Ketua', 12, 'Orang / Bulan', 225000, '2024-05-16 05:40:47', '2024-05-16 05:40:47'),
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
(227, 132, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Wakil Ketua', 72, 'Orang / Bulan', 225000, '2024-05-16 05:41:49', '2024-05-16 05:41:49'),
(228, 133, 'Honorarium/Upah/Gaji untuk pegawai Non ASN - Rumpun Tenaga Teknis\r\nSpesifikasi: Pegawai Tidak Tetap Tenaga Teknis', 11, 'Orang / Bulan', 1870000, '2024-05-16 05:43:06', '2024-05-16 05:43:06'),
(229, 134, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 12, 'Meter', 30000, '2024-05-16 05:44:20', '2024-05-16 05:44:20'),
(230, 135, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 60, 'Meter', 30000, '2024-05-16 05:45:04', '2024-05-16 05:45:04'),
(231, 136, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 7, 'Meter', 30000, '2024-05-16 05:45:52', '2024-05-16 05:45:52'),
(232, 137, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 5, 'Meter', 30000, '2024-05-16 05:46:37', '2024-05-16 05:46:37'),
(233, 138, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 5, 'Meter', 30000, '2024-05-16 05:47:17', '2024-05-16 05:47:17'),
(234, 139, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 4, 'Meter', 30000, '2024-05-16 05:47:59', '2024-05-16 05:47:59'),
(235, 140, 'Sewa Alat Kantor Lainnya\r\nSpesifikasi: kursi plastik', 100, 'buah', 4000, '2024-05-16 05:49:10', '2024-05-16 05:49:10'),
(236, 140, 'Sewa Alat Kantor Lainnya\r\nSpesifikasi: Tenda Perunit', 2, 'Unit', 1500000, '2024-05-16 05:49:10', '2024-05-16 05:49:10'),
(237, 141, 'Sewa Alat Rumah Tangga Lainnya (Home Use)\r\nSpesifikasi: sewa meja', 10, 'Unit', 30000, '2024-05-16 05:50:06', '2024-05-16 05:50:06'),
(238, 142, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 75, 'Orang / Hari', 50000, '2024-05-16 05:51:24', '2024-05-16 05:51:24'),
(239, 143, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 100, 'Orang / Hari', 50000, '2024-05-16 05:52:20', '2024-05-16 05:52:20'),
(240, 144, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 198, 'Orang / Hari', 50000, '2024-05-16 05:53:15', '2024-05-16 05:53:15'),
(241, 145, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 260, 'Orang / Hari', 50000, '2024-05-16 05:54:06', '2024-05-16 05:54:06'),
(242, 146, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 50, 'Orang / Hari', 50000, '2024-05-16 05:55:00', '2024-05-16 05:55:00'),
(243, 147, 'Satuan Biaya Uang Saku Bagi\r\nMasyarakat\r\nSpesifikasi: Masyarakat', 60, 'Orang / Hari', 50000, '2024-05-16 05:55:42', '2024-05-16 05:55:42'),
(244, 148, 'Satuan Biaya Uang Saku Bagi Masyarakat\r\nSpesifikasi: Masyarakat', 87, 'Orang / Hari', 50000, '2024-05-16 05:56:32', '2024-05-16 05:56:32'),
(245, 149, 'Uang yang diberikan kepada Karang Taruna\r\nSpesifikasi: Honorarium Ketua Karang Taruna', 84, 'Orang / Hari', 200000, '2024-05-16 05:57:45', '2024-05-16 05:57:45'),
(246, 150, 'Belanja Modal Jaringan Listrik Lainnya\r\nSpesifikasi: Perencanaan PJU Solar Cell (DED)', 5, 'paket', 1100000, '2024-05-16 05:58:42', '2024-05-16 05:58:42'),
(247, 151, 'Pembangunan PJU Solar Cell\r\nSpesifikasi: PJU Solar Cell', 5, 'Paket', 27900000, '2024-05-16 05:59:36', '2024-05-16 05:59:36'),
(248, 152, 'Belanja Modal Jaringan Listrik Lainnya\r\nSpesifikasi: Pengawasan PJU Solar Cell (SPV)', 5, 'Paket', 1000000, '2024-05-16 06:00:29', '2024-05-16 06:00:29'),
<<<<<<< HEAD
=======
(249, 153, 'Belanja Gaji Pokok PNS', 1, 'Tahun', 3018933648, '2024-05-16 06:17:33', '2024-05-16 06:17:33'),
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
(251, 155, 'Belanja Tunjangan Jabatan PNS', 1, 'Tahun', 239850000, '2024-05-16 06:20:44', '2024-05-16 06:20:44'),
(252, 154, 'Belanja Tunjangan Keluarga PNS', 1, 'Tahun', 326875969, '2024-05-16 06:21:24', '2024-05-16 06:21:24'),
(253, 156, 'Belanja Tunjangan Fungsional PNS', 1, 'Tahun', 5535000, '2024-05-16 06:22:45', '2024-05-16 06:22:45'),
(254, 157, 'Belanja Tunjangan Fungsional Umum PNS', 1, 'Tahun', 73308000, '2024-05-16 06:24:13', '2024-05-16 06:24:13'),
(255, 158, 'Belanja Tunjangan Beras PNS', 1, 'Tahun', 199531584, '2024-05-16 06:25:35', '2024-05-16 06:25:35'),
(256, 159, 'Belanja Tunjangan PPh/Tunjangan Khusus PNS', 1, 'Tahun', 8514466, '2024-05-16 06:26:57', '2024-05-16 06:26:57'),
(257, 160, 'Belanja Pembulatan Gaji PNS', 1, 'Tahun', 50996, '2024-05-16 06:28:26', '2024-05-16 06:28:26'),
(258, 161, 'Belanja Iuran Jaminan Kecelakaan Kerja PNS', 1, 'Tahun', 7245441, '2024-05-16 06:29:46', '2024-05-16 06:29:46'),
(259, 162, 'Belanja Iuran Jaminan Kematian PNS', 1, 'Tahun', 21736322, '2024-05-16 06:31:17', '2024-05-16 06:31:17'),
(260, 163, 'Belanja Iuran Simpanan Peserta Tabungan Perumahan Rakyat PNS', 1, 'Tahun', 15094668, '2024-05-16 06:32:41', '2024-05-16 06:32:41'),
(261, 164, 'Tambahan Penghasilan berdasarkan Beban Kerja PNS', 1, 'Tahun', 3941862722, '2024-05-16 06:34:06', '2024-05-16 06:34:06'),
(262, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Bendahara Penerimaan dan Bendahara Pengeluaran\r\nSpesifikasi: Bendahara Penerimaan dan Bendahara Pengeluaran - Nilai pagu dana di atas Rp10 miliar s.d. Rp25 miliar', 12, 'Orang / Bulan', 600000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(263, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Penatausahaan Keuangan (PPK) SKPD\r\nSpesifikasi: PPK SKPD - Nilai pagu dana di atas Rp10 miliar s.d. Rp25 miliar', 12, 'Orang / Bulan', 750000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(264, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembuat Daftar Gaji\r\nSpesifikasi: Pembuat Daftar Gaji - pagu  Rp1,2 milyar', 12, 'Orang / Bulan', 260000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(265, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Seksi Pelayanan\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp100 juta s.d. Rp250 juta', 12, 'Orang / Bulan', 157000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(266, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Seksi Pemerintahan dan Pemmas\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp1 miliar s.d. Rp2,5 miliar', 24, 'Orang / Bulan', 248000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(267, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Seksi Trantib\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp250 juta s.d. Rp500 juta', 12, 'Orang / Bulan', 183000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(268, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Subbag Program & Keuangan\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp5 miliar s.d. Rp10 miliar', 12, 'Orang / Bulan', 326000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(269, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Subbag TU\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp500 juta s.d. Rp1 miliar', 12, 'Orang / Bulan', 209000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(270, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pengguna Anggaran (PA)\r\nSpesifikasi: Pengguna Anggaran Nilai pagu dana di atas Rp10 miliar s.d. Rp25 miliar', 12, 'Orang / Bulan', 1053000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(271, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Seksi Pelayanan\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp100 juta s.d. Rp250 juta', 12, 'Orang / Bulan', 242000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(272, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Seksi Pemmas dan Seksi Pemerintahan\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp1 miliar s.d. Rp2,5 miliar', 24, 'Orang / Bulan', 382000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(273, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Seksi Trantib\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp250 juta s.d. Rp500 juta', 12, 'Orang / Bulan', 282000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(274, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Subbag Program & Keuangan\r\nSpesifikasi: PPTIK - Nilai pagu dana di atas Rp5 miliar s.d. Rp10 miliar', 12, 'Orang / Bulan', 502000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(275, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Subbag TU\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp500 juta s.d. Rp1 miliar', 12, 'Orang / Bulan', 322000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(276, 165, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Staf PPK SKPD/Staf PPK Unit SKPD\r\nSpesifikasi: Staf PPK SKPD/Staf PPK Unit SKPD - Nilai pagu dana di atas Rp10 miliar s.d. Rp25 miliar', 12, 'Orang / Bulan', 375000, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(290, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Bendahara Penerimaan Pembantu dan Bendahara Pengeluaran Pembantu\r\nSpesifikasi: Bendahara Penerimaan Pembantu dan Bendahara Pengeluaran Pembantu - Nilai pagu dana di atas Rp500 juta s.d. Rp1 miliar', 72, 'Orang / Bulan', 220000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(291, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Kuasa Pengguna Anggaran (KPA)\r\nSpesifikasi: Kuasa Pengguna Anggaran - Nilai pagu dana di atas Rp500 juta s.d. Rp1 miliar', 72, 'Orang / Bulan', 407000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(292, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Dakel Pemmas Kel. Kademangan, Kel. Ketapang, Kel. Triwung Lor dan Dakel Sarpras 6 Kel.\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp100 juta s.d. Rp250 juta', 108, 'Orang / Bulan', 157000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(293, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK -  Pemdok Dakel Pemmas Kel. Pilang dan Kel. Triwung Kidul \r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp250 juta s.d. Rp500 juta', 24, 'Orang / Bulan', 183000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(294, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Dakel Pemmas Kel. Pohsangit Kidul\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana s.d. Rp100 juta', 12, 'Orang / Bulan', 131000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(295, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Seksi Pelayanan Kel. Kademangan, Kel. Ketapang, Kel. Triwung Lor\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp100 juta s.d. Rp250 juta', 36, 'Orang / Bulan', 157000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(296, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pembantu PPTK - Pemdok Seksi Pelayanan Kel. Pilang, Kel. Triwung Kidul, Kel. Pohsangit Kidul\r\nSpesifikasi: Pembantu PPTK - Nilai pagu dana di atas Rp250 juta s.d. Rp500 juta', 36, 'Orang / Bulan', 183000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(297, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Penatausahaan Keuangan (PPK) Unit SKPD\r\nSpesifikasi: PPK Unit SKPD - Nilai pagu dana di atas Rp500 juta s.d. Rp1 miliar', 72, 'Orang / Bulan', 317000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(298, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Dakel Pemmas Kel. Kademangan,  Ketapang, Triwung Lor, dan Dakel Sarpras 6 Kel.\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp100 juta s.d. Rp250 juta', 108, 'Orang / Bulan', 242000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(299, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Dakel Pemmas Kel. Pilang dan Kel. Triwung Kidul\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp250 juta s.d. Rp500 juta', 24, 'Orang / Bulan', 282000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(300, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) -  PPTK Dakel Pemmas Kel. Pohsangit Kidul\r\nSpesifikasi: PPTK - Nilai pagu dana s.d. Rp100 juta', 12, 'Orang / Bulan', 202000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(301, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) -  PPTK Seksi Pelayanan Kel. Kademangan, Kel. Ketapang, Kel. Triwung Lor\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp100 juta s.d. Rp250 juta', 36, 'Orang / Bulan', 242000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(302, 167, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD Pejabat Pelaksana Teknis Kegiatan (PPTK) - PPTK Seksi Pelayanan Kel. Pilang, Kel. Triwung Kidul, Kel. Pohsangit Kidul\r\nSpesifikasi: PPTK - Nilai pagu dana di atas Rp250 juta s.d. Rp500 juta', 36, 'Orang / Bulan', 282000, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(303, 168, 'Honorarium Pejabat/Pengelola Keuangan SKPD dan Unit SKPD\r\nPengurus Barang Spesifikasi: Pengurus Barang - Pagu Rp10 milyar', 12, 'Orang / Bulan', 413000, '2024-05-16 07:15:08', '2024-05-16 07:15:08'),
(304, 169, 'Bahan Bakar dan Pelumas\r\nSpesifikasi: DexLite', 542.329197, 'Liter', 13700, '2024-05-16 07:26:23', '2024-05-16 07:26:23'),
(305, 171, 'Ballpoin Pen\r\nSpesifikasi: Standart AE', 18, 'Pack', 21000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(306, 171, 'ballpoint\r\nSpesifikasi: ballpoint Gel Liner untuk Tanda Tangan', 15, 'Pack', 45000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(307, 171, 'Binder Clip 111\r\nSpesifikasi: Binder Clip 111', 22, 'Dus', 10000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(308, 171, 'Binder Clip 200\r\nSpesifikasi: Binder Clip 200', 30, 'Kotak', 14000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(309, 171, 'Binder Clip\r\nSpesifikasi: No. 105', 20, 'Pack', 4500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(310, 171, 'Binder Clip\r\nSpesifikasi: No. 107', 21, 'Pack', 5000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(311, 171, 'Binder Clip\r\nSpesifikasi: No. 155', 20, 'Pack', 13700, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(312, 171, 'Binder Clip\r\nSpesifikasi: No. 260', 10, 'Pack', 20000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(313, 171, 'BUFFALO WARNA F4\r\nSpesifikasi: KERTAS BUFFALO F4 WARNA', 20, 'Pak', 28500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(314, 171, 'Buku KWITANSI 50LBR\r\nSpesifikasi: Buku KWITANSI ISI 50 Lembar', 20, 'Buah', 7000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(315, 171, 'Cutter L-500\r\nSpesifikasi: Pisau Pemotong Serba Guna Tipe L-500', 21, 'Pcs', 14900, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(316, 171, 'Cutter\r\nSpesifikasi: Cutter Kecil A-300', 25, 'Buah', 7500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(317, 171, 'Dos arsip\r\nSpesifikasi: Dos arsip', 100, 'Buah', 41500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(318, 171, 'Isi cutter\r\nSpesifikasi: Isi cutter A-100 Pak', 15, 'Pak', 15000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(319, 171, 'Isi staples\r\nSpesifikasi: Isi staples 10- 1m', 60, 'Pack', 4100, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(320, 171, 'Isolasi Bening Besar\r\nSpesifikasi: Isolasi Bening Besar', 15, 'Buah', 11000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(321, 171, 'Isolasi Lakban Hitam\r\nSpesifikasi: Isolasi Lakban Hitam', 30, 'Buah', 15000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
<<<<<<< HEAD
(322, 171, 'Lem kertas\r\nSpesifikasi: Lem kertas', 10, 'Botol', 16000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(323, 171, 'Map Plastik\r\nSpesifikasi: snelhecter', 5, 'Pack', 42000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(324, 171, 'Mika bening\r\nSpesifikasi: Mika bening', 20, 'Pak', 30000, '2024-05-16 07:36:42', '2024-05-16 07:36:42');
INSERT INTO `detail_dpas` (`id`, `dpa_id`, `nama_barang`, `volume`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
=======
(322, 171, 'Lem kertas\r\nSpesifikasi: Lem kertas', 10, 'Botol', 16000, '2024-05-16 07:36:42', '2024-05-16 07:36:42');
INSERT INTO `detail_dpas` (`id`, `dpa_id`, `nama_barang`, `volume`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
(323, 171, 'Map Plastik\r\nSpesifikasi: snelhecter', 5, 'Pack', 42000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(324, 171, 'Mika bening\r\nSpesifikasi: Mika bening', 20, 'Pak', 30000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
(325, 171, 'Paper Klip\r\nSpesifikasi: Penjepit Kertas Binder Klips 260', 5, 'Pak', 27500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(326, 171, 'Penghapus / Korektor\r\nSpesifikasi: Penghapus / Korektor Tipex', 30, 'Buah', 6500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(327, 171, 'Penghapus Pensil\r\nSpesifikasi: Putih', 10, 'Buah', 3500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(328, 171, 'Pensil 2B\r\nSpesifikasi: 1 Pack (isi 12 Pcs)', 1, 'Pack', 43500, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(329, 171, 'Post it\r\nSpesifikasi: Post it kertas', 15, 'Pack', 7000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(330, 171, 'Spidol/broakmarker permanen\r\nSpesifikasi: Spidol/broakmarker\r\npermanen', 10, 'Buah', 10000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(331, 171, 'Spidol White Board Marker\r\nSpesifikasi: Spidol Besar BG-12 White\r\nBoard Marker (Papan)', 14, 'Pcs', 11000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(332, 171, 'Stabilo Warna\r\nSpesifikasi: Stabilo Warna', 20, 'Buah', 5000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(333, 171, 'Tinta Stempel\r\nSpesifikasi: Stempel Flash', 20, 'Botol', 17000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(334, 172, 'Amplop Kecil\r\nSpesifikasi: Amplop Kecil', 15, 'Buah', 15000, '2024-05-16 07:38:01', '2024-05-16 07:38:01'),
(335, 173, 'Kertas HVS F4\r\nSpesifikasi: Kertas F4 70 Gram', 240, 'Rim', 57000, '2024-05-16 07:39:02', '2024-05-16 07:39:02'),
(336, 174, 'Spesifikasi: Model Number CF B4 P Unit 1Box Ply 4 Number of Sheets (sheets) 500 Color White Size (inch) 14 7/811 Berat (Kg) 8', 1, 'Dos', 631590, '2024-05-16 07:41:05', '2024-05-16 07:41:05'),
(337, 175, 'Materai\r\nSpesifikasi: Materai 10.000', 250, 'Lembar', 11500, '2024-05-16 07:41:56', '2024-05-16 07:41:56'),
(338, 176, 'Flash disk\r\nSpesifikasi: Flash disk 64GB', 10, 'Buah', 150000, '2024-05-16 07:43:38', '2024-05-16 07:43:38'),
(339, 176, 'Mouse Wirelles\r\nSpesifikasi: Mouse Wirelles', 10, 'Unit', 264500, '2024-05-16 07:43:38', '2024-05-16 07:43:38'),
(340, 176, 'Tinta\r\nSpesifikasi: Tinta Hitam', 50, 'Botol', 125000, '2024-05-16 07:43:38', '2024-05-16 07:43:38'),
(341, 176, 'Tinta Warna\r\nSpesifikasi: Tinta Warna', 50, 'Botol', 125000, '2024-05-16 07:43:38', '2024-05-16 07:43:38'),
(342, 177, 'Bahan pembasmi serangga\r\nSpesifikasi: Bahan pembasmi serangga', 18, 'Buah', 35500, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(343, 177, 'Kanebo\r\nSpesifikasi: Kanebo', 4, 'Buah', 55000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(344, 177, 'KeSet\r\nSpesifikasi: KeSet', 25, 'Buah', 25000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(345, 177, 'Pengharum mobil\r\nSpesifikasi: Pengharum mobil', 12, 'Buah', 25000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(346, 177, 'pengharum ruangan\r\nSpesifikasi: pengharum ruangan spray', 10, 'Botol', 51000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(347, 177, 'Pengharum ruangan toilet\r\nSpesifikasi: Pengharum ruangan toilet', 20, 'Buah', 30000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(348, 177, 'Pengkilap ban mobil shampo mobil\r\nSpesifikasi: Pengkilap ban mobil shampo mobil', 5, 'Buah', 50000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(349, 177, 'Sabun cuci piring\r\nSpesifikasi: Sabun cuci piring', 11, 'Buah', 12400, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(350, 177, 'Sabun Cuci Tangan\r\nSpesifikasi: Sabun Cuci Tangan', 10, 'Botol', 35000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(351, 177, 'Sabun\r\nSpesifikasi: Sabun cair', 15, 'Botol', 35000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(352, 177, 'Spon Cuci Piring\r\nSpesifikasi: Sikat Spon cuci piring', 7, 'Buah', 8000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(353, 177, 'Stela gantung\r\nSpesifikasi: Stela gantung', 20, 'Buah', 12000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(354, 177, 'Tisue\r\nSpesifikasi: 1kg', 25, 'Unit', 46000, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(355, 178, 'Baterai AAA\r\nSpesifikasi: Baterai Alkaline AAA', 80, 'Buah', 14000, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(356, 178, 'Baterai AA\r\nSpesifikasi: Baterai AA', 50, 'Pak', 19000, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(357, 178, 'kabel olor\r\nSpesifikasi: kabel olor', 15, 'Buah', 75000, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(358, 178, 'Lampu LED 19w\r\nSpesifikasi: Lampu LED 19w', 8, 'Buah', 95000, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(359, 178, 'Lampu LED\r\nSpesifikasi: Lampu LED 4 watt', 8, 'Buah', 35000, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(360, 178, 'Lampu\r\nSpesifikasi: 10 watt Led', 13, 'Buah', 37000, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(361, 178, 'Lampu\r\nSpesifikasi: Lampu LED 12 Watt', 7, 'Buah', 48000, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(362, 179, 'Umbul-umbul\r\nSpesifikasi: Umbul-umbul', 1, 'Tahun', 3000000, '2024-05-16 07:51:18', '2024-05-16 07:51:18'),
(363, 180, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 66.5, 'Meter', 30000, '2024-05-16 07:52:14', '2024-05-16 07:52:14'),
(364, 181, 'ballpoint\r\nSpesifikasi: Standart', 15, 'Pack', 27000, '2024-05-16 07:54:39', '2024-05-16 07:54:39'),
(365, 181, 'Bloknote Paperline A5\r\nSpesifikasi: Bloknote Ppaperline A5 Ecer', 90, 'Pcs', 5000, '2024-05-16 07:54:39', '2024-05-16 07:54:39'),
(366, 181, 'Foto Copy\r\nSpesifikasi: Kertas F4', 4245, 'Lembar', 300, '2024-05-16 07:54:39', '2024-05-16 07:54:39'),
(367, 181, 'Map Plastik\r\nSpesifikasi: Map kancing ukuran f4', 15, 'Pack', 34000, '2024-05-16 07:54:39', '2024-05-16 07:54:39'),
(368, 182, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat Kudapan', 90, 'Orang / Kali', 15000, '2024-05-16 07:55:59', '2024-05-16 07:55:59'),
(369, 182, 'Satuan Biaya Konsumsi Rapat Dalam Kantor dan Kegiatan Lapangan\r\nSpesifikasi: Mamin Rapat - Makan', 90, 'Orang / Kali', 30000, '2024-05-16 07:55:59', '2024-05-16 07:55:59'),
(370, 183, 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia\r\nSpesifikasi: Honorarium Narasumber / Pembahas / Tenaga Ahli - Pejabat Eselon III ke bawah / yang disetarakan', 2, 'Orang / Jam', 900000, '2024-05-16 07:57:12', '2024-05-16 07:57:12'),
<<<<<<< HEAD
(371, 184, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 8.333333333333332, 'Meter', 30000, '2024-05-16 07:58:16', '2024-05-16 07:58:16'),
(372, 153, 'Belanja Gaji Pokok PNS', 1, 'Tahun', 3018933648, '2024-05-31 00:41:36', '2024-05-31 00:41:36');
=======
(371, 184, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 8.333333333333332, 'Meter', 30000, '2024-05-16 07:58:16', '2024-05-16 07:58:16');
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

-- --------------------------------------------------------

--
-- Table structure for table `detail_spjs`
--

CREATE TABLE `detail_spjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dpa_id` bigint(20) NOT NULL,
  `detail_dpa_id` bigint(20) NOT NULL,
  `spj_id` bigint(20) NOT NULL,
  `rekening_id` bigint(20) NOT NULL,
  `program_id` bigint(20) NOT NULL,
  `satuan` int(20) NOT NULL,
  `harga` bigint(20) NOT NULL,
<<<<<<< HEAD
  `catatan` tinytext DEFAULT NULL,
=======
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detail_spjs`
--

<<<<<<< HEAD
INSERT INTO `detail_spjs` (`id`, `dpa_id`, `detail_dpa_id`, `spj_id`, `rekening_id`, `program_id`, `satuan`, `harga`, `catatan`, `created_at`, `updated_at`) VALUES
(255, 153, 372, 26, 37, 121, 1, 233737400, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(256, 154, 252, 26, 38, 122, 1, 24593896, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(257, 155, 251, 26, 39, 123, 1, 20380000, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(258, 156, 253, 26, 40, 124, 1, 450000, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(259, 157, 254, 26, 41, 125, 1, 5415000, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(260, 158, 255, 26, 42, 126, 1, 15353040, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(261, 159, 256, 26, 43, 127, 1, 87787, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(262, 160, 257, 26, 44, 128, 1, 2838, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(263, 161, 258, 26, 45, 129, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(264, 162, 259, 26, 46, 130, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(265, 163, 260, 26, 47, 131, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(266, 164, 261, 26, 48, 132, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(267, 165, 262, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(268, 165, 263, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(269, 165, 264, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(270, 165, 265, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(271, 165, 266, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(272, 165, 267, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(273, 165, 268, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(274, 165, 269, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(275, 165, 270, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(276, 165, 271, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(277, 165, 272, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(278, 165, 273, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(279, 165, 274, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(280, 165, 275, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(281, 165, 276, 26, 49, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(282, 167, 290, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(283, 167, 291, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(284, 167, 292, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(285, 167, 293, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(286, 167, 294, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(287, 167, 295, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(288, 167, 296, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(289, 167, 297, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(290, 167, 298, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(291, 167, 299, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(292, 167, 300, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(293, 167, 301, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(294, 167, 302, 26, 49, 160, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(295, 168, 303, 26, 50, 133, 0, 0, NULL, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(296, 153, 372, 27, 37, 121, 1, 4065500, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(297, 154, 252, 27, 38, 122, 1, 406550, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(298, 155, 251, 27, 39, 123, 1, 540000, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(299, 156, 253, 27, 40, 124, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(300, 157, 254, 27, 41, 125, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(301, 158, 255, 27, 42, 126, 1, 144840, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(302, 159, 256, 27, 43, 127, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(303, 160, 257, 27, 44, 128, 1, 31, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(304, 161, 258, 27, 45, 129, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(305, 162, 259, 27, 46, 130, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(306, 163, 260, 27, 47, 131, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(307, 164, 261, 27, 48, 132, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(308, 165, 262, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(309, 165, 263, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(310, 165, 264, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(311, 165, 265, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(312, 165, 266, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(313, 165, 267, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(314, 165, 268, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(315, 165, 269, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(316, 165, 270, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(317, 165, 271, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(318, 165, 272, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(319, 165, 273, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(320, 165, 274, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(321, 165, 275, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(322, 165, 276, 27, 49, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(323, 167, 290, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(324, 167, 291, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(325, 167, 292, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(326, 167, 293, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(327, 167, 294, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(328, 167, 295, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(329, 167, 296, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(330, 167, 297, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(331, 167, 298, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(332, 167, 299, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(333, 167, 300, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(334, 167, 301, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(335, 167, 302, 27, 49, 160, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(336, 168, 303, 27, 50, 133, 0, 0, NULL, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(337, 153, 372, 28, 37, 121, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(338, 154, 252, 28, 38, 122, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(339, 155, 251, 28, 39, 123, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(340, 156, 253, 28, 40, 124, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(341, 157, 254, 28, 41, 125, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(342, 158, 255, 28, 42, 126, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(343, 159, 256, 28, 43, 127, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(344, 160, 257, 28, 44, 128, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(345, 161, 258, 28, 45, 129, 1, 560963, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(346, 162, 259, 28, 46, 130, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(347, 163, 260, 28, 47, 131, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(348, 164, 261, 28, 48, 132, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(349, 165, 262, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(350, 165, 263, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(351, 165, 264, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(352, 165, 265, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(353, 165, 266, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(354, 165, 267, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(355, 165, 268, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(356, 165, 269, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(357, 165, 270, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(358, 165, 271, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(359, 165, 272, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(360, 165, 273, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(361, 165, 274, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(362, 165, 275, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(363, 165, 276, 28, 49, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(364, 167, 290, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(365, 167, 291, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(366, 167, 292, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(367, 167, 293, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(368, 167, 294, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(369, 167, 295, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(370, 167, 296, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(371, 167, 297, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(372, 167, 298, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(373, 167, 299, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(374, 167, 300, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(375, 167, 301, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(376, 167, 302, 28, 49, 160, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(377, 168, 303, 28, 50, 133, 0, 0, NULL, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(378, 153, 372, 29, 37, 121, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(379, 154, 252, 29, 38, 122, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(380, 155, 251, 29, 39, 123, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(381, 156, 253, 29, 40, 124, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(382, 157, 254, 29, 41, 125, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(383, 158, 255, 29, 42, 126, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(384, 159, 256, 29, 43, 127, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(385, 160, 257, 29, 44, 128, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(386, 161, 258, 29, 45, 129, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(387, 162, 259, 29, 46, 130, 1, 1682912, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(388, 163, 260, 29, 47, 131, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(389, 164, 261, 29, 48, 132, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(390, 165, 262, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(391, 165, 263, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(392, 165, 264, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(393, 165, 265, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(394, 165, 266, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(395, 165, 267, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(396, 165, 268, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(397, 165, 269, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(398, 165, 270, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(399, 165, 271, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(400, 165, 272, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(401, 165, 273, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(402, 165, 274, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(403, 165, 275, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(404, 165, 276, 29, 49, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(405, 167, 290, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(406, 167, 291, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(407, 167, 292, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(408, 167, 293, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(409, 167, 294, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(410, 167, 295, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(411, 167, 296, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(412, 167, 297, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(413, 167, 298, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(414, 167, 299, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(415, 167, 300, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(416, 167, 301, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(417, 167, 302, 29, 49, 160, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(418, 168, 303, 29, 50, 133, 0, 0, NULL, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(419, 79, 144, 30, 51, 135, 0, 0, NULL, '2024-05-31 08:35:36', '2024-05-31 08:35:36'),
(420, 80, 145, 30, 52, 136, 0, 0, NULL, '2024-05-31 08:35:36', '2024-05-31 08:35:36'),
(421, 81, 146, 30, 53, 137, 0, 0, NULL, '2024-05-31 08:35:36', '2024-05-31 08:35:36'),
(422, 82, 147, 30, 54, 138, 1, 2429750, NULL, '2024-05-31 08:35:36', '2024-05-31 08:35:36'),
(427, 79, 144, 31, 51, 135, 1, 266407, NULL, '2024-05-31 08:44:23', '2024-05-31 08:44:23'),
(428, 80, 145, 31, 52, 136, 1, 39000, NULL, '2024-05-31 08:44:23', '2024-05-31 08:44:23'),
(429, 81, 146, 31, 53, 137, 1, 5732122, NULL, '2024-05-31 08:44:23', '2024-05-31 08:44:23'),
(430, 82, 147, 31, 54, 138, 0, 0, NULL, '2024-05-31 08:44:23', '2024-05-31 08:44:23'),
(431, 153, 372, 32, 37, 121, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(432, 154, 252, 32, 38, 122, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(433, 155, 251, 32, 39, 123, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(434, 156, 253, 32, 40, 124, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(435, 157, 254, 32, 41, 125, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(436, 158, 255, 32, 42, 126, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(437, 159, 256, 32, 43, 127, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(438, 160, 257, 32, 44, 128, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(439, 161, 258, 32, 45, 129, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(440, 162, 259, 32, 46, 130, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(441, 163, 260, 32, 47, 131, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(442, 164, 261, 32, 48, 132, 1, 327776321, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(443, 165, 262, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(444, 165, 263, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(445, 165, 264, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(446, 165, 265, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(447, 165, 266, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(448, 165, 267, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(449, 165, 268, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(450, 165, 269, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(451, 165, 270, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(452, 165, 271, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(453, 165, 272, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(454, 165, 273, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(455, 165, 274, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(456, 165, 275, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(457, 165, 276, 32, 49, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(458, 167, 290, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(459, 167, 291, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(460, 167, 292, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(461, 167, 293, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(462, 167, 294, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(463, 167, 295, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(464, 167, 296, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(465, 167, 297, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(466, 167, 298, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(467, 167, 299, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(468, 167, 300, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(469, 167, 301, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(470, 167, 302, 32, 49, 160, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(471, 168, 303, 32, 50, 133, 0, 0, NULL, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(472, 92, 171, 33, 60, 60, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(473, 92, 172, 33, 60, 60, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(474, 92, 173, 33, 60, 60, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(475, 93, 174, 33, 60, 61, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(476, 93, 175, 33, 60, 61, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(477, 93, 176, 33, 60, 61, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(478, 94, 177, 33, 60, 62, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(479, 95, 178, 33, 60, 64, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(480, 96, 179, 33, 60, 63, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(481, 97, 180, 33, 60, 65, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(482, 98, 181, 33, 60, 66, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(483, 99, 182, 33, 60, 67, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(484, 100, 183, 33, 60, 68, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(485, 101, 184, 33, 60, 69, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(486, 102, 185, 33, 32, 70, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(487, 102, 186, 33, 32, 70, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(488, 102, 187, 33, 32, 70, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(489, 102, 188, 33, 32, 70, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(490, 102, 189, 33, 32, 70, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(491, 102, 190, 33, 32, 70, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(492, 103, 191, 33, 68, 71, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(493, 103, 192, 33, 68, 71, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(494, 104, 193, 33, 68, 72, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(495, 104, 194, 33, 68, 72, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(496, 105, 195, 33, 68, 73, 74, 15000, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(497, 105, 196, 33, 68, 73, 74, 25000, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(498, 106, 197, 33, 68, 74, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(499, 106, 198, 33, 68, 74, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(500, 107, 199, 33, 68, 75, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(501, 107, 200, 33, 68, 75, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(502, 108, 201, 33, 68, 76, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(503, 108, 202, 33, 68, 76, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(504, 109, 203, 33, 68, 77, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(505, 109, 204, 33, 68, 77, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(506, 110, 205, 33, 4, 78, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(507, 111, 206, 33, 4, 79, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(508, 112, 207, 33, 4, 80, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(509, 113, 208, 33, 4, 81, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(510, 114, 209, 33, 4, 82, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(511, 115, 210, 33, 4, 83, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(512, 116, 211, 33, 4, 84, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(513, 117, 212, 33, 4, 85, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(514, 118, 213, 33, 4, 86, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(515, 119, 214, 33, 4, 87, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(516, 120, 215, 33, 4, 88, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(517, 121, 216, 33, 4, 89, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(518, 122, 217, 33, 5, 90, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(519, 123, 218, 33, 5, 91, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(520, 124, 219, 33, 5, 92, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(521, 125, 220, 33, 5, 93, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(522, 126, 221, 33, 5, 94, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(523, 127, 222, 33, 5, 95, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(524, 128, 223, 33, 5, 96, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(525, 129, 224, 33, 5, 97, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(526, 130, 225, 33, 5, 98, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(527, 131, 226, 33, 5, 98, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(528, 132, 227, 33, 5, 99, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(529, 133, 228, 33, 6, 100, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(530, 134, 229, 33, 7, 101, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(531, 135, 230, 33, 7, 102, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(532, 136, 231, 33, 7, 103, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(533, 137, 232, 33, 7, 104, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(534, 138, 233, 33, 7, 105, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(535, 139, 234, 33, 7, 106, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(536, 140, 235, 33, 8, 107, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(537, 140, 236, 33, 8, 107, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(538, 141, 237, 33, 33, 108, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(539, 142, 238, 33, 9, 109, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(540, 143, 239, 33, 9, 110, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(541, 144, 240, 33, 9, 111, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(542, 145, 241, 33, 9, 112, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(543, 146, 242, 33, 9, 113, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(544, 147, 243, 33, 9, 114, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(545, 148, 244, 33, 9, 115, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(546, 149, 245, 33, 34, 116, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(547, 150, 246, 33, 35, 117, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(548, 151, 247, 33, 35, 118, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(549, 152, 248, 33, 35, 119, 0, 0, NULL, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(550, 18, 51, 34, 60, 3, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(551, 19, 52, 34, 68, 4, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(552, 19, 53, 34, 68, 4, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(553, 20, 54, 34, 68, 5, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(554, 21, 55, 34, 68, 6, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(555, 22, 56, 34, 4, 7, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(556, 23, 57, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(557, 23, 58, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(558, 23, 59, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(559, 23, 60, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(560, 23, 61, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(561, 23, 62, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(562, 23, 63, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(563, 23, 64, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(564, 23, 65, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(565, 23, 66, 34, 5, 8, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(566, 24, 67, 34, 6, 9, 1, 3657828, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(567, 24, 68, 34, 6, 9, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(568, 25, 69, 34, 7, 10, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(569, 26, 70, 34, 8, 11, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(570, 27, 71, 34, 8, 12, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(571, 28, 72, 34, 9, 13, 0, 0, NULL, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(572, 56, 107, 35, 60, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(573, 56, 108, 35, 60, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(574, 56, 109, 35, 60, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(575, 56, 110, 35, 60, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(576, 57, 111, 35, 60, 44, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(577, 57, 112, 35, 60, 44, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(578, 58, 113, 35, 68, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(579, 58, 114, 35, 68, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(580, 58, 115, 35, 68, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(581, 59, 116, 35, 68, 44, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(582, 59, 117, 35, 68, 44, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(583, 60, 118, 35, 4, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(584, 61, 119, 35, 6, 48, 1, 5446742, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(585, 61, 120, 35, 6, 48, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(586, 62, 121, 35, 7, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(587, 62, 122, 35, 7, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(588, 63, 123, 35, 9, 50, 0, 0, NULL, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(589, 153, 372, 36, 37, 121, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(590, 154, 252, 36, 38, 122, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(591, 155, 251, 36, 39, 123, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(592, 156, 253, 36, 40, 124, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(593, 157, 254, 36, 41, 125, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(594, 158, 255, 36, 42, 126, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(595, 159, 256, 36, 43, 127, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(596, 160, 257, 36, 44, 128, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(597, 161, 258, 36, 45, 129, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(598, 162, 259, 36, 46, 130, 1, 1679102, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(599, 163, 260, 36, 47, 131, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(600, 164, 261, 36, 48, 132, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(601, 165, 262, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(602, 165, 263, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(603, 165, 264, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(604, 165, 265, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(605, 165, 266, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(606, 165, 267, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(607, 165, 268, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(608, 165, 269, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(609, 165, 270, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(610, 165, 271, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(611, 165, 272, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(612, 165, 273, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(613, 165, 274, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(614, 165, 275, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(615, 165, 276, 36, 49, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(616, 167, 290, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(617, 167, 291, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(618, 167, 292, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(619, 167, 293, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(620, 167, 294, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(621, 167, 295, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(622, 167, 296, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(623, 167, 297, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(624, 167, 298, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(625, 167, 299, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(626, 167, 300, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(627, 167, 301, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(628, 167, 302, 36, 49, 160, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(629, 168, 303, 36, 50, 133, 0, 0, NULL, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(630, 153, 372, 37, 37, 121, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(631, 154, 252, 37, 38, 122, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(632, 155, 251, 37, 39, 123, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(633, 156, 253, 37, 40, 124, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(634, 157, 254, 37, 41, 125, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(635, 158, 255, 37, 42, 126, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(636, 159, 256, 37, 43, 127, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(637, 160, 257, 37, 44, 128, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(638, 161, 258, 37, 45, 129, 1, 559693, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(639, 162, 259, 37, 46, 130, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(640, 163, 260, 37, 47, 131, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(641, 164, 261, 37, 48, 132, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(642, 165, 262, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(643, 165, 263, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(644, 165, 264, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(645, 165, 265, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(646, 165, 266, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(647, 165, 267, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(648, 165, 268, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(649, 165, 269, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(650, 165, 270, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(651, 165, 271, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(652, 165, 272, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(653, 165, 273, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(654, 165, 274, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(655, 165, 275, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(656, 165, 276, 37, 49, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(657, 167, 290, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(658, 167, 291, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(659, 167, 292, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(660, 167, 293, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(661, 167, 294, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(662, 167, 295, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(663, 167, 296, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(664, 167, 297, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(665, 167, 298, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(666, 167, 299, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(667, 167, 300, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(668, 167, 301, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(669, 167, 302, 37, 49, 160, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(670, 168, 303, 37, 50, 133, 0, 0, NULL, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(671, 153, 372, 38, 37, 121, 1, 3305700, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(672, 154, 252, 38, 38, 122, 1, 462798, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(673, 155, 251, 38, 39, 123, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(674, 156, 253, 38, 40, 124, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(675, 157, 254, 38, 41, 125, 1, 185000, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(676, 158, 255, 38, 42, 126, 1, 289680, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(677, 159, 256, 38, 43, 127, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(678, 160, 257, 38, 44, 128, 1, 57, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(679, 161, 258, 38, 45, 129, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(680, 162, 259, 38, 46, 130, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(681, 163, 260, 38, 47, 131, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(682, 164, 261, 38, 48, 132, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(683, 165, 262, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(684, 165, 263, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(685, 165, 264, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(686, 165, 265, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(687, 165, 266, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(688, 165, 267, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(689, 165, 268, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(690, 165, 269, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(691, 165, 270, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(692, 165, 271, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(693, 165, 272, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(694, 165, 273, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(695, 165, 274, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(696, 165, 275, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(697, 165, 276, 38, 49, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(698, 167, 290, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(699, 167, 291, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(700, 167, 292, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(701, 167, 293, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(702, 167, 294, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(703, 167, 295, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(704, 167, 296, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(705, 167, 297, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(706, 167, 298, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(707, 167, 299, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(708, 167, 300, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(709, 167, 301, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(710, 167, 302, 38, 49, 160, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(711, 168, 303, 38, 50, 133, 0, 0, NULL, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(712, 153, 372, 39, 37, 121, 1, 233208200, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(713, 154, 252, 39, 38, 122, 1, 24469422, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(714, 155, 251, 39, 39, 123, 1, 20380000, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(715, 156, 253, 39, 40, 124, 1, 450000, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(716, 157, 254, 39, 41, 125, 1, 5410000, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(717, 158, 255, 39, 42, 126, 1, 15280620, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(718, 159, 256, 39, 43, 127, 1, 76424, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(719, 160, 257, 39, 44, 128, 1, 2850, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(720, 161, 258, 39, 45, 129, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(721, 162, 259, 39, 46, 130, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(722, 163, 260, 39, 47, 131, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(723, 164, 261, 39, 48, 132, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(724, 165, 262, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(725, 165, 263, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(726, 165, 264, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(727, 165, 265, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(728, 165, 266, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(729, 165, 267, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(730, 165, 268, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(731, 165, 269, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(732, 165, 270, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(733, 165, 271, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(734, 165, 272, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(735, 165, 273, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(736, 165, 274, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(737, 165, 275, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(738, 165, 276, 39, 49, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(739, 167, 290, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(740, 167, 291, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(741, 167, 292, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(742, 167, 293, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(743, 167, 294, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(744, 167, 295, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(745, 167, 296, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(746, 167, 297, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(747, 167, 298, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(748, 167, 299, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(749, 167, 300, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(750, 167, 301, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(751, 167, 302, 39, 49, 160, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(752, 168, 303, 39, 50, 133, 0, 0, NULL, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(753, 92, 171, 40, 60, 60, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(754, 92, 172, 40, 60, 60, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(755, 92, 173, 40, 60, 60, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(756, 93, 174, 40, 60, 61, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(757, 93, 175, 40, 60, 61, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(758, 93, 176, 40, 60, 61, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(759, 94, 177, 40, 60, 62, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(760, 95, 178, 40, 60, 64, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(761, 96, 179, 40, 60, 63, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(762, 97, 180, 40, 60, 65, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(763, 98, 181, 40, 60, 66, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(764, 99, 182, 40, 60, 67, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(765, 100, 183, 40, 60, 68, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(766, 101, 184, 40, 60, 69, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(767, 102, 185, 40, 32, 70, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(768, 102, 186, 40, 32, 70, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(769, 102, 187, 40, 32, 70, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(770, 102, 188, 40, 32, 70, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(771, 102, 189, 40, 32, 70, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(772, 102, 190, 40, 32, 70, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(773, 103, 191, 40, 68, 71, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(774, 103, 192, 40, 68, 71, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(775, 104, 193, 40, 68, 72, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(776, 104, 194, 40, 68, 72, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(777, 105, 195, 40, 68, 73, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(778, 105, 196, 40, 68, 73, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(779, 106, 197, 40, 68, 74, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(780, 106, 198, 40, 68, 74, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(781, 107, 199, 40, 68, 75, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(782, 107, 200, 40, 68, 75, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(783, 108, 201, 40, 68, 76, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(784, 108, 202, 40, 68, 76, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(785, 109, 203, 40, 68, 77, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(786, 109, 204, 40, 68, 77, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(787, 110, 205, 40, 4, 78, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(788, 111, 206, 40, 4, 79, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(789, 112, 207, 40, 4, 80, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(790, 113, 208, 40, 4, 81, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(791, 114, 209, 40, 4, 82, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(792, 115, 210, 40, 4, 83, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(793, 116, 211, 40, 4, 84, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(794, 117, 212, 40, 4, 85, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(795, 118, 213, 40, 4, 86, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(796, 119, 214, 40, 4, 87, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(797, 120, 215, 40, 4, 88, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(798, 121, 216, 40, 4, 89, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(799, 122, 217, 40, 5, 90, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(800, 123, 218, 40, 5, 91, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(801, 124, 219, 40, 5, 92, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(802, 125, 220, 40, 5, 93, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(803, 126, 221, 40, 5, 94, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(804, 127, 222, 40, 5, 95, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(805, 128, 223, 40, 5, 96, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(806, 129, 224, 40, 5, 97, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(807, 130, 225, 40, 5, 98, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(808, 131, 226, 40, 5, 98, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(809, 132, 227, 40, 5, 99, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(810, 133, 228, 40, 6, 100, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(811, 134, 229, 40, 7, 101, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(812, 135, 230, 40, 7, 102, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(813, 136, 231, 40, 7, 103, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(814, 137, 232, 40, 7, 104, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(815, 138, 233, 40, 7, 105, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(816, 139, 234, 40, 7, 106, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(817, 140, 235, 40, 8, 107, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(818, 140, 236, 40, 8, 107, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(819, 141, 237, 40, 33, 108, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(820, 142, 238, 40, 9, 109, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(821, 143, 239, 40, 9, 110, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(822, 144, 240, 40, 9, 111, 25, 50000, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(823, 145, 241, 40, 9, 112, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(824, 146, 242, 40, 9, 113, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(825, 147, 243, 40, 9, 114, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(826, 148, 244, 40, 9, 115, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(827, 149, 245, 40, 34, 116, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(828, 150, 246, 40, 35, 117, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(829, 151, 247, 40, 35, 118, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(830, 152, 248, 40, 35, 119, 0, 0, NULL, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(831, 83, 148, 41, 6, 18, 0, 0, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(832, 83, 149, 41, 6, 18, 1, 2485414, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(833, 84, 150, 41, 55, 18, 0, 0, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(834, 85, 151, 41, 56, 139, 0, 0, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(835, 86, 152, 41, 57, 140, 0, 0, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(836, 86, 153, 41, 57, 140, 0, 0, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(837, 87, 154, 41, 58, 141, 0, 0, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(838, 87, 155, 41, 58, 141, 0, 0, NULL, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(839, 92, 171, 42, 60, 60, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14');
INSERT INTO `detail_spjs` (`id`, `dpa_id`, `detail_dpa_id`, `spj_id`, `rekening_id`, `program_id`, `satuan`, `harga`, `catatan`, `created_at`, `updated_at`) VALUES
(840, 92, 172, 42, 60, 60, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(841, 92, 173, 42, 60, 60, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(842, 93, 174, 42, 60, 61, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(843, 93, 175, 42, 60, 61, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(844, 93, 176, 42, 60, 61, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(845, 94, 177, 42, 60, 62, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(846, 95, 178, 42, 60, 64, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(847, 96, 179, 42, 60, 63, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(848, 97, 180, 42, 60, 65, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(849, 98, 181, 42, 60, 66, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(850, 99, 182, 42, 60, 67, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(851, 100, 183, 42, 60, 68, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(852, 101, 184, 42, 60, 69, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(853, 102, 185, 42, 32, 70, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(854, 102, 186, 42, 32, 70, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(855, 102, 187, 42, 32, 70, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(856, 102, 188, 42, 32, 70, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(857, 102, 189, 42, 32, 70, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(858, 102, 190, 42, 32, 70, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(859, 103, 191, 42, 68, 71, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(860, 103, 192, 42, 68, 71, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(861, 104, 193, 42, 68, 72, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(862, 104, 194, 42, 68, 72, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(863, 105, 195, 42, 68, 73, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(864, 105, 196, 42, 68, 73, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(865, 106, 197, 42, 68, 74, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(866, 106, 198, 42, 68, 74, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(867, 107, 199, 42, 68, 75, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(868, 107, 200, 42, 68, 75, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(869, 108, 201, 42, 68, 76, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(870, 108, 202, 42, 68, 76, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(871, 109, 203, 42, 68, 77, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(872, 109, 204, 42, 68, 77, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(873, 110, 205, 42, 4, 78, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(874, 111, 206, 42, 4, 79, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(875, 112, 207, 42, 4, 80, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(876, 113, 208, 42, 4, 81, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(877, 114, 209, 42, 4, 82, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(878, 115, 210, 42, 4, 83, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(879, 116, 211, 42, 4, 84, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(880, 117, 212, 42, 4, 85, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(881, 118, 213, 42, 4, 86, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(882, 119, 214, 42, 4, 87, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(883, 120, 215, 42, 4, 88, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(884, 121, 216, 42, 4, 89, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(885, 122, 217, 42, 5, 90, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(886, 123, 218, 42, 5, 91, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(887, 124, 219, 42, 5, 92, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(888, 125, 220, 42, 5, 93, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(889, 126, 221, 42, 5, 94, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(890, 127, 222, 42, 5, 95, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(891, 128, 223, 42, 5, 96, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(892, 129, 224, 42, 5, 97, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(893, 130, 225, 42, 5, 98, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(894, 131, 226, 42, 5, 98, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(895, 132, 227, 42, 5, 99, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(896, 133, 228, 42, 6, 100, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(897, 134, 229, 42, 7, 101, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(898, 135, 230, 42, 7, 102, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(899, 136, 231, 42, 7, 103, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(900, 137, 232, 42, 7, 104, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(901, 138, 233, 42, 7, 105, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(902, 139, 234, 42, 7, 106, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(903, 140, 235, 42, 8, 107, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(904, 140, 236, 42, 8, 107, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(905, 141, 237, 42, 33, 108, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(906, 142, 238, 42, 9, 109, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(907, 143, 239, 42, 9, 110, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(908, 144, 240, 42, 9, 111, 50, 50000, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(909, 145, 241, 42, 9, 112, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(910, 146, 242, 42, 9, 113, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(911, 147, 243, 42, 9, 114, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(912, 148, 244, 42, 9, 115, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(913, 149, 245, 42, 34, 116, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(914, 150, 246, 42, 35, 117, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(915, 151, 247, 42, 35, 118, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(916, 152, 248, 42, 35, 119, 0, 0, NULL, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(917, 92, 171, 43, 60, 60, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(918, 92, 172, 43, 60, 60, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(919, 92, 173, 43, 60, 60, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(920, 93, 174, 43, 60, 61, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(921, 93, 175, 43, 60, 61, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(922, 93, 176, 43, 60, 61, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(923, 94, 177, 43, 60, 62, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(924, 95, 178, 43, 60, 64, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(925, 96, 179, 43, 60, 63, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(926, 97, 180, 43, 60, 65, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(927, 98, 181, 43, 60, 66, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(928, 99, 182, 43, 60, 67, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(929, 100, 183, 43, 60, 68, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(930, 101, 184, 43, 60, 69, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(931, 102, 185, 43, 32, 70, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(932, 102, 186, 43, 32, 70, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(933, 102, 187, 43, 32, 70, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(934, 102, 188, 43, 32, 70, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(935, 102, 189, 43, 32, 70, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(936, 102, 190, 43, 32, 70, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(937, 103, 191, 43, 68, 71, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(938, 103, 192, 43, 68, 71, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(939, 104, 193, 43, 68, 72, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(940, 104, 194, 43, 68, 72, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(941, 105, 195, 43, 68, 73, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(942, 105, 196, 43, 68, 73, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(943, 106, 197, 43, 68, 74, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(944, 106, 198, 43, 68, 74, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(945, 107, 199, 43, 68, 75, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(946, 107, 200, 43, 68, 75, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(947, 108, 201, 43, 68, 76, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(948, 108, 202, 43, 68, 76, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(949, 109, 203, 43, 68, 77, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(950, 109, 204, 43, 68, 77, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(951, 110, 205, 43, 4, 78, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(952, 111, 206, 43, 4, 79, 2, 400000, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(953, 112, 207, 43, 4, 80, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(954, 113, 208, 43, 4, 81, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(955, 114, 209, 43, 4, 82, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(956, 115, 210, 43, 4, 83, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(957, 116, 211, 43, 4, 84, 2, 400000, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(958, 117, 212, 43, 4, 85, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(959, 118, 213, 43, 4, 86, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(960, 119, 214, 43, 4, 87, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(961, 120, 215, 43, 4, 88, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(962, 121, 216, 43, 4, 89, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(963, 122, 217, 43, 5, 90, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(964, 123, 218, 43, 5, 91, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(965, 124, 219, 43, 5, 92, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(966, 125, 220, 43, 5, 93, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(967, 126, 221, 43, 5, 94, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(968, 127, 222, 43, 5, 95, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(969, 128, 223, 43, 5, 96, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(970, 129, 224, 43, 5, 97, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(971, 130, 225, 43, 5, 98, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(972, 131, 226, 43, 5, 98, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(973, 132, 227, 43, 5, 99, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(974, 133, 228, 43, 6, 100, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(975, 134, 229, 43, 7, 101, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(976, 135, 230, 43, 7, 102, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(977, 136, 231, 43, 7, 103, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(978, 137, 232, 43, 7, 104, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(979, 138, 233, 43, 7, 105, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(980, 139, 234, 43, 7, 106, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(981, 140, 235, 43, 8, 107, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(982, 140, 236, 43, 8, 107, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(983, 141, 237, 43, 33, 108, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(984, 142, 238, 43, 9, 109, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(985, 143, 239, 43, 9, 110, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(986, 144, 240, 43, 9, 111, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(987, 145, 241, 43, 9, 112, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(988, 146, 242, 43, 9, 113, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(989, 147, 243, 43, 9, 114, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(990, 148, 244, 43, 9, 115, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(991, 149, 245, 43, 34, 116, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(992, 150, 246, 43, 35, 117, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(993, 151, 247, 43, 35, 118, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(994, 152, 248, 43, 35, 119, 0, 0, NULL, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(995, 83, 148, 44, 6, 18, 1, 1788914, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(996, 83, 149, 44, 6, 18, 0, 0, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(997, 84, 150, 44, 55, 18, 1, 3485414, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(998, 85, 151, 44, 56, 139, 0, 0, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(999, 86, 152, 44, 57, 140, 0, 0, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(1000, 86, 153, 44, 57, 140, 0, 0, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(1001, 87, 154, 44, 58, 141, 0, 0, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(1002, 87, 155, 44, 58, 141, 0, 0, NULL, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(1003, 92, 171, 45, 60, 60, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1004, 92, 172, 45, 60, 60, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1005, 92, 173, 45, 60, 60, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1006, 93, 174, 45, 60, 61, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1007, 93, 175, 45, 60, 61, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1008, 93, 176, 45, 60, 61, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1009, 94, 177, 45, 60, 62, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1010, 95, 178, 45, 60, 64, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1011, 96, 179, 45, 60, 63, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1012, 97, 180, 45, 60, 65, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1013, 98, 181, 45, 60, 66, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1014, 99, 182, 45, 60, 67, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1015, 100, 183, 45, 60, 68, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1016, 101, 184, 45, 60, 69, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1017, 102, 185, 45, 32, 70, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1018, 102, 186, 45, 32, 70, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1019, 102, 187, 45, 32, 70, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1020, 102, 188, 45, 32, 70, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1021, 102, 189, 45, 32, 70, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1022, 102, 190, 45, 32, 70, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1023, 103, 191, 45, 68, 71, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1024, 103, 192, 45, 68, 71, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1025, 104, 193, 45, 68, 72, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1026, 104, 194, 45, 68, 72, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1027, 105, 195, 45, 68, 73, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1028, 105, 196, 45, 68, 73, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1029, 106, 197, 45, 68, 74, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1030, 106, 198, 45, 68, 74, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1031, 107, 199, 45, 68, 75, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1032, 107, 200, 45, 68, 75, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1033, 108, 201, 45, 68, 76, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1034, 108, 202, 45, 68, 76, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1035, 109, 203, 45, 68, 77, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1036, 109, 204, 45, 68, 77, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1037, 110, 205, 45, 4, 78, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1038, 111, 206, 45, 4, 79, 1, 400000, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1039, 112, 207, 45, 4, 80, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1040, 113, 208, 45, 4, 81, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1041, 114, 209, 45, 4, 82, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1042, 115, 210, 45, 4, 83, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1043, 116, 211, 45, 4, 84, 1, 400000, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1044, 117, 212, 45, 4, 85, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1045, 118, 213, 45, 4, 86, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1046, 119, 214, 45, 4, 87, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1047, 120, 215, 45, 4, 88, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1048, 121, 216, 45, 4, 89, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1049, 122, 217, 45, 5, 90, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1050, 123, 218, 45, 5, 91, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1051, 124, 219, 45, 5, 92, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1052, 125, 220, 45, 5, 93, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1053, 126, 221, 45, 5, 94, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1054, 127, 222, 45, 5, 95, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1055, 128, 223, 45, 5, 96, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1056, 129, 224, 45, 5, 97, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1057, 130, 225, 45, 5, 98, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1058, 131, 226, 45, 5, 98, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1059, 132, 227, 45, 5, 99, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1060, 133, 228, 45, 6, 100, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1061, 134, 229, 45, 7, 101, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1062, 135, 230, 45, 7, 102, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1063, 136, 231, 45, 7, 103, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1064, 137, 232, 45, 7, 104, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1065, 138, 233, 45, 7, 105, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1066, 139, 234, 45, 7, 106, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1067, 140, 235, 45, 8, 107, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1068, 140, 236, 45, 8, 107, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1069, 141, 237, 45, 33, 108, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1070, 142, 238, 45, 9, 109, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1071, 143, 239, 45, 9, 110, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1072, 144, 240, 45, 9, 111, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1073, 145, 241, 45, 9, 112, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1074, 146, 242, 45, 9, 113, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1075, 147, 243, 45, 9, 114, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1076, 148, 244, 45, 9, 115, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1077, 149, 245, 45, 34, 116, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1078, 150, 246, 45, 35, 117, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1079, 151, 247, 45, 35, 118, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1080, 152, 248, 45, 35, 119, 0, 0, NULL, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(1081, 92, 171, 46, 60, 60, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1082, 92, 172, 46, 60, 60, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1083, 92, 173, 46, 60, 60, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1084, 93, 174, 46, 60, 61, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1085, 93, 175, 46, 60, 61, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1086, 93, 176, 46, 60, 61, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1087, 94, 177, 46, 60, 62, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1088, 95, 178, 46, 60, 64, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1089, 96, 179, 46, 60, 63, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1090, 97, 180, 46, 60, 65, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1091, 98, 181, 46, 60, 66, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1092, 99, 182, 46, 60, 67, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1093, 100, 183, 46, 60, 68, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1094, 101, 184, 46, 60, 69, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1095, 102, 185, 46, 32, 70, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1096, 102, 186, 46, 32, 70, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1097, 102, 187, 46, 32, 70, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1098, 102, 188, 46, 32, 70, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1099, 102, 189, 46, 32, 70, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1100, 102, 190, 46, 32, 70, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1101, 103, 191, 46, 68, 71, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1102, 103, 192, 46, 68, 71, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1103, 104, 193, 46, 68, 72, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1104, 104, 194, 46, 68, 72, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1105, 105, 195, 46, 68, 73, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1106, 105, 196, 46, 68, 73, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1107, 106, 197, 46, 68, 74, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1108, 106, 198, 46, 68, 74, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1109, 107, 199, 46, 68, 75, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1110, 107, 200, 46, 68, 75, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1111, 108, 201, 46, 68, 76, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1112, 108, 202, 46, 68, 76, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1113, 109, 203, 46, 68, 77, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1114, 109, 204, 46, 68, 77, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1115, 110, 205, 46, 4, 78, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1116, 111, 206, 46, 4, 79, 1, 400000, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1117, 112, 207, 46, 4, 80, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1118, 113, 208, 46, 4, 81, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1119, 114, 209, 46, 4, 82, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1120, 115, 210, 46, 4, 83, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1121, 116, 211, 46, 4, 84, 1, 400000, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1122, 117, 212, 46, 4, 85, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1123, 118, 213, 46, 4, 86, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1124, 119, 214, 46, 4, 87, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1125, 120, 215, 46, 4, 88, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1126, 121, 216, 46, 4, 89, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1127, 122, 217, 46, 5, 90, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1128, 123, 218, 46, 5, 91, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1129, 124, 219, 46, 5, 92, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1130, 125, 220, 46, 5, 93, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1131, 126, 221, 46, 5, 94, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1132, 127, 222, 46, 5, 95, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1133, 128, 223, 46, 5, 96, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1134, 129, 224, 46, 5, 97, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1135, 130, 225, 46, 5, 98, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1136, 131, 226, 46, 5, 98, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1137, 132, 227, 46, 5, 99, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1138, 133, 228, 46, 6, 100, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1139, 134, 229, 46, 7, 101, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1140, 135, 230, 46, 7, 102, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1141, 136, 231, 46, 7, 103, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1142, 137, 232, 46, 7, 104, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1143, 138, 233, 46, 7, 105, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1144, 139, 234, 46, 7, 106, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1145, 140, 235, 46, 8, 107, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1146, 140, 236, 46, 8, 107, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1147, 141, 237, 46, 33, 108, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1148, 142, 238, 46, 9, 109, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1149, 143, 239, 46, 9, 110, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1150, 144, 240, 46, 9, 111, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1151, 145, 241, 46, 9, 112, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1152, 146, 242, 46, 9, 113, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1153, 147, 243, 46, 9, 114, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1154, 148, 244, 46, 9, 115, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1155, 149, 245, 46, 34, 116, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1156, 150, 246, 46, 35, 117, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1157, 151, 247, 46, 35, 118, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1158, 152, 248, 46, 35, 119, 0, 0, NULL, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(1159, 92, 171, 47, 60, 60, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1160, 92, 172, 47, 60, 60, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1161, 92, 173, 47, 60, 60, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1162, 93, 174, 47, 60, 61, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1163, 93, 175, 47, 60, 61, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1164, 93, 176, 47, 60, 61, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1165, 94, 177, 47, 60, 62, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1166, 95, 178, 47, 60, 64, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1167, 96, 179, 47, 60, 63, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1168, 97, 180, 47, 60, 65, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1169, 98, 181, 47, 60, 66, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1170, 99, 182, 47, 60, 67, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1171, 100, 183, 47, 60, 68, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1172, 101, 184, 47, 60, 69, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1173, 102, 185, 47, 32, 70, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1174, 102, 186, 47, 32, 70, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1175, 102, 187, 47, 32, 70, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1176, 102, 188, 47, 32, 70, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1177, 102, 189, 47, 32, 70, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1178, 102, 190, 47, 32, 70, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1179, 103, 191, 47, 68, 71, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1180, 103, 192, 47, 68, 71, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1181, 104, 193, 47, 68, 72, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1182, 104, 194, 47, 68, 72, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1183, 105, 195, 47, 68, 73, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1184, 105, 196, 47, 68, 73, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1185, 106, 197, 47, 68, 74, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1186, 106, 198, 47, 68, 74, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1187, 107, 199, 47, 68, 75, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1188, 107, 200, 47, 68, 75, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1189, 108, 201, 47, 68, 76, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1190, 108, 202, 47, 68, 76, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1191, 109, 203, 47, 68, 77, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1192, 109, 204, 47, 68, 77, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1193, 110, 205, 47, 4, 78, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1194, 111, 206, 47, 4, 79, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1195, 112, 207, 47, 4, 80, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1196, 113, 208, 47, 4, 81, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1197, 114, 209, 47, 4, 82, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1198, 115, 210, 47, 4, 83, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1199, 116, 211, 47, 4, 84, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1200, 117, 212, 47, 4, 85, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1201, 118, 213, 47, 4, 86, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1202, 119, 214, 47, 4, 87, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1203, 120, 215, 47, 4, 88, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1204, 121, 216, 47, 4, 89, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1205, 122, 217, 47, 5, 90, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1206, 123, 218, 47, 5, 91, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1207, 124, 219, 47, 5, 92, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1208, 125, 220, 47, 5, 93, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1209, 126, 221, 47, 5, 94, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1210, 127, 222, 47, 5, 95, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1211, 128, 223, 47, 5, 96, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1212, 129, 224, 47, 5, 97, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1213, 130, 225, 47, 5, 98, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1214, 131, 226, 47, 5, 98, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1215, 132, 227, 47, 5, 99, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1216, 133, 228, 47, 6, 100, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1217, 134, 229, 47, 7, 101, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1218, 135, 230, 47, 7, 102, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1219, 136, 231, 47, 7, 103, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1220, 137, 232, 47, 7, 104, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1221, 138, 233, 47, 7, 105, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1222, 139, 234, 47, 7, 106, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1223, 140, 235, 47, 8, 107, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1224, 140, 236, 47, 8, 107, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1225, 141, 237, 47, 33, 108, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1226, 142, 238, 47, 9, 109, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1227, 143, 239, 47, 9, 110, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1228, 144, 240, 47, 9, 111, 25, 50000, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1229, 145, 241, 47, 9, 112, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1230, 146, 242, 47, 9, 113, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1231, 147, 243, 47, 9, 114, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1232, 148, 244, 47, 9, 115, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1233, 149, 245, 47, 34, 116, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1234, 150, 246, 47, 35, 117, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1235, 151, 247, 47, 35, 118, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1236, 152, 248, 47, 35, 119, 0, 0, NULL, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(1237, 92, 171, 48, 60, 60, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1238, 92, 172, 48, 60, 60, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1239, 92, 173, 48, 60, 60, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1240, 93, 174, 48, 60, 61, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1241, 93, 175, 48, 60, 61, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1242, 93, 176, 48, 60, 61, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1243, 94, 177, 48, 60, 62, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1244, 95, 178, 48, 60, 64, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1245, 96, 179, 48, 60, 63, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1246, 97, 180, 48, 60, 65, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1247, 98, 181, 48, 60, 66, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1248, 99, 182, 48, 60, 67, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1249, 100, 183, 48, 60, 68, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1250, 101, 184, 48, 60, 69, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1251, 102, 185, 48, 32, 70, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1252, 102, 186, 48, 32, 70, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1253, 102, 187, 48, 32, 70, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1254, 102, 188, 48, 32, 70, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1255, 102, 189, 48, 32, 70, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1256, 102, 190, 48, 32, 70, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1257, 103, 191, 48, 68, 71, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1258, 103, 192, 48, 68, 71, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1259, 104, 193, 48, 68, 72, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1260, 104, 194, 48, 68, 72, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1261, 105, 195, 48, 68, 73, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1262, 105, 196, 48, 68, 73, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1263, 106, 197, 48, 68, 74, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1264, 106, 198, 48, 68, 74, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1265, 107, 199, 48, 68, 75, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1266, 107, 200, 48, 68, 75, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1267, 108, 201, 48, 68, 76, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1268, 108, 202, 48, 68, 76, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1269, 109, 203, 48, 68, 77, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1270, 109, 204, 48, 68, 77, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1271, 110, 205, 48, 4, 78, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1272, 111, 206, 48, 4, 79, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1273, 112, 207, 48, 4, 80, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1274, 113, 208, 48, 4, 81, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1275, 114, 209, 48, 4, 82, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1276, 115, 210, 48, 4, 83, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1277, 116, 211, 48, 4, 84, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1278, 117, 212, 48, 4, 85, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1279, 118, 213, 48, 4, 86, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1280, 119, 214, 48, 4, 87, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1281, 120, 215, 48, 4, 88, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1282, 121, 216, 48, 4, 89, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1283, 122, 217, 48, 5, 90, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1284, 123, 218, 48, 5, 91, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1285, 124, 219, 48, 5, 92, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1286, 125, 220, 48, 5, 93, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1287, 126, 221, 48, 5, 94, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1288, 127, 222, 48, 5, 95, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1289, 128, 223, 48, 5, 96, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1290, 129, 224, 48, 5, 97, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1291, 130, 225, 48, 5, 98, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1292, 131, 226, 48, 5, 98, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1293, 132, 227, 48, 5, 99, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1294, 133, 228, 48, 6, 100, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1295, 134, 229, 48, 7, 101, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1296, 135, 230, 48, 7, 102, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1297, 136, 231, 48, 7, 103, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1298, 137, 232, 48, 7, 104, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1299, 138, 233, 48, 7, 105, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1300, 139, 234, 48, 7, 106, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1301, 140, 235, 48, 8, 107, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1302, 140, 236, 48, 8, 107, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1303, 141, 237, 48, 33, 108, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1304, 142, 238, 48, 9, 109, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1305, 143, 239, 48, 9, 110, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1306, 144, 240, 48, 9, 111, 25, 50000, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1307, 145, 241, 48, 9, 112, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1308, 146, 242, 48, 9, 113, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1309, 147, 243, 48, 9, 114, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1310, 148, 244, 48, 9, 115, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1311, 149, 245, 48, 34, 116, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1312, 150, 246, 48, 35, 117, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1313, 151, 247, 48, 35, 118, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1314, 152, 248, 48, 35, 119, 0, 0, NULL, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(1315, 90, 168, 49, 60, 3, 0, 0, NULL, '2024-05-31 23:31:35', '2024-05-31 23:31:35'),
(1316, 91, 169, 49, 68, 14, 24, 15000, NULL, '2024-05-31 23:31:35', '2024-05-31 23:31:35'),
(1317, 91, 170, 49, 68, 14, 24, 30000, NULL, '2024-05-31 23:31:35', '2024-05-31 23:31:35'),
(1318, 31, 76, 50, 60, 15, 0, 0, NULL, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(1319, 32, 77, 50, 60, 16, 0, 0, NULL, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(1320, 33, 78, 50, 68, 17, 0, 0, NULL, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(1321, 33, 79, 50, 68, 17, 0, 0, NULL, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(1322, 34, 80, 50, 6, 18, 1, 2489414, NULL, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(1323, 35, 81, 50, 10, 18, 1, 2489414, NULL, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(1324, 36, 82, 50, 11, 19, 0, 0, NULL, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(1325, 92, 171, 51, 60, 60, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1326, 92, 172, 51, 60, 60, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1327, 92, 173, 51, 60, 60, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1328, 93, 174, 51, 60, 61, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1329, 93, 175, 51, 60, 61, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1330, 93, 176, 51, 60, 61, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1331, 94, 177, 51, 60, 62, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1332, 95, 178, 51, 60, 64, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1333, 96, 179, 51, 60, 63, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1334, 97, 180, 51, 60, 65, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1335, 98, 181, 51, 60, 66, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1336, 99, 182, 51, 60, 67, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1337, 100, 183, 51, 60, 68, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1338, 101, 184, 51, 60, 69, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1339, 102, 185, 51, 32, 70, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1340, 102, 186, 51, 32, 70, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1341, 102, 187, 51, 32, 70, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1342, 102, 188, 51, 32, 70, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1343, 102, 189, 51, 32, 70, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1344, 102, 190, 51, 32, 70, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1345, 103, 191, 51, 68, 71, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1346, 103, 192, 51, 68, 71, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1347, 104, 193, 51, 68, 72, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1348, 104, 194, 51, 68, 72, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1349, 105, 195, 51, 68, 73, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1350, 105, 196, 51, 68, 73, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1351, 106, 197, 51, 68, 74, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1352, 106, 198, 51, 68, 74, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1353, 107, 199, 51, 68, 75, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1354, 107, 200, 51, 68, 75, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1355, 108, 201, 51, 68, 76, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1356, 108, 202, 51, 68, 76, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1357, 109, 203, 51, 68, 77, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1358, 109, 204, 51, 68, 77, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1359, 110, 205, 51, 4, 78, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1360, 111, 206, 51, 4, 79, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1361, 112, 207, 51, 4, 80, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1362, 113, 208, 51, 4, 81, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1363, 114, 209, 51, 4, 82, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1364, 115, 210, 51, 4, 83, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1365, 116, 211, 51, 4, 84, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1366, 117, 212, 51, 4, 85, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1367, 118, 213, 51, 4, 86, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1368, 119, 214, 51, 4, 87, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1369, 120, 215, 51, 4, 88, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1370, 121, 216, 51, 4, 89, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1371, 122, 217, 51, 5, 90, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1372, 123, 218, 51, 5, 91, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1373, 124, 219, 51, 5, 92, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1374, 125, 220, 51, 5, 93, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1375, 126, 221, 51, 5, 94, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1376, 127, 222, 51, 5, 95, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1377, 128, 223, 51, 5, 96, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1378, 129, 224, 51, 5, 97, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1379, 130, 225, 51, 5, 98, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1380, 131, 226, 51, 5, 98, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1381, 132, 227, 51, 5, 99, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1382, 133, 228, 51, 6, 100, 1, 1868914, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1383, 134, 229, 51, 7, 101, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1384, 135, 230, 51, 7, 102, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1385, 136, 231, 51, 7, 103, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1386, 137, 232, 51, 7, 104, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1387, 138, 233, 51, 7, 105, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1388, 139, 234, 51, 7, 106, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1389, 140, 235, 51, 8, 107, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1390, 140, 236, 51, 8, 107, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1391, 141, 237, 51, 33, 108, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1392, 142, 238, 51, 9, 109, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1393, 143, 239, 51, 9, 110, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1394, 144, 240, 51, 9, 111, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1395, 145, 241, 51, 9, 112, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1396, 146, 242, 51, 9, 113, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1397, 147, 243, 51, 9, 114, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1398, 148, 244, 51, 9, 115, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1399, 149, 245, 51, 34, 116, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1400, 150, 246, 51, 35, 117, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1401, 151, 247, 51, 35, 118, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1402, 152, 248, 51, 35, 119, 0, 0, NULL, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(1403, 64, 124, 52, 60, 51, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1404, 65, 125, 52, 68, 52, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1405, 65, 126, 52, 68, 52, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1406, 66, 127, 52, 68, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1407, 66, 128, 52, 68, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1408, 67, 129, 52, 68, 54, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1409, 67, 130, 52, 68, 54, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1410, 68, 131, 52, 4, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1411, 68, 132, 52, 4, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1412, 69, 133, 52, 6, 18, 1, 1868914, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1413, 70, 134, 52, 7, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1414, 71, 135, 52, 8, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1415, 71, 136, 52, 8, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1416, 72, 137, 52, 9, 53, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1417, 73, 138, 52, 29, 58, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1418, 74, 139, 52, 30, 58, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1419, 75, 140, 52, 31, 59, 0, 0, NULL, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(1420, 83, 148, 53, 6, 18, 0, 0, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46'),
(1421, 83, 149, 53, 6, 18, 0, 0, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46'),
(1422, 84, 150, 53, 55, 18, 0, 0, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46');
INSERT INTO `detail_spjs` (`id`, `dpa_id`, `detail_dpa_id`, `spj_id`, `rekening_id`, `program_id`, `satuan`, `harga`, `catatan`, `created_at`, `updated_at`) VALUES
(1423, 85, 151, 53, 56, 139, 1, 3272663, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46'),
(1424, 86, 152, 53, 57, 140, 0, 0, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46'),
(1425, 86, 153, 53, 57, 140, 30, 6483, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46'),
(1426, 87, 154, 53, 58, 141, 30, 8103, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46'),
(1427, 87, 155, 53, 58, 141, 0, 0, NULL, '2024-06-01 03:18:46', '2024-06-01 03:18:46');
=======
INSERT INTO `detail_spjs` (`id`, `dpa_id`, `detail_dpa_id`, `spj_id`, `rekening_id`, `program_id`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
(35, 88, 156, 18, 68, 152, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(36, 88, 157, 18, 68, 152, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(37, 89, 158, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(38, 89, 159, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(39, 89, 160, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(40, 89, 161, 18, 67, 153, 2, 664000, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(41, 89, 162, 18, 67, 153, 1, 1076000, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(42, 89, 163, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(43, 89, 164, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(44, 89, 165, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(45, 89, 166, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(46, 89, 167, 18, 67, 153, 0, 0, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(47, 52, 103, 19, 25, 39, 1, 2000000, '2024-05-25 10:05:11', '2024-05-25 10:05:11');
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

-- --------------------------------------------------------

--
-- Table structure for table `dpas`
--

CREATE TABLE `dpas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penjabaran_id` bigint(20) NOT NULL,
  `bagian_id` bigint(20) NOT NULL,
  `kegiatan_id` bigint(20) NOT NULL,
  `sub_kegiatan_id` bigint(20) NOT NULL,
  `rekening_id` bigint(20) NOT NULL,
  `program_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dpas`
--

INSERT INTO `dpas` (`id`, `penjabaran_id`, `bagian_id`, `kegiatan_id`, `sub_kegiatan_id`, `rekening_id`, `program_id`, `created_at`, `updated_at`) VALUES
(11, 2, 10, 9, 18, 12, 20, '2024-05-13 07:08:21', '2024-05-13 07:08:21'),
(12, 2, 10, 9, 18, 13, 158, '2024-05-13 07:14:09', '2024-05-13 07:14:09'),
(13, 2, 10, 9, 15, 14, 21, '2024-05-13 07:19:46', '2024-05-13 07:19:46'),
(14, 2, 10, 9, 15, 15, 22, '2024-05-13 07:21:53', '2024-05-13 07:21:53'),
(15, 2, 10, 9, 15, 15, 23, '2024-05-13 07:23:34', '2024-05-13 07:23:34'),
(16, 2, 10, 9, 15, 15, 159, '2024-05-13 07:25:31', '2024-05-13 07:25:31'),
(17, 2, 10, 6, 10, 1, 1, '2024-05-13 15:08:56', '2024-05-13 15:08:56'),
(18, 2, 6, 13, 22, 60, 3, '2024-05-13 15:20:07', '2024-05-13 15:20:07'),
(19, 2, 8, 13, 22, 68, 4, '2024-05-13 15:25:19', '2024-05-13 15:25:19'),
(20, 2, 6, 13, 22, 68, 5, '2024-05-13 15:27:00', '2024-05-13 15:27:00'),
(21, 2, 6, 13, 22, 68, 6, '2024-05-13 15:28:32', '2024-05-13 15:28:32'),
(22, 2, 6, 13, 22, 4, 7, '2024-05-13 15:30:14', '2024-05-13 15:30:14'),
(23, 2, 6, 13, 22, 5, 8, '2024-05-13 15:37:00', '2024-05-13 15:37:00'),
(24, 2, 6, 13, 22, 6, 9, '2024-05-13 15:38:41', '2024-05-13 15:38:41'),
(25, 2, 6, 13, 22, 7, 10, '2024-05-13 15:58:40', '2024-05-13 15:58:40'),
(26, 2, 6, 13, 22, 8, 11, '2024-05-13 16:01:32', '2024-05-13 16:01:32'),
(27, 2, 6, 13, 22, 8, 12, '2024-05-13 16:03:26', '2024-05-13 16:03:26'),
(28, 2, 6, 13, 22, 9, 13, '2024-05-13 16:04:52', '2024-05-13 16:04:52'),
(29, 2, 9, 1, 2, 60, 3, '2024-05-13 16:09:47', '2024-05-13 16:09:47'),
(30, 2, 9, 1, 2, 68, 14, '2024-05-13 16:11:46', '2024-05-13 16:11:46'),
(31, 2, 9, 2, 4, 60, 15, '2024-05-14 15:48:36', '2024-05-14 15:48:36'),
(32, 2, 9, 2, 4, 60, 16, '2024-05-14 15:49:34', '2024-05-14 15:49:34'),
(33, 2, 9, 2, 4, 68, 17, '2024-05-14 15:51:33', '2024-05-14 15:51:33'),
(34, 2, 9, 2, 4, 6, 18, '2024-05-14 15:52:53', '2024-05-14 15:52:53'),
(35, 2, 9, 2, 4, 10, 18, '2024-05-14 15:54:07', '2024-05-14 15:54:07'),
(36, 2, 9, 2, 4, 11, 19, '2024-05-14 15:55:08', '2024-05-14 15:55:08'),
(37, 2, 10, 9, 16, 14, 21, '2024-05-14 16:01:31', '2024-05-14 16:01:31'),
(38, 2, 10, 9, 16, 17, 25, '2024-05-14 16:02:51', '2024-05-14 16:02:51'),
(39, 2, 10, 9, 16, 17, 26, '2024-05-14 16:04:18', '2024-05-14 16:04:18'),
(40, 2, 10, 9, 16, 17, 27, '2024-05-14 16:05:24', '2024-05-14 16:05:24'),
(41, 2, 10, 9, 16, 18, 28, '2024-05-14 16:06:34', '2024-05-14 16:06:34'),
(42, 2, 10, 9, 16, 18, 29, '2024-05-14 16:07:50', '2024-05-14 16:07:50'),
(43, 2, 10, 9, 16, 18, 33, '2024-05-14 16:11:43', '2024-05-14 16:11:43'),
(44, 2, 10, 9, 16, 19, 31, '2024-05-14 16:16:35', '2024-05-14 16:16:35'),
(45, 2, 10, 9, 16, 19, 32, '2024-05-14 16:18:00', '2024-05-14 16:18:00'),
(46, 2, 10, 9, 16, 19, 33, '2024-05-14 16:19:13', '2024-05-14 16:19:13'),
(47, 2, 10, 9, 17, 20, 34, '2024-05-15 05:36:57', '2024-05-15 05:36:57'),
(48, 2, 10, 9, 17, 21, 35, '2024-05-15 05:39:01', '2024-05-15 05:39:01'),
(49, 2, 10, 9, 17, 22, 36, '2024-05-15 05:40:37', '2024-05-15 05:40:37'),
(50, 2, 10, 9, 17, 23, 37, '2024-05-15 05:43:27', '2024-05-15 05:43:27'),
(51, 2, 10, 9, 17, 24, 38, '2024-05-15 05:44:37', '2024-05-15 05:44:37'),
(52, 2, 10, 4, 5, 25, 39, '2024-05-15 05:45:58', '2024-05-15 05:45:58'),
(53, 2, 10, 7, 12, 26, 40, '2024-05-15 05:47:53', '2024-05-15 05:47:53'),
(54, 2, 10, 7, 12, 27, 41, '2024-05-15 05:48:42', '2024-05-15 05:48:42'),
(55, 2, 10, 7, 12, 28, 42, '2024-05-15 05:49:53', '2024-05-15 05:49:53'),
(56, 2, 5, 11, 20, 60, 50, '2024-05-15 05:52:10', '2024-05-15 05:52:10'),
(57, 2, 5, 11, 20, 60, 44, '2024-05-15 05:53:27', '2024-05-15 05:53:27'),
(58, 2, 5, 11, 20, 68, 50, '2024-05-15 05:55:36', '2024-05-15 05:55:36'),
(59, 2, 5, 11, 20, 68, 44, '2024-05-15 05:57:11', '2024-05-15 05:57:11'),
(60, 2, 5, 11, 20, 4, 50, '2024-05-15 05:58:34', '2024-05-15 05:58:34'),
(61, 2, 5, 11, 20, 6, 48, '2024-05-15 06:00:34', '2024-05-15 06:00:34'),
(62, 2, 5, 11, 20, 7, 50, '2024-05-15 06:02:05', '2024-05-15 06:02:05'),
(63, 2, 5, 11, 20, 9, 50, '2024-05-15 06:03:14', '2024-05-15 06:03:14'),
(64, 2, 4, 10, 19, 60, 51, '2024-05-15 06:04:35', '2024-05-15 06:04:35'),
(65, 2, 5, 10, 19, 68, 52, '2024-05-15 06:06:22', '2024-05-15 06:06:22'),
(66, 2, 4, 10, 19, 68, 53, '2024-05-15 06:07:52', '2024-05-15 06:07:52'),
(67, 2, 4, 10, 19, 68, 54, '2024-05-15 06:09:04', '2024-05-15 06:09:04'),
(68, 2, 4, 10, 19, 4, 53, '2024-05-15 06:11:42', '2024-05-15 06:11:42'),
(69, 2, 4, 10, 19, 6, 18, '2024-05-15 06:12:53', '2024-05-15 06:12:53'),
(70, 2, 4, 10, 19, 7, 53, '2024-05-15 06:13:58', '2024-05-15 06:13:58'),
(71, 2, 4, 10, 19, 8, 53, '2024-05-15 06:15:17', '2024-05-15 06:15:17'),
(72, 2, 4, 10, 19, 9, 53, '2024-05-15 06:16:16', '2024-05-15 06:16:16'),
(73, 2, 4, 10, 19, 29, 58, '2024-05-15 06:17:22', '2024-05-15 06:17:22'),
(74, 2, 4, 10, 19, 30, 58, '2024-05-15 06:18:33', '2024-05-15 06:18:33'),
(75, 2, 4, 10, 19, 31, 59, '2024-05-15 06:19:27', '2024-05-15 06:19:27'),
(76, 2, 10, 6, 8, 60, 120, '2024-05-15 06:21:17', '2024-05-15 06:21:17'),
(77, 2, 10, 6, 8, 60, 16, '2024-05-15 06:22:40', '2024-05-15 06:22:40'),
(78, 2, 10, 6, 9, 36, 2, '2024-05-15 06:23:56', '2024-05-15 06:23:56'),
(79, 2, 10, 8, 13, 51, 135, '2024-05-15 06:44:05', '2024-05-15 06:44:05'),
(80, 2, 10, 8, 13, 52, 136, '2024-05-15 06:45:04', '2024-05-15 06:45:04'),
(81, 2, 10, 8, 13, 53, 137, '2024-05-15 06:46:08', '2024-05-15 06:46:08'),
(82, 2, 10, 8, 13, 54, 138, '2024-05-15 06:47:20', '2024-05-15 06:47:20'),
(83, 2, 10, 8, 14, 6, 18, '2024-05-15 06:49:39', '2024-05-15 06:49:39'),
(84, 2, 10, 8, 14, 55, 18, '2024-05-15 06:51:31', '2024-05-15 06:51:31'),
(85, 2, 10, 8, 14, 56, 139, '2024-05-15 06:52:49', '2024-05-15 06:52:49'),
(86, 2, 10, 8, 14, 57, 140, '2024-05-15 06:54:44', '2024-05-15 06:54:44'),
(87, 2, 10, 8, 14, 58, 141, '2024-05-15 06:55:51', '2024-05-15 06:55:51'),
(88, 2, 10, 6, 11, 68, 152, '2024-05-15 06:58:11', '2024-05-15 06:58:11'),
(89, 2, 10, 6, 11, 67, 153, '2024-05-15 07:06:54', '2024-05-15 07:06:54'),
(90, 2, 9, 1, 1, 60, 3, '2024-05-15 07:11:06', '2024-05-15 07:11:06'),
(91, 2, 9, 1, 1, 68, 14, '2024-05-15 07:12:40', '2024-05-15 07:12:40'),
(92, 2, 8, 12, 21, 60, 60, '2024-05-15 07:22:35', '2024-05-15 07:22:35'),
(93, 2, 8, 12, 21, 60, 61, '2024-05-15 07:24:19', '2024-05-15 07:24:19'),
(94, 2, 8, 12, 21, 60, 62, '2024-05-15 07:25:11', '2024-05-15 07:25:11'),
(95, 2, 8, 12, 21, 60, 64, '2024-05-15 07:26:01', '2024-05-15 07:26:01'),
(96, 2, 8, 12, 21, 60, 63, '2024-05-15 07:26:57', '2024-05-15 07:26:57'),
(97, 2, 8, 12, 21, 60, 65, '2024-05-15 07:27:40', '2024-05-15 07:27:40'),
(98, 2, 8, 12, 21, 60, 66, '2024-05-15 07:28:35', '2024-05-15 07:28:35'),
(99, 2, 8, 12, 21, 60, 67, '2024-05-15 07:29:25', '2024-05-15 07:29:25'),
(100, 2, 8, 12, 21, 60, 68, '2024-05-15 07:30:17', '2024-05-15 07:30:17'),
(101, 2, 8, 12, 21, 60, 69, '2024-05-15 07:31:02', '2024-05-15 07:31:02'),
(102, 2, 8, 12, 21, 32, 70, '2024-05-15 07:40:51', '2024-05-15 07:40:51'),
(103, 2, 8, 12, 21, 68, 71, '2024-05-15 07:42:52', '2024-05-15 07:42:52'),
(104, 2, 8, 12, 21, 68, 72, '2024-05-15 07:44:19', '2024-05-15 07:44:19'),
(105, 2, 8, 12, 21, 68, 73, '2024-05-15 07:45:24', '2024-05-15 07:45:24'),
(106, 2, 8, 12, 21, 68, 74, '2024-05-15 07:46:30', '2024-05-15 07:46:30'),
(107, 2, 8, 12, 21, 68, 75, '2024-05-15 07:47:41', '2024-05-15 07:47:41'),
(108, 2, 8, 12, 21, 68, 76, '2024-05-15 07:49:33', '2024-05-15 07:49:33'),
(109, 2, 8, 12, 21, 68, 77, '2024-05-15 07:50:42', '2024-05-15 07:50:42'),
(110, 2, 8, 12, 21, 4, 78, '2024-05-15 07:51:50', '2024-05-15 07:51:50'),
(111, 2, 8, 12, 21, 4, 79, '2024-05-15 07:52:47', '2024-05-15 07:52:47'),
(112, 2, 8, 12, 21, 4, 80, '2024-05-15 07:53:32', '2024-05-15 07:53:32'),
(113, 2, 8, 12, 21, 4, 81, '2024-05-15 07:54:21', '2024-05-15 07:54:21'),
(114, 2, 8, 12, 21, 4, 82, '2024-05-15 07:55:13', '2024-05-15 07:55:13'),
(115, 2, 8, 12, 21, 4, 83, '2024-05-15 07:56:07', '2024-05-15 07:56:07'),
(116, 2, 8, 12, 21, 4, 84, '2024-05-15 07:56:59', '2024-05-15 07:56:59'),
(117, 2, 8, 12, 21, 4, 85, '2024-05-15 07:58:10', '2024-05-15 07:58:10'),
(118, 2, 8, 12, 21, 4, 86, '2024-05-15 07:59:11', '2024-05-15 07:59:11'),
(119, 2, 8, 12, 21, 4, 87, '2024-05-15 08:00:14', '2024-05-15 08:00:14'),
(120, 2, 8, 12, 21, 4, 88, '2024-05-15 08:00:58', '2024-05-15 08:00:58'),
(121, 2, 8, 12, 21, 4, 89, '2024-05-15 08:02:00', '2024-05-15 08:02:00'),
(122, 2, 8, 12, 21, 5, 90, '2024-05-16 05:32:08', '2024-05-16 05:32:08'),
(123, 2, 8, 12, 21, 5, 91, '2024-05-16 05:33:36', '2024-05-16 05:33:36'),
(124, 2, 8, 12, 21, 5, 92, '2024-05-16 05:34:38', '2024-05-16 05:34:38'),
(125, 2, 8, 12, 21, 5, 93, '2024-05-16 05:35:40', '2024-05-16 05:35:40'),
(126, 2, 8, 12, 21, 5, 94, '2024-05-16 05:36:42', '2024-05-16 05:36:42'),
(127, 2, 8, 12, 21, 5, 95, '2024-05-16 05:37:51', '2024-05-16 05:37:51'),
(128, 2, 8, 12, 21, 5, 96, '2024-05-16 05:38:45', '2024-05-16 05:38:45'),
(129, 2, 8, 12, 21, 5, 97, '2024-05-16 05:39:42', '2024-05-16 05:39:42'),
(130, 2, 8, 12, 21, 5, 98, '2024-05-16 05:40:46', '2024-05-16 05:40:46'),
<<<<<<< HEAD
=======
(131, 2, 8, 12, 21, 5, 98, '2024-05-16 05:40:47', '2024-05-16 05:40:47'),
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
(132, 2, 8, 12, 21, 5, 99, '2024-05-16 05:41:49', '2024-05-16 05:41:49'),
(133, 2, 8, 12, 21, 6, 100, '2024-05-16 05:43:06', '2024-05-16 05:43:06'),
(134, 2, 9, 12, 21, 7, 101, '2024-05-16 05:44:20', '2024-05-16 05:44:20'),
(135, 2, 8, 12, 21, 7, 102, '2024-05-16 05:45:04', '2024-05-16 05:45:04'),
(136, 2, 8, 12, 21, 7, 103, '2024-05-16 05:45:52', '2024-05-16 05:45:52'),
(137, 2, 8, 12, 21, 7, 104, '2024-05-16 05:46:37', '2024-05-16 05:46:37'),
(138, 2, 8, 12, 21, 7, 105, '2024-05-16 05:47:17', '2024-05-16 05:47:17'),
(139, 2, 8, 12, 21, 7, 106, '2024-05-16 05:47:59', '2024-05-16 05:47:59'),
(140, 2, 8, 12, 21, 8, 107, '2024-05-16 05:49:10', '2024-05-16 05:49:10'),
(141, 2, 8, 12, 21, 33, 108, '2024-05-16 05:50:06', '2024-05-16 05:50:06'),
(142, 2, 8, 12, 21, 9, 109, '2024-05-16 05:51:24', '2024-05-16 05:51:24'),
(143, 2, 8, 12, 21, 9, 110, '2024-05-16 05:52:20', '2024-05-16 05:52:20'),
(144, 2, 8, 12, 21, 9, 111, '2024-05-16 05:53:15', '2024-05-16 05:53:15'),
(145, 2, 8, 12, 21, 9, 112, '2024-05-16 05:54:06', '2024-05-16 05:54:06'),
(146, 2, 8, 12, 21, 9, 113, '2024-05-16 05:55:00', '2024-05-16 05:55:00'),
(147, 2, 8, 12, 21, 9, 114, '2024-05-16 05:55:42', '2024-05-16 05:55:42'),
(148, 2, 8, 12, 21, 9, 115, '2024-05-16 05:56:32', '2024-05-16 05:56:32'),
(149, 2, 8, 12, 21, 34, 116, '2024-05-16 05:57:45', '2024-05-16 05:57:45'),
(150, 2, 8, 12, 21, 35, 117, '2024-05-16 05:58:42', '2024-05-16 05:58:42'),
(151, 2, 8, 12, 21, 35, 118, '2024-05-16 05:59:36', '2024-05-16 05:59:36'),
(152, 2, 8, 12, 21, 35, 119, '2024-05-16 06:00:29', '2024-05-16 06:00:29'),
<<<<<<< HEAD
(153, 2, 9, 2, 3, 37, 121, '2024-05-16 06:17:33', '2024-05-31 00:41:36'),
=======
(153, 2, 9, 2, 3, 9, 121, '2024-05-16 06:17:33', '2024-05-16 06:17:33'),
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
(154, 2, 9, 2, 3, 38, 122, '2024-05-16 06:19:07', '2024-05-16 06:21:24'),
(155, 2, 9, 2, 3, 39, 123, '2024-05-16 06:20:44', '2024-05-16 06:20:44'),
(156, 2, 9, 2, 3, 40, 124, '2024-05-16 06:22:45', '2024-05-16 06:22:45'),
(157, 2, 9, 2, 3, 41, 125, '2024-05-16 06:24:13', '2024-05-16 06:24:13'),
(158, 2, 9, 2, 3, 42, 126, '2024-05-16 06:25:35', '2024-05-16 06:25:35'),
(159, 2, 9, 2, 3, 43, 127, '2024-05-16 06:26:57', '2024-05-16 06:26:57'),
(160, 2, 9, 2, 3, 44, 128, '2024-05-16 06:28:26', '2024-05-16 06:28:26'),
(161, 2, 9, 2, 3, 45, 129, '2024-05-16 06:29:46', '2024-05-16 06:29:46'),
(162, 2, 9, 2, 3, 46, 130, '2024-05-16 06:31:17', '2024-05-16 06:31:17'),
(163, 2, 9, 2, 3, 47, 131, '2024-05-16 06:32:41', '2024-05-16 06:32:41'),
(164, 2, 9, 2, 3, 48, 132, '2024-05-16 06:34:06', '2024-05-16 06:34:06'),
(165, 2, 9, 2, 3, 49, 133, '2024-05-16 06:51:43', '2024-05-16 06:51:43'),
(166, 2, 9, 2, 3, 49, 160, '2024-05-16 07:07:24', '2024-05-16 07:07:24'),
(167, 2, 9, 2, 3, 49, 160, '2024-05-16 07:12:01', '2024-05-16 07:12:01'),
(168, 2, 9, 2, 3, 50, 133, '2024-05-16 07:15:08', '2024-05-16 07:15:08'),
(169, 2, 10, 6, 7, 59, 22, '2024-05-16 07:26:23', '2024-05-16 07:26:23'),
(170, 2, 10, 6, 7, 60, 143, '2024-05-16 07:34:29', '2024-05-16 07:34:29'),
(171, 2, 10, 6, 7, 60, 143, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(172, 2, 10, 6, 7, 61, 143, '2024-05-16 07:38:01', '2024-05-16 07:38:01'),
(173, 2, 10, 6, 7, 61, 144, '2024-05-16 07:39:02', '2024-05-16 07:39:02'),
(174, 2, 10, 6, 7, 61, 145, '2024-05-16 07:41:05', '2024-05-16 07:41:05'),
(175, 2, 10, 6, 7, 62, 146, '2024-05-16 07:41:56', '2024-05-16 07:41:56'),
(176, 2, 10, 6, 7, 63, 147, '2024-05-16 07:43:38', '2024-05-16 07:43:38'),
(177, 2, 10, 6, 7, 64, 148, '2024-05-16 07:48:01', '2024-05-16 07:48:01'),
(178, 2, 10, 6, 7, 65, 149, '2024-05-16 07:50:33', '2024-05-16 07:50:33'),
(179, 2, 10, 6, 7, 66, 150, '2024-05-16 07:51:18', '2024-05-16 07:51:18'),
(180, 2, 10, 6, 7, 7, 156, '2024-05-16 07:52:14', '2024-05-16 07:52:14'),
(181, 2, 10, 5, 6, 60, 143, '2024-05-16 07:54:39', '2024-05-16 07:54:39'),
(182, 2, 10, 5, 6, 68, 154, '2024-05-16 07:55:59', '2024-05-16 07:55:59'),
(183, 2, 10, 5, 6, 4, 155, '2024-05-16 07:57:12', '2024-05-16 07:57:12'),
(184, 2, 10, 5, 6, 7, 156, '2024-05-16 07:58:16', '2024-05-16 07:58:16');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `group_rekenings`
--

CREATE TABLE `group_rekenings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `bagian_id` int(20) NOT NULL,
  `kegiatan_id` bigint(20) NOT NULL,
  `sub_kegiatan_id` bigint(20) NOT NULL,
  `rekening_id` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_rekenings`
--

INSERT INTO `group_rekenings` (`id`, `bagian_id`, `kegiatan_id`, `sub_kegiatan_id`, `rekening_id`, `created_at`, `updated_at`) VALUES
(36, 10, 6, 10, '1', '2024-05-12 02:51:43', '2024-05-12 02:51:43'),
(37, 6, 13, 22, '60', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(38, 6, 13, 22, '68', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(39, 6, 13, 22, '4', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(40, 6, 13, 22, '5', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(41, 6, 13, 22, '6', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(42, 6, 13, 22, '7', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(43, 6, 13, 22, '8', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(44, 6, 13, 22, '9', '2024-05-12 02:53:33', '2024-05-12 02:53:33'),
(45, 9, 1, 2, '60', '2024-05-12 02:56:11', '2024-05-12 02:56:11'),
(46, 9, 1, 2, '68', '2024-05-12 02:56:11', '2024-05-12 02:56:11'),
(47, 9, 2, 4, '60', '2024-05-12 02:57:45', '2024-05-12 02:57:45'),
(48, 9, 2, 4, '68', '2024-05-12 02:57:45', '2024-05-12 02:57:45'),
(49, 9, 2, 4, '6', '2024-05-12 02:57:45', '2024-05-12 02:57:45'),
(50, 9, 2, 4, '10', '2024-05-12 02:57:45', '2024-05-12 02:57:45'),
(51, 9, 2, 4, '11', '2024-05-12 02:57:45', '2024-05-12 02:57:45'),
(52, 10, 9, 18, '12', '2024-05-12 02:59:38', '2024-05-12 02:59:38'),
(53, 10, 9, 18, '13', '2024-05-12 02:59:38', '2024-05-12 02:59:38'),
(54, 10, 9, 15, '14', '2024-05-12 03:03:33', '2024-05-12 03:03:33'),
(55, 10, 9, 15, '15', '2024-05-12 03:03:33', '2024-05-12 03:03:33'),
(57, 10, 9, 16, '14', '2024-05-12 03:04:58', '2024-05-12 03:04:58'),
(58, 10, 9, 16, '17', '2024-05-12 03:04:58', '2024-05-12 03:04:58'),
(59, 10, 9, 16, '18', '2024-05-12 03:04:58', '2024-05-12 03:04:58'),
(60, 10, 9, 16, '19', '2024-05-12 03:04:58', '2024-05-12 03:04:58'),
(61, 10, 9, 17, '20', '2024-05-12 03:06:26', '2024-05-12 03:06:26'),
(62, 10, 9, 17, '21', '2024-05-12 03:06:26', '2024-05-12 03:06:26'),
(63, 10, 9, 17, '22', '2024-05-12 03:06:26', '2024-05-12 03:06:26'),
(64, 10, 9, 17, '23', '2024-05-12 03:06:26', '2024-05-12 03:06:26'),
(65, 10, 9, 17, '24', '2024-05-12 03:06:26', '2024-05-12 03:06:26'),
(66, 10, 4, 5, '25', '2024-05-12 03:07:11', '2024-05-12 03:07:11'),
(67, 10, 7, 12, '26', '2024-05-12 03:08:07', '2024-05-12 03:08:07'),
(68, 10, 7, 12, '27', '2024-05-12 03:08:07', '2024-05-12 03:08:07'),
(69, 10, 7, 12, '28', '2024-05-12 03:08:07', '2024-05-12 03:08:07'),
(70, 5, 11, 20, '60', '2024-05-12 03:09:47', '2024-05-12 03:09:47'),
(71, 5, 11, 20, '68', '2024-05-12 03:09:47', '2024-05-12 03:09:47'),
(72, 5, 11, 20, '4', '2024-05-12 03:09:47', '2024-05-12 03:09:47'),
(73, 5, 11, 20, '6', '2024-05-12 03:09:47', '2024-05-12 03:09:47'),
(74, 5, 11, 20, '7', '2024-05-12 03:09:47', '2024-05-12 03:09:47'),
(75, 5, 11, 20, '9', '2024-05-12 03:09:47', '2024-05-12 03:09:47'),
(76, 4, 10, 19, '60', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(77, 4, 10, 19, '68', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(78, 4, 10, 19, '4', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(79, 4, 10, 19, '6', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(80, 4, 10, 19, '7', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(81, 4, 10, 19, '8', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(82, 4, 10, 19, '9', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(83, 4, 10, 19, '29', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(84, 4, 10, 19, '30', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(85, 4, 10, 19, '31', '2024-05-12 03:11:11', '2024-05-12 03:11:11'),
(86, 8, 12, 21, '60', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(87, 8, 12, 21, '32', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(88, 8, 12, 21, '68', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(89, 8, 12, 21, '4', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(90, 8, 12, 21, '5', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(91, 8, 12, 21, '6', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(92, 8, 12, 21, '7', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(93, 8, 12, 21, '8', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(94, 8, 12, 21, '33', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(95, 8, 12, 21, '9', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(96, 8, 12, 21, '34', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(97, 8, 12, 21, '35', '2024-05-12 03:13:22', '2024-05-12 03:13:22'),
(98, 10, 6, 9, '36', '2024-05-12 03:14:12', '2024-05-12 03:14:12'),
(99, 10, 6, 8, '60', '2024-05-12 03:15:27', '2024-05-12 03:15:27'),
(100, 9, 2, 3, '37', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(101, 9, 2, 3, '38', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(102, 9, 2, 3, '39', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(103, 9, 2, 3, '40', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(104, 9, 2, 3, '41', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(105, 9, 2, 3, '42', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(106, 9, 2, 3, '43', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(107, 9, 2, 3, '44', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(108, 9, 2, 3, '45', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(109, 9, 2, 3, '46', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(110, 9, 2, 3, '47', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(111, 9, 2, 3, '48', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(112, 9, 2, 3, '49', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(113, 9, 2, 3, '50', '2024-05-12 03:17:58', '2024-05-12 03:17:58'),
(114, 10, 8, 13, '51', '2024-05-12 03:19:25', '2024-05-12 03:19:25'),
(115, 10, 8, 13, '52', '2024-05-12 03:19:25', '2024-05-12 03:19:25'),
(116, 10, 8, 13, '53', '2024-05-12 03:19:25', '2024-05-12 03:19:25'),
(117, 10, 8, 13, '54', '2024-05-12 03:19:25', '2024-05-12 03:19:25'),
(118, 10, 8, 14, '6', '2024-05-12 03:20:18', '2024-05-12 03:20:18'),
(119, 10, 8, 14, '55', '2024-05-12 03:20:18', '2024-05-12 03:20:18'),
(120, 10, 8, 14, '56', '2024-05-12 03:20:18', '2024-05-12 03:20:18'),
(121, 10, 8, 14, '57', '2024-05-12 03:20:18', '2024-05-12 03:20:18'),
(122, 10, 8, 14, '58', '2024-05-12 03:20:18', '2024-05-12 03:20:18'),
(123, 10, 6, 7, '59', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(124, 10, 6, 7, '60', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(125, 10, 6, 7, '61', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(126, 10, 6, 7, '62', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(127, 10, 6, 7, '63', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(128, 10, 6, 7, '64', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(129, 10, 6, 7, '65', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(130, 10, 6, 7, '66', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(131, 10, 6, 7, '7', '2024-05-12 03:21:46', '2024-05-12 03:21:46'),
(132, 10, 6, 11, '68', '2024-05-12 03:22:24', '2024-05-12 03:22:24'),
(133, 10, 6, 11, '67', '2024-05-12 03:22:24', '2024-05-12 03:22:24'),
(134, 9, 1, 1, '60', '2024-05-12 03:23:15', '2024-05-12 03:23:15'),
(135, 9, 1, 1, '68', '2024-05-12 03:23:15', '2024-05-12 03:23:15'),
(136, 10, 5, 6, '60', '2024-05-12 03:24:08', '2024-05-12 03:24:08'),
(137, 10, 5, 6, '68', '2024-05-12 03:24:08', '2024-05-12 03:24:08'),
(138, 10, 5, 6, '4', '2024-05-12 03:24:08', '2024-05-12 03:24:08'),
(139, 10, 5, 6, '7', '2024-05-12 03:24:08', '2024-05-12 03:24:08');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) NOT NULL,
  `kode_kegiatan` varchar(255) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `bagian_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `kode_kegiatan`, `nama_kegiatan`, `bagian_id`, `created_at`, `updated_at`) VALUES
(1, '7.01.01.2.01', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', 9, '2024-02-02 08:31:49', '2024-02-08 04:00:10'),
(2, '7.01.01.2.02', 'Administrasi Keuangan Perangkat Daerah', 9, '2024-02-02 08:34:44', '2024-02-08 04:01:58'),
(4, '7.01.01.2.03', 'Administrasi Barang Milik Daerah pada Perangkat Daerah', 10, '2024-02-02 08:48:24', '2024-02-08 04:03:22'),
(5, '7.01.01.2.05', 'Administrasi Kepegawaian Perangkat Daerah', 10, '2024-02-08 04:04:12', '2024-02-08 04:04:12'),
(6, '7.01.01.2.06', 'Administrasi Umum Perangkat Daerah', 10, '2024-02-08 04:05:00', '2024-02-08 04:05:00'),
(7, '7.01.01.2.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', 10, '2024-02-08 04:07:19', '2024-02-08 04:07:19'),
(8, '7.01.01.2.08', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', 10, '2024-02-08 04:08:01', '2024-02-08 04:08:01'),
(9, '7.01.01.2.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', 10, '2024-02-08 04:08:59', '2024-02-08 04:08:59'),
(10, '7.01.02.2.01', 'Koordinasi Penyelenggaraan Kegiatan Pemerintahan di Tingkat Kecamatan', 4, '2024-02-08 04:10:31', '2024-02-08 04:10:31'),
(11, '7.01.02.2.02', 'Penyelenggaraan Urusan Pemerintahan yang Tidak Dilaksanakan oleh Unit Kerja Perangkat Daerah yang Ada di Kecamatan', 5, '2024-02-08 04:11:08', '2024-02-08 04:11:08'),
(12, '7.01.03.2.03', 'Pemberdayaan Lembaga Kemasyarakatan Tingkat Kecamatan', 8, '2024-02-08 04:28:42', '2024-02-08 04:28:42'),
(13, '7.01.05.2.01', 'Penyelenggaraan Urusan Pemerintahan Umum Sesuai Penugasan Kepala Daerah', 6, '2024-02-08 04:29:22', '2024-02-08 04:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(26, '2014_10_12_000000_create_users_table', 1),
(27, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(28, '2019_08_19_000000_create_failed_jobs_table', 1),
(29, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(30, '2024_01_26_134206_create_bagian_table', 1),
(31, '2024_01_26_143853_create_kegiatan_table', 1),
(32, '2024_01_26_143912_create_sub_kegiatan_table', 1),
(33, '2024_01_26_143929_create_sub_pencairan_table', 1),
(34, '2024_02_05_225927_create_rekenings_table', 2),
(35, '2024_02_05_230127_create_detail_pencairans_table', 3),
(36, '2024_02_09_014007_create_group_rekenings_table', 4),
(37, '2024_03_17_051348_create_programs_table', 5),
(38, '2024_05_10_031441_create_dpas_table', 6),
(39, '2024_05_10_053059_create_dpas_table', 7),
(40, '2014_10_12_100000_create_password_resets_table', 8),
(41, '2024_05_10_053060_create_dpas_table', 9),
(42, '2024_05_12_062049_create_detail_dpas_table', 10),
(43, '2024_05_19_022935_create_spjs_table', 11),
<<<<<<< HEAD
(44, '2024_05_19_023859_create_detail_spjs_table', 12),
(45, '2024_06_09_111043_create_pencairans_table', 13);
=======
(44, '2024_05_19_023859_create_detail_spjs_table', 12);
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjabarans`
--

CREATE TABLE `penjabarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
<<<<<<< HEAD
  `spj_id` bigint(20) NOT NULL,
  `tgl_pencairan` date NOT NULL,
  `no_spm` varchar(255) NOT NULL,
  `no_sp2d` varchar(255) NOT NULL,
=======
  `nomor_dpa` varchar(255) NOT NULL,
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Dumping data for table `pencairans`
--

INSERT INTO `pencairans` (`id`, `spj_id`, `tgl_pencairan`, `no_spm`, `no_sp2d`, `created_at`, `updated_at`) VALUES
(1, 42, '2024-01-26', '35.74/03.0/000049/LS/7.01.2.13.0.00.02.0000/M/1/2024', '35.74/04.0/000030/LS/7.01.2.13.0.00.02.0000/M/1/2024', '2024-06-14 08:07:11', '2024-06-14 08:07:11'),
(2, 52, '2024-02-07', '35.74/03.0/000090/LS/7.01.2.13.0.00.02.0000/M/2/2024', '35.74/04.0/000053/LS/7.01.2.13.0.00.02.0000/M/2/2024', '2024-06-14 08:08:20', '2024-06-14 08:08:20');

-- --------------------------------------------------------

--
-- Table structure for table `penjabarans`
--

CREATE TABLE `penjabarans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nomor_dpa` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
=======
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
-- Dumping data for table `penjabarans`
--

INSERT INTO `penjabarans` (`id`, `nomor_dpa`, `created_at`, `updated_at`) VALUES
(2, 'DPA/A.1/7.01.2.13.0.00.02.0000/001/2024', '2024-05-09 20:44:33', '2024-05-09 20:46:22');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_program` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `nama_program`, `created_at`, `updated_at`) VALUES
(1, 'Mamin Jamuan Tamu', '2024-03-29 01:22:11', '2024-03-29 01:22:11'),
(2, 'Tagihan Surat Kabar', '2024-03-29 01:24:04', '2024-03-29 01:24:04'),
(3, 'Belanja Fotocopy', '2024-05-09 19:20:42', '2024-05-09 19:20:42'),
(4, 'Belanja Makanan dan Minuman', '2024-05-09 19:20:53', '2024-05-09 19:20:53'),
(5, 'Satuan Biaya Konsumsi Rapat Dalam Kantor/Kegiatan Pembinaan Linmas (Mamin kegiatan-Kudapan)', '2024-05-09 19:21:26', '2024-05-09 19:21:26'),
(6, 'Satuan Biaya Konsumsi Rapat Dalam Kantor/Kegiatan Pembinaan Linmas (mamin kegiatan-makan)', '2024-05-09 19:22:01', '2024-05-09 19:22:01'),
(7, 'Honorarium Narasumber Kegiatan Pembinaan Linmas', '2024-05-09 19:22:22', '2024-05-09 19:22:22'),
(8, 'Honorarium Tim Pelaksana Kegiatan Peningkatan Kapasitas Pengamanan Terpadu', '2024-05-09 19:22:46', '2024-05-09 19:22:46'),
(9, 'Honorarium Non ASN', '2024-05-09 19:23:15', '2024-05-09 19:23:15'),
(10, 'Belanja Cetak Banner kegiatan Pembinaan Linmas', '2024-05-09 19:23:38', '2024-05-09 19:23:38'),
(11, 'Belanja Sewa Tenda Kegiatan Pembinaan Linmas', '2024-05-09 19:23:59', '2024-05-09 19:23:59'),
(12, 'Jasa Sewa Kursi Kegiatan Pembinaan Linmas', '2024-05-09 19:24:22', '2024-05-09 19:24:22'),
(13, 'Satuan biaya uang saku/bantuan transport kegiatan pembinaan Linmas', '2024-05-09 19:24:35', '2024-05-09 19:24:35'),
(14, 'Belanja mamin rapat', '2024-05-09 19:25:15', '2024-05-09 19:25:15'),
(15, 'Belanja cetak buku', '2024-05-09 19:25:29', '2024-05-09 19:25:29'),
(16, 'Fotocopy', '2024-05-09 19:25:38', '2024-05-09 19:25:38'),
(17, 'Makanan dan Minuman Rapat', '2024-05-09 19:25:52', '2024-05-09 19:25:52'),
(18, 'Gaji Non ASN', '2024-05-09 19:25:59', '2024-05-09 19:25:59'),
(19, 'Belanja Lembur Non ASN', '2024-05-09 19:26:14', '2024-05-09 19:26:14'),
(20, 'Pemeliharaan Bangunan Gedung Tempat Kerja', '2024-05-09 19:27:03', '2024-05-09 19:27:03'),
(21, 'Pembayaran pajak', '2024-05-09 19:27:28', '2024-05-09 19:27:28'),
(22, 'Bahan Bakar Pelumas', '2024-05-09 19:27:36', '2024-05-09 19:27:36'),
(23, 'Service oli pelumas', '2024-05-09 19:27:44', '2024-05-09 19:27:44'),
(25, 'BBM kendaraan Dinas Operasional', '2024-05-09 19:28:11', '2024-05-09 19:28:11'),
(26, 'Service oli dan pelumas', '2024-05-09 19:28:20', '2024-05-09 19:28:20'),
(27, 'Suku Cadang Pick Up', '2024-05-09 19:28:28', '2024-05-09 19:28:28'),
(28, 'BBM Roda 2', '2024-05-09 19:28:35', '2024-05-09 19:28:35'),
(29, 'Service oli dan pelumas roda 2', '2024-05-09 19:28:43', '2024-05-09 19:28:43'),
(31, 'BBM Roda 3', '2024-05-09 19:28:57', '2024-05-09 19:28:57'),
(32, 'Service oli dan pelumas roda 3', '2024-05-09 19:29:05', '2024-05-09 19:29:05'),
(33, 'Suku cadang', '2024-05-09 19:29:12', '2024-05-09 19:29:12'),
(34, 'Pemeliharaan Genset', '2024-05-09 19:29:23', '2024-05-09 19:29:23'),
(35, 'Pemeliharaan layar LCD', '2024-05-09 19:29:30', '2024-05-09 19:29:30'),
(36, 'Pemeliharaan AC', '2024-05-09 19:29:39', '2024-05-09 19:29:39'),
(37, 'Pemeliharaan komputer', '2024-05-09 19:29:45', '2024-05-09 19:29:45'),
(38, 'Pemeliharaan printer', '2024-05-09 19:29:56', '2024-05-09 19:29:56'),
(39, 'Jasa Konsultansi Penatausahaan BMD', '2024-05-09 19:30:09', '2024-05-09 19:30:09'),
(40, 'Belanja rak besi arsip', '2024-05-09 19:30:22', '2024-05-09 19:30:22'),
(41, 'Belanja gimbal stabilizier', '2024-05-09 19:30:31', '2024-05-09 19:30:31'),
(42, 'Aplikasi tata kelola pemerintahan', '2024-05-09 19:30:38', '2024-05-09 19:30:38'),
(44, 'Survey Kepuasan Masyarakat', '2024-05-09 19:31:06', '2024-05-09 19:31:06'),
(48, 'Belanja Jasa Tenaga Adminstrasi', '2024-05-09 19:31:38', '2024-05-09 19:31:38'),
(50, 'Sosialisasi Pelayanan Publik Berbasis Online', '2024-05-09 19:31:55', '2024-05-09 19:31:55'),
(51, 'Kegiatan Penyusunan Profil Kecamatan', '2024-05-09 19:32:07', '2024-05-09 19:32:07'),
(52, 'Kegiatan Evaluasi Kelurahan', '2024-05-09 19:32:15', '2024-05-09 19:32:15'),
(53, 'Kegiatan Pembinaan RT/RW', '2024-05-09 19:32:26', '2024-05-09 19:32:26'),
(54, 'Kegiatan Sinergitas Kecamatan', '2024-05-09 19:32:45', '2024-05-09 19:32:45'),
(58, 'Belanja uang yang diberikan kepada RT/RW', '2024-05-09 19:34:17', '2024-05-09 19:34:17'),
(59, 'Belanja Paket Data RT/RW', '2024-05-09 19:34:28', '2024-05-09 19:34:28'),
(60, 'Belanja Alat Tulis Kantor Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:36:52', '2024-05-09 19:36:52'),
(61, 'Belanja Alat Tulis Kantor Kegiatan Musrenbang Tingkat Kelurahan', '2024-05-09 19:37:02', '2024-05-09 19:37:02'),
(62, 'Belanja Cetak Buku Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:37:10', '2024-05-09 19:37:10'),
(63, 'Belanja Foto copy Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:37:27', '2024-05-09 19:37:27'),
(64, 'Belanja Foto copy Kegiatan Monev Kampung Tematik', '2024-05-09 19:37:48', '2024-05-09 19:37:48'),
(65, 'Belanja Foto copy Kegiatan Musrenbang Tingkat Kelurahan', '2024-05-09 19:38:33', '2024-05-09 19:38:33'),
(66, 'Belanja Foto copy Kegiatan Pembinaan TP PKK dan 10 Program Pokok TP PKK', '2024-05-09 19:38:44', '2024-05-09 19:38:44'),
(67, 'Belanja Foto copy Kegiatan Sosialisasi dan Pembinaan Kader UKS/M se Kecamatan Kademangan', '2024-05-09 19:38:54', '2024-05-09 19:38:54'),
(68, 'Belanja Foto copy Kegiatan Sosialisasi dan Pembinaan Kecamatan Layak Anak', '2024-05-09 19:39:05', '2024-05-09 19:39:05'),
(69, 'Belanja Foto copy Kegiatan Sosialisasi Pencegahan Stunting', '2024-05-09 19:39:13', '2024-05-09 19:39:13'),
(70, 'Pekerjaan Pembangunan Rumah Tidak Layak Huni (RTLH)', '2024-05-09 19:39:21', '2024-05-09 19:39:21'),
(71, 'Belanja Makanan dan Minuman Kegiatan Monev Kampung Tematik', '2024-05-09 19:39:39', '2024-05-09 19:39:39'),
(72, 'Belanja Makanan dan Minuman Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:39:49', '2024-05-09 19:39:49'),
(73, 'Belanja Makanan dan Minuman Kegiatan Musrenbang Tingkat Kelurahan', '2024-05-09 19:39:58', '2024-05-09 19:39:58'),
(74, 'Belanja Makanan dan Minuman Kegiatan Pembinaan TP PKK dan 10 Program Pokok TP PKK', '2024-05-09 19:40:07', '2024-05-09 19:40:07'),
(75, 'Belanja Makanan dan Minuman Kegiatan Sosialisasi dan Pembinaan Kader UKS/M se Kecamatan Kademangan', '2024-05-09 19:40:43', '2024-05-09 19:40:43'),
(76, 'Belanja Makanan dan Minuman Kegiatan Sosialisasi dan Pembinaan Kecamatan Layak Anak', '2024-05-09 19:40:51', '2024-05-09 19:40:51'),
(77, 'Belanja Makanan dan Minuman Kegiatan Sosialisasi Pencegahan Stunting', '2024-05-09 19:40:58', '2024-05-09 19:40:58'),
(78, 'Honorarium Moderator ASN/PNS Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:41:17', '2024-05-09 19:41:17'),
(79, 'Honorarium Moderator ASN/PNS Kegiatan Musrenbang Tingkat Kelurahan', '2024-05-09 19:41:27', '2024-05-09 19:41:27'),
(80, 'Honorarium Moderator ASN/PNS Kegiatan Sosialisasi dan Pembinaan Kader UKS/M se Kecamatan Kademangan', '2024-05-09 19:41:36', '2024-05-09 19:41:36'),
(81, 'Honorarium Moderator ASN/PNS Kegiatan Sosialisasi dan Pembinaan Kecamatan Layak Anak', '2024-05-09 19:41:44', '2024-05-09 19:41:44'),
(82, 'Honorarium Moderator Kegiatan Monev Kampung Tematik', '2024-05-09 19:41:52', '2024-05-09 19:41:52'),
(83, 'Honorarium Moderator Non ASN/PNS Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:42:00', '2024-05-09 19:42:00'),
(84, 'Honorarium Moderator Non ASN/PNS Kegiatan Musrenbang Tingkat Kelurahan', '2024-05-09 19:42:08', '2024-05-09 19:42:08'),
(85, 'Honorarium Narasumber ASN/PNS Kegiatan Sosialisasi dan Pembinaaan Kecamatan Layak Anak', '2024-05-09 19:42:15', '2024-05-09 19:42:15'),
(86, 'Honorarium Narasumber ASN/PNS Kegiatan Sosialisasi dan Pembinaan Kader UKS se Kecamatan Kademangan', '2024-05-09 19:42:23', '2024-05-09 19:42:23'),
(87, 'Honorarium Narasumber ASN/PNS Kegiatan Sosialisasi Pencegahan Stunting', '2024-05-09 19:42:31', '2024-05-09 19:42:31'),
(88, 'Honorarium Narasumber Kegiatan Monev Kampung Tematik', '2024-05-09 19:42:38', '2024-05-09 19:42:38'),
(89, 'Honorarium Tenaga Fasilitator Teknis Bangunan Fisik (TFL) RTLH', '2024-05-09 19:42:46', '2024-05-09 19:42:46'),
(90, 'Honorarium Anggota TP PKK Kecamatan', '2024-05-09 19:42:54', '2024-05-09 19:42:54'),
(91, 'Honorarium Anggota TP PKK Kelurahan', '2024-05-09 19:43:01', '2024-05-09 19:43:01'),
(92, 'Honorarium Bendahara TP PKK Kecamatan', '2024-05-09 19:43:07', '2024-05-09 19:43:07'),
(93, 'Honorarium Bendahara TP PKK Kelurahan', '2024-05-09 19:43:15', '2024-05-09 19:43:15'),
(94, 'Honorarium Ketua TP PKK Kecamatan', '2024-05-09 19:43:23', '2024-05-09 19:43:23'),
(95, 'Honorarium Ketua TP PKK Kelurahan', '2024-05-09 19:43:30', '2024-05-09 19:43:30'),
(96, 'Honorarium Sekretaris TP PKK Kecamatan', '2024-05-09 19:43:39', '2024-05-09 19:43:39'),
(97, 'Honorarium Sekretaris TP PKK Kelurahan', '2024-05-09 19:43:46', '2024-05-09 19:43:46'),
(98, 'Honorarium Wakil Ketua TP PKK Kecamatan', '2024-05-09 19:43:54', '2024-05-09 19:43:54'),
(99, 'Honorarium Wakil Ketua TP PKK Kelurahan', '2024-05-09 19:44:03', '2024-05-09 19:44:03'),
(100, 'Belanja Honorarium Upah/Gaji untuk Pegawai Non ASN -Rumpun Tenaga Teknis Spesifikasi Pegawai Tidak Tetap Tenaga Teknis', '2024-05-09 19:44:14', '2024-05-09 19:44:14'),
(101, 'Belanja Banner Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:44:22', '2024-05-09 19:44:22'),
(102, 'Belanja Banner Kegiatan Musrenbang Tingkat Kelurahan', '2024-05-09 19:44:29', '2024-05-09 19:44:29'),
(103, 'Belanja Banner Kegiatan Pembinaan TP PKK dan 10 Program Pokok TP PKK', '2024-05-09 19:44:37', '2024-05-09 19:44:37'),
(104, 'Belanja Banner Kegiatan Sosialisasi dan Pembinaan Kader UKS/M se Kecamatan Kademangan', '2024-05-09 19:44:43', '2024-05-09 19:44:43'),
(105, 'Belanja Banner Kegiatan Sosialisasi dan Pembinaan Kecamatan Layak Anak', '2024-05-09 19:44:55', '2024-05-09 19:44:55'),
(106, 'Belanja Banner Kegiatan Sosialisasi Pencegahan Stunting', '2024-05-09 19:45:03', '2024-05-09 19:45:03'),
(107, 'Belanja Sewa Alat Kantor lainnya Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:45:11', '2024-05-09 19:45:11'),
(108, 'Belanja Sewa Alat Rumah Tangga lainnya (home Use) Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:45:18', '2024-05-09 19:45:18'),
(109, 'Belanja Perjalanan Dinas Dalam Kota Kegiatan Monev Kampung Tematik', '2024-05-09 19:45:27', '2024-05-09 19:45:27'),
(110, 'Belanja Perjalanan Dinas dalam Kota Kegiatan Musrenbang Tingkat Kecamatan', '2024-05-09 19:45:39', '2024-05-09 19:45:39'),
(111, 'Belanja Perjalanan Dinas dalam Kota Kegiatan Musrenbang Tingkat Kelurahan', '2024-05-09 19:45:47', '2024-05-09 19:45:47'),
(112, 'Belanja Perjalanan Dinas dalam Kota Kegiatan Pembinaan TP PKK dan 10 Program Pokok TP PKK', '2024-05-09 19:45:56', '2024-05-09 19:45:56'),
(113, 'Belanja Perjalanan Dinas dalam Kota Kegiatan Sosialisasi dan Pembinaan Kader UKS/M se Kecamatan Kademangan', '2024-05-09 19:46:04', '2024-05-09 19:46:04'),
(114, 'Belanja Perjalanan Dinas dalam Kota Kegiatan Sosialisasi dan Pembinaan Kecamatan Layak Anak', '2024-05-09 19:46:12', '2024-05-09 19:46:12'),
(115, 'Belanja Perjalanan Dinas Dalam Kota Kegiatan Sosialisasi Pencegahan Stunting', '2024-05-09 19:46:20', '2024-05-09 19:46:20'),
(116, 'Honorarium Ketua Karang Taruna', '2024-05-09 19:46:32', '2024-05-09 19:46:32'),
(117, 'Belanja DED PJU', '2024-05-09 19:46:42', '2024-05-09 19:46:42'),
(118, 'Belanja Modal Jaringan Listrik - Jaringan Listrik Lainnya', '2024-05-09 19:46:49', '2024-05-09 19:46:49'),
(119, 'Belanja SPV PJU', '2024-05-09 19:46:56', '2024-05-09 19:46:56'),
(120, 'Cetak map', '2024-05-09 19:47:20', '2024-05-09 19:47:20'),
(121, 'Belanja gaji ASN', '2024-05-09 19:47:43', '2024-05-09 19:47:43'),
(122, 'Belanja tunjangan keluarga ASN', '2024-05-09 19:47:55', '2024-05-09 19:47:55'),
(123, 'Belanja tunjangan jabatan ASN', '2024-05-09 19:48:01', '2024-05-09 19:48:01'),
(124, 'Belanja tunjangan fungsional ASN', '2024-05-09 19:48:12', '2024-05-09 19:48:12'),
(125, 'Belanja tunjangan fungsional umum ASN', '2024-05-09 19:48:19', '2024-05-09 19:48:19'),
(126, 'Belanja tunjangan beras ASN', '2024-05-09 19:48:27', '2024-05-09 19:48:27'),
(127, 'Belanja tunjangan PPh/tunjangan khusus ASN', '2024-05-09 19:48:35', '2024-05-09 19:48:35'),
(128, 'Belanja pembulatan gaji ASN', '2024-05-09 19:48:43', '2024-05-09 19:48:43'),
(129, 'Belanja JKK ASN', '2024-05-09 19:48:50', '2024-05-09 19:48:50'),
(130, 'Iuran Jaminan Kematian (JKM) PNS', '2024-05-09 19:48:58', '2024-05-09 19:48:58'),
(131, 'Iuran Simpanan Peserta Tabungan Perumahan Rakyat PNS', '2024-05-09 19:49:11', '2024-05-09 19:49:11'),
(132, 'Tambahan Penghasilan Berdasarkan Beban Kerja PNS', '2024-05-09 19:49:20', '2024-05-09 19:49:20'),
(133, 'Belanja Honorarium Penanggungjawab Pengelola Keuangan Kecamatan', '2024-05-09 19:49:28', '2024-05-09 19:49:28'),
(135, 'Tagihan telepon', '2024-05-09 19:50:01', '2024-05-09 19:50:01'),
(136, 'Tagihan air', '2024-05-09 19:50:08', '2024-05-09 19:50:08'),
(137, 'Tagihan listrik', '2024-05-09 19:50:15', '2024-05-09 19:50:15'),
(138, 'Tagihan internet', '2024-05-09 19:50:24', '2024-05-09 19:50:24'),
(139, 'BPJS Kesehatan Non ASN', '2024-05-09 19:50:48', '2024-05-09 19:50:48'),
(140, 'JKK Non ASN', '2024-05-09 19:50:56', '2024-05-09 19:50:56'),
(141, 'JKM Non ASN', '2024-05-09 19:51:03', '2024-05-09 19:51:03'),
(143, 'ATK', '2024-05-09 19:52:02', '2024-05-09 20:05:31'),
(144, 'Kertas dan cover', '2024-05-09 19:52:07', '2024-05-09 19:52:07'),
(145, 'Kertas gaji', '2024-05-09 19:52:14', '2024-05-09 19:52:14'),
(146, 'Benda pos', '2024-05-09 19:52:21', '2024-05-09 19:52:21'),
(147, 'Bahan komputer', '2024-05-09 19:52:27', '2024-05-09 19:52:27'),
(148, 'Perabot kantor', '2024-05-09 19:52:34', '2024-05-09 19:52:34'),
(149, 'Alat listrik', '2024-05-09 19:52:44', '2024-05-09 19:52:44'),
(150, 'UMBUL-UMBUL', '2024-05-09 19:52:54', '2024-05-09 19:52:54'),
(152, 'Mamin Rapat', '2024-05-09 19:53:16', '2024-05-09 19:53:16'),
(153, 'Perjalanan Dinas', '2024-05-09 19:53:27', '2024-05-09 19:53:27'),
(154, 'Mamin rapat sosialisasi', '2024-05-09 19:54:20', '2024-05-09 19:54:20'),
(155, 'Honorarium narasumber', '2024-05-09 19:54:31', '2024-05-09 19:54:31'),
(156, 'Cetak banner', '2024-05-09 19:54:44', '2024-05-09 19:54:44'),
(158, 'Belanja modal bangunan gedung kantor', '2024-05-12 05:57:57', '2024-05-12 05:57:57'),
(159, 'Suku cadang roda 4', '2024-05-13 07:24:52', '2024-05-13 07:24:52'),
(160, 'Belanja Honorarium Penanggungjawab Pengelola Keuangan Kelurahan', '2024-05-16 06:54:31', '2024-05-16 06:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `rekenings`
--

CREATE TABLE `rekenings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `no_rekening` varchar(255) NOT NULL,
  `nama_rekening` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rekenings`
--

INSERT INTO `rekenings` (`id`, `no_rekening`, `nama_rekening`, `created_at`, `updated_at`) VALUES
(1, '5.1.02.01.01.0053', 'Belanja Makanan dan Minuman Jamuan Tamu', '2024-02-06 06:35:35', '2024-02-08 03:32:26'),
(4, '5.1.02.02.01.0003', 'Honorarium Narasumber atau Pembahas, Moderator, Pembawa Acara, dan Panitia', '2024-02-08 03:33:50', '2024-02-08 03:33:50'),
(5, '5.1.02.02.01.0004', 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan', '2024-02-08 03:34:07', '2024-02-08 03:34:07'),
(6, '5.1.02.02.01.0026', 'Belanja Jasa Tenaga Administrasi', '2024-02-08 03:34:23', '2024-02-08 03:34:23'),
(7, '5.1.02.02.01.0047', 'Belanja Jasa Penyelenggaraan Acara', '2024-02-08 03:34:38', '2024-02-08 03:34:38'),
(8, '5.1.02.02.04.0117', 'Belanja Sewa Alat Kantor Lainnya', '2024-02-08 03:34:53', '2024-02-08 03:34:53'),
(9, '5.1.02.04.01.0003', 'Belanja Perjalanan Dinas Dalam Kota', '2024-02-08 03:35:07', '2024-02-08 03:35:07'),
(10, '5.1.02.02.01.0039', 'Belanja Jasa Tenaga Informasi dan Teknologi', '2024-02-08 03:36:15', '2024-02-08 03:36:15'),
(11, '5.1.02.02.01.0071', 'Belanja Lembur', '2024-02-08 03:36:31', '2024-02-08 03:36:31'),
(12, '5.1.02.03.03.0001', 'Belanja Pemeliharaan Bangunan Gedung-Bangunan Gedung Tempat Kerja-Bangunan Gedung Kantor', '2024-02-08 03:37:05', '2024-02-08 03:37:05'),
(13, '5.2.03.01.01.0001', 'Belanja Modal Bangunan Gedung Kantor', '2024-02-08 03:37:21', '2024-02-08 03:37:21'),
(14, '5.1.02.02.01.0067', 'Belanja Pembayaran Pajak, Bea, dan Perizinan', '2024-02-08 03:38:05', '2024-02-08 03:38:05'),
(15, '5.1.02.03.02.0036', 'Belanja Pemeliharaan Alat Angkutan-Alat Angkutan Darat Bermotor-Kendaraan Bermotor Penumpang', '2024-02-08 03:38:23', '2024-02-08 03:38:23'),
(17, '5.1.02.03.02.0037', 'Belanja Pemeliharaan Alat Angkutan-Alat Angkutan Darat Bermotor-Kendaraan Bermotor Angkutan Barang', '2024-02-08 03:39:05', '2024-02-08 03:39:05'),
(18, '5.1.02.03.02.0038', 'Belanja Pemeliharaan Alat Angkutan-Alat Angkutan Darat Bermotor-Kendaraan Bermotor Beroda Dua', '2024-02-08 03:39:21', '2024-02-08 03:39:21'),
(19, '5.1.02.03.02.0039', 'Belanja Pemeliharaan Alat Angkutan-Alat Angkutan Darat Bermotor-Kendaraan Bermotor Beroda Tiga', '2024-02-08 03:39:37', '2024-02-08 03:39:37'),
(20, '5.1.02.03.02.0022', 'Belanja Pemeliharaan Alat Besar-Alat Bantu-Electric Generating Set', '2024-02-08 03:40:02', '2024-02-08 03:40:02'),
(21, '5.1.02.03.02.0117', 'Belanja Pemeliharaan Alat Kantor dan Rumah Tangga-Alat Kantor-Alat Kantor Lainnya', '2024-02-08 03:40:18', '2024-02-08 03:40:18'),
(22, '5.1.02.03.02.0121', 'Belanja Pemeliharaan Alat Kantor dan Rumah Tangga-Alat Rumah Tangga-Alat Pendingin', '2024-02-08 03:40:33', '2024-02-08 03:40:33'),
(23, '5.1.02.03.02.0405', 'Belanja Pemeliharaan Komputer-Komputer Unit-Personal Computer', '2024-02-08 03:40:47', '2024-02-08 03:40:47'),
(24, '5.1.02.03.02.0411', 'Belanja Pemeliharaan Komputer-Peralatan Komputer-Peralatan Komputer Lainnya', '2024-02-08 03:41:03', '2024-02-08 03:41:03'),
(25, '5.1.02.02.09.0014', 'Belanja Jasa Konsultansi Berorientasi Layanan-Jasa Khusus', '2024-02-08 03:41:30', '2024-02-08 03:41:30'),
(26, '5.2.02.05.01.0004', 'Belanja Modal Alat Penyimpan Perlengkapan Kantor', '2024-02-08 03:41:56', '2024-02-08 03:41:56'),
(27, '5.2.02.06.01.0002', 'Belanja Modal Peralatan Studio Video dan Film', '2024-02-08 03:42:12', '2024-02-08 03:42:12'),
(28, '5.2.06.01.01.0005', 'Belanja Modal Aset Tidak Berwujud-Software', '2024-02-08 03:42:26', '2024-02-08 03:42:26'),
(29, '5.1.02.05.01.0008', 'Belanja Uang yang Diberikan kepada RT atau dengan Sebutan Lain', '2024-02-08 03:44:37', '2024-02-08 03:44:37'),
(30, '5.1.02.05.01.0009', 'Belanja Uang yang Diberikan kepada RW atau dengan Sebutan Lain', '2024-02-08 03:44:57', '2024-02-08 03:44:57'),
(31, '5.1.02.05.02.0002', 'Belanja Jasa yang Diberikan kepada Masyarakat', '2024-02-08 03:45:13', '2024-02-08 03:45:13'),
(32, '5.1.02.01.01.0039', 'Belanja Barang untuk Dijual/Diserahkan kepada Masyarakat', '2024-02-08 03:45:48', '2024-02-08 03:45:48'),
(33, '5.1.02.02.04.0123', 'Belanja Sewa Alat Rumah Tangga Lainnya (Home Use)', '2024-02-08 03:46:54', '2024-02-08 03:46:54'),
(34, '5.1.02.05.01.0010', 'Belanja Uang yang Diberikan kepada Karang Taruna', '2024-02-08 03:47:18', '2024-02-08 03:47:18'),
(35, '5.2.04.04.02.0003', 'Belanja Modal Jaringan Listrik Lainnya', '2024-02-08 03:47:33', '2024-02-08 03:47:33'),
(36, '5.1.02.02.01.0062', 'Belanja Langganan Jurnal/Surat Kabar/Majalah', '2024-02-08 03:47:55', '2024-02-08 03:47:55'),
(37, '5.1.01.01.01.0001', 'Belanja Gaji Pokok PNS', '2024-02-08 03:48:37', '2024-02-08 03:48:37'),
(38, '5.1.01.01.02.0001', 'Belanja Tunjangan Keluarga PNS', '2024-02-08 03:48:55', '2024-02-08 03:48:55'),
(39, '5.1.01.01.03.0001', 'Belanja Tunjangan Jabatan PNS', '2024-02-08 03:49:10', '2024-02-08 03:49:10'),
(40, '5.1.01.01.04.0001', 'Belanja Tunjangan Fungsional PNS', '2024-02-08 03:49:25', '2024-02-08 03:49:25'),
(41, '5.1.01.01.05.0001', 'Belanja Tunjangan Fungsional Umum PNS', '2024-02-08 03:49:38', '2024-02-08 03:49:38'),
(42, '5.1.01.01.06.0001', 'Belanja Tunjangan Beras PNS', '2024-02-08 03:49:52', '2024-02-08 03:49:52'),
(43, '5.1.01.01.07.0001', 'Belanja Tunjangan PPh/Tunjangan Khusus PNS', '2024-02-08 03:50:04', '2024-02-08 03:50:04'),
(44, '5.1.01.01.08.0001', 'Belanja Pembulatan Gaji PNS', '2024-02-08 03:50:18', '2024-02-08 03:50:18'),
(45, '5.1.01.01.10.0001', 'Belanja Iuran Jaminan Kecelakaan Kerja PNS', '2024-02-08 03:50:30', '2024-02-08 03:50:30'),
(46, '5.1.01.01.11.0001', 'Belanja Iuran Jaminan Kematian PNS', '2024-02-08 03:50:41', '2024-02-08 03:50:41'),
(47, '5.1.01.01.12.0001', 'Belanja Iuran Simpanan Peserta Tabungan Perumahan Rakyat PNS', '2024-02-08 03:50:55', '2024-02-08 03:50:55'),
(48, '5.1.01.02.01.0001', 'Tambahan Penghasilan berdasarkan Beban Kerja PNS', '2024-02-08 03:51:08', '2024-02-08 03:51:08'),
(49, '5.1.01.03.07.0001', 'Belanja Honorarium Penanggungjawaban Pengelola Keuangan', '2024-02-08 03:51:23', '2024-02-08 03:51:23'),
(50, '5.1.01.03.08.0002', 'Belanja Jasa Pengelolaan BMD yang Tidak Menghasilkan Pendapatan', '2024-02-08 03:51:47', '2024-02-08 03:51:47'),
(51, '5.1.02.02.01.0059', 'Belanja Tagihan Telepon', '2024-02-08 03:52:09', '2024-02-08 03:52:09'),
(52, '5.1.02.02.01.0060', 'Belanja Tagihan Air', '2024-02-08 03:52:23', '2024-02-08 03:52:23'),
(53, '5.1.02.02.01.0061', 'Belanja Tagihan Listrik', '2024-02-08 03:52:35', '2024-02-08 03:52:35'),
(54, '5.1.02.02.01.0063', 'Belanja Kawat/Faksimili/Internet/TV Berlangganan', '2024-02-08 03:52:48', '2024-02-08 03:52:48'),
(55, '5.1.02.02.01.0033', 'Belanja Jasa Tenaga Supir', '2024-02-08 03:53:06', '2024-02-08 03:53:06'),
(56, '5.1.02.02.02.0005', 'Belanja Iuran Jaminan Kesehatan bagi Non ASN', '2024-02-08 03:53:21', '2024-02-08 03:53:21'),
(57, '5.1.02.02.02.0006', 'Belanja Iuran Jaminan Kecelakaan Kerja bagi Non ASN', '2024-02-08 03:53:34', '2024-02-08 03:53:34'),
(58, '5.1.02.02.02.0007', 'Belanja Iuran Jaminan Kematian bagi Non ASN', '2024-02-08 03:53:46', '2024-02-08 03:53:46'),
(59, '5.1.02.01.01.0004', 'Belanja Bahan-Bahan Bakar dan Pelumas', '2024-02-08 03:54:05', '2024-02-08 03:54:05'),
(60, '5.1.02.01.01.0024', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Tulis Kantor', '2024-02-08 03:54:18', '2024-02-08 03:54:18'),
(61, '5.1.02.01.01.0025', 'Belanja Alat/Bahan untuk Kegiatan Kantor- Kertas dan Cover', '2024-02-08 03:54:35', '2024-02-08 03:54:35'),
(62, '5.1.02.01.01.0027', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Benda Pos', '2024-02-08 03:54:58', '2024-02-08 03:54:58'),
(63, '5.1.02.01.01.0029', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Bahan Komputer', '2024-02-08 03:55:11', '2024-02-08 03:55:11'),
(64, '5.1.02.01.01.0030', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Perabot Kantor', '2024-02-08 03:55:25', '2024-02-08 03:55:25'),
(65, '5.1.02.01.01.0031', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Alat Listrik', '2024-02-08 03:55:55', '2024-02-08 03:55:55'),
(66, '5.1.02.01.01.0036', 'Belanja Alat/Bahan untuk Kegiatan Kantor-Alat/Bahan untuk Kegiatan Kantor Lainnya', '2024-02-08 03:56:11', '2024-02-08 03:56:11'),
(67, '5.1.02.04.01.0001', 'Belanja Perjalanan Dinas Biasa', '2024-02-08 03:57:03', '2024-02-08 05:31:33'),
(68, '5.1.02.01.01.0052', 'Belanja Makanan dan Minuman Rapat', '2024-02-08 07:12:23', '2024-02-08 07:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `spjs`
--

CREATE TABLE `spjs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal_spj` date NOT NULL,
  `jenis_spj` enum('GU','LS','TU') NOT NULL,
  `tgl_kontrak` date NOT NULL,
  `no_kontrak` varchar(100) NOT NULL,
  `tgl_baphp` date NOT NULL,
  `no_baphp` varchar(100) NOT NULL,
  `tgl_bast` date NOT NULL,
  `no_bast` varchar(100) NOT NULL,
  `uraian` tinytext NOT NULL,
  `bagian_id` bigint(20) NOT NULL,
  `kegiatan_id` bigint(20) NOT NULL,
  `sub_kegiatan_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spjs`
--

INSERT INTO `spjs` (`id`, `tanggal_spj`, `jenis_spj`, `tgl_kontrak`, `no_kontrak`, `tgl_baphp`, `no_baphp`, `tgl_bast`, `no_bast`, `uraian`, `bagian_id`, `kegiatan_id`, `sub_kegiatan_id`, `created_at`, `updated_at`) VALUES
<<<<<<< HEAD
(26, '2024-01-04', 'LS', '2024-01-04', 'Gaji PNS Januari', '2024-01-04', 'Gaji PNS Januari', '2024-01-04', 'Gaji PNS Januari', 'Pembayaran Gaji dan Tunjangan PNS/CPNS Kecamatan Kademangan Kota Probolinggo bagian Bulan Januari 2024', 9, 2, 3, '2024-05-31 07:33:01', '2024-05-31 07:33:01'),
(27, '2024-01-08', 'LS', '2024-01-08', 'Gaji Terusan IV Miskadi', '2024-01-08', 'Gaji Terusan IV Miskadi', '2024-01-08', 'Gaji Terusan IV Miskadi', 'Pembayaran Gaji Terusan PNS An. Miskadi, S.Sos Ke IV Kecamatan Kademangan Kota Probolinggo bagian Bulan Januari 2024', 9, 2, 3, '2024-05-31 07:41:07', '2024-05-31 07:41:07'),
(28, '2024-01-08', 'LS', '2024-01-08', 'JKK PNS Januari 2024', '2024-01-08', 'JKK PNS Januari 2024', '2024-01-08', 'JKK PNS Januari 2024', 'Pembayaran Iuran Jaminan Kecelakaan Kerja (JKK) PNS Kecamatan Kademangan Kota Probolinggo Bagian Bulan Januari 2024', 9, 2, 3, '2024-05-31 08:14:20', '2024-05-31 08:14:20'),
(29, '2024-01-08', 'LS', '2024-01-08', 'JKM PNS Januari', '2024-01-08', 'JKM PNS Januari', '2024-01-08', 'JKM PNS Januari', 'Pembayaran Iuran Jaminan Kematian (JKM) PNS Kecamatan Kademangan Kota Probolinggo Bagia Bulan Januari 2024', 9, 2, 3, '2024-05-31 08:29:21', '2024-05-31 08:29:21'),
(30, '2024-01-16', 'LS', '2024-01-16', '000004/KWT-7.01.01.2.08.02/7.01.2.13.0.00.02.0000/2024', '2024-01-16', '000004/KWT-7.01.01.2.08.02/7.01.2.13.0.00.02.0000/2024', '2024-01-16', '000004/KWT-7.01.01.2.08.02/7.01.2.13.0.00.02.0000/2024', 'Biaya Operasional Tata Usaha (Internet/Astinet) Sub Kegiatan Penyediaan Jasa Komunikasi, Sumber Daya Air, dann Listrik Kec. Kademangan Bagian Bulan Januari 2024', 10, 8, 13, '2024-05-31 08:35:36', '2024-05-31 08:35:36'),
(31, '2024-05-17', 'LS', '2024-01-17', '000001/KWT-7.01.01.2.08.02/7.01.2.13.0.00.02.0000/2024', '2024-01-17', '000001/KWT-7.01.01.2.08.02/7.01.2.13.0.00.02.0000/2024', '2024-01-17', '000001/KWT-7.01.01.2.08.02/7.01.2.13.0.00.02.0000/2024', 'Biaya Operasional Tata Usaha (Telepon, air, dan Listrik) Sub Kegiatan Penyediaan Jasa Komunikasi, Sumber Daya dan Listrik Kec. Kademangan bagian Bulan Januari 2024', 10, 8, 13, '2024-05-31 08:42:49', '2024-05-31 08:42:49'),
(32, '2024-01-17', 'LS', '2024-01-17', 'TPP PNS Januari', '2024-01-17', 'TPP PNS Januari', '2024-01-17', 'TPP PNS Januari', 'Pembayaran TPP PNS bagian bulan Desember 2023 sesuai Perwali No. 15 Tahun 2023 pada Kecamatan Kademangan', 9, 2, 3, '2024-05-31 08:53:36', '2024-05-31 08:53:36'),
(33, '2024-01-24', 'LS', '2024-01-15', '000.3.2/03/425.502/SP-PEMMAS/2024', '2024-01-16', '000.3.2/03/425.502/BAPHP/2024', '2024-01-16', '000.3.2/03/425.502/BAST/2024', 'Belanja Mamin pada Kegiatan Musrenbang tingkat Kelurahan di Kelurahan Ketapang dan Kelurahan Kademangan padap sub kegiatan Peningkatan Kapasitas Lembaga Kemasyarakatan Kecamatan Kademangan', 8, 12, 21, '2024-05-31 08:59:41', '2024-05-31 08:59:41'),
(34, '2024-02-05', 'LS', '2024-02-05', '000001/KWT-7.01.05.2.01.02/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.05.2.01.02/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.05.2.01.02/7.01.2.13.0.00.02.0000/2024', 'Belanja Pembbayaran Jasa Tenaga Administrasi (PTT) Sub Kegiatan Fasilitasi, Koordinasi dan Pembinaan Wawasan Kebangsaan dan Ketahanan Nasional Pada Seksi Ketentraman dan Ketertiba Bulan Januari 2024 Kecamatan Kademangan', 6, 13, 22, '2024-05-31 22:01:35', '2024-05-31 22:01:35'),
(35, '2024-02-05', 'LS', '2024-02-05', '000001/KWT-7.01.02.2.02.03/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.02.2.02.03/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.02.2.02.03/7.01.2.13.0.00.02.0000/2024', 'Belanja Pembayaran Jasa Tenaga Administrasi (PTT) Sub Kegiatan Peningkatan Efektifitas Pelayanan Kepada Masyarakat Bulan Januari 2024 Kecamatan Kademangan', 5, 11, 20, '2024-05-31 22:07:22', '2024-05-31 22:07:22'),
(36, '2024-02-01', 'LS', '2024-02-01', 'JKM PNS Februari', '2024-02-01', 'JKM PNS Februari', '2024-02-01', 'JKM PNS Februari', 'Pembayaran Iuran Jaminan Kematian(JKM) PNSKecamatan Kademangan Kota Probolinggo Bagian Bulan Pebruari 2024', 9, 2, 3, '2024-05-31 22:09:12', '2024-05-31 22:09:12'),
(37, '2024-02-01', 'LS', '2024-02-01', 'JKK PNS Februari', '2024-02-01', 'JKK PNS Februari', '2024-02-01', 'JKK PNS Februari', 'Pembayaran Iuran Jaminan Kecelakaan Kerja(JKK) PNSKecamatan Kademangan Kota Probolinggo Bagian Bulan Pebruari 2024', 9, 2, 3, '2024-05-31 22:10:48', '2024-05-31 22:10:48'),
(38, '2024-01-30', 'LS', '2024-01-30', 'Gaji Terusan II Budiono', '2024-01-30', 'Gaji Terusan II Budiono', '2024-01-30', 'Gaji Terusan II Budiono', 'Pembayaran Gaji Terusan PNS An. BUDIONO Ke II Kecamatan Kademangan Kota Probolinggo bagian Bulan Pebruari 2024', 9, 2, 3, '2024-05-31 22:17:35', '2024-05-31 22:17:35'),
(39, '2024-01-30', 'LS', '2024-01-30', 'Gaji PNS Februari', '2024-01-30', 'Gaji PNS Februari', '2024-01-30', 'Gaji PNS Februari', 'Pembayaran Gaji dan Tunjangan PNS/CPNS Kecamatan Kademangan Kota Probolinggo bagian Bulan Pebruari 2024', 9, 2, 3, '2024-05-31 22:21:23', '2024-05-31 22:21:23'),
(40, '2024-01-25', 'LS', '2024-01-25', '000006/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-01-25', '000006/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-01-25', '000006/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Belanja Perjalanan Dinas Dalam Kota (Uang Saku) Kegiatan Musrenbang tingkat kelurahan di Kelurahan Pohsangit kidul pada sub kegiatan Peningkatan Kapasitas Lembaga Kemasyarakatan Kecamatan Kademangan', 8, 12, 21, '2024-05-31 22:24:05', '2024-05-31 22:24:05'),
(41, '2024-02-05', 'LS', '2024-02-05', '000005/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000005/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000005/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', 'Belanja Pembayaran Jasa Tenaga Kontrak Sub Kegiatan Penyediaan Jasa Pelayanan Umum Bulan Januari 2024 Kecamatan Kademangan', 10, 8, 14, '2024-05-31 22:27:04', '2024-05-31 22:27:04'),
(42, '2024-01-24', 'LS', '2024-01-24', '000001/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-01-24', '000001/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-01-24', '000001/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Belanja Perjalanan Dinas Dalam Kota (Uang Saku) Kegiatan Musrenbang tingkat kelurahan di Kelurahan Ketapang dan Kelurahan Kademangan pada sub kegiatan Peningkatan Kapasitas Lembaga Kemasyarakatan Kecamatan Kademangan', 8, 12, 21, '2024-05-31 22:31:14', '2024-05-31 22:31:14'),
(43, '2024-01-24', 'LS', '2024-01-24', '000003/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-01-24', '000003/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-01-24', '000003/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Pembayaran Honorarium Moderator pada Kegiatan Musrenbang tingkat kelurahan di Kelurahan Ketapang dan Kelurahan Kademangan pada sub kegiatan Peningkatan Kapasitas Lembaga KemasyarakatanKecamatan Kademangan', 8, 12, 21, '2024-05-31 22:37:04', '2024-05-31 22:37:04'),
(44, '2024-02-12', 'LS', '2024-02-12', '000001/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000001/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000001/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', 'Belanja Pembayaran Jasa Tenaga Operasional (PTT) Sub Kegiatan Penyediaan Jasa Pelayanan Umum kantor Bulan Januari 2024 Kecamatan Kademangan', 10, 8, 14, '2024-05-31 22:42:31', '2024-05-31 22:42:31'),
(45, '2024-02-12', 'LS', '2024-02-12', '000009/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000009/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000009/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Pembayaran Honorarium Moderator Kegiatan Musrenbang Tingkat kelurahan di kel. Pilang Kec. Kademangan tgl 24 Jan 2024 di sub keg. peningkatan kapasitas lembaga kemasyarakatan Kecamatan Kademangan', 8, 12, 21, '2024-05-31 23:06:25', '2024-05-31 23:06:25'),
(46, '2024-02-12', 'LS', '2024-02-12', '000007/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000007/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000007/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Pembayaran Honorarium Moderator Kegiatan Musrenbang tingkat kelurahan di Kel. Pohsangit Kidul Kec. Kademangan tgl 22 Jan 2024 di sub keg. peningkatan kapasitas lembaga kemasyarakatan Kecamatan Kademangan', 8, 12, 21, '2024-05-31 23:10:57', '2024-05-31 23:10:57'),
(47, '2024-02-12', 'LS', '2024-02-12', '000015/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000015/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000015/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Biaya Uang saku (Perjalanan Dinas dlm Kota) Keg. Musrenbang Tingkat Kelurahan di Kel. Triwung Lor tgl 31 Jan 2024 Sub keg. peningkatan kapasitas lembaga kemasyarakatan di Kecamatan Kademangan', 8, 12, 21, '2024-05-31 23:15:42', '2024-05-31 23:15:42'),
(48, '2024-02-12', 'LS', '2024-02-12', '000008/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000008/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000008/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Biaya Uang saku (Perjalanan Dinas dlm Kota) Keg. Musrenbang Tingkat Kelurahan di Kel. Pilang tgl. 24 jan 2024 Sub keg. peningkatan kapasitas lembaga kemasyarakatan di Kecamatan Kademangan', 8, 12, 21, '2024-05-31 23:18:10', '2024-05-31 23:18:10'),
(49, '2024-02-12', 'LS', '2024-01-08', '900.1.3.5/001-01.0001/425.502-Prog.Keu/2024', '2024-01-09', '900.1.3.5/002-01.0001/425.502-Prog.Keu/BAPHP/2024', '2024-01-09', '900.1.3.5/003-01.0001/425.502-Prog.Keu/BAST/2024', 'Belanja Mamin Rapat Monitoring dan Evaluasi Penginputan Rencana Umum Pengadaan (RUP) TA 2024 tgl. 9Jan 2024 pada sub keg. Penyusunan Dokumen Perencanaan Perangkat Daerah Kecamatan Kademangan', 9, 1, 1, '2024-05-31 23:31:35', '2024-05-31 23:31:35'),
(50, '2024-02-05', 'LS', '2024-02-05', '000001/KWT-7.01.01.2.02.03/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.01.2.02.03/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.01.2.02.03/7.01.2.13.0.00.02.0000/2024', 'Belanja Pembayaran Jasa Tenaga Administrasi, Informasi dan Teknologi (PTT/TA/TI) Pada Sub Kegiatan Pelaksanaan Penatausahaan dan Pengujian/Verifikasi Keuangan SKPD pada Seksi Program dan Keuangan Bulan Januari 2024 Kecamatan Kademangan', 9, 2, 4, '2024-05-31 23:35:49', '2024-05-31 23:35:49'),
(51, '2024-02-05', 'LS', '2024-02-05', '000020/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000020/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000020/KWT-7.01.03.2.03.02/7.01.2.13.0.00.02.0000/2024', 'Belanja Pembayaran Jasa Tenaga Teknis (PTT) Sub Kegiatan Peningkatan Kapasitas Lembaga Kemasyarakatan pada Seksi Pemberdayaan Masyarakat Bulan Januari 2024 Kecamatan Kademangan', 8, 12, 21, '2024-06-01 02:46:28', '2024-06-01 02:46:28'),
(52, '2024-02-05', 'LS', '2024-02-05', '000001/KWT-7.01.02.2.01.02/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.02.2.01.02/7.01.2.13.0.00.02.0000/2024', '2024-02-05', '000001/KWT-7.01.02.2.01.02/7.01.2.13.0.00.02.0000/2024', 'Belanja Pembayaran Jasa Tenaga Administrasi (PTT) Sub Kegiatan Peningkatan Efektifitas Kegiatan Pemerintahan Bulan Januari 2024 Kecamatan Kademangan', 4, 10, 19, '2024-06-01 02:48:29', '2024-06-01 02:48:29'),
(53, '2024-02-12', 'LS', '2024-02-12', '000003/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000003/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', '2024-02-12', '000003/KWT-7.01.01.2.08.04/7.01.2.13.0.00.02.0000/2024', 'Pembayaran Iuran Jaminan Kecelakaan Kerja(JKK), Jaminan Kematian(JKM) Non ASN dan BPJS Kesehatan 4 % PPNPN Kecamatan Kademangan Bagian Bulan Januari 2024 sub Kegiatan Penyediaan Jasa Pelayanan Umum Kantor Kecamatan Kademangan', 10, 8, 14, '2024-06-01 03:18:46', '2024-06-01 03:18:46');
=======
(18, '2024-05-01', 'GU', '2024-05-01', '900.1.3/23/425.502/SP/2024', '2024-05-01', '900.1.3/23/425.502/SP/2024', '2024-05-01', '900.1.3/23/425.502/SP/2024', 'Biaya Perjalanan Dinas Keg. Rapat Luar Kota pada Sub Kegiatan Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD di Kecamatan Kademangan', 10, 6, 11, '2024-05-25 08:55:40', '2024-05-25 08:55:40'),
(19, '2024-05-07', 'LS', '2024-05-07', '900.1.3/23/425.502/BAST/20240', '2024-05-07', '900.1.3/23/425.502/BAST/202400', '2024-05-07', '900.1.3/23/425.502/BAST/2024000', 'Biaya Konsultasi BMD Keg. Rapat Luar Kota pada Sub Kegiatan Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD di Kecamatan Kademangan', 10, 4, 5, '2024-05-25 10:05:11', '2024-05-25 10:05:11');
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

-- --------------------------------------------------------

--
-- Table structure for table `sub_kegiatans`
--

CREATE TABLE `sub_kegiatans` (
  `id` bigint(20) NOT NULL,
  `kode_sub_kegiatan` varchar(255) NOT NULL,
  `nama_sub_kegiatan` varchar(255) NOT NULL,
  `sumber_dana` tinytext NOT NULL,
  `kegiatan_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kegiatans`
--

INSERT INTO `sub_kegiatans` (`id`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `sumber_dana`, `kegiatan_id`, `created_at`, `updated_at`) VALUES
(1, '7.01.01.2.01.0001', 'Penyusunan Dokumen Perencanaan Perangkat Daerah', 'Dana Transfer Umum-Dana Bagi Hasil', 1, '2024-02-05 07:17:37', '2024-06-01 05:53:50'),
(2, '7.01.01.2.01.0006', 'Koordinasi dan Penyusunan Laporan Capaian Kinerja dan Ikhtisar Realisasi Kinerja SKPD', 'Dana Transfer Umum-Dana Bagi Hasil', 1, '2024-02-05 07:21:46', '2024-06-01 05:54:51'),
(3, '7.01.01.2.02.0001', 'Penyediaan Gaji dan Tunjangan ASN', 'Dana Transfer Umum-Dana Bagi Hasil', 2, '2024-02-05 07:22:30', '2024-06-01 06:06:26'),
(4, '7.01.01.2.02.0003', 'Pelaksanaan Penatausahaan dan Pengujian/Verifikasi Keuangan SKPD', 'Dana Transfer Umum-Dana Bagi Hasil', 2, '2024-02-08 04:02:59', '2024-06-01 06:00:52'),
(5, '7.01.01.2.03.0006', 'Penatausahaan Barang Milik Daerah pada SKPD', 'Dana Transfer Umum-Dana Bagi Hasil', 4, '2024-02-08 04:03:50', '2024-06-01 06:02:26'),
(6, '7.01.01.2.05.0010', 'Sosialisasi Peraturan Perundang-Undangan', 'Dana Transfer Umum-Dana Bagi Hasil', 5, '2024-02-08 04:04:32', '2024-06-01 06:04:17'),
(7, '7.01.01.2.06.0002', 'Penyediaan Peralatan dan Perlengkapan Kantor', 'Dana Transfer Umum-Dana Bagi Hasil', 6, '2024-02-08 04:05:25', '2024-06-01 06:05:11'),
(8, '7.01.01.2.06.0005', 'Penyediaan Barang Cetakan dan Penggandaan', 'Dana Transfer Umum-Dana Bagi Hasil', 6, '2024-02-08 04:05:55', '2024-06-01 06:06:41'),
(9, '7.01.01.2.06.0006', 'Penyediaan Bahan Bacaan dan Peraturan Perundang-undangan', 'Dana Transfer Umum-Dana Bagi Hasil', 6, '2024-02-08 04:06:15', '2024-06-01 06:07:02'),
(10, '7.01.01.2.06.0008', 'Fasilitasi Kunjungan Tamu', 'Dana Transfer Umum-Dana Bagi Hasil', 6, '2024-02-08 04:06:38', '2024-06-01 05:59:22'),
(11, '7.01.01.2.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', 'Dana Transfer Umum-Dana Bagi Hasil', 6, '2024-02-08 04:06:57', '2024-06-01 06:04:53'),
(12, '7.01.01.2.07.0006', 'Pengadaan Peralatan dan Mesin Lainnya', 'Dana Transfer Umum-Dana Bagi Hasil', 7, '2024-02-08 04:07:39', '2024-06-01 06:02:09'),
(13, '7.01.01.2.08.0002', 'Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik', 'Dana Transfer Umum-Dana Bagi Hasil', 8, '2024-02-08 04:08:22', '2024-06-01 06:06:03'),
(14, '7.01.01.2.08.0004', 'Penyediaan Jasa Pelayanan Umum Kantor', 'Dana Transfer Umum-Dana Bagi Hasil', 8, '2024-02-08 04:08:39', '2024-06-01 06:05:46'),
(15, '7.01.01.2.09.0001', 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan, dan Pajak Kendaraan Perorangan Dinas atau Kendaraan Dinas Jabatan', 'Dana Transfer Umum-Dana Bagi Hasil', 9, '2024-02-08 04:09:18', '2024-06-01 06:03:30'),
(16, '7.01.01.2.09.0002', 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan, Pajak dan Perizinan Kendaraan Dinas Operasional atau Lapangan', 'Dana Transfer Umum-Dana Bagi Hasil', 9, '2024-02-08 04:09:38', '2024-06-01 06:03:11'),
(17, '7.01.01.2.09.0006', 'Pemeliharaan Peralatan dan Mesin Lainnya', 'Dana Transfer Umum-Dana Bagi Hasil', 9, '2024-02-08 04:09:53', '2024-06-01 06:02:47'),
(18, '7.01.01.2.09.0009', 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', 'Dana Transfer Umum-Dana Bagi Hasil', 9, '2024-02-08 04:10:11', '2024-06-01 06:03:47'),
(19, '7.01.02.2.01.0002', 'Peningkatan Efektifitas Kegiatan Pemerintahan di Tingkat Kecamatan', 'Dana Transfer Umum-Dana Bagi Hasil', 10, '2024-02-08 04:10:47', '2024-06-01 06:09:28'),
(20, '7.01.02.2.02.0003', 'Peningkatan Efektifitas Pelaksanaan Pelayanan kepada Masyarakat di Wilayah Kecamatan', 'Dana Transfer Umum-Dana Bagi Hasil', 11, '2024-02-08 04:28:23', '2024-06-01 06:01:50'),
(21, '7.01.03.2.03.0002', 'Peningkatan Kapasitas Lembaga Kemasyarakatan', 'Dana Transfer Umum-Dana Bagi Hasil dan Insentif Fiskal', 12, '2024-02-08 04:29:04', '2024-06-01 06:09:07'),
(22, '7.01.05.2.01.0002', 'Fasilitasi, Koordinasi dan Pembinaan (Bimtek, Sosialisasi, Konsultasi) Wawasan Kebangsaan dan Ketahanan Nasional', 'Dana Transfer Umum-Dana Bagi Hasil', 13, '2024-02-08 04:29:41', '2024-06-01 05:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` char(30) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` char(16) NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Choiril Anam', '000000000000000000', 'iriel.just4blog@gmail.com', NULL, '$2y$12$v4ogW0sKYkmxxePKyHpK2eJTY5LbrQwVvGGwfuTgFO32J1JzQShde', 'admin', NULL, '2024-01-28 06:45:40', '2024-01-28 06:45:40'),
(4, 'GOFUR EFFENDY, S.T., M.Si', '197201022001121003', 'gofur.effendy@gmail.com', NULL, '$2y$12$x8raqSUMAU5SkrDB1iOg9O5/.pEc73C4VwxefEJnS0ltCllyCiHmO', 'supervisor', NULL, '2024-06-14 18:22:57', '2024-06-15 01:09:51'),
(5, 'DWI HERMANTO, S.Sos., M.Si.', '197404291993021001', 'dwi.hermanto@gmail.com', NULL, '$2y$12$lVp6a7a0xswXMURd4pL99uIZa51SpRFNzJGb/1qSxmo9XGjEPRcEq', 'pptk', NULL, '2024-06-15 00:28:50', '2024-06-15 00:28:50'),
(7, 'CHOIRIL ANAM, A.Md', '198612092020121002', 'riel.anamz@gmail.com', NULL, '$2y$12$UjOipAev4j4mbMI4ZcHGduoNHuXEtDvNTEI60E7WpCCQl82YAbKE6', 'bendahara', NULL, '2024-06-15 00:30:39', '2024-06-15 01:10:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bagians`
--
ALTER TABLE `bagians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_dpas`
--
ALTER TABLE `detail_dpas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_spjs`
--
ALTER TABLE `detail_spjs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dpas`
--
ALTER TABLE `dpas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `group_rekenings`
--
ALTER TABLE `group_rekenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kegiatans`
--
ALTER TABLE `kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `penjabarans`
--
ALTER TABLE `penjabarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjabarans`
--
ALTER TABLE `penjabarans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rekenings`
--
ALTER TABLE `rekenings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `spjs`
--
ALTER TABLE `spjs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_kegiatans`
--
ALTER TABLE `sub_kegiatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bagians`
--
ALTER TABLE `bagians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `detail_dpas`
--
ALTER TABLE `detail_dpas`
<<<<<<< HEAD
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;
=======
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

--
-- AUTO_INCREMENT for table `detail_spjs`
--
ALTER TABLE `detail_spjs`
<<<<<<< HEAD
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1582;
=======
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

--
-- AUTO_INCREMENT for table `dpas`
--
ALTER TABLE `dpas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_rekenings`
--
ALTER TABLE `group_rekenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
<<<<<<< HEAD
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
=======
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

--
-- AUTO_INCREMENT for table `penjabarans`
--
<<<<<<< HEAD
ALTER TABLE `pencairans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penjabarans`
--
=======
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a
ALTER TABLE `penjabarans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT for table `rekenings`
--
ALTER TABLE `rekenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `spjs`
--
ALTER TABLE `spjs`
<<<<<<< HEAD
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
=======
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
>>>>>>> c39d076f4ff15562f16bef31c14608eff7a3e83a

--
-- AUTO_INCREMENT for table `sub_kegiatans`
--
ALTER TABLE `sub_kegiatans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
