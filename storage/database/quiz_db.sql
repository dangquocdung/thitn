-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2017 at 10:09 AM
-- Server version: 10.1.22-MariaDB
-- PHP Version: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `user_answer` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` char(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_11_23_160102_create_sessions_table', 1),
(4, '2017_11_25_133229_create_settings_table', 1),
(5, '2017_12_03_080242_create_topics_table', 1),
(6, '2017_12_03_080330_create_tests_table', 1),
(7, '2017_12_03_091845_create_questions_table', 1),
(8, '2017_12_03_110511_create_answers_table', 1),
(9, '2017_12_21_085915_add_image_video_column_to_questions', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `topic_id` int(10) UNSIGNED NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `a` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `b` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `d` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code_snippet` text COLLATE utf8mb4_unicode_ci,
  `answer_exp` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `question_img` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `question_video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `topic_id`, `question`, `a`, `b`, `c`, `d`, `answer`, `code_snippet`, `answer_exp`, `created_at`, `updated_at`, `question_img`, `question_video_link`) VALUES
(1, 1, 'The common element which describe the web page, is ?', 'paragraph', 'heading', 'list', 'All of these', 'D', NULL, NULL, '2017-12-11 22:39:37', '2017-12-22 16:54:09', NULL, NULL),
(2, 1, 'HTML stands for?', 'Hyper Text Markup Language', 'High Text Markup Language', 'Hyper Tabular Markup Language', 'None of these', 'A', NULL, NULL, '2017-12-11 22:40:10', '2017-12-22 16:31:26', 'question_1513930792Screenshot (1).png', 'https://www.youtube.com/embed/phhtPnUlAUs'),
(3, 1, 'Which of the following tag is used to mark a beginning of paragraph ?', '<TD>', '<br>', '<P>', '<TR>', 'C', NULL, NULL, '2017-12-11 22:40:53', '2017-12-22 16:44:31', 'question_1513932271Screenshot (1).png', NULL),
(4, 1, 'From which tag descriptive list starts ?', '<LL>', '<DD>', '<DL>', '<DS>', 'C', NULL, NULL, '2017-12-11 22:41:37', '2017-12-11 22:41:37', NULL, NULL),
(5, 1, 'Correct HTML tag for the largest heading is', '<head>', '<h6>', '<heading>', '<h1>', 'D', NULL, NULL, '2017-12-11 22:42:11', '2017-12-11 22:42:11', NULL, NULL),
(6, 1, 'The attribute of <form> tag', 'Method', 'Action', 'Both (a)&(b)', 'None of these', 'C', NULL, NULL, '2017-12-11 22:46:09', '2017-12-11 22:46:09', NULL, NULL),
(7, 1, 'Markup tags tell the web browser', 'How to organised the page', 'How to display the page', 'How to display message box on page', 'None of these', 'B', NULL, NULL, '2017-12-11 22:47:05', '2017-12-11 22:47:05', NULL, NULL),
(8, 1, 'www is based on which model?', 'Local-server', 'Client-server', '3-tier', 'None of these', 'B', NULL, NULL, '2017-12-11 22:47:58', '2017-12-11 22:47:58', NULL, NULL),
(9, 1, 'What are Empty elements and is it valid?', 'No, there is no such terms as Empty Element', 'Empty elements are element with no data', 'No, it is not valid to use Empty Element', 'None of these', 'B', NULL, NULL, '2017-12-11 22:48:45', '2017-12-11 22:48:45', NULL, NULL),
(10, 1, 'Which of the following attributes of text box control allow to limit the maximum character?', 'size', 'len', 'maxlength', 'all of these', 'C', NULL, NULL, '2017-12-11 22:49:18', '2017-12-11 22:49:18', NULL, NULL),
(11, 2, 'Which of the following selector selects an element that has no children?', ':empty', ':nochild', ':inheritance', ':no-child', 'A', NULL, NULL, '2017-12-11 22:51:30', '2017-12-11 22:51:30', NULL, NULL),
(12, 2, 'Which of the following selector selects the elements that are currently enabled?', ':element', ':empty', ':enabled', 'none of the mentioned', 'C', NULL, NULL, '2017-12-11 22:52:06', '2017-12-11 22:52:06', NULL, NULL),
(13, 2, 'Which of the following selector selects elements that do not match the selector s?', ':!(s)', ':nth-child(s)', ':not(s)', 'none of the mentioned', 'C', NULL, NULL, '2017-12-11 22:53:25', '2017-12-11 22:53:25', NULL, NULL),
(14, 2, 'Which of the following selector selects the element that is the target of a referring URI?', ':target', ':selection', '::selection', ':URI', 'A', NULL, NULL, '2017-12-11 22:54:05', '2017-12-11 22:54:05', NULL, NULL),
(15, 2, 'Which of the following selector selects the elements that are checked?', 'E ~ F', '::after', ':checked', 'none of the mentioned', 'C', NULL, NULL, '2017-12-11 22:54:46', '2017-12-11 22:54:46', NULL, NULL),
(16, 3, 'Which method is used to obtain the “drawing context” object ?', 'getContext()', 'getObject()', 'get()', 'getDrawing()', 'A', NULL, NULL, '2017-12-11 22:56:24', '2017-12-11 22:56:24', NULL, NULL),
(17, 3, 'What is the returning value of the getContext() method?', 'Drawing model', 'CanvasRenderingContext2D object', 'Context2D object', 'None of the mentioned', 'B', NULL, NULL, '2017-12-11 22:56:55', '2017-12-11 22:56:55', NULL, NULL),
(18, 3, 'How does SVG describe complex shapes?', 'Path of lines', 'Path of curves', 'Path of lines and curves', 'None of the mentioned', 'C', NULL, NULL, '2017-12-11 22:57:43', '2017-12-11 22:57:43', NULL, NULL),
(19, 3, 'Which is the method invoked to begin a path?', 'begin()', 'path()', 'createPath()', 'beginPath()', 'D', NULL, NULL, '2017-12-11 22:58:26', '2017-12-11 22:58:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `welcome_txt` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Quick Quiz',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `logo`, `favicon`, `welcome_txt`, `created_at`, `updated_at`) VALUES
(1, 'logo_1512974578qq2.png', 'favicon.ico', 'Quick Quiz', NULL, '2017-12-11 14:42:58');

-- --------------------------------------------------------

--
-- Table structure for table `tests`
--

CREATE TABLE `tests` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `total_marks` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `per_q_mark` int(11) NOT NULL,
  `timer` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `title`, `description`, `per_q_mark`, `timer`, `created_at`, `updated_at`) VALUES
(1, 'HTML Quiz', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin condimentum mauris dui, vel sagittis nisi elementum ut.', 1, 15, '2017-12-09 00:56:48', '2017-12-11 22:34:24'),
(2, 'CSS Quiz', 'Integer finibus ultricies ex in maximus. Duis nibh odio, condimentum eget est non, congue vestibulum leo. Vivamus sodales est diam.', 2, 10, '2017-12-09 01:01:29', '2017-12-11 22:35:07'),
(3, 'JS Test', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin condimentum mauris dui, vel sagittis nisi elementum ut.', 5, 20, '2017-12-09 01:02:22', '2017-12-11 22:58:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` char(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `address`, `city`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@info.com', '$2y$10$Bg.mSPdxdTN0.FLYvBg7HuSrJJ7o91tNxYTVoF/clwVL6/mFBK3ZO', NULL, NULL, NULL, 'A', 'Mcpv4ilN51xqovhZPRy3UgqefoA0dbzBhgvWYpe0rNKZwkmL06cdRK7VxVFS', '2017-12-10 17:16:00', '2017-12-10 17:16:00'),
(3, 'Jhon Doe', 'jhon@info.com', '$2y$10$/eXLJNjlKnjgypRqzfN1geFjSCUF5RM1Ztu0zKeYbaSeIfCbHC0L6', '123456789', NULL, 'Bhilwara', 'S', 'aCvL7vAKNKQeztz3ZPSNLs0sjVb9iB7Ti84UNGsbEzw48LHp3Yd3pTQ34KIx', '2017-12-10 17:19:47', '2017-12-21 20:31:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_topic_id_foreign` (`topic_id`);

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
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_topic_id_foreign` (`topic_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
