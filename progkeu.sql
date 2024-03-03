-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 07:37 AM
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
-- Table structure for table `detail_pencairans`
--

CREATE TABLE `detail_pencairans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `penncairan_id` bigint(20) NOT NULL,
  `rekening_id` bigint(20) NOT NULL,
  `nominal` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `kegiatan_id` bigint(20) NOT NULL,
  `sub_kegiatan_id` bigint(20) NOT NULL,
  `rekening_id` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_rekenings`
--

INSERT INTO `group_rekenings` (`id`, `kegiatan_id`, `sub_kegiatan_id`, `rekening_id`, `created_at`, `updated_at`) VALUES
(6, 6, 10, '1', '2024-03-02 15:59:41', '2024-03-02 15:59:41'),
(9, 13, 22, '60', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(10, 13, 22, '68', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(11, 13, 22, '4', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(12, 13, 22, '5', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(13, 13, 22, '6', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(14, 13, 22, '7', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(15, 13, 22, '8', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(16, 13, 22, '9', '2024-03-02 16:03:54', '2024-03-02 16:03:54'),
(25, 1, 2, '60', '2024-03-02 21:30:25', '2024-03-02 21:30:25'),
(26, 1, 2, '68', '2024-03-02 21:30:25', '2024-03-02 21:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatans`
--

CREATE TABLE `kegiatans` (
  `id` bigint(20) NOT NULL,
  `kode_kegiatan` varchar(255) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kegiatans`
--

INSERT INTO `kegiatans` (`id`, `kode_kegiatan`, `nama_kegiatan`, `created_at`, `updated_at`) VALUES
(1, '7.01.01.2.01', 'Perencanaan, Penganggaran, dan Evaluasi Kinerja Perangkat Daerah', '2024-02-02 08:31:49', '2024-02-08 04:00:10'),
(2, '7.01.01.2.02', 'Administrasi Keuangan Perangkat Daerah', '2024-02-02 08:34:44', '2024-02-08 04:01:58'),
(4, '7.01.01.2.03', 'Administrasi Barang Milik Daerah pada Perangkat Daerah', '2024-02-02 08:48:24', '2024-02-08 04:03:22'),
(5, '7.01.01.2.05', 'Administrasi Kepegawaian Perangkat Daerah', '2024-02-08 04:04:12', '2024-02-08 04:04:12'),
(6, '7.01.01.2.06', 'Administrasi Umum Perangkat Daerah', '2024-02-08 04:05:00', '2024-02-08 04:05:00'),
(7, '7.01.01.2.07', 'Pengadaan Barang Milik Daerah Penunjang Urusan Pemerintah Daerah', '2024-02-08 04:07:19', '2024-02-08 04:07:19'),
(8, '7.01.01.2.08', 'Penyediaan Jasa Penunjang Urusan Pemerintahan Daerah', '2024-02-08 04:08:01', '2024-02-08 04:08:01'),
(9, '7.01.01.2.09', 'Pemeliharaan Barang Milik Daerah Penunjang Urusan Pemerintahan Daerah', '2024-02-08 04:08:59', '2024-02-08 04:08:59'),
(10, '7.01.02.2.01', 'Koordinasi Penyelenggaraan Kegiatan Pemerintahan di Tingkat Kecamatan', '2024-02-08 04:10:31', '2024-02-08 04:10:31'),
(11, '7.01.02.2.02', 'Penyelenggaraan Urusan Pemerintahan yang Tidak Dilaksanakan oleh Unit Kerja Perangkat Daerah yang Ada di Kecamatan', '2024-02-08 04:11:08', '2024-02-08 04:11:08'),
(12, '7.01.03.2.03', 'Pemberdayaan Lembaga Kemasyarakatan Tingkat Kecamatan', '2024-02-08 04:28:42', '2024-02-08 04:28:42'),
(13, '7.01.05.2.01', 'Penyelenggaraan Urusan Pemerintahan Umum Sesuai Penugasan Kepala Daerah', '2024-02-08 04:29:22', '2024-02-08 04:29:22');

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
(36, '2024_02_09_014007_create_group_rekenings_table', 4);

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
-- Table structure for table `pencairans`
--

CREATE TABLE `pencairans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(16, '5.1.02.02.01.0067', 'Belanja Pembayaran Pajak, Bea, dan Perizinan', '2024-02-08 03:38:50', '2024-02-08 03:38:50'),
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
-- Indexes for table `detail_pencairans`
--
ALTER TABLE `detail_pencairans`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `pencairans`
--
ALTER TABLE `pencairans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `detail_pencairans`
--
ALTER TABLE `detail_pencairans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `group_rekenings`
--
ALTER TABLE `group_rekenings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `kegiatans`
--
ALTER TABLE `kegiatans`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `pencairans`
--
ALTER TABLE `pencairans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
