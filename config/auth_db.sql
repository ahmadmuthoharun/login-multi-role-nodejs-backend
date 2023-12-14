-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 10:43 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `uuid`, `name`, `price`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, '8a323d41-a2ae-4995-9392-b7228e7f5d7c', 'Buku', 5000, 2, '2023-12-10 16:17:17', '2023-12-11 06:47:40'),
(2, '5e778aae-9749-4e93-882f-1723266f2b5c', 'Pensil', 4000, 2, '2023-12-10 16:17:29', '2023-12-11 07:27:17'),
(3, '0597040f-7451-4d7a-9403-ea9e49e98b87', 'Meja Belajar', 55000, 2, '2023-12-10 16:17:40', '2023-12-11 07:27:28'),
(4, '34a8fedc-1904-4ce0-a118-46b7356797a0', 'Penghapus', 2500, 3, '2023-12-10 16:18:28', '2023-12-11 07:27:36'),
(5, '967fc7b6-25e2-4b7f-a927-c7e31e0d223a', 'Penggaris', 5000, 3, '2023-12-10 16:18:31', '2023-12-11 07:27:45'),
(7, '5a7f4437-c0b4-4f4c-aab5-47b87366f741', 'Bolpoin', 10000, 3, '2023-12-10 16:33:44', '2023-12-11 07:27:59'),
(9, '497b7b4b-31b5-4fe1-8cce-088309ac207f', 'Tas', 150000, 4, '2023-12-11 07:34:01', '2023-12-11 07:34:01'),
(10, '3fcde901-bf0a-49ed-a78b-a4ad205cc87d', 'Kotak Pensil', 25000, 4, '2023-12-11 07:34:14', '2023-12-11 07:34:14'),
(11, '47b0a9cf-e32e-4eed-843b-5631007b797b', 'Klip', 15000, 3, '2023-12-11 09:42:15', '2023-12-11 09:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-l5r14xFe2WxLnfdykllXK1CUw1OvlS_', '2023-12-12 07:27:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:27:17', '2023-12-11 07:27:17'),
('0R9Y8RJ5c66M3o-G9A51QS2rBu0G-gEI', '2023-12-12 06:22:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:22:40', '2023-12-11 06:22:40'),
('1MG-Lcxs-YZI2kbcP-hnKrp_2gWjlQ5C', '2023-12-11 18:17:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:17:01', '2023-12-10 18:17:01'),
('3Fl45AcYGeA--fcrvncABF53ksWgg7Z0', '2023-12-12 09:42:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 09:42:05', '2023-12-11 09:42:05'),
('3GzK_TdwyChbUNB1svVpWePPlRkRHX5D', '2023-12-11 18:17:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:17:10', '2023-12-10 18:17:10'),
('48oQ4RHcKKp4rw49E_ZM14RvE2IEVPhM', '2023-12-12 07:34:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:34:14', '2023-12-11 07:34:14'),
('96URg0EuNJfCgHVX-yiBRowwsABy3XNJ', '2023-12-12 07:27:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:27:59', '2023-12-11 07:27:59'),
('9lyDUHBt9ZN8QkOrx-lLOeP8w-_tg26B', '2023-12-12 05:27:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:27:54', '2023-12-11 05:27:54'),
('aO-r02FE75t2HKffISyC14Y5udNqJcV8', '2023-12-11 18:19:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:19:06', '2023-12-10 18:19:06'),
('AuUwFnSFD5pCuUJYFRZ9aZwquM0lm6DW', '2023-12-11 18:26:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:26:12', '2023-12-10 18:26:12'),
('bM29TdpJP9dF6M4xUGyH5Neif6SXegFV', '2023-12-12 07:27:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:27:45', '2023-12-11 07:27:45'),
('bTTN1HfHHu5gn-DZPUoSp93JlohN5zeX', '2023-12-12 07:41:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:41:14', '2023-12-11 07:41:14'),
('CNrNGj1KC5G5HObp23ri_NC2l2UT44ju', '2023-12-12 05:22:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:22:07', '2023-12-11 05:22:07'),
('CWpTJGc6Te0MXvNTXsjqrwdIWvTZYpLP', '2023-12-11 18:13:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:13:10', '2023-12-10 18:13:10'),
('Cy4w5rt2JdfChQDe5vpSQ4auWPFlXl80', '2023-12-12 07:33:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:33:50', '2023-12-11 07:33:50'),
('DJ2s353uLm41TMmU-Yw4VEWo3PaPlqx5', '2023-12-12 07:33:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:33:37', '2023-12-11 07:33:37'),
('dOmxe4WUjD32E2SrD-XWKOElfaaJXqoB', '2023-12-12 07:27:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:27:28', '2023-12-11 07:27:28'),
('dwHdPrBPtDCWQPhb20J1T7QbepCam99G', '2023-12-12 07:34:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:34:01', '2023-12-11 07:34:01'),
('ebxFPLhaa5Pimdk0usdte0Kt468wwwsu', '2023-12-12 06:22:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:22:44', '2023-12-11 06:22:44'),
('eesNoEk8a9jgpwauBBiVcQw7IlJE1pNz', '2023-12-12 06:54:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:54:49', '2023-12-11 06:54:49'),
('EMhOS26eZ1vDg94Rhii4pH-JUdK428LU', '2023-12-11 18:19:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:19:02', '2023-12-10 18:19:02'),
('FExc2q2oBylrJaws6YgAenwLLe7xt_Tz', '2023-12-12 06:47:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:04', '2023-12-11 06:47:04'),
('hcLP3ILBUNaQAW2Vfh3NgzpBRXoaZDU9', '2023-12-11 18:14:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:14:01', '2023-12-10 18:14:01'),
('hf4OhPm5QhXZSMhLNG1iWvMBFWbDhdkG', '2023-12-12 07:27:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:27:36', '2023-12-11 07:27:36'),
('IeiCZZ-i7rqTm1e6CSLp87dU1aeRb8KB', '2023-12-11 18:18:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:18:17', '2023-12-10 18:18:17'),
('ii9xJtohwszlZzZDmghd0a54Xe0sRTDh', '2023-12-12 05:28:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:28:12', '2023-12-11 05:28:12'),
('IWQxLKkNv7a_7ZbdM4Jc5sDUmWTIf118', '2023-12-11 18:24:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:24:59', '2023-12-10 18:24:59'),
('JpBUc56_mkVjuMY5MGODQqwaLD8n4Pu9', '2023-12-12 07:34:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:34:47', '2023-12-11 07:34:47'),
('JsVZHcd0qBbcjWpB7Uoe4Cv65IYre6Tw', '2023-12-12 07:40:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:40:16', '2023-12-11 07:40:16'),
('JV5x9U0X7CR_kXV0sdyFNZ9-43-IPSj6', '2023-12-12 07:34:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:34:38', '2023-12-11 07:34:38'),
('L438syI4_SJ7y5mEkEK9dHguZtDuY_Hp', '2023-12-11 18:18:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:18:30', '2023-12-10 18:18:30'),
('n4qpZWaW6A27dywUabbhMPUyZPTysT6p', '2023-12-12 05:28:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:28:23', '2023-12-11 05:28:23'),
('oMQChWbLcxikUoh46iyrgdJX8sveWga4', '2023-12-11 18:25:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:25:35', '2023-12-10 18:25:35'),
('OwR-xW-V64vuiuQS3lsO5viEa-qIeKjx', '2023-12-12 07:27:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:27:51', '2023-12-11 07:27:51'),
('S3dAnlS6hczN8nm3lHaId1VhcEEvjgIw', '2023-12-12 07:40:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:40:59', '2023-12-11 07:40:59'),
('TSEkX-wsqwxTJ_6dpsXmwSTgsHFbkgEK', '2023-12-12 06:47:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:40', '2023-12-11 06:47:40'),
('TwN7kniUcN_CWL4c_B6w3qnvYDEEIWYa', '2023-12-12 07:40:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:40:07', '2023-12-11 07:40:07'),
('u3NOefbvPPWptDH1jWT61rdG0BqQlDpE', '2023-12-12 06:47:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:47:25', '2023-12-11 06:47:25'),
('V8v_rhKtvnDbkXaoLO7uE5aIyFFvJFUW', '2023-12-11 18:14:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:14:13', '2023-12-10 18:14:13'),
('WmgSMjsDL6eUPKWdQrAbv41avcmTpW4e', '2023-12-12 05:22:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 05:22:10', '2023-12-11 05:22:10'),
('wMtbVXVo5GkGtJpxnUXaBnB95A2snrNV', '2023-12-11 16:35:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"e9d328ef-08ab-4e29-a0ea-a58d715a75bc\"}', '2023-12-10 16:35:14', '2023-12-10 16:35:32'),
('wPCA96PCNp17NkgLokEK9RIUEbiVLoAy', '2023-12-11 18:18:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:18:08', '2023-12-10 18:18:08'),
('YAegSfdsSeQxBdmVaa5d-94EqTFUO8MI', '2023-12-11 18:26:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:26:32', '2023-12-10 18:26:32'),
('zEBBbhLtAG99ipUcI3zLik8Bm7wDPGBO', '2023-12-12 09:42:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 09:42:15', '2023-12-11 09:42:15'),
('Zf4w8i6nS13XmEa0oKb1pEXn73rLzhNn', '2023-12-11 18:18:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-10 18:18:27', '2023-12-10 18:18:27'),
('Zft7L3gLxEXmFxizLTUkZb3R99Y9FtK1', '2023-12-12 06:54:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 06:54:39', '2023-12-11 06:54:39'),
('zrPCFtQaRm2zhKdwSDnZk0o7ebVHoLhV', '2023-12-12 09:42:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userId\":\"e9d328ef-08ab-4e29-a0ea-a58d715a75bc\"}', '2023-12-11 07:40:16', '2023-12-11 09:42:15'),
('_BRQAzwiIg38I1W_j12zAJ9b4mBodCyI', '2023-12-12 07:34:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:34:26', '2023-12-11 07:34:26'),
('_ivgiC9edCMTgRTRjkYsHFzkJ19fk7Tm', '2023-12-12 07:34:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}', '2023-12-11 07:34:18', '2023-12-11 07:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(2, '35838ded-eb6f-46fd-be66-c6911a1f65f8', 'Pramuditya Arjuna', 'user@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$7cW8UJLO+xuQ3yHF2eE8Ow$kh0O8/toyv8HKAMCsgmUcino1ahrEliShZw9x6TGKXI', 'user', '2023-12-09 19:11:48', '2023-12-11 06:47:25'),
(3, 'e9d328ef-08ab-4e29-a0ea-a58d715a75bc', 'Ahmad Muthoharun', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$l/8/GlOES78CMAHFAyahtw$dW+MFDgwgRWuQCeGrBr0m6rC5jgPBmzdKxpbAhp7Ysk', 'admin', '2023-12-09 19:37:57', '2023-12-11 06:47:04'),
(4, '2883b0d7-4c70-4702-a16f-c9bce775d5fa', 'Muhammad Hafidh', 'user2@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$ECHQjoeo3fOrQM++QNNu7w$PgKdndagrptMJHcTehpRcAgs6JrH35pgVjvhLWRtXSs', 'user', '2023-12-11 06:54:39', '2023-12-11 06:54:49'),
(5, '6ee73ae2-1eaf-4787-8616-55e448d69254', 'Muhammad Fandi', 'admin2@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$xalY575GloKmU/AVYKtx9A$NJ9DabEcrF0nUeEoUTokE0aGkG0tbJqiOojnMfNc9Lc', 'admin', '2023-12-11 07:41:14', '2023-12-11 07:41:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
