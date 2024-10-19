-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2024 at 12:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_crud`
--

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_19_094417_create_products_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`) VALUES
(1, 'et', 'Commodi impedit quae quia saepe facere ea. Libero architecto doloremque ex et excepturi est.', 36, 'https://via.placeholder.com/640x480.png/0033ff?text=technics+aut', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(2, 'qui', 'Ut possimus repudiandae sint quis sequi consequatur illum. Totam eos dolor reprehenderit aut eius. Officia voluptatem exercitationem earum fugit.', 98, 'https://via.placeholder.com/640x480.png/00aa00?text=technics+nulla', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(3, 'tempore', 'Sed delectus corporis aut molestiae occaecati odio hic aut. Assumenda ut vitae ab deserunt similique. Nulla itaque qui molestiae deserunt quia nihil dolor. Est occaecati aspernatur provident eius autem corrupti.', 30, 'https://via.placeholder.com/640x480.png/005566?text=technics+repellat', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(4, 'quisquam', 'Quos sit repudiandae hic pariatur autem. Occaecati earum quod libero soluta illo facilis voluptatem aut. Ipsum deserunt illum exercitationem harum totam et sit. Sed officiis beatae eius.', 57, 'https://via.placeholder.com/640x480.png/0088bb?text=technics+incidunt', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(5, 'veritatis', 'Repellat esse non et praesentium ut adipisci. Provident ea harum debitis eum. Aliquam amet cupiditate sunt qui velit quia. Nisi beatae ut tenetur mollitia.', 51, 'https://via.placeholder.com/640x480.png/003300?text=technics+in', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(6, 'qui', 'Error iure aut et quas voluptatem numquam. Fugiat exercitationem necessitatibus et vero minima autem sit quia. Animi sint magnam deserunt a voluptatem quae sed.', 39, 'https://via.placeholder.com/640x480.png/00cc11?text=technics+ut', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(7, 'sed', 'Quam deleniti officia cumque qui et totam. Non nesciunt necessitatibus modi est. Fugiat aut quaerat culpa vero sit nemo maxime eius. Eum voluptatem molestias itaque iusto in.', 62, 'https://via.placeholder.com/640x480.png/00bbff?text=technics+autem', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(8, 'eum', 'Magni occaecati quisquam dolor enim commodi omnis. Nesciunt accusantium facilis illum et dolorem rerum sed. Qui rerum amet omnis nulla cum aut facilis.', 87, 'https://via.placeholder.com/640x480.png/00cc00?text=technics+itaque', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(9, 'possimus', 'Fugiat veritatis corporis et ipsum id. Hic quisquam molestias porro quae dolor nisi. Vitae sit sequi sed omnis.', 42, 'https://via.placeholder.com/640x480.png/007755?text=technics+neque', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(10, 'harum', 'Et labore accusantium qui commodi nihil laudantium omnis. Omnis quidem numquam et error perspiciatis sit aperiam. Voluptates id dolorum exercitationem fuga repellat.', 67, 'https://via.placeholder.com/640x480.png/002299?text=technics+nemo', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(11, 'quod', 'Ipsam omnis cum accusamus. Totam nulla dolor autem ut voluptatum quia. Dolorem sunt voluptatem tempore aut at eveniet.', 79, 'https://via.placeholder.com/640x480.png/0022ff?text=technics+voluptatem', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(12, 'vel', 'Neque atque recusandae ut quasi aut asperiores et. Voluptates assumenda et quia cum corporis. Voluptate voluptatem est vitae molestiae hic deserunt quas.', 12, 'https://via.placeholder.com/640x480.png/0077bb?text=technics+reprehenderit', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(13, 'sequi', 'Maiores ut debitis aut cupiditate impedit at architecto iste. Aliquam consequatur tempora ut aut eum dolorem sed. Sunt ratione error quia et tempora. Facere facilis perspiciatis neque dignissimos praesentium eaque dolore harum.', 66, 'https://via.placeholder.com/640x480.png/00ddee?text=technics+neque', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(14, 'illum', 'Sed repellendus velit quia error. Perferendis fugiat debitis autem nobis accusamus quaerat. Enim veritatis vel consequuntur assumenda ut est voluptas.', 67, 'https://via.placeholder.com/640x480.png/00aa55?text=technics+aut', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(15, 'nihil', 'Reiciendis omnis asperiores facere ullam illum architecto. Qui nesciunt velit tempore quia voluptatem. Impedit neque tenetur sunt fugit.', 63, 'https://via.placeholder.com/640x480.png/003388?text=technics+consequatur', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(16, 'optio', 'Veritatis amet voluptas ea sit asperiores necessitatibus. Libero doloribus vel et. Facilis deleniti non voluptatem.', 46, 'https://via.placeholder.com/640x480.png/0022ff?text=technics+suscipit', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(17, 'et', 'Quo hic minima nisi rem corporis. Porro nobis rerum sit ea voluptas at corrupti. Id id qui tempora est incidunt. Numquam eos sunt nemo dolor.', 28, 'https://via.placeholder.com/640x480.png/000011?text=technics+delectus', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(18, 'esse', 'Delectus officia veniam tenetur facere. Perferendis sed enim blanditiis veritatis libero. Qui deleniti commodi quo et. Eius velit magnam earum voluptas quo.', 24, 'https://via.placeholder.com/640x480.png/0000dd?text=technics+et', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(19, 'minus', 'Nesciunt hic harum qui eum. Distinctio id ea tempora et ab repellendus impedit enim. Ut ullam eos ratione voluptate commodi est. Dolorem laboriosam voluptatem corrupti omnis voluptatem.', 5, 'https://via.placeholder.com/640x480.png/003399?text=technics+explicabo', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(20, 'est', 'Enim similique neque culpa aliquam. Ad quia et quaerat eos molestiae.', 54, 'https://via.placeholder.com/640x480.png/000055?text=technics+minima', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(21, 'nostrum', 'Aut accusantium ipsa dolorum nam sunt tempora dolores consequatur. Dolorem ullam possimus quaerat quia. Ratione aut animi ut.', 99, 'https://via.placeholder.com/640x480.png/00dd77?text=technics+est', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(22, 'et', 'Vitae magnam officiis ex sint quis quidem. Dicta quisquam illo nihil veritatis id. Vero est voluptatem voluptates ullam laudantium in.', 69, 'https://via.placeholder.com/640x480.png/0077dd?text=technics+dolorum', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(23, 'voluptatem', 'Et dolorem nesciunt neque quos mollitia maiores doloribus. Reprehenderit voluptatem voluptatem minus et. Explicabo sit voluptatem fugiat odit est itaque.', 97, 'https://via.placeholder.com/640x480.png/003311?text=technics+delectus', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(24, 'vero', 'Ea magnam cum qui iure quia labore possimus. Ab vero nihil rerum architecto aliquam sed. Possimus odit repudiandae est totam numquam ducimus quo.', 30, 'https://via.placeholder.com/640x480.png/009966?text=technics+quia', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(25, 'facilis', 'Eius nisi atque qui sed nulla. Est dolores repellendus sunt dicta dolor. Perferendis autem sit quisquam in est.', 27, 'https://via.placeholder.com/640x480.png/00aa88?text=technics+veniam', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(26, 'neque', 'Deserunt omnis sed in commodi. Saepe non autem velit ipsam minima dignissimos sit aut. Est officiis aliquam nihil dolores sed.', 12, 'https://via.placeholder.com/640x480.png/00aa11?text=technics+temporibus', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(27, 'nemo', 'In corporis ab ea quia quibusdam. Repellendus voluptate voluptatum rerum. Ullam vitae omnis officia similique.', 78, 'https://via.placeholder.com/640x480.png/00ff88?text=technics+doloribus', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(28, 'ipsam', 'Eligendi voluptas nobis consectetur nemo laudantium. Voluptatem ipsum officia rem. Est consequatur omnis harum ipsa aspernatur. Voluptate voluptas reiciendis enim quia.', 25, 'https://via.placeholder.com/640x480.png/005566?text=technics+et', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(29, 'aut', 'Neque praesentium repellendus vitae quis laborum praesentium maiores. Quia sunt temporibus laudantium omnis quia a dolorem. Dolores dolore qui architecto nisi velit ducimus veritatis. Alias pariatur sint itaque consequuntur eius vel illum.', 28, 'https://via.placeholder.com/640x480.png/003311?text=technics+libero', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(30, 'voluptate', 'Quae sit sed libero odio qui sunt. Odit et maiores omnis quis minus sint. Necessitatibus nostrum sunt modi.', 14, 'https://via.placeholder.com/640x480.png/00ee44?text=technics+odio', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(31, 'nihil', 'Non quia soluta quam eaque. Exercitationem voluptatum delectus est ut omnis ducimus. Enim quia dolorum dolor sunt aut beatae iste. Qui mollitia voluptas quidem qui consequatur. In earum aut similique est.', 76, 'https://via.placeholder.com/640x480.png/00aa77?text=technics+est', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(32, 'autem', 'Hic ducimus molestiae nemo ut. Alias inventore laboriosam et eos esse quibusdam enim. Quo rerum consectetur fugit iste. Eos et cupiditate soluta minus dolore voluptas optio.', 84, 'https://via.placeholder.com/640x480.png/002244?text=technics+eum', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(33, 'cupiditate', 'Ipsa ea atque labore quia velit corrupti quam. Sed impedit incidunt veniam omnis dignissimos consequuntur perspiciatis illo. Voluptatum quidem incidunt veniam omnis possimus delectus. At saepe repellat enim sunt itaque.', 40, 'https://via.placeholder.com/640x480.png/003322?text=technics+suscipit', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(34, 'in', 'Debitis enim autem reprehenderit esse. Ea est sit commodi rerum corporis maxime.', 34, 'https://via.placeholder.com/640x480.png/00bb99?text=technics+nisi', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(35, 'quo', 'Est est tenetur tempore dolorum voluptas facere aut. Doloribus aut et fugiat neque reiciendis neque numquam. Atque voluptates provident ut quia quam nostrum et. Sint aliquid consequatur recusandae nihil facilis.', 69, 'https://via.placeholder.com/640x480.png/004499?text=technics+similique', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(36, 'est', 'Consequatur et quasi molestias. Quidem corrupti earum eveniet dignissimos. Cum amet in nihil aut placeat commodi. Earum exercitationem saepe odit debitis minus unde accusamus.', 1, 'https://via.placeholder.com/640x480.png/0088dd?text=technics+molestias', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(37, 'voluptatem', 'Expedita repudiandae et architecto ut odit impedit. Accusantium est ad molestiae doloremque totam. Beatae pariatur minima aut minus ea libero non a. Tempore rerum nesciunt doloribus soluta. Aspernatur voluptates qui saepe consectetur nihil facilis veritatis.', 87, 'https://via.placeholder.com/640x480.png/00bb66?text=technics+sit', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(38, 'optio', 'Libero omnis unde dolorem omnis consequuntur nihil. Id qui aliquam magnam rerum. Voluptas ratione aut eius reiciendis.', 4, 'https://via.placeholder.com/640x480.png/007755?text=technics+id', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(39, 'aut', 'Iste dolores consectetur consectetur. Eveniet sunt dolores consequatur dignissimos. Nulla vel qui voluptas nulla. Rerum nesciunt expedita similique et.', 99, 'https://via.placeholder.com/640x480.png/00ff55?text=technics+blanditiis', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(40, 'magnam', 'Autem ipsa ut excepturi rem. Sed aperiam reiciendis ipsa dolor voluptas dolores et. Illum tempora mollitia occaecati suscipit a ea est. Quo accusamus quisquam deleniti quas ut reiciendis natus.', 34, 'https://via.placeholder.com/640x480.png/007700?text=technics+enim', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(41, 'rerum', 'Similique omnis molestiae excepturi necessitatibus magnam nulla esse. Aut non repellendus aliquid quibusdam libero est dolores.', 52, 'https://via.placeholder.com/640x480.png/003388?text=technics+neque', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(42, 'tempore', 'Iure nihil et porro ut sit. Suscipit ea soluta est. Veritatis soluta facere dolor ipsam aut voluptas deserunt. Porro dolores tempore vero aspernatur.', 33, 'https://via.placeholder.com/640x480.png/008800?text=technics+modi', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(43, 'quibusdam', 'Nihil neque delectus quo accusantium accusantium et tempore. Voluptatem consequuntur culpa voluptatem architecto eos iusto voluptate. Eveniet optio voluptatem consequatur et. Nesciunt ducimus qui et eum perferendis.', 73, 'https://via.placeholder.com/640x480.png/009999?text=technics+laboriosam', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(44, 'eos', 'Qui iusto sit fugiat nihil voluptates id nam. Molestiae quis illum expedita quam. Pariatur voluptatem enim minus non occaecati eveniet. Quo et sed aperiam qui.', 17, 'https://via.placeholder.com/640x480.png/0044ee?text=technics+voluptate', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(45, 'ullam', 'Possimus non nisi porro placeat. Quis totam nihil ut quod voluptatem voluptatem. Molestiae architecto non voluptas explicabo. Autem repellat tenetur qui architecto blanditiis ut ut.', 100, 'https://via.placeholder.com/640x480.png/00ccff?text=technics+iusto', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(46, 'fugit', 'Expedita delectus in odit ex aliquam ut. Autem dolor perspiciatis beatae. Qui optio quia non. Eveniet quaerat eum eos quae saepe consequatur.', 83, 'https://via.placeholder.com/640x480.png/0099dd?text=technics+rem', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(47, 'fugiat', 'Aut quibusdam est ad inventore sit illo consectetur. Perspiciatis voluptatibus ipsum aut fuga. Excepturi sint autem fugiat non temporibus.', 93, 'https://via.placeholder.com/640x480.png/002244?text=technics+officia', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(48, 'eum', 'Architecto totam enim nihil sequi. Sint est velit praesentium quia explicabo vel. Rerum ea doloribus est tempore sint aut. Illo earum reiciendis et numquam dolor expedita quod.', 14, 'https://via.placeholder.com/640x480.png/000033?text=technics+ipsum', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(49, 'illum', 'Aut voluptatem officia autem non dolor et. Fugit hic deserunt ducimus explicabo enim repellendus exercitationem. Earum tempora cumque autem molestias. Vel aut recusandae rerum et ut nihil id.', 88, 'https://via.placeholder.com/640x480.png/006644?text=technics+dolorem', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(50, 'id', 'Ratione magnam sed accusamus deserunt perferendis. Dolore ratione aut repellat est.', 60, 'https://via.placeholder.com/640x480.png/0088ee?text=technics+asperiores', '2024-10-19 05:00:27', '2024-10-19 05:00:27'),
(51, 'sss', 'jkdfkjew', 433, 'images/qtq3uTqwJWDe4kxdHyCRNiEz74ne6wfyLSflMWUB.jpg', '2024-10-19 05:05:28', '2024-10-19 05:05:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
