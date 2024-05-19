-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2024 at 04:23 AM
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
(4, 'Pemerintahan', '2024-01-27 01:24:45', '2024-01-27 01:24:45'),
(5, 'Pelayanan', '2024-01-27 05:08:21', '2024-01-27 05:08:21'),
(6, 'Ketentraman dan Ketertiban', '2024-01-27 05:08:38', '2024-01-27 05:08:38'),
(8, 'Pemberdayaan Masyarakat', '2024-02-08 03:15:10', '2024-02-08 03:15:10'),
(9, 'Program dan Keuangan', '2024-02-08 03:16:42', '2024-02-08 03:16:42'),
(10, 'Tata Usaha', '2024-02-08 03:16:52', '2024-02-08 03:16:52');

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
(226, 131, 'Honorarium Tim Pelaksana Kegiatan dan Sekretariat Tim Pelaksana Kegiatan - TP PKK\r\nSpesifikasi: Wakil Ketua', 12, 'Orang / Bulan', 225000, '2024-05-16 05:40:47', '2024-05-16 05:40:47'),
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
(249, 153, 'Belanja Gaji Pokok PNS', 1, 'Tahun', 3018933648, '2024-05-16 06:17:33', '2024-05-16 06:17:33'),
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
(322, 171, 'Lem kertas\r\nSpesifikasi: Lem kertas', 10, 'Botol', 16000, '2024-05-16 07:36:42', '2024-05-16 07:36:42');
INSERT INTO `detail_dpas` (`id`, `dpa_id`, `nama_barang`, `volume`, `satuan`, `harga`, `created_at`, `updated_at`) VALUES
(323, 171, 'Map Plastik\r\nSpesifikasi: snelhecter', 5, 'Pack', 42000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
(324, 171, 'Mika bening\r\nSpesifikasi: Mika bening', 20, 'Pak', 30000, '2024-05-16 07:36:42', '2024-05-16 07:36:42'),
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
(371, 184, 'Jasa Penyelenggaraan Acara\r\nSpesifikasi: Backdrop / Banner', 8.333333333333332, 'Meter', 30000, '2024-05-16 07:58:16', '2024-05-16 07:58:16');

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
(131, 2, 8, 12, 21, 5, 98, '2024-05-16 05:40:47', '2024-05-16 05:40:47'),
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
(153, 2, 9, 2, 3, 9, 121, '2024-05-16 06:17:33', '2024-05-16 06:17:33'),
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
(42, '2024_05_12_062049_create_detail_dpas_table', 10);

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
  `nomor_dpa` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
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
-- Table structure for table `sub_kegiatans`
--

CREATE TABLE `sub_kegiatans` (
  `id` bigint(20) NOT NULL,
  `kode_sub_kegiatan` varchar(255) NOT NULL,
  `nama_sub_kegiatan` varchar(255) NOT NULL,
  `kegiatan_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_kegiatans`
--

INSERT INTO `sub_kegiatans` (`id`, `kode_sub_kegiatan`, `nama_sub_kegiatan`, `kegiatan_id`, `created_at`, `updated_at`) VALUES
(1, '7.01.01.2.01.0001', 'Penyusunan Dokumen Perencanaan Perangkat Daerah', 1, '2024-02-05 07:17:37', '2024-02-08 23:35:46'),
(2, '7.01.01.2.01.0006', 'Koordinasi dan Penyusunan Laporan Capaian Kinerja dan Ikhtisar Realisasi Kinerja SKPD', 1, '2024-02-05 07:21:46', '2024-02-08 04:01:37'),
(3, '7.01.01.2.02.0001', 'Penyediaan Gaji dan Tunjangan ASN', 2, '2024-02-05 07:22:30', '2024-02-08 04:02:27'),
(4, '7.01.01.2.02.0003', 'Pelaksanaan Penatausahaan dan Pengujian/Verifikasi Keuangan SKPD', 2, '2024-02-08 04:02:59', '2024-03-02 08:26:46'),
(5, '7.01.01.2.03.0006', 'Penatausahaan Barang Milik Daerah pada SKPD', 4, '2024-02-08 04:03:50', '2024-02-08 04:03:50'),
(6, '7.01.01.2.05.0010', 'Sosialisasi Peraturan Perundang-Undangan', 5, '2024-02-08 04:04:32', '2024-02-08 04:04:32'),
(7, '7.01.01.2.06.0002', 'Penyediaan Peralatan dan Perlengkapan Kantor', 6, '2024-02-08 04:05:25', '2024-02-08 04:05:25'),
(8, '7.01.01.2.06.0005', 'Penyediaan Barang Cetakan dan Penggandaan', 6, '2024-02-08 04:05:55', '2024-02-08 04:05:55'),
(9, '7.01.01.2.06.0006', 'Penyediaan Bahan Bacaan dan Peraturan Perundang-undangan', 6, '2024-02-08 04:06:15', '2024-02-08 04:06:15'),
(10, '7.01.01.2.06.0008', 'Fasilitasi Kunjungan Tamu', 6, '2024-02-08 04:06:38', '2024-02-08 04:06:38'),
(11, '7.01.01.2.06.0009', 'Penyelenggaraan Rapat Koordinasi dan Konsultasi SKPD', 6, '2024-02-08 04:06:57', '2024-02-08 04:06:57'),
(12, '7.01.01.2.07.0006', 'Pengadaan Peralatan dan Mesin Lainnya', 7, '2024-02-08 04:07:39', '2024-02-08 04:07:39'),
(13, '7.01.01.2.08.0002', 'Penyediaan Jasa Komunikasi, Sumber Daya Air dan Listrik', 8, '2024-02-08 04:08:22', '2024-02-08 04:08:22'),
(14, '7.01.01.2.08.0004', 'Penyediaan Jasa Pelayanan Umum Kantor', 8, '2024-02-08 04:08:39', '2024-02-08 04:08:39'),
(15, '7.01.01.2.09.0001', 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan, dan Pajak Kendaraan Perorangan Dinas atau Kendaraan Dinas Jabatan', 9, '2024-02-08 04:09:18', '2024-02-08 04:09:18'),
(16, '7.01.01.2.09.0002', 'Penyediaan Jasa Pemeliharaan, Biaya Pemeliharaan, Pajak dan Perizinan Kendaraan Dinas Operasional atau Lapangan', 9, '2024-02-08 04:09:38', '2024-02-08 04:09:38'),
(17, '7.01.01.2.09.0006', 'Pemeliharaan Peralatan dan Mesin Lainnya', 9, '2024-02-08 04:09:53', '2024-02-08 04:09:53'),
(18, '7.01.01.2.09.0009', 'Pemeliharaan/Rehabilitasi Gedung Kantor dan Bangunan Lainnya', 9, '2024-02-08 04:10:11', '2024-02-08 04:10:11'),
(19, '7.01.02.2.01.0002', 'Peningkatan Efektifitas Kegiatan Pemerintahan di Tingkat Kecamatan', 10, '2024-02-08 04:10:47', '2024-02-08 04:10:47'),
(20, '7.01.02.2.02.0003', 'Peningkatan Efektifitas Pelaksanaan Pelayanan kepada Masyarakat di Wilayah Kecamatan', 11, '2024-02-08 04:28:23', '2024-02-08 04:28:23'),
(21, '7.01.03.2.03.0002', 'Peningkatan Kapasitas Lembaga Kemasyarakatan', 12, '2024-02-08 04:29:04', '2024-02-08 04:29:04'),
(22, '7.01.05.2.01.0002', 'Fasilitasi, Koordinasi dan Pembinaan (Bimtek, Sosialisasi, Konsultasi) Wawasan Kebangsaan dan Ketahanan Nasional', 13, '2024-02-08 04:29:41', '2024-02-08 04:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Choiril Anam', 'iriel.just4blog@gmail.com', NULL, '$2y$12$v4ogW0sKYkmxxePKyHpK2eJTY5LbrQwVvGGwfuTgFO32J1JzQShde', NULL, '2024-01-28 06:45:40', '2024-01-28 06:45:40'),
(2, 'Ana Maryati Ningrum', 'ana.cendut@gmail.com', NULL, '$2y$12$a.FRn8ZEbcMbsQ8JbzD/Q.Tvg6k2trMJ3NyBZSWOLK/HKcGeV2bKy', NULL, '2024-02-02 07:25:08', '2024-02-02 07:25:08'),
(3, 'Davina Davino', 'davina.davino@gmail.com', NULL, '$2y$12$13sW3VWf582ROjzSrFjHc.SIClttN8h/Zxm4koNTnCyFNdYCLD5ai', NULL, '2024-02-05 07:03:19', '2024-02-05 07:03:19');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `penjabarans`
--
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
-- AUTO_INCREMENT for table `sub_kegiatans`
--
ALTER TABLE `sub_kegiatans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
