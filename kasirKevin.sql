
-- Drop `kasirKevin` database if exists.
DROP DATABASE IF EXISTS `kasirKevin`

-- Create `kasirKevin` database.
CREATE DATABASE `kasirKevin`;

-- Use `tambal_ban` database.
USE `kasirKevin`;

-- Drop `category` table if exists;
DROP TABLE IF EXISTS `category`;
-- Create `category` table.
CREATE TABLE `category` (
  `id_category` int(10)   COLLATE utf8mb4_general_ci NOT NULL,
  `category` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL,
  INDEX (`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Drop `product` table if exists;
DROP TABLE IF EXISTS `product`;
-- Create `product` table.
CREATE TABLE `product` (
  `id_product` int(10)        COLLATE utf8mb4_general_ci NOT NULL,
  `name_product` varchar(50)  COLLATE utf8mb4_general_ci NOT NULL,
  `price_product` int(50)     COLLATE utf8mb4_general_ci NOT NULL,
  `id_category` int(10)       COLLATE utf8mb4_general_ci NOT NULL,
  INDEX (`id_product`) FOREIGN KEY (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- Drop `user` table if exists;
DROP TABLE IF EXISTS `user`;
-- Create `user` table.
CREATE TABLE `user` (
  `id` int(10)            COLLATE utf8mb4_general_ci NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_general_ciCHARACTER NOT NULL,
  `password` varchar(50)  COLLATE utf8mb4_general_ciCHARACTER NOT NULL,
  `email` varchar(50)     COLLATE utf8mb4_general_ciCHARACTER NOT NULL,
  `telephone` int(20)     COLLATE utf8mb4_general_ci NOT NULL
  INDEX (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

