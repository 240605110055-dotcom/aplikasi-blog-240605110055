-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2026 at 05:36 PM
-- Server version: 8.0.44
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE `artikel` (
  `id` int NOT NULL,
  `id_penulis` int NOT NULL,
  `id_kategori` int NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isi` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hari_tanggal` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id`, `id_penulis`, `id_kategori`, `judul`, `isi`, `gambar`, `hari_tanggal`, `updated_at`) VALUES
(1, 1, 2, 'Peran Pendidikan dalam Membangun Generasi Masa Depan', 'Pendidikan merupakan fondasi utama dalam membangun masa depan suatu bangsa. Melalui pendidikan, generasi muda tidak hanya memperoleh pengetahuan, tetapi juga nilai-nilai moral dan keterampilan hidup.\r\n\r\nDalam era globalisasi, pendidikan dituntut untuk lebih adaptif terhadap perkembangan zaman. Kurikulum harus mampu menyesuaikan kebutuhan dunia kerja dan teknologi yang terus berkembang.\r\n\r\nSelain itu, peran guru dan orang tua sangat penting dalam mendukung proses belajar anak. Dengan pendidikan yang baik, generasi muda dapat menjadi individu yang kompeten dan berdaya saing tinggi.', '6a2bf66de6464.jpg', 'Sabtu, 25 April 2026 | 21:26', '2026-06-12 05:07:09'),
(2, 14, 1, 'Pentingnya Kesehatan Mental di Era Stress Tinggi', 'Kesehatan mental adalah bagian integral dari kesehatan keseluruhan kita. Sayangnya, banyak orang masih mengabaikan \r\npentingnya menjaga kesehatan mental hingga menjadi masalah serius.\r\n\r\nStress, kecemasan, dan depresi semakin umum di era modern ini. Tekanan pekerjaan, kehidupan sosial, dan tanggung jawab \r\nhidup dapat mengakibatkan beban mental yang berat.\r\n\r\nTanda-tanda masalah kesehatan mental mencakup perubahan mood yang drastis, kesulitan berkonsentrasi, perubahan pola tidur, \r\ndan kehilangan minat pada aktivitas yang biasanya menyenangkan.', '6a2bf8548c6fd.jpg', 'Minggu, 26 April 2026 | 18:23', '2026-06-12 05:15:16'),
(3, 3, 10, 'Perkembangan Teknologi AI di Tahun 2026', 'Teknologi kecerdasan buatan atau Artificial Intelligence (AI) terus berkembang pesat di tahun 2026. AI kini tidak hanya digunakan dalam bidang teknologi, tetapi juga mulai diterapkan dalam pendidikan, kesehatan, bisnis, dan kehidupan sehari-hari.\r\n\r\nSalah satu perkembangan terbesar AI adalah kemampuannya dalam membantu pekerjaan manusia menjadi lebih cepat dan efisien. Contohnya, AI dapat digunakan untuk membuat laporan, menganalisis data, membantu layanan pelanggan, hingga memberikan rekomendasi yang sesuai dengan kebutuhan pengguna.\r\n\r\nMeskipun memberikan banyak manfaat, penggunaan AI juga harus dilakukan secara bijak. Manusia tetap perlu memahami cara kerja teknologi ini agar AI dapat digunakan sebagai alat bantu, bukan sebagai pengganti sepenuhnya.', '6a287798ba470.jpg', 'Minggu, 26 April 2026 | 21:14', NULL),
(4, 13, 12, 'Strategi Marketing Digital untuk UMKM di Era 2026', 'Dalam era digital saat ini, UMKM perlu mengadopsi strategi marketing digital untuk tetap kompetitif dan \r\nmenjangkau pasar yang lebih luas.\r\n\r\nStrategi marketing digital yang efektif dimulai dengan memahami target audiens Anda. Siapa mereka? \r\nDi mana mereka menghabiskan waktu online? Apa kebutuhan dan masalah mereka? Menjawab pertanyaan-pertanyaan \r\nini adalah fondasi dari setiap kampanye marketing yang sukses.\r\n\r\nMedia sosial adalah platform yang powerful untuk UMKM. Dengan konten yang menarik dan konsisten, bisnis Anda \r\ndapat membangun komunitas loyal dan meningkatkan brand awareness. Platform seperti Instagram, TikTok, dan \r\nFacebook terus berkembang dan menawarkan peluang baru untuk engagement.\r\n\r\nNamun, untuk sukses dalam bisnis digital, diperlukan strategi yang tepat, seperti memahami target pasar dan memanfaatkan teknologi secara optimal. Dengan persiapan yang matang, bisnis digital dapat menjadi sumber penghasilan yang menjanjikan.', '6a2bf8cae63f1.jpg', 'Senin, 27 April 2026 | 15:20', '2026-06-12 05:17:14'),
(6, 14, 14, 'Tren Teknologi AI yang Akan Mendominasi 2026', 'Artificial Intelligence (AI) terus berkembang dan menjadi bagian integral dari kehidupan sehari-hari. \r\nPada tahun 2026, kami mengharapkan beberapa tren teknologi yang signifikan dalam dunia AI.\r\n\r\nPertama, AI generatif akan semakin canggih dan mampu menghasilkan konten yang lebih berkualitas tinggi. \r\nDari penulisan artikel, pembuatan gambar, hingga video, semuanya dapat dihasilkan oleh AI dengan akurasi \r\nyang semakin meningkat.\r\n\r\nKedua, personalisasi berbasis AI akan menjadi standar industri. Setiap produk dan layanan akan disesuaikan \r\ndengan preferensi individual pengguna, menciptakan pengalaman yang unik untuk setiap orang.', '6a2c098599a21.jpg', 'Selasa, 9 Juni 2026 | 20:11', '2026-06-12 07:43:36');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` int NOT NULL,
  `nama_kategori` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `nama_kategori`, `keterangan`) VALUES
