-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 26, 2023 at 11:25 PM
-- Server version: 8.0.32-0ubuntu0.22.04.2
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arpadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Qui inventore et alias\", \"slug\": \"qui-inventore-et-alias\", \"type\": \"Article\", \"intro\": \"Officia numquam ea repellendus id non accusamus minus. Rem quia deserunt et quas. Ut magnam consequuntur non aut nemo. Nihil dolor autem non. Officia dolores necessitatibus laudantium et.\", \"order\": null, \"status\": 1, \"content\": \"Et aut facilis voluptas adipisci et voluptatum. Reprehenderit architecto odit esse magnam. Molestias architecto sequi quae architecto accusantium similique.\\n\\nQuidem facilis ratione ratione architecto. Ea eos officia quod consequuntur iure eligendi.\\n\\nSunt ut doloremque pariatur laboriosam in molestiae et. Illum ab cum adipisci qui ratione. Nostrum quos ad ipsa aut.\\n\\nTotam velit minus mollitia ipsa ipsa. Molestiae numquam tenetur porro consequatur dolor quidem. Blanditiis ab dolores voluptatem aut rerum labore qui.\\n\\nExcepturi aut eius molestias sunt. Excepturi necessitatibus aut ipsam voluptas exercitationem molestiae. Ea dolor voluptate voluptate qui repudiandae placeat.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Qui Inventore Et Alias\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=1\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(2, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Ducimus ut et rerum\", \"slug\": \"ducimus-ut-et-rerum\", \"type\": \"News\", \"intro\": \"Impedit odit omnis et sit molestiae. Dolor eius ab quam voluptas minus ipsa maxime. Est est rerum est similique debitis magnam. Recusandae consequatur earum doloremque corrupti.\", \"order\": null, \"status\": 1, \"content\": \"Quos excepturi vitae rerum eaque est repudiandae officia. Reiciendis voluptatem molestiae aliquam et non. Voluptatem perspiciatis ut enim harum. Qui maxime et magni in est.\\n\\nTempore quasi consectetur officia modi dolor magnam necessitatibus veritatis. Aliquid ea deserunt totam dolorum animi facilis. Et dolorum vitae laudantium quidem. Corrupti eum voluptas temporibus neque.\\n\\nConsequatur molestiae facilis dolore aut delectus et rerum labore. Nulla est ut et saepe. Est voluptatem doloribus nam ut.\\n\\nNon neque dolores reiciendis vel quasi. Asperiores aut cum ut eveniet. Atque enim sit eum fuga. Omnis qui magni est magnam alias aut.\\n\\nTenetur asperiores fuga id debitis. Placeat earum itaque expedita earum corporis dolores est. Nemo saepe officia maiores odio quos. Tenetur cupiditate pariatur atque et. Et laborum voluptatem sapiente aperiam facilis.\\n\\nConsequatur qui sit ratione reprehenderit quae delectus. Vitae sed unde deserunt eligendi nesciunt qui. Iusto maiores molestiae repellat et officia eum.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Ducimus Ut Et Rerum\", \"updated_by\": 1, \"category_id\": 2, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Beatae porro dolor\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=2\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(3, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Commodi id omnis quo\", \"slug\": \"commodi-id-omnis-quo\", \"type\": \"Article\", \"intro\": \"Est culpa enim corporis et. Labore autem dolorem eos qui ratione. Cum id atque expedita culpa similique voluptatem. Quasi repellendus aut dicta qui et.\", \"order\": null, \"status\": 1, \"content\": \"Consequuntur molestias aut tenetur et. Possimus sequi qui autem accusantium error quam quia. Architecto dolores cupiditate ea ut doloremque sed autem. Perferendis nulla cupiditate tenetur culpa quia ratione.\\n\\nSaepe consequatur ipsa est eaque asperiores. Dolor animi sed cumque nisi quo. Nostrum earum soluta doloribus pariatur aut aspernatur quis.\\n\\nAb sed adipisci saepe aut vitae. Reiciendis nam explicabo et sunt qui dolore aut. Doloremque accusamus et in sapiente non similique architecto beatae. Qui aliquid asperiores sed vel cupiditate optio fuga.\\n\\nEum unde similique officia pariatur illo aut aliquam. Et non deserunt ea error est placeat. Cupiditate doloremque suscipit est velit quibusdam.\\n\\nVoluptas commodi rem dolorum consequatur officiis. Voluptatem et temporibus ea vero enim eum molestiae autem. In totam itaque eum ipsa.\\n\\nEt distinctio hic quas dolores illum illum nihil ullam. Eius nemo consequuntur ut temporibus enim autem rerum. Aliquam laborum velit dicta ullam est optio ea.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Commodi Id Omnis Quo\", \"updated_by\": 1, \"category_id\": 1, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dignissimos nostrum\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=3\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(4, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Delectus aut aut eos ut\", \"slug\": \"delectus-aut-aut-eos-ut\", \"type\": \"Article\", \"intro\": \"Odio enim officiis et tempore voluptatem fugiat aut ut. Eligendi explicabo nulla labore vel nemo. Distinctio est qui sapiente.\", \"order\": null, \"status\": 1, \"content\": \"Incidunt corporis explicabo cupiditate reprehenderit sequi accusamus. Esse cum eveniet eum. Beatae et laboriosam nemo. Qui iste fuga eligendi ipsa.\\n\\nOdio aliquid incidunt facilis nihil ab reprehenderit. Cumque placeat aut ex tempore rerum molestiae assumenda. Dolorum eum ducimus voluptatem quia ut. Mollitia corrupti vel sed. Iure provident nihil expedita.\\n\\nAut voluptatem et eum nihil. Quos nulla qui aut qui perferendis. Provident et autem qui voluptas neque quibusdam placeat.\\n\\nSoluta a fuga saepe suscipit mollitia. Qui et odio et quia et aut. Ut molestiae maiores itaque incidunt et qui.\\n\\nSed quod et atque ducimus eos aperiam. Neque doloribus velit rem et soluta minus enim. Qui rerum voluptatem quod omnis corrupti dolor. Provident sed optio iure illum eum rem. Suscipit corrupti sit id recusandae in quia corporis qui.\\n\\nQuia reprehenderit distinctio ducimus cupiditate maiores. Distinctio minus voluptatem accusamus vitae iste. Quis quia distinctio aut porro vitae.\\n\\nEst esse alias quos esse facilis praesentium. Sed natus ducimus id mollitia necessitatibus qui et accusantium.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Delectus Aut Aut Eos Ut\", \"updated_by\": 1, \"category_id\": 4, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dolorem ut sed\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=4\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(5, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Et sit reprehenderit odio\", \"slug\": \"et-sit-reprehenderit-odio\", \"type\": \"Blog\", \"intro\": \"Officia nobis tenetur aut quia. Aut nihil iusto laboriosam dicta cum laborum. Quis minus ipsam cupiditate perferendis ullam ducimus sed. Quam ipsa nam magnam fugiat et fuga et. Culpa occaecati quis rem nobis nam qui vel molestiae.\", \"order\": null, \"status\": 1, \"content\": \"Suscipit voluptas ad occaecati repellendus dolore. Eius possimus saepe nulla error eius. Eius minus a qui nostrum fugit aspernatur.\\n\\nExercitationem temporibus est maiores aut tenetur aut. Aliquam eveniet debitis tempore voluptas iure commodi vel illum. Eveniet voluptatem facilis sint architecto qui corrupti deleniti iure. Qui in sunt neque est quibusdam sit.\\n\\nUt sit nemo omnis hic consequatur. Voluptate itaque ea ut culpa praesentium ipsa eos.\\n\\nImpedit expedita accusamus amet itaque rerum odit rem quo. Consequatur ea et nisi. Atque ipsum nihil quos ad porro occaecati dolor officiis. Et aut libero architecto sint.\\n\\nNatus vel aut culpa dolorum. Odit quis deleniti praesentium sint tempora eum culpa. Sunt nostrum quos eos aut aut.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Et Sit Reprehenderit Odio\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=5\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(6, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Vel in sed aut error\", \"slug\": \"vel-in-sed-aut-error\", \"type\": \"Article\", \"intro\": \"Doloremque quis omnis voluptatem amet enim et velit. Tempore nihil hic velit molestiae est tenetur. Velit quis consequatur amet aliquid dignissimos amet rem.\", \"order\": null, \"status\": 1, \"content\": \"Nihil omnis assumenda id aut voluptatem. Doloremque architecto voluptas consequatur eaque. Vel non distinctio rerum.\\n\\nHic expedita explicabo sed quia sed natus. Repellendus inventore aliquid vitae non et quibusdam. Quo nemo aut sapiente non perferendis. Ipsum aperiam sit quo voluptates quis sit magni est.\\n\\nNesciunt cupiditate vero at libero. Voluptatum cum impedit quo blanditiis blanditiis. Inventore voluptatem unde et vel in quam. Illum illum non voluptatem ut ut provident saepe.\\n\\nAssumenda autem autem minus. Ut et expedita officia tempore harum. Autem sequi incidunt odit.\\n\\nOfficia optio saepe deserunt quia voluptatem necessitatibus. Est architecto dolores nemo inventore. Ipsum est iure rerum occaecati repellendus corporis similique qui. Rerum itaque qui et amet numquam totam ipsum asperiores.\\n\\nRepellat dolores et nulla cupiditate qui. Earum qui eos rerum et voluptatum. Dolores alias nihil impedit quasi velit quia. Amet eveniet vel non nihil reiciendis ut aut. Soluta et voluptatum similique fuga occaecati quas omnis.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Vel In Sed Aut Error\", \"updated_by\": 1, \"category_id\": 1, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dignissimos nostrum\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=6\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(7, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Aut sed cum aperiam\", \"slug\": \"aut-sed-cum-aperiam\", \"type\": \"News\", \"intro\": \"Et debitis est expedita quas omnis perferendis. A debitis ducimus rem dolores suscipit cum ea eius. Ut dolore ullam laboriosam laboriosam repellendus hic quia. Ex voluptas saepe maiores ducimus quis ipsa et. Id totam quis ad fugiat.\", \"order\": null, \"status\": 1, \"content\": \"Voluptatum delectus iusto sed et rerum et nulla. Rem ea sequi veniam voluptatem. Odit qui magnam et expedita perspiciatis debitis vitae. Repellat quia non rerum facilis sed et et.\\n\\nNesciunt nesciunt quas occaecati facilis voluptate dolore. At at id et rerum vitae aliquam culpa. Amet autem laborum impedit. Fuga doloremque id harum voluptatem debitis sed quas veritatis. Ipsam sit quas qui.\\n\\nVoluptatem cum autem facere aspernatur. Quas iure voluptates quod voluptatem tenetur qui corporis. Velit nisi est non ducimus.\\n\\nEa ex non quia quia aut. Ut perspiciatis dolor modi saepe. Consequatur ratione assumenda qui omnis itaque et molestiae et.\\n\\nMagnam ex ut architecto sit. Voluptatem cumque et rem quae a ut. Nobis quidem voluptates perferendis ut. Ullam temporibus repudiandae voluptas nulla magni quisquam qui.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Aut Sed Cum Aperiam\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=7\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(8, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Sed et veniam totam sed\", \"slug\": \"sed-et-veniam-totam-sed\", \"type\": \"News\", \"intro\": \"Non quo qui sed impedit. Nemo deserunt molestiae quidem fugit illo doloremque assumenda quidem. At quidem aut architecto laudantium totam ducimus. Mollitia temporibus iusto quia alias aut nihil. Recusandae ipsam iste quae ab aut similique dolores.\", \"order\": null, \"status\": 1, \"content\": \"Sunt totam sed voluptates nulla quisquam ut. Non sed tempora omnis dolorum. Aut aut sapiente reprehenderit qui ut enim natus.\\n\\nEa ipsam cupiditate consequatur omnis et. Saepe molestiae dolorem fugiat quis et explicabo quis magnam. Repellendus magni ratione quia.\\n\\nFugiat dolor recusandae nisi sit soluta tempore unde quia. Error qui mollitia minus ut architecto quod.\\n\\nBeatae voluptatem esse quam itaque est odio. Veniam ut exercitationem vel. Dolores necessitatibus qui necessitatibus sit.\\n\\nQuo libero ratione et eveniet veritatis suscipit quidem. Alias modi atque et ut. Blanditiis ut quo eos. Temporibus maxime adipisci quas laudantium.\\n\\nRatione corrupti omnis quia id ab officia. Ut et tenetur libero debitis aut tenetur. Necessitatibus vero repellendus commodi rem non recusandae velit.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Sed Et Veniam Totam Sed\", \"updated_by\": 1, \"category_id\": 4, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dolorem ut sed\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=8\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(9, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Ut et magnam fugit sit\", \"slug\": \"ut-et-magnam-fugit-sit\", \"type\": \"Article\", \"intro\": \"Accusantium quo voluptatem cumque illum molestias quia cumque. Officia dolore aperiam et modi placeat consequatur accusantium. Quia error et illo modi. Nemo tempore et minus adipisci.\", \"order\": null, \"status\": 1, \"content\": \"Qui facilis ex et vel tenetur sint. Et voluptatibus qui sed nemo ducimus consequuntur. Sint velit et vitae aut nulla molestias.\\n\\nTenetur totam aliquid earum ab quod alias qui. Illum et adipisci repellendus amet. Praesentium rerum vitae aut iure quam.\\n\\nAnimi fugit dicta ut et sed rem. Consequatur corporis sed ut consectetur consequatur quisquam.\\n\\nCorrupti impedit dicta eum corrupti. Neque nam aut molestiae ab sint sed at. Corrupti aperiam quisquam ea atque facere. Esse qui rerum error.\\n\\nAlias necessitatibus expedita laboriosam aut repellat aliquid sed. Sunt est pariatur labore quo tenetur reiciendis itaque. Qui architecto ducimus et numquam quisquam maiores nisi.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Ut Et Magnam Fugit Sit\", \"updated_by\": 1, \"category_id\": 5, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Assumenda nobis et\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=9\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(10, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Est id dolorem id est ipsam\", \"slug\": \"est-id-dolorem-id-est-ipsam\", \"type\": \"Blog\", \"intro\": \"Architecto sapiente numquam sapiente error. Et rerum voluptatem sed dolorem voluptatum odio asperiores. Omnis voluptatem id blanditiis cupiditate. Quisquam a recusandae deleniti non mollitia voluptate.\", \"order\": null, \"status\": 1, \"content\": \"Vel doloribus nesciunt ab facilis eos. Magni facilis nam quas animi eos. Laboriosam quia enim quia necessitatibus voluptates eos et et.\\n\\nNecessitatibus perspiciatis eaque vitae ab eveniet facere. Minima molestiae consectetur voluptas perspiciatis sed. Ullam non qui consequatur in sapiente.\\n\\nOptio eos animi voluptatum voluptatum at aut. Aliquam minus quo ut laudantium. Rerum hic unde laboriosam at atque quia.\\n\\nCorporis iste qui et enim qui sit. Ipsum sunt et est asperiores blanditiis. Dolore praesentium eos ratione itaque sint.\\n\\nOdit eligendi iure vel aut tenetur. Dolorum velit asperiores nihil voluptatem. Et sed quidem aut eius ipsam eum. Aut id architecto esse ut nulla similique.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Est Id Dolorem Id Est Ipsam\", \"updated_by\": 1, \"category_id\": 4, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dolorem ut sed\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=10\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(11, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Aut ipsa officia animi\", \"slug\": \"aut-ipsa-officia-animi\", \"type\": \"Blog\", \"intro\": \"At ab commodi voluptatibus necessitatibus. Velit et itaque omnis rerum. Et blanditiis eos est et qui et.\", \"order\": null, \"status\": 1, \"content\": \"Et id culpa non omnis qui. Atque assumenda in quo dicta ut pariatur. Enim aut nobis dicta ut nobis optio.\\n\\nConsectetur qui fuga aut amet. Minus distinctio omnis iure incidunt amet quia laudantium atque.\\n\\nSuscipit rerum velit nihil dolores quidem inventore eum. Voluptatem ducimus vel modi et corporis unde omnis fuga.\\n\\nAut sit repellat maxime ratione ut veritatis hic est. Reiciendis esse laudantium nam sint dolor quos. Quod vel quia non architecto fugiat et necessitatibus.\\n\\nExpedita dignissimos laborum consectetur sit sed. Quidem est est eos officiis deleniti ut ducimus. Quasi rerum aliquid ipsam totam impedit. Quia veritatis rerum nihil officia aliquam corporis magni occaecati. Culpa nihil tenetur voluptatem dolorum cum atque.\\n\\nRepellendus cum et eaque alias. Molestias ipsam placeat iste at fuga. Quia molestiae nostrum ex sit repudiandae.\\n\\nRecusandae doloribus provident vero vel id. Nostrum doloribus dolor aut voluptatem. Non facilis in sapiente porro voluptatem. Repudiandae qui nihil ab placeat.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Aut Ipsa Officia Animi\", \"updated_by\": 1, \"category_id\": 5, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Assumenda nobis et\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=11\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(12, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Et sint sit modi temporibus\", \"slug\": \"et-sint-sit-modi-temporibus\", \"type\": \"News\", \"intro\": \"Asperiores iure suscipit vel voluptate saepe velit. Veritatis ipsam voluptas necessitatibus rerum et neque. Dolorum aperiam autem nisi amet deleniti vitae dolores. Molestiae qui voluptatem quisquam est quis deserunt voluptatem.\", \"order\": null, \"status\": 1, \"content\": \"Minima id rem et est in voluptatum. Et consequatur non voluptatibus atque repellendus. Nemo doloribus aliquam nisi et consequatur dolores autem. Et laborum et ipsum aut repellat explicabo voluptatem.\\n\\nDolorum facere quos aperiam tenetur distinctio excepturi voluptates. Vero odit occaecati est doloribus nemo recusandae. Beatae et earum ab.\\n\\nAlias et asperiores sint velit ducimus. In voluptate dicta porro facere architecto autem sequi voluptatem. Ipsum dicta consectetur voluptas a provident quos maxime.\\n\\nOdit repudiandae totam incidunt ut reiciendis. Odit atque laborum est cupiditate tempora nobis omnis. Quo quibusdam optio aliquid non est voluptas deserunt tempora. Earum ad sint dolorem tenetur.\\n\\nAut ipsum quis excepturi ut a dicta. Culpa aut voluptates beatae non. Voluptate est eaque autem aut in est beatae neque.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Et Sint Sit Modi Temporibus\", \"updated_by\": 1, \"category_id\": 2, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Beatae porro dolor\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=12\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(13, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Et pariatur et et aut ut\", \"slug\": \"et-pariatur-et-et-aut-ut\", \"type\": \"Article\", \"intro\": \"Nesciunt eius ullam nulla vero. Earum voluptatibus eum aut. Sapiente aut iure aut laboriosam sit quam dolorum quisquam. Vel ab ea qui quasi.\", \"order\": null, \"status\": 1, \"content\": \"Quas impedit aut neque nemo inventore aut similique. Doloremque debitis aliquam fuga dolor. Est rerum eius doloribus maxime sed cupiditate.\\n\\nAccusantium nulla vero rem dicta. Est blanditiis non ut omnis voluptatem iste occaecati. Aut quibusdam omnis ea quae. Quo expedita dolor et numquam cum ipsum sapiente ipsum.\\n\\nFacere incidunt laborum occaecati enim ea error. Sit suscipit aliquid cumque minus soluta at. Qui nesciunt qui voluptatibus sequi qui ea veritatis.\\n\\nLaboriosam ipsum officia quia accusamus at veniam itaque. Voluptatem voluptate aut aut dolor iste. Sint sapiente voluptatibus culpa illum praesentium inventore.\\n\\nOmnis architecto iusto expedita ullam dolor architecto voluptatem. Vitae aut quidem velit explicabo dolor. Voluptatibus temporibus veritatis voluptatem. Nostrum consequatur exercitationem vero molestias.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Et Pariatur Et Et Aut Ut\", \"updated_by\": 1, \"category_id\": 2, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Beatae porro dolor\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=13\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(14, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Et et libero illo a\", \"slug\": \"et-et-libero-illo-a\", \"type\": \"Blog\", \"intro\": \"Ut aut aliquid vitae expedita consectetur aliquam. Harum alias ratione ad eos maiores. At eos ducimus perspiciatis.\", \"order\": null, \"status\": 1, \"content\": \"Cum eos consequatur molestiae quaerat. Et incidunt consectetur illum quo. Mollitia occaecati rerum sed illum laboriosam id. Sit distinctio accusantium tempore labore consequuntur animi quas.\\n\\nDicta ex est ipsum fuga sed et delectus. Illum aut sit est. Quis aspernatur officiis necessitatibus odio.\\n\\nAccusantium repellat aut iure. Qui dicta odio et voluptas. Eos et modi nihil magnam distinctio non. Est ut voluptate esse sequi commodi.\\n\\nOptio voluptatem animi deleniti aut. Quis aspernatur id eos ratione. Sint dolor blanditiis iusto cupiditate iure cumque. Aut earum voluptas minima nobis.\\n\\nOptio et aliquid ut quam molestias consectetur. Ab dolor voluptatem explicabo. Quia molestiae delectus nisi corrupti vitae. Omnis voluptatem sed magnam dolorem repudiandae neque quia.\\n\\nEx est voluptatem tempora vitae exercitationem eligendi est. Quam explicabo voluptas praesentium sed qui harum. Omnis omnis et quaerat ex quaerat. Odio libero et consequatur et quo.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Et Et Libero Illo A\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=14\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(15, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Porro placeat qui laudantium\", \"slug\": \"porro-placeat-qui-laudantium\", \"type\": \"News\", \"intro\": \"Rem odio quo necessitatibus aperiam qui incidunt a alias. Repellendus odit quisquam ipsum excepturi quaerat sapiente. Quia expedita saepe accusantium ut consectetur sint sit natus. Molestiae optio sit a dolores saepe.\", \"order\": null, \"status\": 1, \"content\": \"Iure unde cumque ad aspernatur numquam ea. Necessitatibus aut nesciunt veniam accusamus ut ipsa. Dicta atque voluptatibus in. Et nostrum esse minus vero.\\n\\nDolor modi sequi quis sed. Numquam quas enim rem tenetur. Doloremque eveniet eius ducimus assumenda alias sunt et. Officiis dignissimos doloribus vitae modi dolorem qui iure.\\n\\nOptio rerum aut ipsam voluptatem quibusdam sint. Adipisci omnis ullam saepe nulla facilis quasi numquam. Consequatur quasi voluptates fugiat maxime.\\n\\nProvident officiis consectetur accusamus officiis. Delectus vero deleniti unde minima officia. Earum ad et esse et vel quos molestiae. Dolores rem ipsum amet.\\n\\nNecessitatibus tempore voluptatum illo illo. Quibusdam culpa in et.\\n\\nAnimi quia perspiciatis voluptas non. Fugit blanditiis sed voluptatem est. Sint numquam ut qui sed dolores.\\n\\nEnim dolores sit accusamus nihil ea illum. Qui consequuntur ipsam alias sed qui facere. Suscipit officia odio dolorum voluptates odit.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Porro Placeat Qui Laudantium\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=15\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(16, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Ducimus qui eos velit nobis\", \"slug\": \"ducimus-qui-eos-velit-nobis\", \"type\": \"Article\", \"intro\": \"Eius asperiores tenetur porro quos quisquam sit impedit. Sint dignissimos aut veritatis esse sed ratione. Qui veritatis dolores omnis dolorum. Quam aspernatur eum officia dolor et consequuntur eos.\", \"order\": null, \"status\": 1, \"content\": \"Eum consequatur magni ab in. Qui nulla animi ut hic iusto. Possimus est facere eveniet optio.\\n\\nQui et similique id minima. Deleniti sed dolor consequuntur harum. Totam error doloremque quaerat qui commodi deserunt cum.\\n\\nEt fugit dignissimos accusamus ratione dignissimos. Ea nihil laboriosam animi quia.\\n\\nDolor vel voluptatem atque voluptatum libero. Necessitatibus quaerat ut sit quidem sed. Nesciunt architecto suscipit porro quisquam quia. Voluptatem possimus ut cumque facere.\\n\\nProvident velit numquam quia fugiat maiores. Sunt delectus quo explicabo libero. Quisquam illo et voluptatum distinctio quos.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Ducimus Qui Eos Velit Nobis\", \"updated_by\": 1, \"category_id\": 1, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dignissimos nostrum\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=16\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(17, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Qui esse totam odit sed et\", \"slug\": \"qui-esse-totam-odit-sed-et\", \"type\": \"News\", \"intro\": \"Ab id quae esse. Corporis explicabo occaecati accusantium. Explicabo ut molestias at.\", \"order\": null, \"status\": 1, \"content\": \"Aut autem quod molestiae neque beatae non libero. Minus minus blanditiis molestias sit. Est dolorem dolorum id voluptates iusto.\\n\\nQui accusamus quisquam voluptatum doloribus. Maiores quisquam molestias eum quo doloribus fuga. Quaerat illo incidunt nisi explicabo voluptatem. Veniam sint maxime qui provident atque nemo.\\n\\nVoluptate nesciunt mollitia voluptatem sint. Commodi dicta quo aut facilis. Doloribus vel deleniti ut iste facilis quibusdam. Nemo corporis est architecto omnis eum.\\n\\nModi amet vero nemo quibusdam doloremque ut et. Voluptate praesentium adipisci minima vitae dolorem nam. Consequatur deserunt nisi suscipit et quod ipsum. Adipisci omnis laborum a eius. Quam qui quas est delectus soluta.\\n\\nMaxime illum delectus est voluptas deleniti eum. Veritatis odit libero architecto et nam.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Qui Esse Totam Odit Sed Et\", \"updated_by\": 1, \"category_id\": 1, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dignissimos nostrum\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=17\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(18, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Id voluptatum qui numquam\", \"slug\": \"id-voluptatum-qui-numquam\", \"type\": \"Blog\", \"intro\": \"Quod nostrum harum nulla id. Ducimus qui placeat facere quis magnam. Rerum velit veniam minima ipsam hic perferendis adipisci.\", \"order\": null, \"status\": 1, \"content\": \"Adipisci voluptatibus quibusdam quaerat nostrum hic et est dolorem. Sint aliquam optio excepturi dolor perferendis autem deserunt. Vel beatae consequuntur non. Ex ut fugiat nulla quo aliquam sapiente et.\\n\\nQuis optio doloremque voluptas itaque a voluptatum. Autem voluptatem rerum fugiat asperiores quos doloremque exercitationem. Vero dicta quo repellendus temporibus est rerum recusandae. Praesentium quod eaque nam et ea qui.\\n\\nLaborum quae quis expedita. Maxime expedita dolor voluptatem rem ullam velit cupiditate. Eveniet vel facere minima aut laudantium perspiciatis dolorem. Vero eum et qui quia fuga dolore.\\n\\nFacere sequi sed eius corrupti non iste distinctio. Soluta facilis itaque dolorem consequatur. Ut nihil et sunt repellendus adipisci.\\n\\nEt est ipsam ipsum molestiae aspernatur iure ad. Vitae maiores doloribus quo numquam laboriosam. Quod earum soluta praesentium sit. Dolor voluptatem et fuga quasi nulla quia voluptatem.\\n\\nAb est provident sed sint illo quo provident eligendi. Saepe cupiditate maxime tenetur doloribus ratione est aut. Odio modi fugiat odit accusantium necessitatibus eaque dolorem.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Id Voluptatum Qui Numquam\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=18\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(19, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Et mollitia iure beatae modi\", \"slug\": \"et-mollitia-iure-beatae-modi\", \"type\": \"News\", \"intro\": \"Delectus quod ullam dolores voluptatum repellendus. Ut dolorum quis aut quibusdam quidem veritatis. Reprehenderit sit et rerum debitis temporibus excepturi commodi accusantium. Est laborum et dignissimos excepturi dolorem.\", \"order\": null, \"status\": 1, \"content\": \"Architecto mollitia unde necessitatibus consequatur animi commodi ratione aliquam. Minima maiores quidem nesciunt illo voluptatum. Ea consequatur quis veritatis dolorem voluptates mollitia. Accusamus aut qui illo veritatis et. Rerum recusandae recusandae iure repudiandae cum.\\n\\nPlaceat consequatur excepturi non illum. Nihil quas aut non reiciendis. Officia dolore dolores atque quo quaerat.\\n\\nNemo autem velit harum magnam harum vel reprehenderit ad. Aut voluptates voluptatem aliquam recusandae possimus culpa. Asperiores vel voluptatibus dolore soluta ipsa amet facilis nihil. Ea necessitatibus et sed.\\n\\nVoluptatem fugit nihil ad voluptate quia. Iste culpa delectus sapiente aut eos. Aspernatur in voluptas repellendus dolor inventore. Sit dolorem vel cumque.\\n\\nEarum non voluptas laborum est. Ut rerum quibusdam veritatis consequuntur. In repellat quaerat aut possimus repellat magnam et aut. Tempora sed cumque atque enim consequatur ex.\\n\\nNostrum omnis et ut alias enim. Nulla nemo assumenda modi vero recusandae occaecati maxime.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Et Mollitia Iure Beatae Modi\", \"updated_by\": 1, \"category_id\": 1, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dignissimos nostrum\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=19\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(20, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 20, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Aut est consequatur id quo\", \"slug\": \"aut-est-consequatur-id-quo\", \"type\": \"Article\", \"intro\": \"Et ea quos magnam ut. Omnis deserunt a similique nam. Fuga qui et voluptatem. Earum dolore distinctio voluptatem fugit. Dolorem quod deleniti odio vel enim provident.\", \"order\": null, \"status\": 1, \"content\": \"Quasi omnis consequatur quo aliquid ut deleniti odit. Nobis omnis et qui consequatur et. Qui facere soluta incidunt voluptas sint recusandae libero.\\n\\nNatus recusandae voluptatem distinctio delectus rerum eos consequatur. Vero quibusdam aspernatur voluptatem corrupti. Debitis quia est ut vel voluptas omnis vero aliquam.\\n\\nNulla nesciunt voluptates neque ut maiores. Harum id et esse voluptas dolor sint. Non sequi est veritatis consequatur. Et ipsa doloribus exercitationem perspiciatis totam esse saepe.\\n\\nIpsam dolorem earum dicta quia non fugiat voluptatibus nesciunt. Veritatis quae quia aut explicabo sint et. Rerum aut nulla molestias consequatur voluptates nulla deserunt.\\n\\nIn minus doloribus voluptatibus ut rem sit facilis veritatis. Aut nihil sed sit sed.\\n\\nDignissimos consequatur quia quis rerum molestias vero consequatur. Sit ut aut velit voluptas quod quidem ut molestiae.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Aut Est Consequatur Id Quo\", \"updated_by\": 1, \"category_id\": 5, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Assumenda nobis et\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=20\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(21, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 21, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Ea quis enim et ullam\", \"slug\": \"ea-quis-enim-et-ullam\", \"type\": \"News\", \"intro\": \"Consequatur blanditiis quod et eum et quidem autem amet. Quos facere et architecto et qui voluptas magni. Quos perferendis sint odio quia ipsam. Dolore nobis sint quaerat autem cum.\", \"order\": null, \"status\": 1, \"content\": \"Facere repellendus reprehenderit aut consequuntur quos. Aspernatur quia optio ullam doloribus. Iste iure qui repellat. Vel quas quis eos iste.\\n\\nVoluptatem nulla aperiam necessitatibus quia necessitatibus sit. Natus ut fugit dolor ratione. Voluptas voluptatibus et aliquam a dolorem ut.\\n\\nCum illo voluptas officia nihil suscipit eligendi. Voluptas voluptatem ullam odit in. Voluptas exercitationem eum repellat doloremque aut non.\\n\\nUnde aut commodi rem quis vel doloremque. Necessitatibus suscipit non magni exercitationem enim voluptas. Totam voluptates dolorem nostrum quis at est. Maiores incidunt dolorem fuga velit quis possimus assumenda ut. Velit soluta sapiente temporibus illo.\\n\\nIn neque aliquam voluptatem molestiae et fugiat ut. Doloremque enim consequatur quibusdam non temporibus dolor aliquid. Dolorem quaerat aut voluptate repudiandae quasi. Totam odio corporis autem consequatur.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Ea Quis Enim Et Ullam\", \"updated_by\": 1, \"category_id\": 5, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Assumenda nobis et\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=21\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(22, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 22, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Illum quia aut ea\", \"slug\": \"illum-quia-aut-ea\", \"type\": \"Blog\", \"intro\": \"Impedit id quam eligendi suscipit suscipit corporis quia. Tenetur itaque et iusto deleniti officiis qui ea ducimus. Fuga consequatur beatae eos similique eius cumque corporis aut.\", \"order\": null, \"status\": 1, \"content\": \"Velit et eum ipsam distinctio in voluptas dolor. Qui porro non aperiam facilis ea et. Officiis hic quis voluptatem alias ipsam officia quaerat et. Delectus et asperiores provident aut.\\n\\nConsequatur ut quo eius reprehenderit. Consequatur aperiam accusantium rerum distinctio ad. Sit reiciendis itaque commodi autem neque nihil. Ut ipsam veniam sit sit.\\n\\nQuae exercitationem unde voluptatem excepturi vitae quam nihil. Sit iste et laudantium laborum dolorum. Fugit repudiandae esse dolorum natus magnam officiis facilis.\\n\\nPossimus quo facilis et ullam in. Placeat expedita dolor sapiente sit officiis blanditiis quo in. Eum aspernatur animi non itaque rem dolores.\\n\\nAspernatur ipsa tempora soluta repellendus aut minus neque. Velit autem voluptas fugit. Doloribus beatae porro esse quod aut. Fuga enim nobis ipsam.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Illum Quia Aut Ea\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 0, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=22\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(23, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 23, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Vel eligendi ea id saepe\", \"slug\": \"vel-eligendi-ea-id-saepe\", \"type\": \"Article\", \"intro\": \"Iure vitae maxime perspiciatis sit quam esse nostrum sit. Et vitae et voluptas iste adipisci dolorem. Aut ut dolorum quas cupiditate reprehenderit. Ut dicta ad est laboriosam sed et.\", \"order\": null, \"status\": 1, \"content\": \"Rerum excepturi minus rem doloremque est dolorum quia. Consequatur quo nihil modi rem neque atque incidunt aut. Consequuntur laborum sed possimus velit nihil ipsa. Dolor aut molestiae delectus.\\n\\nEt qui laborum tenetur eius voluptatibus explicabo qui. Occaecati commodi similique tempora. Exercitationem excepturi et molestiae facilis illo voluptas et. Corporis consequatur vel sint quia.\\n\\nAut facere aut sunt harum dolor rerum. Nobis qui necessitatibus omnis. Odio commodi consequatur in. Omnis odit ipsum id reprehenderit et. Deleniti voluptatibus sit voluptatem eum nulla aut ea.\\n\\nOptio repellat facilis illum vel eum. Et ullam repellat placeat et voluptatem. Voluptatibus nam cum ipsum earum est culpa eum. Repellat illum quasi possimus.\\n\\nIn non porro minus ut ex deleniti ipsam. Deserunt autem blanditiis placeat veniam voluptates ut molestiae. Dolorum aut nisi repellendus temporibus.\\n\\nDolores et aut aliquam vel tempora tempore non facere. Et facilis ad dolor excepturi neque placeat dolor. Dignissimos nihil nihil quis doloremque a. Rem quaerat non velit qui quaerat id. Id dolor soluta corporis voluptatem velit deserunt laborum qui.\\n\\nId quis sapiente sed non. Ut earum blanditiis et. Perspiciatis et sint odit facilis quaerat quo.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Vel Eligendi Ea Id Saepe\", \"updated_by\": 1, \"category_id\": 3, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Eius aliquam\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=23\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `event`, `subject_id`, `causer_type`, `causer_id`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(24, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 24, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Fugit et quasi officia aut\", \"slug\": \"fugit-et-quasi-officia-aut\", \"type\": \"Blog\", \"intro\": \"Ea sequi eaque ut perferendis quia. Ex qui doloremque iusto quibusdam. Qui voluptas rerum velit ut ducimus aut. Et optio omnis vel laborum.\", \"order\": null, \"status\": 1, \"content\": \"Perspiciatis vel distinctio nemo aliquam qui reprehenderit nam. Debitis qui cum quod cumque. Saepe pariatur error recusandae dolorem ad. Omnis similique a mollitia ut ut laboriosam laudantium rem.\\n\\nNam sit laboriosam aut officiis voluptas aut. Quod ipsum ratione ut quia. Dolorem aut nesciunt libero sequi harum accusamus. Doloribus neque nihil natus sit labore voluptates et enim.\\n\\nFugit exercitationem ut sed perferendis est veritatis. Qui sint magni minus culpa delectus deserunt distinctio.\\n\\nIpsam facilis aut nostrum ipsa. Placeat id aut ex. Numquam quam aperiam in et sed.\\n\\nDignissimos earum perspiciatis autem necessitatibus perferendis rerum. Voluptatibus necessitatibus ut quo quod nemo ut et. Aspernatur nam assumenda vero aliquam repudiandae et labore. Sit est qui vero eveniet. Magnam laborum veritatis laudantium voluptatem itaque quis nobis.\\n\\nQuas et consectetur necessitatibus fugit et ea omnis. At a expedita eaque quidem ab sit cumque. Est voluptas et sint itaque est.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Fugit Et Quasi Officia Aut\", \"updated_by\": 1, \"category_id\": 1, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Dignissimos nostrum\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=24\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(25, 'posts', 'created', 'Modules\\Article\\Entities\\Post', 'created', 25, 'App\\Models\\User', 1, '{\"attributes\": {\"hits\": 0, \"name\": \"Aut ea voluptas assumenda et\", \"slug\": \"aut-ea-voluptas-assumenda-et\", \"type\": \"News\", \"intro\": \"Est consequuntur eum optio est iusto rem. Sint ratione doloribus sed ea ut distinctio. Suscipit laboriosam quo quo iste. Veritatis ut in repellat voluptatem illo.\", \"order\": null, \"status\": 1, \"content\": \"Velit in maxime pariatur. Accusamus et praesentium magnam commodi. Numquam blanditiis officiis numquam consequatur possimus nisi neque.\\n\\nQuod cum dignissimos animi. Et quidem eveniet aliquid excepturi.\\n\\nDucimus asperiores est sunt officia debitis. Quae exercitationem iste ex illum aperiam vel quaerat non. Provident quam iste illum corrupti est quo voluptas.\\n\\nQui omnis facere iste excepturi consequuntur. Accusamus impedit cumque laboriosam officia cumque dignissimos corrupti. Delectus quaerat assumenda id. Molestias consequuntur omnis incidunt autem id et laudantium.\\n\\nQuod sed vero repudiandae debitis nihil dolor quam cupiditate. Voluptate quaerat esse possimus dignissimos. Facilis aliquam corrupti odio provident tempore aut pariatur. Voluptatem voluptatem recusandae esse eos unde omnis.\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"meta_title\": \"Aut Ea Voluptas Assumenda Et\", \"updated_by\": 1, \"category_id\": 2, \"is_featured\": 1, \"meta_og_url\": \"\", \"moderated_at\": null, \"moderated_by\": null, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"category_name\": \"Beatae porro dolor\", \"meta_keywords\": \"\", \"meta_og_image\": \"https://picsum.photos/1200/630\", \"featured_image\": \"https://picsum.photos/1200/630?random=25\", \"created_by_name\": \"Super Admin\", \"created_by_alias\": null, \"meta_description\": \"A CMS like modular starter application project built with Laravel 9.\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(26, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 1, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Consequuntur error.\", \"slug\": \"consequuntur-error.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Atque beatae sed laudantium accusantium architecto. Iste minus eaque sed a. Voluptatum quo et odit nemo commodi labore. Aliquid eligendi voluptatem non.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 3, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(27, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 2, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Incidunt laborum repellendus.\", \"slug\": \"incidunt-laborum-repellendus.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Ut pariatur voluptatem ut sunt provident. Dignissimos iusto repellat sed dolores molestiae laboriosam. Quae laboriosam quibusdam vel earum blanditiis voluptatum molestias.</p>\", \"user_id\": 4, \"parent_id\": null, \"user_name\": \"Executive User\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 20, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(28, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 3, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Voluptatem est molestiae.\", \"slug\": \"voluptatem-est-molestiae.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Sit debitis totam quas quos aliquid nobis at vero. Consequatur molestiae totam odio et et veritatis magnam nostrum. Ipsum vel et magni. Quos qui explicabo fugit eum quia voluptatum est.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 8, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(29, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 4, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Veritatis quidem.\", \"slug\": \"veritatis-quidem.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Adipisci quia aut fuga sed. Aut rem necessitatibus qui ullam nemo. Est temporibus alias ad voluptatum maiores consequatur.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 12, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(30, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 5, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Praesentium exercitationem.\", \"slug\": \"praesentium-exercitationem.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Maiores dolorum omnis rerum tenetur. Perspiciatis voluptas perspiciatis deleniti voluptas porro magnam aut. Sit ipsam beatae dolor quos consequatur.</p>\", \"user_id\": 1, \"parent_id\": null, \"user_name\": \"Super Admin\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 11, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(31, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 6, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Voluptatum molestiae ex.\", \"slug\": \"voluptatum-molestiae-ex.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Nam ipsum ea dolores excepturi. Blanditiis non maiores qui qui dolores temporibus dolore. Ut iure occaecati porro quod praesentium. Quasi et qui commodi itaque. Veritatis repudiandae soluta corrupti sint id.</p>\", \"user_id\": 1, \"parent_id\": null, \"user_name\": \"Super Admin\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 5, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(32, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 7, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Et dolorem.\", \"slug\": \"et-dolorem.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Esse voluptas ut nam. Repellat modi exercitationem quo nihil dolor reprehenderit. Occaecati odit temporibus perferendis quia temporibus. Enim nesciunt vel dolores nostrum modi qui dolorem. Expedita quod beatae quis velit id odit.</p>\", \"user_id\": 4, \"parent_id\": null, \"user_name\": \"Executive User\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 6, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(33, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 8, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Laudantium ab.\", \"slug\": \"laudantium-ab.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Quae ut repellendus rerum. Qui praesentium consequuntur accusamus voluptate ut et minima. Sint adipisci perferendis voluptatem aut et veritatis.</p>\", \"user_id\": 4, \"parent_id\": null, \"user_name\": \"Executive User\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 2, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(34, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 9, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Voluptas quod modi.\", \"slug\": \"voluptas-quod-modi.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Enim officia ut dolor voluptate accusantium est eos. Expedita autem et fugit ea iure minus quaerat. Reiciendis dicta asperiores cupiditate exercitationem explicabo voluptas. Quasi laudantium ullam minima dolores.</p>\", \"user_id\": 4, \"parent_id\": null, \"user_name\": \"Executive User\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 10, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(35, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 10, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Vitae consequatur tempora.\", \"slug\": \"vitae-consequatur-tempora.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Sunt fuga nihil qui eligendi ea quis vel. Rerum deleniti blanditiis exercitationem tempore architecto deleniti deleniti. Molestias et perferendis laudantium accusantium est explicabo non.</p>\", \"user_id\": 1, \"parent_id\": null, \"user_name\": \"Super Admin\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 10, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(36, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 11, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Eos eius doloribus.\", \"slug\": \"eos-eius-doloribus.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Et ad voluptate dolorem est illo nisi ut. Rerum sit earum labore laudantium. In ut velit sunt omnis. Quod tempora facere reprehenderit aut.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 5, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(37, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 12, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Dignissimos dicta.\", \"slug\": \"dignissimos-dicta.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Reiciendis amet quia laborum eum veritatis dolorum et sint. Soluta aperiam eos aliquid voluptatem. Labore laboriosam autem repellat dicta iusto perferendis esse quis. Delectus id reprehenderit cumque amet at.</p>\", \"user_id\": 3, \"parent_id\": null, \"user_name\": \"Manager\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 12, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(38, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 13, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Voluptatem dolores ut.\", \"slug\": \"voluptatem-dolores-ut.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Eaque recusandae est dolorem doloribus. Expedita ex nemo cupiditate adipisci ipsa qui. Atque omnis earum quaerat nesciunt. Iste placeat voluptatem iure repellat consequuntur vel fuga quos.</p>\", \"user_id\": 3, \"parent_id\": null, \"user_name\": \"Manager\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 24, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(39, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 14, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Enim ullam quis.\", \"slug\": \"enim-ullam-quis.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Voluptatum ipsum enim ut nostrum et laborum officiis. Facere officiis sit provident accusantium voluptas. Modi voluptatem natus omnis consequatur. Est sit eveniet harum nobis. Culpa consectetur omnis perspiciatis nisi quo.</p>\", \"user_id\": 3, \"parent_id\": null, \"user_name\": \"Manager\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 15, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(40, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 15, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Dolorum non.\", \"slug\": \"dolorum-non.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Necessitatibus dolorum voluptatem voluptas magnam illo eaque sint sint. Eum quibusdam natus ut id laudantium. Et qui eius suscipit neque. Soluta quia in qui.</p>\", \"user_id\": 4, \"parent_id\": null, \"user_name\": \"Executive User\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 13, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(41, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 16, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Quo est.\", \"slug\": \"quo-est.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Odio facilis consequatur ipsam tenetur minima odit. Voluptate voluptas sunt sed ex.</p>\", \"user_id\": 1, \"parent_id\": null, \"user_name\": \"Super Admin\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 24, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(42, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 17, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Rerum minima qui.\", \"slug\": \"rerum-minima-qui.\", \"order\": null, \"status\": 0, \"comment\": \"<p>In unde non facilis vel qui iste accusamus. Et dolor magnam accusantium est tenetur hic sint. Ad amet amet cum accusantium et consequatur.</p>\", \"user_id\": 3, \"parent_id\": null, \"user_name\": \"Manager\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 2, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(43, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 18, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Molestias rerum sit.\", \"slug\": \"molestias-rerum-sit.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Voluptatum et error qui natus. Adipisci dolorum consequuntur voluptatem ducimus id quo nihil. Quo veniam et sit consequatur.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 4, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(44, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 19, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Asperiores atque.\", \"slug\": \"asperiores-atque.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Est nulla tempora natus sed laboriosam officiis molestias. Ducimus est voluptates eum occaecati nisi porro ipsam. Porro ipsam alias aut omnis voluptates.</p>\", \"user_id\": 1, \"parent_id\": null, \"user_name\": \"Super Admin\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 10, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(45, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 20, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Et velit.\", \"slug\": \"et-velit.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Repudiandae doloribus ut ad eum minus in. Commodi est iure distinctio doloribus. Aliquam rem et distinctio molestias explicabo.</p>\", \"user_id\": 3, \"parent_id\": null, \"user_name\": \"Manager\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 6, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(46, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 21, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Id sint quia.\", \"slug\": \"id-sint-quia.\", \"order\": null, \"status\": 0, \"comment\": \"<p>A molestias in consequatur facilis maiores quis nesciunt laboriosam. Et fugiat eum aut ad dolores voluptas odio. Ab quia ea voluptatum voluptatem odio accusantium. Minima quam et sed accusantium qui.</p>\", \"user_id\": 1, \"parent_id\": null, \"user_name\": \"Super Admin\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 1, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(47, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 22, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Ut repellendus natus.\", \"slug\": \"ut-repellendus-natus.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Reiciendis architecto quaerat ex sequi quod. Ab molestiae explicabo ullam officiis. Consequuntur eius culpa accusantium velit dolore. Hic cupiditate qui veritatis aut vel est consequuntur accusamus.</p>\", \"user_id\": 1, \"parent_id\": null, \"user_name\": \"Super Admin\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 1, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 17, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(48, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 23, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Ab illo.\", \"slug\": \"ab-illo.\", \"order\": null, \"status\": 0, \"comment\": \"<p>Qui laboriosam quasi dolorum et commodi exercitationem. Maxime temporibus omnis voluptatem. Maxime odio enim culpa dolores aliquid voluptates vitae.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 4, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(49, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 24, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Voluptatem reiciendis aut.\", \"slug\": \"voluptatem-reiciendis-aut.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Mollitia et et et commodi ut nihil. Tempora iure voluptatem nobis aperiam sed. Nulla natus debitis fugiat unde ab.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 5, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40'),
(50, 'comments', 'created', 'Modules\\Comment\\Entities\\Comment', 'created', 25, 'App\\Models\\User', 1, '{\"attributes\": {\"name\": \"Assumenda dolorum voluptatem.\", \"slug\": \"assumenda-dolorum-voluptatem.\", \"order\": null, \"status\": 1, \"comment\": \"<p>Voluptatem ut omnis sunt et aut. At et praesentium laudantium error. Voluptas vero esse sint ex voluptatem. Aliquam consequatur ut autem id expedita in laboriosam deleniti. Cupiditate veritatis suscipit voluptate ea laborum occaecati.</p>\", \"user_id\": 2, \"parent_id\": null, \"user_name\": \"Admin Istrator\", \"created_at\": \"2022-11-29T11:42:40.000000Z\", \"created_by\": 1, \"deleted_at\": null, \"deleted_by\": null, \"updated_by\": 1, \"moderated_at\": \"2022-11-29T11:42:40.000000Z\", \"moderated_by\": 2, \"published_at\": \"2022-11-29T11:42:40.000000Z\", \"commentable_id\": 24, \"commentable_type\": \"Modules\\\\Article\\\\Entities\\\\Post\"}}', NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `order`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Dignissimos nostrum', 'dignissimos-nostrum', 'Ea molestias excepturi maxime inventore alias. Harum non alias reprehenderit. Architecto perferendis consequuntur et illo ex. Consectetur ut et et dolores.', NULL, 1, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(2, 'Beatae porro dolor', 'beatae-porro-dolor', 'Voluptatibus velit cupiditate ipsam delectus expedita ut. Consequatur recusandae aliquid occaecati amet temporibus architecto sed. Dolores distinctio ad porro facere fuga nemo sapiente. Fuga totam aut cum eligendi perferendis.', NULL, 1, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(3, 'Eius aliquam', 'eius-aliquam', 'Est excepturi ipsum ut ea nihil voluptatem mollitia. Quidem odit et necessitatibus suscipit cumque. Incidunt dicta quasi est et.', NULL, 1, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(4, 'Dolorem ut sed', 'dolorem-ut-sed', 'Voluptates perspiciatis enim qui mollitia repellendus. Odit pariatur nobis voluptas nemo odio ullam natus. Optio quae dolorem aut ipsam et molestiae maxime eligendi. Vitae et sint dignissimos reiciendis commodi velit modi.', NULL, 1, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(5, 'Assumenda nobis et', 'assumenda-nobis-et', 'Tempora sit harum quam ut cupiditate qui. Unde pariatur excepturi quae commodi quod rerum consequatur quia. Quibusdam corrupti temporibus cumque quo alias explicabo.', NULL, 1, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `commentable_id` bigint UNSIGNED DEFAULT NULL,
  `commentable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `user_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `moderated_by` int UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `slug`, `comment`, `parent_id`, `commentable_id`, `commentable_type`, `user_id`, `user_name`, `order`, `status`, `moderated_by`, `moderated_at`, `published_at`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Consequuntur error.', 'consequuntur-error.', '<p>Atque beatae sed laudantium accusantium architecto. Iste minus eaque sed a. Voluptatum quo et odit nemo commodi labore. Aliquid eligendi voluptatem non.</p>', NULL, 3, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 0, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(2, 'Incidunt laborum repellendus.', 'incidunt-laborum-repellendus.', '<p>Ut pariatur voluptatem ut sunt provident. Dignissimos iusto repellat sed dolores molestiae laboriosam. Quae laboriosam quibusdam vel earum blanditiis voluptatum molestias.</p>', NULL, 20, 'Modules\\Article\\Entities\\Post', 4, 'Executive User', NULL, 1, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(3, 'Voluptatem est molestiae.', 'voluptatem-est-molestiae.', '<p>Sit debitis totam quas quos aliquid nobis at vero. Consequatur molestiae totam odio et et veritatis magnam nostrum. Ipsum vel et magni. Quos qui explicabo fugit eum quia voluptatum est.</p>', NULL, 8, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 0, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(4, 'Veritatis quidem.', 'veritatis-quidem.', '<p>Adipisci quia aut fuga sed. Aut rem necessitatibus qui ullam nemo. Est temporibus alias ad voluptatum maiores consequatur.</p>', NULL, 12, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 1, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(5, 'Praesentium exercitationem.', 'praesentium-exercitationem.', '<p>Maiores dolorum omnis rerum tenetur. Perspiciatis voluptas perspiciatis deleniti voluptas porro magnam aut. Sit ipsam beatae dolor quos consequatur.</p>', NULL, 11, 'Modules\\Article\\Entities\\Post', 1, 'Super Admin', NULL, 0, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(6, 'Voluptatum molestiae ex.', 'voluptatum-molestiae-ex.', '<p>Nam ipsum ea dolores excepturi. Blanditiis non maiores qui qui dolores temporibus dolore. Ut iure occaecati porro quod praesentium. Quasi et qui commodi itaque. Veritatis repudiandae soluta corrupti sint id.</p>', NULL, 5, 'Modules\\Article\\Entities\\Post', 1, 'Super Admin', NULL, 1, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(7, 'Et dolorem.', 'et-dolorem.', '<p>Esse voluptas ut nam. Repellat modi exercitationem quo nihil dolor reprehenderit. Occaecati odit temporibus perferendis quia temporibus. Enim nesciunt vel dolores nostrum modi qui dolorem. Expedita quod beatae quis velit id odit.</p>', NULL, 6, 'Modules\\Article\\Entities\\Post', 4, 'Executive User', NULL, 0, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(8, 'Laudantium ab.', 'laudantium-ab.', '<p>Quae ut repellendus rerum. Qui praesentium consequuntur accusamus voluptate ut et minima. Sint adipisci perferendis voluptatem aut et veritatis.</p>', NULL, 2, 'Modules\\Article\\Entities\\Post', 4, 'Executive User', NULL, 0, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(9, 'Voluptas quod modi.', 'voluptas-quod-modi.', '<p>Enim officia ut dolor voluptate accusantium est eos. Expedita autem et fugit ea iure minus quaerat. Reiciendis dicta asperiores cupiditate exercitationem explicabo voluptas. Quasi laudantium ullam minima dolores.</p>', NULL, 10, 'Modules\\Article\\Entities\\Post', 4, 'Executive User', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(10, 'Vitae consequatur tempora.', 'vitae-consequatur-tempora.', '<p>Sunt fuga nihil qui eligendi ea quis vel. Rerum deleniti blanditiis exercitationem tempore architecto deleniti deleniti. Molestias et perferendis laudantium accusantium est explicabo non.</p>', NULL, 10, 'Modules\\Article\\Entities\\Post', 1, 'Super Admin', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(11, 'Eos eius doloribus.', 'eos-eius-doloribus.', '<p>Et ad voluptate dolorem est illo nisi ut. Rerum sit earum labore laudantium. In ut velit sunt omnis. Quod tempora facere reprehenderit aut.</p>', NULL, 5, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 0, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(12, 'Dignissimos dicta.', 'dignissimos-dicta.', '<p>Reiciendis amet quia laborum eum veritatis dolorum et sint. Soluta aperiam eos aliquid voluptatem. Labore laboriosam autem repellat dicta iusto perferendis esse quis. Delectus id reprehenderit cumque amet at.</p>', NULL, 12, 'Modules\\Article\\Entities\\Post', 3, 'Manager', NULL, 0, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(13, 'Voluptatem dolores ut.', 'voluptatem-dolores-ut.', '<p>Eaque recusandae est dolorem doloribus. Expedita ex nemo cupiditate adipisci ipsa qui. Atque omnis earum quaerat nesciunt. Iste placeat voluptatem iure repellat consequuntur vel fuga quos.</p>', NULL, 24, 'Modules\\Article\\Entities\\Post', 3, 'Manager', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(14, 'Enim ullam quis.', 'enim-ullam-quis.', '<p>Voluptatum ipsum enim ut nostrum et laborum officiis. Facere officiis sit provident accusantium voluptas. Modi voluptatem natus omnis consequatur. Est sit eveniet harum nobis. Culpa consectetur omnis perspiciatis nisi quo.</p>', NULL, 15, 'Modules\\Article\\Entities\\Post', 3, 'Manager', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(15, 'Dolorum non.', 'dolorum-non.', '<p>Necessitatibus dolorum voluptatem voluptas magnam illo eaque sint sint. Eum quibusdam natus ut id laudantium. Et qui eius suscipit neque. Soluta quia in qui.</p>', NULL, 13, 'Modules\\Article\\Entities\\Post', 4, 'Executive User', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(16, 'Quo est.', 'quo-est.', '<p>Odio facilis consequatur ipsam tenetur minima odit. Voluptate voluptas sunt sed ex.</p>', NULL, 24, 'Modules\\Article\\Entities\\Post', 1, 'Super Admin', NULL, 0, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(17, 'Rerum minima qui.', 'rerum-minima-qui.', '<p>In unde non facilis vel qui iste accusamus. Et dolor magnam accusantium est tenetur hic sint. Ad amet amet cum accusantium et consequatur.</p>', NULL, 2, 'Modules\\Article\\Entities\\Post', 3, 'Manager', NULL, 0, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(18, 'Molestias rerum sit.', 'molestias-rerum-sit.', '<p>Voluptatum et error qui natus. Adipisci dolorum consequuntur voluptatem ducimus id quo nihil. Quo veniam et sit consequatur.</p>', NULL, 4, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(19, 'Asperiores atque.', 'asperiores-atque.', '<p>Est nulla tempora natus sed laboriosam officiis molestias. Ducimus est voluptates eum occaecati nisi porro ipsam. Porro ipsam alias aut omnis voluptates.</p>', NULL, 10, 'Modules\\Article\\Entities\\Post', 1, 'Super Admin', NULL, 0, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(20, 'Et velit.', 'et-velit.', '<p>Repudiandae doloribus ut ad eum minus in. Commodi est iure distinctio doloribus. Aliquam rem et distinctio molestias explicabo.</p>', NULL, 6, 'Modules\\Article\\Entities\\Post', 3, 'Manager', NULL, 1, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(21, 'Id sint quia.', 'id-sint-quia.', '<p>A molestias in consequatur facilis maiores quis nesciunt laboriosam. Et fugiat eum aut ad dolores voluptas odio. Ab quia ea voluptatum voluptatem odio accusantium. Minima quam et sed accusantium qui.</p>', NULL, 1, 'Modules\\Article\\Entities\\Post', 1, 'Super Admin', NULL, 0, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(22, 'Ut repellendus natus.', 'ut-repellendus-natus.', '<p>Reiciendis architecto quaerat ex sequi quod. Ab molestiae explicabo ullam officiis. Consequuntur eius culpa accusantium velit dolore. Hic cupiditate qui veritatis aut vel est consequuntur accusamus.</p>', NULL, 17, 'Modules\\Article\\Entities\\Post', 1, 'Super Admin', NULL, 0, 1, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(23, 'Ab illo.', 'ab-illo.', '<p>Qui laboriosam quasi dolorum et commodi exercitationem. Maxime temporibus omnis voluptatem. Maxime odio enim culpa dolores aliquid voluptates vitae.</p>', NULL, 4, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 0, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(24, 'Voluptatem reiciendis aut.', 'voluptatem-reiciendis-aut.', '<p>Mollitia et et et commodi ut nihil. Tempora iure voluptatem nobis aperiam sed. Nulla natus debitis fugiat unde ab.</p>', NULL, 5, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(25, 'Assumenda dolorum voluptatem.', 'assumenda-dolorum-voluptatem.', '<p>Voluptatem ut omnis sunt et aut. At et praesentium laudantium error. Voluptas vero esse sint ex voluptatem. Aliquam consequatur ut autem id expedita in laboriosam deleniti. Cupiditate veritatis suscipit voluptate ea laborum occaecati.</p>', NULL, 24, 'Modules\\Article\\Entities\\Post', 2, 'Admin Istrator', NULL, 1, 2, '2022-11-29 17:42:40', '2022-11-29 12:12:40', 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_extensions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forms`
--

CREATE TABLE `forms` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `forms`
--

INSERT INTO `forms` (`id`, `name`, `email`, `description`, `image`, `file`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'testadmin', 'testadmin@gmail.com', '1', NULL, '796.jpeg', 1, 1, 1, NULL, '2022-12-28 10:21:16', '2022-12-29 05:10:05', NULL),
(3, 'testadmin2', 'testadmin2@gmail.com', 'ggg', 'images/form/765.png', NULL, 1, 1, 1, NULL, '2022-12-28 12:41:28', '2023-01-16 06:57:27', NULL),
(4, 'manoj', 'manoj@gmail.com', 'ddd', 'images/\'.form.\'/95.png', NULL, 0, 1, 1, 1, '2022-12-30 08:22:39', '2022-12-30 08:23:30', '2022-12-30 08:23:30'),
(5, 'test', 'super@admin.com', 'wertyuiop', 'images/form/835.jpeg', NULL, 1, 1, 1, NULL, '2022-12-30 08:23:47', '2023-01-16 08:06:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` bigint UNSIGNED NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perform_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `module_name`, `perform_id`, `action`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'users', '14', 'update password', NULL, NULL, '2023-01-03 13:02:04', '2023-01-03 13:02:04'),
(2, 'users', '13', 'update password', NULL, NULL, '2023-01-04 07:51:24', '2023-01-04 07:51:24'),
(3, 'users', '15', 'Create User', NULL, NULL, '2023-01-04 08:02:20', '2023-01-04 08:02:20'),
(6, 'users', '15', 'Block', NULL, NULL, '2023-01-04 08:09:02', '2023-01-04 08:09:02'),
(7, 'users', '15', 'Unblock', NULL, NULL, '2023-01-04 08:09:22', '2023-01-04 08:09:22'),
(8, 'QrCode', '7', 'generateQrCode', NULL, NULL, '2023-01-04 08:18:54', '2023-01-04 08:18:54'),
(9, 'users', '15', 'update Profile', NULL, NULL, '2023-01-04 08:36:13', '2023-01-04 08:36:13'),
(10, 'users', '16', 'Create User', NULL, NULL, '2023-01-05 08:08:45', '2023-01-05 08:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(2, 'App\\Models\\User', 5, '0ae5af9b-add3-409c-90d4-508d0bbe8a2c', 'users', '796', 'aeJoBwc6MscB9eSvU5iPLiElFqShN0ESs80auqVL.jpg', 'image/jpeg', 'media', 'media', 282981, '[]', '[]', '[]', '[]', 1, '2022-12-07 08:14:03', '2022-12-07 08:14:03'),
(5, 'App\\Models\\User', 9, '0851909b-135e-426c-aec6-66b0a2517485', 'users', 'im', 'HClXXvz67YSNauBZ22ikX6tZr8M1OEcJeyGXw1CU.png', 'image/png', 'media', 'media', 1101856, '[]', '[]', '[]', '[]', 1, '2022-12-07 12:52:03', '2022-12-07 12:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_03_11_062135_create_posts_table', 1),
(4, '2018_03_12_062135_create_categories_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2020_02_19_173641_create_settings_table', 1),
(8, '2020_02_19_173700_create_userprofiles_table', 1),
(9, '2020_02_19_173711_create_notifications_table', 1),
(10, '2020_02_22_115918_create_user_providers_table', 1),
(11, '2020_05_01_163442_create_tags_table', 1),
(12, '2020_05_01_163833_create_polymorphic_taggables_table', 1),
(13, '2020_05_04_151517_create_comments_table', 1),
(14, '2022_04_01_132914_create_media_table', 1),
(15, '2022_04_01_133918_create_permission_tables', 1),
(16, '2022_04_01_134140_create_activity_log_table', 1),
(17, '2022_04_01_134141_add_event_column_to_activity_log_table', 1),
(18, '2022_04_01_134142_add_batch_uuid_column_to_activity_log_table', 1),
(19, '2022_12_14_183057_create_forms_table', 2),
(21, '2023_01_03_140924_create_history_table', 3),
(22, '2023_01_04_182552_create_recent_history_table', 4),
(23, '2023_01_09_160038_create_files_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 4),
(5, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 15),
(5, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view_backend', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(2, 'edit_settings', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(3, 'view_logs', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(4, 'view_users', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(5, 'add_users', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(6, 'edit_users', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(7, 'delete_users', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(8, 'restore_users', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(9, 'block_users', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(10, 'view_roles', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(11, 'add_roles', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(12, 'edit_roles', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(13, 'delete_roles', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(14, 'restore_roles', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(15, 'view_backups', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(16, 'add_backups', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(17, 'create_backups', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(18, 'download_backups', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(19, 'delete_backups', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(20, 'view_posts', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(21, 'add_posts', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(22, 'edit_posts', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(23, 'delete_posts', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(24, 'restore_posts', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(25, 'view_categories', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(26, 'add_categories', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(27, 'edit_categories', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(28, 'delete_categories', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(29, 'restore_categories', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(30, 'view_tags', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(31, 'add_tags', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(32, 'edit_tags', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(33, 'delete_tags', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(34, 'restore_tags', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(35, 'view_comments', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(36, 'add_comments', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(37, 'edit_comments', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(38, 'delete_comments', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(39, 'restore_comments', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `category_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` int DEFAULT NULL,
  `featured_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_og_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_og_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int UNSIGNED NOT NULL DEFAULT '0',
  `order` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `moderated_by` int UNSIGNED DEFAULT NULL,
  `moderated_at` datetime DEFAULT NULL,
  `created_by` int UNSIGNED DEFAULT NULL,
  `created_by_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by_alias` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `intro`, `content`, `type`, `category_id`, `category_name`, `is_featured`, `featured_image`, `meta_title`, `meta_keywords`, `meta_description`, `meta_og_image`, `meta_og_url`, `hits`, `order`, `status`, `moderated_by`, `moderated_at`, `created_by`, `created_by_name`, `created_by_alias`, `updated_by`, `deleted_by`, `published_at`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Qui inventore et alias', 'qui-inventore-et-alias', 'Officia numquam ea repellendus id non accusamus minus. Rem quia deserunt et quas. Ut magnam consequuntur non aut nemo. Nihil dolor autem non. Officia dolores necessitatibus laudantium et.', 'Et aut facilis voluptas adipisci et voluptatum. Reprehenderit architecto odit esse magnam. Molestias architecto sequi quae architecto accusantium similique.\n\nQuidem facilis ratione ratione architecto. Ea eos officia quod consequuntur iure eligendi.\n\nSunt ut doloremque pariatur laboriosam in molestiae et. Illum ab cum adipisci qui ratione. Nostrum quos ad ipsa aut.\n\nTotam velit minus mollitia ipsa ipsa. Molestiae numquam tenetur porro consequatur dolor quidem. Blanditiis ab dolores voluptatem aut rerum labore qui.\n\nExcepturi aut eius molestias sunt. Excepturi necessitatibus aut ipsam voluptas exercitationem molestiae. Ea dolor voluptate voluptate qui repudiandae placeat.', 'Article', 3, 'Eius aliquam', 1, 'https://picsum.photos/1200/630', 'Qui Inventore Et Alias', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(2, 'Ducimus ut et rerum', 'ducimus-ut-et-rerum', 'Impedit odit omnis et sit molestiae. Dolor eius ab quam voluptas minus ipsa maxime. Est est rerum est similique debitis magnam. Recusandae consequatur earum doloremque corrupti.', 'Quos excepturi vitae rerum eaque est repudiandae officia. Reiciendis voluptatem molestiae aliquam et non. Voluptatem perspiciatis ut enim harum. Qui maxime et magni in est.\n\nTempore quasi consectetur officia modi dolor magnam necessitatibus veritatis. Aliquid ea deserunt totam dolorum animi facilis. Et dolorum vitae laudantium quidem. Corrupti eum voluptas temporibus neque.\n\nConsequatur molestiae facilis dolore aut delectus et rerum labore. Nulla est ut et saepe. Est voluptatem doloribus nam ut.\n\nNon neque dolores reiciendis vel quasi. Asperiores aut cum ut eveniet. Atque enim sit eum fuga. Omnis qui magni est magnam alias aut.\n\nTenetur asperiores fuga id debitis. Placeat earum itaque expedita earum corporis dolores est. Nemo saepe officia maiores odio quos. Tenetur cupiditate pariatur atque et. Et laborum voluptatem sapiente aperiam facilis.\n\nConsequatur qui sit ratione reprehenderit quae delectus. Vitae sed unde deserunt eligendi nesciunt qui. Iusto maiores molestiae repellat et officia eum.', 'News', 2, 'Beatae porro dolor', 0, 'https://picsum.photos/1200/630', 'Ducimus Ut Et Rerum', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(3, 'Commodi id omnis quo', 'commodi-id-omnis-quo', 'Est culpa enim corporis et. Labore autem dolorem eos qui ratione. Cum id atque expedita culpa similique voluptatem. Quasi repellendus aut dicta qui et.', 'Consequuntur molestias aut tenetur et. Possimus sequi qui autem accusantium error quam quia. Architecto dolores cupiditate ea ut doloremque sed autem. Perferendis nulla cupiditate tenetur culpa quia ratione.\n\nSaepe consequatur ipsa est eaque asperiores. Dolor animi sed cumque nisi quo. Nostrum earum soluta doloribus pariatur aut aspernatur quis.\n\nAb sed adipisci saepe aut vitae. Reiciendis nam explicabo et sunt qui dolore aut. Doloremque accusamus et in sapiente non similique architecto beatae. Qui aliquid asperiores sed vel cupiditate optio fuga.\n\nEum unde similique officia pariatur illo aut aliquam. Et non deserunt ea error est placeat. Cupiditate doloremque suscipit est velit quibusdam.\n\nVoluptas commodi rem dolorum consequatur officiis. Voluptatem et temporibus ea vero enim eum molestiae autem. In totam itaque eum ipsa.\n\nEt distinctio hic quas dolores illum illum nihil ullam. Eius nemo consequuntur ut temporibus enim autem rerum. Aliquam laborum velit dicta ullam est optio ea.', 'Article', 1, 'Dignissimos nostrum', 0, 'https://picsum.photos/1200/630', 'Commodi Id Omnis Quo', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(4, 'Delectus aut aut eos ut', 'delectus-aut-aut-eos-ut', 'Odio enim officiis et tempore voluptatem fugiat aut ut. Eligendi explicabo nulla labore vel nemo. Distinctio est qui sapiente.', 'Incidunt corporis explicabo cupiditate reprehenderit sequi accusamus. Esse cum eveniet eum. Beatae et laboriosam nemo. Qui iste fuga eligendi ipsa.\n\nOdio aliquid incidunt facilis nihil ab reprehenderit. Cumque placeat aut ex tempore rerum molestiae assumenda. Dolorum eum ducimus voluptatem quia ut. Mollitia corrupti vel sed. Iure provident nihil expedita.\n\nAut voluptatem et eum nihil. Quos nulla qui aut qui perferendis. Provident et autem qui voluptas neque quibusdam placeat.\n\nSoluta a fuga saepe suscipit mollitia. Qui et odio et quia et aut. Ut molestiae maiores itaque incidunt et qui.\n\nSed quod et atque ducimus eos aperiam. Neque doloribus velit rem et soluta minus enim. Qui rerum voluptatem quod omnis corrupti dolor. Provident sed optio iure illum eum rem. Suscipit corrupti sit id recusandae in quia corporis qui.\n\nQuia reprehenderit distinctio ducimus cupiditate maiores. Distinctio minus voluptatem accusamus vitae iste. Quis quia distinctio aut porro vitae.\n\nEst esse alias quos esse facilis praesentium. Sed natus ducimus id mollitia necessitatibus qui et accusantium.', 'Article', 4, 'Dolorem ut sed', 0, 'https://picsum.photos/1200/630', 'Delectus Aut Aut Eos Ut', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(5, 'Et sit reprehenderit odio', 'et-sit-reprehenderit-odio', 'Officia nobis tenetur aut quia. Aut nihil iusto laboriosam dicta cum laborum. Quis minus ipsam cupiditate perferendis ullam ducimus sed. Quam ipsa nam magnam fugiat et fuga et. Culpa occaecati quis rem nobis nam qui vel molestiae.', 'Suscipit voluptas ad occaecati repellendus dolore. Eius possimus saepe nulla error eius. Eius minus a qui nostrum fugit aspernatur.\n\nExercitationem temporibus est maiores aut tenetur aut. Aliquam eveniet debitis tempore voluptas iure commodi vel illum. Eveniet voluptatem facilis sint architecto qui corrupti deleniti iure. Qui in sunt neque est quibusdam sit.\n\nUt sit nemo omnis hic consequatur. Voluptate itaque ea ut culpa praesentium ipsa eos.\n\nImpedit expedita accusamus amet itaque rerum odit rem quo. Consequatur ea et nisi. Atque ipsum nihil quos ad porro occaecati dolor officiis. Et aut libero architecto sint.\n\nNatus vel aut culpa dolorum. Odit quis deleniti praesentium sint tempora eum culpa. Sunt nostrum quos eos aut aut.', 'Blog', 3, 'Eius aliquam', 0, 'https://picsum.photos/1200/630', 'Et Sit Reprehenderit Odio', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(6, 'Vel in sed aut error', 'vel-in-sed-aut-error', 'Doloremque quis omnis voluptatem amet enim et velit. Tempore nihil hic velit molestiae est tenetur. Velit quis consequatur amet aliquid dignissimos amet rem.', 'Nihil omnis assumenda id aut voluptatem. Doloremque architecto voluptas consequatur eaque. Vel non distinctio rerum.\n\nHic expedita explicabo sed quia sed natus. Repellendus inventore aliquid vitae non et quibusdam. Quo nemo aut sapiente non perferendis. Ipsum aperiam sit quo voluptates quis sit magni est.\n\nNesciunt cupiditate vero at libero. Voluptatum cum impedit quo blanditiis blanditiis. Inventore voluptatem unde et vel in quam. Illum illum non voluptatem ut ut provident saepe.\n\nAssumenda autem autem minus. Ut et expedita officia tempore harum. Autem sequi incidunt odit.\n\nOfficia optio saepe deserunt quia voluptatem necessitatibus. Est architecto dolores nemo inventore. Ipsum est iure rerum occaecati repellendus corporis similique qui. Rerum itaque qui et amet numquam totam ipsum asperiores.\n\nRepellat dolores et nulla cupiditate qui. Earum qui eos rerum et voluptatum. Dolores alias nihil impedit quasi velit quia. Amet eveniet vel non nihil reiciendis ut aut. Soluta et voluptatum similique fuga occaecati quas omnis.', 'Article', 1, 'Dignissimos nostrum', 0, 'https://picsum.photos/1200/630', 'Vel In Sed Aut Error', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(7, 'Aut sed cum aperiam', 'aut-sed-cum-aperiam', 'Et debitis est expedita quas omnis perferendis. A debitis ducimus rem dolores suscipit cum ea eius. Ut dolore ullam laboriosam laboriosam repellendus hic quia. Ex voluptas saepe maiores ducimus quis ipsa et. Id totam quis ad fugiat.', 'Voluptatum delectus iusto sed et rerum et nulla. Rem ea sequi veniam voluptatem. Odit qui magnam et expedita perspiciatis debitis vitae. Repellat quia non rerum facilis sed et et.\n\nNesciunt nesciunt quas occaecati facilis voluptate dolore. At at id et rerum vitae aliquam culpa. Amet autem laborum impedit. Fuga doloremque id harum voluptatem debitis sed quas veritatis. Ipsam sit quas qui.\n\nVoluptatem cum autem facere aspernatur. Quas iure voluptates quod voluptatem tenetur qui corporis. Velit nisi est non ducimus.\n\nEa ex non quia quia aut. Ut perspiciatis dolor modi saepe. Consequatur ratione assumenda qui omnis itaque et molestiae et.\n\nMagnam ex ut architecto sit. Voluptatem cumque et rem quae a ut. Nobis quidem voluptates perferendis ut. Ullam temporibus repudiandae voluptas nulla magni quisquam qui.', 'News', 3, 'Eius aliquam', 0, 'https://picsum.photos/1200/630', 'Aut Sed Cum Aperiam', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(8, 'Sed et veniam totam sed', 'sed-et-veniam-totam-sed', 'Non quo qui sed impedit. Nemo deserunt molestiae quidem fugit illo doloremque assumenda quidem. At quidem aut architecto laudantium totam ducimus. Mollitia temporibus iusto quia alias aut nihil. Recusandae ipsam iste quae ab aut similique dolores.', 'Sunt totam sed voluptates nulla quisquam ut. Non sed tempora omnis dolorum. Aut aut sapiente reprehenderit qui ut enim natus.\n\nEa ipsam cupiditate consequatur omnis et. Saepe molestiae dolorem fugiat quis et explicabo quis magnam. Repellendus magni ratione quia.\n\nFugiat dolor recusandae nisi sit soluta tempore unde quia. Error qui mollitia minus ut architecto quod.\n\nBeatae voluptatem esse quam itaque est odio. Veniam ut exercitationem vel. Dolores necessitatibus qui necessitatibus sit.\n\nQuo libero ratione et eveniet veritatis suscipit quidem. Alias modi atque et ut. Blanditiis ut quo eos. Temporibus maxime adipisci quas laudantium.\n\nRatione corrupti omnis quia id ab officia. Ut et tenetur libero debitis aut tenetur. Necessitatibus vero repellendus commodi rem non recusandae velit.', 'News', 4, 'Dolorem ut sed', 1, 'https://picsum.photos/1200/630', 'Sed Et Veniam Totam Sed', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(9, 'Ut et magnam fugit sit', 'ut-et-magnam-fugit-sit', 'Accusantium quo voluptatem cumque illum molestias quia cumque. Officia dolore aperiam et modi placeat consequatur accusantium. Quia error et illo modi. Nemo tempore et minus adipisci.', 'Qui facilis ex et vel tenetur sint. Et voluptatibus qui sed nemo ducimus consequuntur. Sint velit et vitae aut nulla molestias.\n\nTenetur totam aliquid earum ab quod alias qui. Illum et adipisci repellendus amet. Praesentium rerum vitae aut iure quam.\n\nAnimi fugit dicta ut et sed rem. Consequatur corporis sed ut consectetur consequatur quisquam.\n\nCorrupti impedit dicta eum corrupti. Neque nam aut molestiae ab sint sed at. Corrupti aperiam quisquam ea atque facere. Esse qui rerum error.\n\nAlias necessitatibus expedita laboriosam aut repellat aliquid sed. Sunt est pariatur labore quo tenetur reiciendis itaque. Qui architecto ducimus et numquam quisquam maiores nisi.', 'Article', 5, 'Assumenda nobis et', 0, 'https://picsum.photos/1200/630', 'Ut Et Magnam Fugit Sit', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(10, 'Est id dolorem id est ipsam', 'est-id-dolorem-id-est-ipsam', 'Architecto sapiente numquam sapiente error. Et rerum voluptatem sed dolorem voluptatum odio asperiores. Omnis voluptatem id blanditiis cupiditate. Quisquam a recusandae deleniti non mollitia voluptate.', 'Vel doloribus nesciunt ab facilis eos. Magni facilis nam quas animi eos. Laboriosam quia enim quia necessitatibus voluptates eos et et.\n\nNecessitatibus perspiciatis eaque vitae ab eveniet facere. Minima molestiae consectetur voluptas perspiciatis sed. Ullam non qui consequatur in sapiente.\n\nOptio eos animi voluptatum voluptatum at aut. Aliquam minus quo ut laudantium. Rerum hic unde laboriosam at atque quia.\n\nCorporis iste qui et enim qui sit. Ipsum sunt et est asperiores blanditiis. Dolore praesentium eos ratione itaque sint.\n\nOdit eligendi iure vel aut tenetur. Dolorum velit asperiores nihil voluptatem. Et sed quidem aut eius ipsam eum. Aut id architecto esse ut nulla similique.', 'Blog', 4, 'Dolorem ut sed', 0, 'https://picsum.photos/1200/630', 'Est Id Dolorem Id Est Ipsam', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(11, 'Aut ipsa officia animi', 'aut-ipsa-officia-animi', 'At ab commodi voluptatibus necessitatibus. Velit et itaque omnis rerum. Et blanditiis eos est et qui et.', 'Et id culpa non omnis qui. Atque assumenda in quo dicta ut pariatur. Enim aut nobis dicta ut nobis optio.\n\nConsectetur qui fuga aut amet. Minus distinctio omnis iure incidunt amet quia laudantium atque.\n\nSuscipit rerum velit nihil dolores quidem inventore eum. Voluptatem ducimus vel modi et corporis unde omnis fuga.\n\nAut sit repellat maxime ratione ut veritatis hic est. Reiciendis esse laudantium nam sint dolor quos. Quod vel quia non architecto fugiat et necessitatibus.\n\nExpedita dignissimos laborum consectetur sit sed. Quidem est est eos officiis deleniti ut ducimus. Quasi rerum aliquid ipsam totam impedit. Quia veritatis rerum nihil officia aliquam corporis magni occaecati. Culpa nihil tenetur voluptatem dolorum cum atque.\n\nRepellendus cum et eaque alias. Molestias ipsam placeat iste at fuga. Quia molestiae nostrum ex sit repudiandae.\n\nRecusandae doloribus provident vero vel id. Nostrum doloribus dolor aut voluptatem. Non facilis in sapiente porro voluptatem. Repudiandae qui nihil ab placeat.', 'Blog', 5, 'Assumenda nobis et', 0, 'https://picsum.photos/1200/630', 'Aut Ipsa Officia Animi', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(12, 'Et sint sit modi temporibus', 'et-sint-sit-modi-temporibus', 'Asperiores iure suscipit vel voluptate saepe velit. Veritatis ipsam voluptas necessitatibus rerum et neque. Dolorum aperiam autem nisi amet deleniti vitae dolores. Molestiae qui voluptatem quisquam est quis deserunt voluptatem.', 'Minima id rem et est in voluptatum. Et consequatur non voluptatibus atque repellendus. Nemo doloribus aliquam nisi et consequatur dolores autem. Et laborum et ipsum aut repellat explicabo voluptatem.\n\nDolorum facere quos aperiam tenetur distinctio excepturi voluptates. Vero odit occaecati est doloribus nemo recusandae. Beatae et earum ab.\n\nAlias et asperiores sint velit ducimus. In voluptate dicta porro facere architecto autem sequi voluptatem. Ipsum dicta consectetur voluptas a provident quos maxime.\n\nOdit repudiandae totam incidunt ut reiciendis. Odit atque laborum est cupiditate tempora nobis omnis. Quo quibusdam optio aliquid non est voluptas deserunt tempora. Earum ad sint dolorem tenetur.\n\nAut ipsum quis excepturi ut a dicta. Culpa aut voluptates beatae non. Voluptate est eaque autem aut in est beatae neque.', 'News', 2, 'Beatae porro dolor', 1, 'https://picsum.photos/1200/630', 'Et Sint Sit Modi Temporibus', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(13, 'Et pariatur et et aut ut', 'et-pariatur-et-et-aut-ut', 'Nesciunt eius ullam nulla vero. Earum voluptatibus eum aut. Sapiente aut iure aut laboriosam sit quam dolorum quisquam. Vel ab ea qui quasi.', 'Quas impedit aut neque nemo inventore aut similique. Doloremque debitis aliquam fuga dolor. Est rerum eius doloribus maxime sed cupiditate.\n\nAccusantium nulla vero rem dicta. Est blanditiis non ut omnis voluptatem iste occaecati. Aut quibusdam omnis ea quae. Quo expedita dolor et numquam cum ipsum sapiente ipsum.\n\nFacere incidunt laborum occaecati enim ea error. Sit suscipit aliquid cumque minus soluta at. Qui nesciunt qui voluptatibus sequi qui ea veritatis.\n\nLaboriosam ipsum officia quia accusamus at veniam itaque. Voluptatem voluptate aut aut dolor iste. Sint sapiente voluptatibus culpa illum praesentium inventore.\n\nOmnis architecto iusto expedita ullam dolor architecto voluptatem. Vitae aut quidem velit explicabo dolor. Voluptatibus temporibus veritatis voluptatem. Nostrum consequatur exercitationem vero molestias.', 'Article', 2, 'Beatae porro dolor', 1, 'https://picsum.photos/1200/630', 'Et Pariatur Et Et Aut Ut', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(14, 'Et et libero illo a', 'et-et-libero-illo-a', 'Ut aut aliquid vitae expedita consectetur aliquam. Harum alias ratione ad eos maiores. At eos ducimus perspiciatis.', 'Cum eos consequatur molestiae quaerat. Et incidunt consectetur illum quo. Mollitia occaecati rerum sed illum laboriosam id. Sit distinctio accusantium tempore labore consequuntur animi quas.\n\nDicta ex est ipsum fuga sed et delectus. Illum aut sit est. Quis aspernatur officiis necessitatibus odio.\n\nAccusantium repellat aut iure. Qui dicta odio et voluptas. Eos et modi nihil magnam distinctio non. Est ut voluptate esse sequi commodi.\n\nOptio voluptatem animi deleniti aut. Quis aspernatur id eos ratione. Sint dolor blanditiis iusto cupiditate iure cumque. Aut earum voluptas minima nobis.\n\nOptio et aliquid ut quam molestias consectetur. Ab dolor voluptatem explicabo. Quia molestiae delectus nisi corrupti vitae. Omnis voluptatem sed magnam dolorem repudiandae neque quia.\n\nEx est voluptatem tempora vitae exercitationem eligendi est. Quam explicabo voluptas praesentium sed qui harum. Omnis omnis et quaerat ex quaerat. Odio libero et consequatur et quo.', 'Blog', 3, 'Eius aliquam', 0, 'https://picsum.photos/1200/630', 'Et Et Libero Illo A', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(15, 'Porro placeat qui laudantium', 'porro-placeat-qui-laudantium', 'Rem odio quo necessitatibus aperiam qui incidunt a alias. Repellendus odit quisquam ipsum excepturi quaerat sapiente. Quia expedita saepe accusantium ut consectetur sint sit natus. Molestiae optio sit a dolores saepe.', 'Iure unde cumque ad aspernatur numquam ea. Necessitatibus aut nesciunt veniam accusamus ut ipsa. Dicta atque voluptatibus in. Et nostrum esse minus vero.\n\nDolor modi sequi quis sed. Numquam quas enim rem tenetur. Doloremque eveniet eius ducimus assumenda alias sunt et. Officiis dignissimos doloribus vitae modi dolorem qui iure.\n\nOptio rerum aut ipsam voluptatem quibusdam sint. Adipisci omnis ullam saepe nulla facilis quasi numquam. Consequatur quasi voluptates fugiat maxime.\n\nProvident officiis consectetur accusamus officiis. Delectus vero deleniti unde minima officia. Earum ad et esse et vel quos molestiae. Dolores rem ipsum amet.\n\nNecessitatibus tempore voluptatum illo illo. Quibusdam culpa in et.\n\nAnimi quia perspiciatis voluptas non. Fugit blanditiis sed voluptatem est. Sint numquam ut qui sed dolores.\n\nEnim dolores sit accusamus nihil ea illum. Qui consequuntur ipsam alias sed qui facere. Suscipit officia odio dolorum voluptates odit.', 'News', 3, 'Eius aliquam', 0, 'https://picsum.photos/1200/630', 'Porro Placeat Qui Laudantium', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(16, 'Ducimus qui eos velit nobis', 'ducimus-qui-eos-velit-nobis', 'Eius asperiores tenetur porro quos quisquam sit impedit. Sint dignissimos aut veritatis esse sed ratione. Qui veritatis dolores omnis dolorum. Quam aspernatur eum officia dolor et consequuntur eos.', 'Eum consequatur magni ab in. Qui nulla animi ut hic iusto. Possimus est facere eveniet optio.\n\nQui et similique id minima. Deleniti sed dolor consequuntur harum. Totam error doloremque quaerat qui commodi deserunt cum.\n\nEt fugit dignissimos accusamus ratione dignissimos. Ea nihil laboriosam animi quia.\n\nDolor vel voluptatem atque voluptatum libero. Necessitatibus quaerat ut sit quidem sed. Nesciunt architecto suscipit porro quisquam quia. Voluptatem possimus ut cumque facere.\n\nProvident velit numquam quia fugiat maiores. Sunt delectus quo explicabo libero. Quisquam illo et voluptatum distinctio quos.', 'Article', 1, 'Dignissimos nostrum', 1, 'https://picsum.photos/1200/630', 'Ducimus Qui Eos Velit Nobis', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(17, 'Qui esse totam odit sed et', 'qui-esse-totam-odit-sed-et', 'Ab id quae esse. Corporis explicabo occaecati accusantium. Explicabo ut molestias at.', 'Aut autem quod molestiae neque beatae non libero. Minus minus blanditiis molestias sit. Est dolorem dolorum id voluptates iusto.\n\nQui accusamus quisquam voluptatum doloribus. Maiores quisquam molestias eum quo doloribus fuga. Quaerat illo incidunt nisi explicabo voluptatem. Veniam sint maxime qui provident atque nemo.\n\nVoluptate nesciunt mollitia voluptatem sint. Commodi dicta quo aut facilis. Doloribus vel deleniti ut iste facilis quibusdam. Nemo corporis est architecto omnis eum.\n\nModi amet vero nemo quibusdam doloremque ut et. Voluptate praesentium adipisci minima vitae dolorem nam. Consequatur deserunt nisi suscipit et quod ipsum. Adipisci omnis laborum a eius. Quam qui quas est delectus soluta.\n\nMaxime illum delectus est voluptas deleniti eum. Veritatis odit libero architecto et nam.', 'News', 1, 'Dignissimos nostrum', 0, 'https://picsum.photos/1200/630', 'Qui Esse Totam Odit Sed Et', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(18, 'Id voluptatum qui numquam', 'id-voluptatum-qui-numquam', 'Quod nostrum harum nulla id. Ducimus qui placeat facere quis magnam. Rerum velit veniam minima ipsam hic perferendis adipisci.', 'Adipisci voluptatibus quibusdam quaerat nostrum hic et est dolorem. Sint aliquam optio excepturi dolor perferendis autem deserunt. Vel beatae consequuntur non. Ex ut fugiat nulla quo aliquam sapiente et.\n\nQuis optio doloremque voluptas itaque a voluptatum. Autem voluptatem rerum fugiat asperiores quos doloremque exercitationem. Vero dicta quo repellendus temporibus est rerum recusandae. Praesentium quod eaque nam et ea qui.\n\nLaborum quae quis expedita. Maxime expedita dolor voluptatem rem ullam velit cupiditate. Eveniet vel facere minima aut laudantium perspiciatis dolorem. Vero eum et qui quia fuga dolore.\n\nFacere sequi sed eius corrupti non iste distinctio. Soluta facilis itaque dolorem consequatur. Ut nihil et sunt repellendus adipisci.\n\nEt est ipsam ipsum molestiae aspernatur iure ad. Vitae maiores doloribus quo numquam laboriosam. Quod earum soluta praesentium sit. Dolor voluptatem et fuga quasi nulla quia voluptatem.\n\nAb est provident sed sint illo quo provident eligendi. Saepe cupiditate maxime tenetur doloribus ratione est aut. Odio modi fugiat odit accusantium necessitatibus eaque dolorem.', 'Blog', 3, 'Eius aliquam', 0, 'https://picsum.photos/1200/630', 'Id Voluptatum Qui Numquam', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(19, 'Et mollitia iure beatae modi', 'et-mollitia-iure-beatae-modi', 'Delectus quod ullam dolores voluptatum repellendus. Ut dolorum quis aut quibusdam quidem veritatis. Reprehenderit sit et rerum debitis temporibus excepturi commodi accusantium. Est laborum et dignissimos excepturi dolorem.', 'Architecto mollitia unde necessitatibus consequatur animi commodi ratione aliquam. Minima maiores quidem nesciunt illo voluptatum. Ea consequatur quis veritatis dolorem voluptates mollitia. Accusamus aut qui illo veritatis et. Rerum recusandae recusandae iure repudiandae cum.\n\nPlaceat consequatur excepturi non illum. Nihil quas aut non reiciendis. Officia dolore dolores atque quo quaerat.\n\nNemo autem velit harum magnam harum vel reprehenderit ad. Aut voluptates voluptatem aliquam recusandae possimus culpa. Asperiores vel voluptatibus dolore soluta ipsa amet facilis nihil. Ea necessitatibus et sed.\n\nVoluptatem fugit nihil ad voluptate quia. Iste culpa delectus sapiente aut eos. Aspernatur in voluptas repellendus dolor inventore. Sit dolorem vel cumque.\n\nEarum non voluptas laborum est. Ut rerum quibusdam veritatis consequuntur. In repellat quaerat aut possimus repellat magnam et aut. Tempora sed cumque atque enim consequatur ex.\n\nNostrum omnis et ut alias enim. Nulla nemo assumenda modi vero recusandae occaecati maxime.', 'News', 1, 'Dignissimos nostrum', 1, 'https://picsum.photos/1200/630', 'Et Mollitia Iure Beatae Modi', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(20, 'Aut est consequatur id quo', 'aut-est-consequatur-id-quo', 'Et ea quos magnam ut. Omnis deserunt a similique nam. Fuga qui et voluptatem. Earum dolore distinctio voluptatem fugit. Dolorem quod deleniti odio vel enim provident.', 'Quasi omnis consequatur quo aliquid ut deleniti odit. Nobis omnis et qui consequatur et. Qui facere soluta incidunt voluptas sint recusandae libero.\n\nNatus recusandae voluptatem distinctio delectus rerum eos consequatur. Vero quibusdam aspernatur voluptatem corrupti. Debitis quia est ut vel voluptas omnis vero aliquam.\n\nNulla nesciunt voluptates neque ut maiores. Harum id et esse voluptas dolor sint. Non sequi est veritatis consequatur. Et ipsa doloribus exercitationem perspiciatis totam esse saepe.\n\nIpsam dolorem earum dicta quia non fugiat voluptatibus nesciunt. Veritatis quae quia aut explicabo sint et. Rerum aut nulla molestias consequatur voluptates nulla deserunt.\n\nIn minus doloribus voluptatibus ut rem sit facilis veritatis. Aut nihil sed sit sed.\n\nDignissimos consequatur quia quis rerum molestias vero consequatur. Sit ut aut velit voluptas quod quidem ut molestiae.', 'Article', 5, 'Assumenda nobis et', 0, 'https://picsum.photos/1200/630', 'Aut Est Consequatur Id Quo', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(21, 'Ea quis enim et ullam', 'ea-quis-enim-et-ullam', 'Consequatur blanditiis quod et eum et quidem autem amet. Quos facere et architecto et qui voluptas magni. Quos perferendis sint odio quia ipsam. Dolore nobis sint quaerat autem cum.', 'Facere repellendus reprehenderit aut consequuntur quos. Aspernatur quia optio ullam doloribus. Iste iure qui repellat. Vel quas quis eos iste.\n\nVoluptatem nulla aperiam necessitatibus quia necessitatibus sit. Natus ut fugit dolor ratione. Voluptas voluptatibus et aliquam a dolorem ut.\n\nCum illo voluptas officia nihil suscipit eligendi. Voluptas voluptatem ullam odit in. Voluptas exercitationem eum repellat doloremque aut non.\n\nUnde aut commodi rem quis vel doloremque. Necessitatibus suscipit non magni exercitationem enim voluptas. Totam voluptates dolorem nostrum quis at est. Maiores incidunt dolorem fuga velit quis possimus assumenda ut. Velit soluta sapiente temporibus illo.\n\nIn neque aliquam voluptatem molestiae et fugiat ut. Doloremque enim consequatur quibusdam non temporibus dolor aliquid. Dolorem quaerat aut voluptate repudiandae quasi. Totam odio corporis autem consequatur.', 'News', 5, 'Assumenda nobis et', 0, 'https://picsum.photos/1200/630', 'Ea Quis Enim Et Ullam', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(22, 'Illum quia aut ea', 'illum-quia-aut-ea', 'Impedit id quam eligendi suscipit suscipit corporis quia. Tenetur itaque et iusto deleniti officiis qui ea ducimus. Fuga consequatur beatae eos similique eius cumque corporis aut.', 'Velit et eum ipsam distinctio in voluptas dolor. Qui porro non aperiam facilis ea et. Officiis hic quis voluptatem alias ipsam officia quaerat et. Delectus et asperiores provident aut.\n\nConsequatur ut quo eius reprehenderit. Consequatur aperiam accusantium rerum distinctio ad. Sit reiciendis itaque commodi autem neque nihil. Ut ipsam veniam sit sit.\n\nQuae exercitationem unde voluptatem excepturi vitae quam nihil. Sit iste et laudantium laborum dolorum. Fugit repudiandae esse dolorum natus magnam officiis facilis.\n\nPossimus quo facilis et ullam in. Placeat expedita dolor sapiente sit officiis blanditiis quo in. Eum aspernatur animi non itaque rem dolores.\n\nAspernatur ipsa tempora soluta repellendus aut minus neque. Velit autem voluptas fugit. Doloribus beatae porro esse quod aut. Fuga enim nobis ipsam.', 'Blog', 3, 'Eius aliquam', 0, 'https://picsum.photos/1200/630', 'Illum Quia Aut Ea', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(23, 'Vel eligendi ea id saepe', 'vel-eligendi-ea-id-saepe', 'Iure vitae maxime perspiciatis sit quam esse nostrum sit. Et vitae et voluptas iste adipisci dolorem. Aut ut dolorum quas cupiditate reprehenderit. Ut dicta ad est laboriosam sed et.', 'Rerum excepturi minus rem doloremque est dolorum quia. Consequatur quo nihil modi rem neque atque incidunt aut. Consequuntur laborum sed possimus velit nihil ipsa. Dolor aut molestiae delectus.\n\nEt qui laborum tenetur eius voluptatibus explicabo qui. Occaecati commodi similique tempora. Exercitationem excepturi et molestiae facilis illo voluptas et. Corporis consequatur vel sint quia.\n\nAut facere aut sunt harum dolor rerum. Nobis qui necessitatibus omnis. Odio commodi consequatur in. Omnis odit ipsum id reprehenderit et. Deleniti voluptatibus sit voluptatem eum nulla aut ea.\n\nOptio repellat facilis illum vel eum. Et ullam repellat placeat et voluptatem. Voluptatibus nam cum ipsum earum est culpa eum. Repellat illum quasi possimus.\n\nIn non porro minus ut ex deleniti ipsam. Deserunt autem blanditiis placeat veniam voluptates ut molestiae. Dolorum aut nisi repellendus temporibus.\n\nDolores et aut aliquam vel tempora tempore non facere. Et facilis ad dolor excepturi neque placeat dolor. Dignissimos nihil nihil quis doloremque a. Rem quaerat non velit qui quaerat id. Id dolor soluta corporis voluptatem velit deserunt laborum qui.\n\nId quis sapiente sed non. Ut earum blanditiis et. Perspiciatis et sint odit facilis quaerat quo.', 'Article', 3, 'Eius aliquam', 1, 'https://picsum.photos/1200/630', 'Vel Eligendi Ea Id Saepe', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(24, 'Fugit et quasi officia aut', 'fugit-et-quasi-officia-aut', 'Ea sequi eaque ut perferendis quia. Ex qui doloremque iusto quibusdam. Qui voluptas rerum velit ut ducimus aut. Et optio omnis vel laborum.', 'Perspiciatis vel distinctio nemo aliquam qui reprehenderit nam. Debitis qui cum quod cumque. Saepe pariatur error recusandae dolorem ad. Omnis similique a mollitia ut ut laboriosam laudantium rem.\n\nNam sit laboriosam aut officiis voluptas aut. Quod ipsum ratione ut quia. Dolorem aut nesciunt libero sequi harum accusamus. Doloribus neque nihil natus sit labore voluptates et enim.\n\nFugit exercitationem ut sed perferendis est veritatis. Qui sint magni minus culpa delectus deserunt distinctio.\n\nIpsam facilis aut nostrum ipsa. Placeat id aut ex. Numquam quam aperiam in et sed.\n\nDignissimos earum perspiciatis autem necessitatibus perferendis rerum. Voluptatibus necessitatibus ut quo quod nemo ut et. Aspernatur nam assumenda vero aliquam repudiandae et labore. Sit est qui vero eveniet. Magnam laborum veritatis laudantium voluptatem itaque quis nobis.\n\nQuas et consectetur necessitatibus fugit et ea omnis. At a expedita eaque quidem ab sit cumque. Est voluptas et sint itaque est.', 'Blog', 1, 'Dignissimos nostrum', 1, 'https://picsum.photos/1200/630', 'Fugit Et Quasi Officia Aut', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(25, 'Aut ea voluptas assumenda et', 'aut-ea-voluptas-assumenda-et', 'Est consequuntur eum optio est iusto rem. Sint ratione doloribus sed ea ut distinctio. Suscipit laboriosam quo quo iste. Veritatis ut in repellat voluptatem illo.', 'Velit in maxime pariatur. Accusamus et praesentium magnam commodi. Numquam blanditiis officiis numquam consequatur possimus nisi neque.\n\nQuod cum dignissimos animi. Et quidem eveniet aliquid excepturi.\n\nDucimus asperiores est sunt officia debitis. Quae exercitationem iste ex illum aperiam vel quaerat non. Provident quam iste illum corrupti est quo voluptas.\n\nQui omnis facere iste excepturi consequuntur. Accusamus impedit cumque laboriosam officia cumque dignissimos corrupti. Delectus quaerat assumenda id. Molestias consequuntur omnis incidunt autem id et laudantium.\n\nQuod sed vero repudiandae debitis nihil dolor quam cupiditate. Voluptate quaerat esse possimus dignissimos. Facilis aliquam corrupti odio provident tempore aut pariatur. Voluptatem voluptatem recusandae esse eos unde omnis.', 'News', 2, 'Beatae porro dolor', 1, 'https://picsum.photos/1200/630', 'Aut Ea Voluptas Assumenda Et', '', 'A CMS like modular starter application project built with Laravel 9.', 'https://picsum.photos/1200/630', '', 0, NULL, 1, NULL, NULL, 1, 'Super Admin', NULL, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recent_history`
--

CREATE TABLE `recent_history` (
  `id` bigint UNSIGNED NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perform_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `action` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recent_history`
--

INSERT INTO `recent_history` (`id`, `module_name`, `perform_id`, `action`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-05 12:29:44', '2023-01-05 12:29:44'),
(2, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-05 12:29:47', '2023-01-05 12:29:47'),
(3, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-06 06:01:52', '2023-01-06 06:01:52'),
(4, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-06 12:22:52', '2023-01-06 12:22:52'),
(5, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-09 07:53:12', '2023-01-09 07:53:12'),
(6, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-10 05:19:33', '2023-01-10 05:19:33'),
(7, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-10 10:19:28', '2023-01-10 10:19:28'),
(8, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-11 05:25:44', '2023-01-11 05:25:44'),
(9, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-12 05:44:55', '2023-01-12 05:44:55'),
(10, 'Super Admin', '1', 'logout Super Admin', NULL, NULL, '2023-01-12 12:00:57', '2023-01-12 12:00:57'),
(11, 'Super Admin', '1', 'Login Super Admin', NULL, NULL, '2023-01-16 06:57:22', '2023-01-16 06:57:22'),
(12, 'Super Admin', '1', 'Login Super Admin', NULL, NULL, '2023-01-16 11:01:01', '2023-01-16 11:01:01'),
(13, 'Super Admin', '1', 'Login Super Admin', NULL, NULL, '2023-01-17 06:23:51', '2023-01-17 06:23:51'),
(14, 'Super Admin', '1', 'Login Super Admin', NULL, NULL, '2023-01-30 10:15:24', '2023-01-30 10:15:24');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(2, 'administrator', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(3, 'manager', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(4, 'executive', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21'),
(5, 'user', 'web', '2022-11-29 12:11:21', '2022-11-29 12:11:21');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'string',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `val`, `type`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'app_name', 'SEKadmin', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-12-09 05:49:12', NULL),
(2, 'footer_text', 'Aresourcepool Admin', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(3, 'show_copyright', '1', 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(4, 'email', 'info@example.com', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(5, 'facebook_url', '#', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(6, 'twitter_url', '#', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(7, 'instagram_url', '#', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(8, 'linkedin_url', '#', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(9, 'youtube_url', '#', 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(10, 'meta_site_name', 'Awesome Laravel | A Laravel Starter Project', 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(11, 'meta_description', 'A CMS like modular starter application project built with Laravel 9.', 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(12, 'meta_keyword', 'Web Application, Laravel,Laravel starter,Bootstrap,Admin,Template,Open,Source,', 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(13, 'meta_image', 'img/logo.svg', 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-12-09 08:02:00', NULL),
(14, 'meta_fb_app_id', NULL, 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(15, 'meta_twitter_site', NULL, 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(16, 'meta_twitter_creator', NULL, 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(17, 'google_analytics', NULL, 'text', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL),
(18, 'custom_css_block', NULL, 'string', 1, 1, NULL, '2022-11-29 12:20:08', '2022-11-29 12:20:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `taggables`
--

CREATE TABLE `taggables` (
  `id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL,
  `taggable_id` bigint UNSIGNED NOT NULL,
  `taggable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taggables`
--

INSERT INTO `taggables` (`id`, `tag_id`, `taggable_id`, `taggable_type`) VALUES
(1, 6, 1, 'Modules\\Article\\Entities\\Post'),
(2, 3, 1, 'Modules\\Article\\Entities\\Post'),
(3, 1, 1, 'Modules\\Article\\Entities\\Post'),
(4, 4, 1, 'Modules\\Article\\Entities\\Post'),
(5, 9, 1, 'Modules\\Article\\Entities\\Post'),
(6, 7, 1, 'Modules\\Article\\Entities\\Post'),
(7, 10, 1, 'Modules\\Article\\Entities\\Post'),
(8, 8, 1, 'Modules\\Article\\Entities\\Post'),
(9, 5, 1, 'Modules\\Article\\Entities\\Post'),
(10, 2, 1, 'Modules\\Article\\Entities\\Post'),
(11, 7, 2, 'Modules\\Article\\Entities\\Post'),
(12, 9, 2, 'Modules\\Article\\Entities\\Post'),
(13, 3, 2, 'Modules\\Article\\Entities\\Post'),
(14, 2, 2, 'Modules\\Article\\Entities\\Post'),
(15, 5, 2, 'Modules\\Article\\Entities\\Post'),
(16, 10, 2, 'Modules\\Article\\Entities\\Post'),
(17, 4, 2, 'Modules\\Article\\Entities\\Post'),
(18, 8, 2, 'Modules\\Article\\Entities\\Post'),
(19, 1, 2, 'Modules\\Article\\Entities\\Post'),
(20, 3, 3, 'Modules\\Article\\Entities\\Post'),
(21, 9, 3, 'Modules\\Article\\Entities\\Post'),
(22, 2, 3, 'Modules\\Article\\Entities\\Post'),
(23, 6, 3, 'Modules\\Article\\Entities\\Post'),
(24, 10, 3, 'Modules\\Article\\Entities\\Post'),
(25, 4, 3, 'Modules\\Article\\Entities\\Post'),
(26, 1, 3, 'Modules\\Article\\Entities\\Post'),
(27, 8, 3, 'Modules\\Article\\Entities\\Post'),
(28, 5, 3, 'Modules\\Article\\Entities\\Post'),
(29, 2, 4, 'Modules\\Article\\Entities\\Post'),
(30, 8, 4, 'Modules\\Article\\Entities\\Post'),
(31, 5, 4, 'Modules\\Article\\Entities\\Post'),
(32, 3, 4, 'Modules\\Article\\Entities\\Post'),
(33, 7, 4, 'Modules\\Article\\Entities\\Post'),
(34, 1, 4, 'Modules\\Article\\Entities\\Post'),
(35, 9, 4, 'Modules\\Article\\Entities\\Post'),
(36, 6, 4, 'Modules\\Article\\Entities\\Post'),
(37, 4, 4, 'Modules\\Article\\Entities\\Post'),
(38, 10, 4, 'Modules\\Article\\Entities\\Post'),
(39, 8, 5, 'Modules\\Article\\Entities\\Post'),
(40, 5, 5, 'Modules\\Article\\Entities\\Post'),
(41, 7, 5, 'Modules\\Article\\Entities\\Post'),
(42, 10, 5, 'Modules\\Article\\Entities\\Post'),
(43, 9, 5, 'Modules\\Article\\Entities\\Post'),
(44, 4, 5, 'Modules\\Article\\Entities\\Post'),
(45, 6, 5, 'Modules\\Article\\Entities\\Post'),
(46, 1, 5, 'Modules\\Article\\Entities\\Post'),
(47, 1, 6, 'Modules\\Article\\Entities\\Post'),
(48, 9, 6, 'Modules\\Article\\Entities\\Post'),
(49, 2, 6, 'Modules\\Article\\Entities\\Post'),
(50, 8, 6, 'Modules\\Article\\Entities\\Post'),
(51, 3, 6, 'Modules\\Article\\Entities\\Post'),
(52, 4, 6, 'Modules\\Article\\Entities\\Post'),
(53, 6, 6, 'Modules\\Article\\Entities\\Post'),
(54, 7, 6, 'Modules\\Article\\Entities\\Post'),
(55, 10, 6, 'Modules\\Article\\Entities\\Post'),
(56, 9, 7, 'Modules\\Article\\Entities\\Post'),
(57, 8, 7, 'Modules\\Article\\Entities\\Post'),
(58, 10, 7, 'Modules\\Article\\Entities\\Post'),
(59, 6, 7, 'Modules\\Article\\Entities\\Post'),
(60, 3, 7, 'Modules\\Article\\Entities\\Post'),
(61, 1, 7, 'Modules\\Article\\Entities\\Post'),
(62, 2, 7, 'Modules\\Article\\Entities\\Post'),
(63, 10, 8, 'Modules\\Article\\Entities\\Post'),
(64, 6, 8, 'Modules\\Article\\Entities\\Post'),
(65, 2, 8, 'Modules\\Article\\Entities\\Post'),
(66, 9, 8, 'Modules\\Article\\Entities\\Post'),
(67, 7, 8, 'Modules\\Article\\Entities\\Post'),
(68, 8, 8, 'Modules\\Article\\Entities\\Post'),
(69, 1, 8, 'Modules\\Article\\Entities\\Post'),
(70, 10, 9, 'Modules\\Article\\Entities\\Post'),
(71, 5, 9, 'Modules\\Article\\Entities\\Post'),
(72, 4, 9, 'Modules\\Article\\Entities\\Post'),
(73, 6, 9, 'Modules\\Article\\Entities\\Post'),
(74, 8, 9, 'Modules\\Article\\Entities\\Post'),
(75, 9, 9, 'Modules\\Article\\Entities\\Post'),
(76, 2, 9, 'Modules\\Article\\Entities\\Post'),
(77, 1, 9, 'Modules\\Article\\Entities\\Post'),
(78, 2, 10, 'Modules\\Article\\Entities\\Post'),
(79, 1, 10, 'Modules\\Article\\Entities\\Post'),
(80, 9, 10, 'Modules\\Article\\Entities\\Post'),
(81, 6, 10, 'Modules\\Article\\Entities\\Post'),
(82, 3, 10, 'Modules\\Article\\Entities\\Post'),
(83, 9, 11, 'Modules\\Article\\Entities\\Post'),
(84, 5, 11, 'Modules\\Article\\Entities\\Post'),
(85, 7, 11, 'Modules\\Article\\Entities\\Post'),
(86, 2, 11, 'Modules\\Article\\Entities\\Post'),
(87, 4, 11, 'Modules\\Article\\Entities\\Post'),
(88, 10, 11, 'Modules\\Article\\Entities\\Post'),
(89, 3, 11, 'Modules\\Article\\Entities\\Post'),
(90, 10, 12, 'Modules\\Article\\Entities\\Post'),
(91, 5, 12, 'Modules\\Article\\Entities\\Post'),
(92, 1, 12, 'Modules\\Article\\Entities\\Post'),
(93, 7, 12, 'Modules\\Article\\Entities\\Post'),
(94, 4, 12, 'Modules\\Article\\Entities\\Post'),
(95, 3, 12, 'Modules\\Article\\Entities\\Post'),
(96, 9, 12, 'Modules\\Article\\Entities\\Post'),
(97, 2, 12, 'Modules\\Article\\Entities\\Post'),
(98, 6, 12, 'Modules\\Article\\Entities\\Post'),
(99, 8, 12, 'Modules\\Article\\Entities\\Post'),
(100, 5, 13, 'Modules\\Article\\Entities\\Post'),
(101, 9, 13, 'Modules\\Article\\Entities\\Post'),
(102, 8, 13, 'Modules\\Article\\Entities\\Post'),
(103, 10, 13, 'Modules\\Article\\Entities\\Post'),
(104, 7, 13, 'Modules\\Article\\Entities\\Post'),
(105, 7, 14, 'Modules\\Article\\Entities\\Post'),
(106, 8, 14, 'Modules\\Article\\Entities\\Post'),
(107, 5, 14, 'Modules\\Article\\Entities\\Post'),
(108, 10, 14, 'Modules\\Article\\Entities\\Post'),
(109, 4, 14, 'Modules\\Article\\Entities\\Post'),
(110, 6, 14, 'Modules\\Article\\Entities\\Post'),
(111, 1, 14, 'Modules\\Article\\Entities\\Post'),
(112, 2, 15, 'Modules\\Article\\Entities\\Post'),
(113, 7, 15, 'Modules\\Article\\Entities\\Post'),
(114, 5, 15, 'Modules\\Article\\Entities\\Post'),
(115, 4, 15, 'Modules\\Article\\Entities\\Post'),
(116, 8, 15, 'Modules\\Article\\Entities\\Post'),
(117, 10, 15, 'Modules\\Article\\Entities\\Post'),
(118, 1, 15, 'Modules\\Article\\Entities\\Post'),
(119, 9, 15, 'Modules\\Article\\Entities\\Post'),
(120, 6, 15, 'Modules\\Article\\Entities\\Post'),
(121, 10, 16, 'Modules\\Article\\Entities\\Post'),
(122, 7, 16, 'Modules\\Article\\Entities\\Post'),
(123, 8, 16, 'Modules\\Article\\Entities\\Post'),
(124, 5, 16, 'Modules\\Article\\Entities\\Post'),
(125, 2, 16, 'Modules\\Article\\Entities\\Post'),
(126, 4, 16, 'Modules\\Article\\Entities\\Post'),
(127, 1, 17, 'Modules\\Article\\Entities\\Post'),
(128, 2, 17, 'Modules\\Article\\Entities\\Post'),
(129, 6, 17, 'Modules\\Article\\Entities\\Post'),
(130, 4, 17, 'Modules\\Article\\Entities\\Post'),
(131, 3, 17, 'Modules\\Article\\Entities\\Post'),
(132, 10, 17, 'Modules\\Article\\Entities\\Post'),
(133, 9, 17, 'Modules\\Article\\Entities\\Post'),
(134, 7, 17, 'Modules\\Article\\Entities\\Post'),
(135, 5, 17, 'Modules\\Article\\Entities\\Post'),
(136, 10, 18, 'Modules\\Article\\Entities\\Post'),
(137, 5, 18, 'Modules\\Article\\Entities\\Post'),
(138, 6, 18, 'Modules\\Article\\Entities\\Post'),
(139, 1, 18, 'Modules\\Article\\Entities\\Post'),
(140, 8, 18, 'Modules\\Article\\Entities\\Post'),
(141, 7, 18, 'Modules\\Article\\Entities\\Post'),
(142, 2, 18, 'Modules\\Article\\Entities\\Post'),
(143, 5, 19, 'Modules\\Article\\Entities\\Post'),
(144, 1, 19, 'Modules\\Article\\Entities\\Post'),
(145, 4, 19, 'Modules\\Article\\Entities\\Post'),
(146, 10, 19, 'Modules\\Article\\Entities\\Post'),
(147, 2, 19, 'Modules\\Article\\Entities\\Post'),
(148, 6, 19, 'Modules\\Article\\Entities\\Post'),
(149, 3, 20, 'Modules\\Article\\Entities\\Post'),
(150, 2, 20, 'Modules\\Article\\Entities\\Post'),
(151, 8, 20, 'Modules\\Article\\Entities\\Post'),
(152, 5, 20, 'Modules\\Article\\Entities\\Post'),
(153, 10, 20, 'Modules\\Article\\Entities\\Post'),
(154, 6, 21, 'Modules\\Article\\Entities\\Post'),
(155, 4, 21, 'Modules\\Article\\Entities\\Post'),
(156, 7, 21, 'Modules\\Article\\Entities\\Post'),
(157, 9, 21, 'Modules\\Article\\Entities\\Post'),
(158, 3, 21, 'Modules\\Article\\Entities\\Post'),
(159, 1, 21, 'Modules\\Article\\Entities\\Post'),
(160, 5, 21, 'Modules\\Article\\Entities\\Post'),
(161, 10, 21, 'Modules\\Article\\Entities\\Post'),
(162, 2, 21, 'Modules\\Article\\Entities\\Post'),
(163, 5, 22, 'Modules\\Article\\Entities\\Post'),
(164, 10, 22, 'Modules\\Article\\Entities\\Post'),
(165, 3, 22, 'Modules\\Article\\Entities\\Post'),
(166, 7, 22, 'Modules\\Article\\Entities\\Post'),
(167, 2, 22, 'Modules\\Article\\Entities\\Post'),
(168, 6, 22, 'Modules\\Article\\Entities\\Post'),
(169, 9, 22, 'Modules\\Article\\Entities\\Post'),
(170, 8, 22, 'Modules\\Article\\Entities\\Post'),
(171, 1, 23, 'Modules\\Article\\Entities\\Post'),
(172, 10, 23, 'Modules\\Article\\Entities\\Post'),
(173, 5, 23, 'Modules\\Article\\Entities\\Post'),
(174, 3, 23, 'Modules\\Article\\Entities\\Post'),
(175, 9, 23, 'Modules\\Article\\Entities\\Post'),
(176, 8, 23, 'Modules\\Article\\Entities\\Post'),
(177, 7, 23, 'Modules\\Article\\Entities\\Post'),
(178, 6, 23, 'Modules\\Article\\Entities\\Post'),
(179, 2, 23, 'Modules\\Article\\Entities\\Post'),
(180, 2, 24, 'Modules\\Article\\Entities\\Post'),
(181, 4, 24, 'Modules\\Article\\Entities\\Post'),
(182, 3, 24, 'Modules\\Article\\Entities\\Post'),
(183, 10, 24, 'Modules\\Article\\Entities\\Post'),
(184, 9, 24, 'Modules\\Article\\Entities\\Post'),
(185, 7, 24, 'Modules\\Article\\Entities\\Post'),
(186, 8, 24, 'Modules\\Article\\Entities\\Post'),
(187, 5, 24, 'Modules\\Article\\Entities\\Post'),
(188, 1, 24, 'Modules\\Article\\Entities\\Post'),
(189, 6, 24, 'Modules\\Article\\Entities\\Post'),
(190, 3, 25, 'Modules\\Article\\Entities\\Post'),
(191, 7, 25, 'Modules\\Article\\Entities\\Post'),
(192, 8, 25, 'Modules\\Article\\Entities\\Post'),
(193, 1, 25, 'Modules\\Article\\Entities\\Post'),
(194, 10, 25, 'Modules\\Article\\Entities\\Post'),
(195, 4, 25, 'Modules\\Article\\Entities\\Post'),
(196, 2, 25, 'Modules\\Article\\Entities\\Post');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keyword` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `group_name`, `description`, `image`, `status`, `meta_title`, `meta_description`, `meta_keyword`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Et distinctio', 'et-distinctio', NULL, 'Aliquam deserunt nisi optio illum quis est incidunt. Dolores deserunt magni distinctio cum dolorem omnis sint. Ea debitis ipsam natus distinctio nihil.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(2, 'Ipsam commodi', 'ipsam-commodi', NULL, 'Qui velit consequatur hic ea cumque non quidem dicta. Nemo ratione laboriosam cumque esse quia et hic. Laborum omnis vel suscipit voluptatem. Quisquam dicta iusto eum numquam neque dignissimos provident.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(3, 'Qui', 'qui', NULL, 'Voluptatem porro nam aut dolore. Est molestiae omnis omnis minima maxime pariatur eligendi dolor. Sit neque alias occaecati dolorem est beatae molestias. Quidem quam optio qui ea vel impedit fugit.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(4, 'Similique enim', 'similique-enim', NULL, 'Enim et quia velit qui. Neque vel nulla dolorum qui nostrum sapiente. Nam dolor error adipisci autem ullam. Laborum modi est voluptatibus ea aut consequatur aut.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(5, 'In vel fuga', 'in-vel-fuga', NULL, 'Accusamus cupiditate iste reiciendis illo reprehenderit dolores. Corrupti velit quo culpa nobis ut voluptate. Quos quas eveniet corporis ut accusamus vitae.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(6, 'Voluptatem', 'voluptatem', NULL, 'Debitis reiciendis vel minus magni. Molestiae commodi provident voluptatum et sed officia rerum. Vel animi nulla illo totam excepturi eaque nostrum placeat.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(7, 'Dignissimos', 'dignissimos', NULL, 'A repellendus eveniet et omnis dolore laborum voluptatem unde. Molestiae repellendus voluptas ea tenetur. Omnis natus eos reprehenderit minus consequatur.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(8, 'Doloribus', 'doloribus', NULL, 'Suscipit ut est vel eius. Voluptas quibusdam provident consequatur nesciunt ut eum. Accusamus et minus odit aut deserunt soluta minima.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(9, 'Sed assumenda', 'sed-assumenda', NULL, 'Ex incidunt magni eos maxime qui beatae voluptate. Numquam optio accusamus aspernatur qui. Qui occaecati voluptatibus fugit sequi aliquid quis. Doloribus nobis corrupti voluptatem et quae enim.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL),
(10, 'Nostrum', 'nostrum', NULL, 'Est consequatur sunt aut laudantium est. Eaque ipsum omnis quasi voluptatem consequatur. Ut est corrupti itaque. Vel perspiciatis dignissimos qui culpa et quia reprehenderit. Explicabo adipisci fuga reiciendis voluptatem omnis.', NULL, 1, NULL, NULL, NULL, 1, 1, NULL, '2022-11-29 12:12:40', '2022-11-29 12:12:40', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userprofiles`
--

CREATE TABLE `userprofiles` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_website` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_metadata` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_ip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_count` int NOT NULL DEFAULT '0',
  `last_login` timestamp NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `created_by` int UNSIGNED DEFAULT NULL,
  `updated_by` int UNSIGNED DEFAULT NULL,
  `deleted_by` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `userprofiles`
--

INSERT INTO `userprofiles` (`id`, `user_id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `url_website`, `url_facebook`, `url_twitter`, `url_instagram`, `url_linkedin`, `date_of_birth`, `address`, `bio`, `avatar`, `user_metadata`, `last_ip`, `login_count`, `last_login`, `email_verified_at`, `status`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '814-535-1772', 'Female', NULL, NULL, NULL, NULL, NULL, '2002-08-13', NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 74, '2023-01-30 10:15:24', NULL, 1, NULL, 1, NULL, '2022-11-29 12:11:21', '2023-01-30 10:15:24', NULL),
(2, 2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '319-880-9514', 'Other', NULL, NULL, NULL, NULL, NULL, '2016-08-24', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2022-11-29 12:11:21', '2022-11-29 12:11:21', NULL),
(3, 3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '585.976.5548', 'Male', NULL, NULL, NULL, NULL, NULL, '2007-12-12', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2022-11-29 12:11:21', '2022-11-29 12:11:21', NULL),
(4, 4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '1-478-606-6283', 'Female', NULL, NULL, NULL, NULL, NULL, '2020-11-20', NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, NULL, NULL, '2022-11-29 12:11:21', '2022-11-29 12:11:21', NULL),
(5, 5, 'General User', 'General', 'User', '100005', 'user@user.com', '+17328896920', 'Other', NULL, NULL, NULL, NULL, NULL, '2004-08-12', NULL, NULL, 'http://127.0.0.1:8000/media/2/aeJoBwc6MscB9eSvU5iPLiElFqShN0ESs80auqVL.jpg', NULL, NULL, 0, NULL, NULL, 1, NULL, 1, NULL, '2022-11-29 12:11:21', '2022-12-07 08:14:03', NULL),
(6, 7, 'test testt', 'test', 'testt', '100007', 'test@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, 1, 1, NULL, '2022-12-07 10:09:46', '2022-12-07 10:14:03', '2022-12-07 10:14:03'),
(7, 8, 'test2 test', 'test2', 'test', '100008', 'test2@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, '127.0.0.1', 2, '2022-12-07 10:30:03', NULL, 1, 1, 1, NULL, '2022-12-07 10:21:06', '2022-12-07 10:38:24', '2022-12-07 10:38:24'),
(8, 9, 'manoj kumar', 'manoj', 'kumar', '100009', 'manoj@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:8000/media/5/HClXXvz67YSNauBZ22ikX6tZr8M1OEcJeyGXw1CU.png', NULL, NULL, 0, NULL, NULL, 1, 1, 1, NULL, '2022-12-07 11:06:44', '2023-01-04 08:31:17', NULL),
(9, 10, 'Test test3', 'Test', 'test3', '100010', 'test3@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://127.0.0.1:8000/media/14/ufAOrYwSiWLzQfcfbU0FPrpOlss5pnHoUt5mJT04.jpg', NULL, NULL, 0, NULL, NULL, 1, 1, 1, NULL, '2022-12-07 12:15:54', '2022-12-08 11:48:55', NULL),
(10, 11, 'test33 test33', 'test33', 'test33', '100011', 'test33@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, 1, 1, NULL, '2022-12-16 13:30:46', '2022-12-16 13:30:46', NULL),
(11, 15, 'manojk kkk', 'manojk', 'kkk', '100015', 'kkl@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, 1, 1, NULL, '2023-01-04 08:02:20', '2023-01-04 08:36:13', NULL),
(12, 16, 'naman naman', 'naman', 'naman', '100016', 'naman@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'img/default-avatar.jpg', NULL, NULL, 0, NULL, NULL, 1, 1, 1, NULL, '2023-01-05 08:08:45', '2023-01-05 08:08:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'img/default-avatar.jpg',
  `status` tinyint UNSIGNED NOT NULL DEFAULT '1',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `qrcode` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `first_name`, `last_name`, `username`, `email`, `mobile`, `gender`, `date_of_birth`, `email_verified_at`, `password`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `qrcode`) VALUES
(1, 'Super Admin', 'Super', 'Admin', '100001', 'super@admin.com', '814-535-1772', 'Female', '2002-08-13', '2022-11-29 12:11:21', '$2y$10$yOCuNpuXqaUtPRKxVjV7v.5BXxEWshhm8BPWk1bIwlNQvPIeywsnC', 'img/default-avatar.jpg', 1, NULL, '2022-11-29 12:11:21', '2022-11-29 12:11:21', NULL, NULL),
(2, 'Admin Istrator', 'Admin', 'Istrator', '100002', 'admin@admin.com', '319-880-9514', 'Other', '2016-08-24', '2022-11-29 12:11:21', '$2y$10$IjCQ5QWB.nqtqemMshXkveZpP08sMUOIFhSw/0PfqzxbWBoI6JFkS', 'img/default-avatar.jpg', 1, NULL, '2022-11-29 12:11:21', '2022-11-29 12:11:21', NULL, NULL),
(3, 'Manager', 'Manager', 'User User', '100003', 'manager@manager.com', '585.976.5548', 'Male', '2007-12-12', '2022-11-29 12:11:21', '$2y$10$WedbvVnuMlSh6cD7dKQXeOhCUMx1UoMesJXOEdEq1H6lFRjZM5fqa', 'img/default-avatar.jpg', 1, NULL, '2022-11-29 12:11:21', '2023-01-03 07:54:59', NULL, 'images/Manager.svg'),
(4, 'Executive User', 'Executive', 'User', '100004', 'executive@executive.com', '1-478-606-6283', 'Female', '2020-11-20', '2022-11-29 12:11:21', '$2y$10$SLBZcLtNeigK2lKmmKg6h.2lr8vFoCDplpkIpelV1vWupdqGl./5G', 'img/default-avatar.jpg', 1, NULL, '2022-11-29 12:11:21', '2023-01-03 07:19:05', NULL, 'images/Executive_User.svg'),
(5, 'General User', 'General', 'User', '100005', 'user@user.com', '+17328896920', 'Other', '2004-08-12', '2022-11-29 12:11:21', '$2y$10$M8j/qk9ezf6L913uHI8J2uevixrhZlQXKQBZEBYl3j6NrqkS56Jc6', 'http://127.0.0.1:8000/media/2/aeJoBwc6MscB9eSvU5iPLiElFqShN0ESs80auqVL.jpg', 1, NULL, '2022-11-29 12:11:21', '2023-01-02 13:06:14', NULL, NULL),
(7, 'test testt', 'test', 'testt', '100007', 'test@gmail.com', NULL, NULL, NULL, '2022-12-07 10:09:46', '$2y$10$/oYF.pmyT69cJUAdP16fqOBn4srl.SVXbZ7kUgKzY9BZBs4.zvfBq', 'img/default-avatar.jpg', 1, NULL, '2022-12-07 10:09:46', '2023-01-04 08:18:54', NULL, 'images/test_testt.svg'),
(8, 'test2 test', 'test2', 'test', '100008', 'test2@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$uhbf4uvO92Z4D3yNGZwdf.X6.yWLp1jds3M4LkO7loJOtwZN2xU6m', 'img/default-avatar.jpg', 1, NULL, '2022-12-07 10:21:06', '2023-01-03 06:09:36', NULL, 'images/test2_test.svg'),
(9, 'manoj kumar', 'manoj', 'kumar', '100009', 'manoj@gmail.com', NULL, NULL, NULL, '2022-12-07 11:06:43', '$2y$10$0EcrMYaHJLpFsBtn5MpjqOulGt5v4UxjaVByRsVIw1uh0gW7bUwj.', 'http://127.0.0.1:8000/media/5/HClXXvz67YSNauBZ22ikX6tZr8M1OEcJeyGXw1CU.png', 1, NULL, '2022-12-07 11:06:43', '2023-01-04 08:31:17', NULL, 'images/manoj_kumar.svg'),
(13, 'test222 test222', 'test222', 'test222', NULL, 'test2222@gmail.com', '123456789', NULL, NULL, NULL, '$2y$10$xqWdOPT8qZOSDpUe4eMAw./nKnr/GoajZa7hnXuLWYBaP10.HiHnK', 'img/default-avatar.jpg', 1, NULL, '2022-12-18 16:35:56', '2023-01-04 07:51:24', NULL, 'images/test222_test222.svg'),
(14, 'test22 test22', 'test22', 'test22', NULL, 'test222@gmail.com', '1234567890', NULL, NULL, NULL, '$2y$10$4oUhgK1TykTeI92CMdmtNuOrcc.RxSSIiCstnzQ/NldvEvBLRfS5y', 'img/default-avatar.jpg', 1, NULL, '2022-12-19 05:46:40', '2023-01-04 08:31:30', NULL, 'images/test22_test22.svg'),
(15, 'manojk kkk', 'manojk', 'kkk', '100015', 'kkl@gmail.com', NULL, NULL, NULL, '2023-01-04 08:02:20', '$2y$10$QZFE/OBVPIDzAtR2E9OCtuugRHkIR9gOrvK7LYfnJbYfIoD4GYrty', 'img/default-avatar.jpg', 1, NULL, '2023-01-04 08:02:20', '2023-01-05 08:22:03', NULL, 'images/manojk_kkk.svg'),
(16, 'naman naman', 'naman', 'naman', '100016', 'naman@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$nHUdvsdj7Yi4FHThJMUBT.Vrm.blHaj9NoS8HdfTkKdgNhtI8EuWy', 'img/default-avatar.jpg', 1, NULL, '2023-01-05 08:08:45', '2023-01-05 08:18:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE `user_providers` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forms`
--
ALTER TABLE `forms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_order_column_index` (`order_column`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recent_history`
--
ALTER TABLE `recent_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taggables`
--
ALTER TABLE `taggables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userprofiles`
--
ALTER TABLE `userprofiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_providers_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forms`
--
ALTER TABLE `forms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `recent_history`
--
ALTER TABLE `recent_history`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `taggables`
--
ALTER TABLE `taggables`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `userprofiles`
--
ALTER TABLE `userprofiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD CONSTRAINT `user_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