(1, 'Kesehatan', 'Kesehatan mental adalah bagian integral dari kesehatan keseluruhan kita.'),
(2, 'Pendidikan', 'Artikel ini membahas pentingnya pendidikan dalam membentuk karakter dan masa depan generasi muda.'),
(10, 'Teknologi', 'Artikel ini membahas bagaimana kecerdasan buatan memengaruhi aktivitas manusia modern.'),
(12, 'Bisnis', 'Dalam era digital saat ini, UMKM perlu mengadopsi strategi marketing digital untuk tetap kompetitif dan \r\nmenjangkau pasar yang lebih luas.'),
(14, 'Non Fiksi', 'Artificial Intelligence (AI) terus berkembang dan menjadi bagian integral dari kehidupan sehari-hari.');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2026_06_12_120215_add_updated_at_to_artikel_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penulis`
--

CREATE TABLE `penulis` (
  `id` int NOT NULL,
  `nama_depan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_belakang` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penulis`
--

INSERT INTO `penulis` (`id`, `nama_depan`, `nama_belakang`, `user_name`, `password`, `foto`) VALUES
(1, 'Siti', 'Nurhaliza', 'siti@gmail.com', '$2y$10$38JJLF1g6cQb9w.2licssOuJWqkVtce8sZsgL2fn2NvK3ldRKSYqa', '6a2c0ddbdae04.jpg'),
(3, 'Rara', 'Dwi', 'rara@gmail.com', '$2y$10$W13cbAvxdNK3IHNU734pjuPrJjVcD164v4SNEF/yl0l1peDuoLIda', '6a2c0dfc23b68.png'),
(5, 'Dewi', 'Lestari', 'dewi@gmail.com', '$2y$12$gRDp.SLMiJPEYlUlxoLFouiaCpPG2P11DJtV72DebykVE0PycEZZO', '6a2c0ab70680b.jpg'),
(13, 'Budi', 'Santoso', 'budi@gmail.com', '$2y$12$qhSwfl7r6h7DIg1zg32gx.XC45YKX/I29CCDyJVHYstc9MKE4W4Fe', '6a2c0a83f12f8.jpg'),
(14, 'Andi', 'Pratama', 'andi@gmail.com', '$2y$12$wEs6BYx4d.T6nVncXRPSWuS.T/jg3g3gBquPzf00BLgS2tDebIeT.', '6a2846f31b3d9.jpg'),
(15, 'Alzainap', 'Lariza', 'liza@gmail.com', '$2y$12$yIxMRJ0jAGZpVdBe8iIrWOq/cy/lmLY5Mv/5RVXxD4LHAE0XEruL6', '6a2c0a3adaadc.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('1JOvikbcmI0bb1WIFwjN617qxhuzbJFPr6LQxOam', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzU5SWtGZXhUM1pRMzJoNXJaM0tQNkd5QWZXajlwMG1YWTUzZlI5ZCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7czoxMjoicHVibGljLmluZGV4Ijt9fQ==', 1781275515),
('NI40HFbLkrJtU3vh7qcab8L6mliPjqFyiPkezkz5', 14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieGRQRTlqS1p1SEVkSHhEOUEyRlNtZUFISVZvTWxBOXdRUGl1a0dXbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hcnRpa2VsL2NyZWF0ZSI7czo1OiJyb3V0ZSI7czoxMToicHVibGljLnNob3ciO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxNDtzOjExOiJ3YWt0dV9sb2dpbiI7czoyOToiSnVtYXQsIDEyIEp1bmkgMjAyNiDilIIgMTg6MjQiO30=', 1781263479),
('wNgRf3vCHPigd7ZdyE1gOLMJveHd7UyWlkXTD1Q0', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/149.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicnZxTUduVVQ4Y2Q0UmpUVDNqY1NOc0tVRTYxN0hvUjBzYnc5R1lTeCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hcnRpa2VsL2NyZWF0ZSI7czo1OiJyb3V0ZSI7czoxMToicHVibGljLnNob3ciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1781264070);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artikel`
--
ALTER TABLE `artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_artikel_penulis` (`id_penulis`),
  ADD KEY `fk_artikel_kategori` (`id_kategori`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_expiration_index` (`expiration`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`),
  ADD KEY `cache_locks_expiration_index` (`expiration`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_nama_kategori` (`nama_kategori`);

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
-- Indexes for table `penulis`
--
ALTER TABLE `penulis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_name` (`user_name`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `artikel`
--
ALTER TABLE `artikel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `penulis`
--
ALTER TABLE `penulis`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `artikel`
--
ALTER TABLE `artikel`
  ADD CONSTRAINT `fk_artikel_kategori` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_artikel` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_artikel_penulis` FOREIGN KEY (`id_penulis`) REFERENCES `penulis` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
