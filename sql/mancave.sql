-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 07, 2022 at 04:15 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mancave`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `ip_add` varchar(50) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `cat_name`) VALUES
(1, 'Gloss'),
(2, 'Balm'),
(3, 'Scrub');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `ord_date` date NOT NULL,
  `order_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `invoice_no`, `ord_date`, `order_status`) VALUES
(1, 1, 2351, '2021-06-26', 'unfulfilled'),
(2, 1, 3696, '2021-06-27', 'unfulfilled'),
(3, 1, 1511, '2021-06-27', 'unfulfilled'),
(4, 1, 3846, '2021-06-27', 'unfulfilled'),
(5, 3, 3297, '2021-06-27', 'unfulfilled'),
(6, 3, 3793, '2021-06-27', 'unfulfilled'),
(7, 3, 4546, '2021-06-27', 'unfulfilled'),
(8, 2, 1691, '2021-06-27', 'unfulfilled'),
(9, 2, 682, '2021-06-27', 'unfulfilled'),
(10, 2, 3499, '2021-06-27', 'unfulfilled'),
(11, 2, 4076, '2021-06-28', 'unfulfilled'),
(12, 2, 3218, '2021-06-28', 'unfulfilled'),
(13, 2, 2683, '2021-06-28', 'unfulfilled'),
(14, 2, 1867, '2021-06-28', 'unfulfilled'),
(15, 2, 1437, '2021-06-28', 'unfulfilled'),
(16, 2, 4276, '2021-06-28', 'unfulfilled'),
(17, 1, 3662, '2021-06-28', 'unfulfilled'),
(18, 3, 1672, '2021-06-28', 'unfulfilled'),
(19, 3, 2624, '2021-06-28', 'unfulfilled'),
(20, 6, 662, '2021-06-28', 'unfulfilled'),
(21, 6, 4115, '2021-06-28', 'unfulfilled'),
(22, 6, 4156, '2021-06-28', 'unfulfilled'),
(23, 6, 2924, '2021-06-28', 'unfulfilled'),
(24, 6, 1343, '2021-06-28', 'unfulfilled'),
(25, 6, 1070, '2021-06-28', 'unfulfilled'),
(26, 6, 1702, '2021-07-01', 'unfulfilled'),
(27, 7, 2883, '2022-12-07', 'unfulfilled');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`order_id`, `product_id`, `qty`, `status`) VALUES
(1, 10, 1, 'fulfilled'),
(1, 9, 1, 'fulfilled'),
(2, 8, 1, 'fulfilled'),
(3, 6, 1, 'fulfilled'),
(4, 13, 1, 'unfulfilled'),
(4, 5, 1, 'fulfilled'),
(5, 13, 1, 'unfulfilled'),
(6, 8, 1, 'fulfilled'),
(7, 17, 1, 'fulfilled'),
(8, 24, 1, 'unfulfilled'),
(9, 6, 1, 'unfulfilled'),
(10, 6, 1, 'unfulfilled'),
(11, 6, 1, 'unfulfilled'),
(12, 6, 1, 'unfulfilled'),
(13, 6, 1, 'unfulfilled'),
(14, 6, 1, 'unfulfilled'),
(15, 6, 1, 'fulfilled'),
(16, 6, 1, 'fulfilled'),
(17, 6, 2, 'unfulfilled'),
(18, 22, 1, 'unfulfilled'),
(18, 8, 1, 'unfulfilled'),
(19, 5, 1, 'unfulfilled'),
(20, 6, 1, 'unfulfilled'),
(21, 5, 1, 'unfulfilled'),
(22, 8, 1, 'unfulfilled'),
(23, 27, 1, 'fulfilled'),
(24, 11, 1, 'unfulfilled'),
(25, 6, 1, 'unfulfilled'),
(26, 27, 3, 'fulfilled'),
(27, 5, 1, 'unfulfilled');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `payment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `amount`, `customer_id`, `order_id`, `currency`, `payment_date`) VALUES
(14, 350, 6, 20, 'GHC', '2021-06-28'),
(15, 15, 6, 21, 'GHC', '2021-06-28'),
(16, 200, 6, 22, 'GHC', '2021-06-28'),
(17, 800, 6, 23, 'GHC', '2021-06-28'),
(18, 500, 6, 24, 'GHC', '2021-06-28'),
(19, 350, 6, 25, 'GHC', '2021-06-28'),
(20, 2400, 6, 26, 'GHC', '2021-07-01'),
(21, 1, 7, 27, 'GHC', '2022-12-07');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_price` double NOT NULL,
  `product_desc` varchar(2000) NOT NULL,
  `product_img` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_cat`, `seller_id`, `product_name`, `product_price`, `product_desc`, `product_img`, `stock`) VALUES
(5, 1, 1, 'Cherry Lip Balm', 10.5, 'Contains ingredients that give your lips a fresh and healthy look', 'images/balm.png', 1),
(6, 1, 1, 'Berry Lip balm\r\n', 350, 'This product was freshly made with strawberry which has a very pleasant smell.', 'images/balm2.jpeg', 46),
(8, 1, 1, 'Fresh Coco Lip cream', 200, 'Good on lips\r\n', 'images/balm3.jpeg', 1),
(9, 1, 1, 'Fresh Coco Lip cream\r\n', 130, 'Good on lips', 'images/balm5.webp', 4),
(10, 2, 1, 'Berry Lip Balm', 1000, 'Good on lips', 'images/balm4.jpeg', 5),
(11, 3, 1, 'Aloe vera Balm\r\n\r\n', 500, 'Good on lips', 'images/balm6.webp', 2),
(12, 1, 1, 'Fruit Mix Balm\r\n\r\n', 400, 'Good on lips', 'images/balm7.webp', 4),
(13, 1, 2, 'Lip gloss B', 400, 'Good on lips', 'images/lip1.webp', 5),
(15, 2, 2, 'Lip gloss B\r\n', 750, 'Good on lips', 'images/lip2.jpg', 2),
(16, 2, 2, 'Lip gloss B', 1000, 'Good on lips\r\n', 'images/lip3.webp', 5),
(17, 2, 2, 'Lip gloss B\r\n', 3000, 'Good on lips', 'images/lip4.webp', 10),
(18, 3, 2, 'Lip gloss B', 1500, 'Good on lips\r\n', 'images/lip5.webp', 5),
(19, 3, 2, 'Lip gloss B', 500, 'Good on lips', 'images/lip6.webp', 15),
(20, 3, 2, 'Lip gloss B', 6000, 'Good on lips', 'images/lip7.webp', 5),
(21, 1, 2, 'Lip scrub C\r\n', 50, 'Good on lips', 'images/scrub1.jpg', 5),
(22, 1, 2, 'Lip scrub C\r\n', 85, 'Good on lips', 'images/scrub2.webp', 2),
(23, 1, 2, 'Lip scrub C', 300, 'Good on lips', 'images/scrub3.webp', 15),
(24, 1, 2, 'Lip scrub C\r\n', 2, 'Good on lips', 'images/scrub4.webp', 14),
(25, 1, 1, 'Lip scrub C\r\n', 300, 'Good on lips', 'images/scrub5.webp', 5),
(26, 1, 1, 'Lip scrub C', 350, 'Good on lips', 'images/scrub6.webp', 20),
(27, 2, 6, 'Lip scrub C', 800, 'Good on lips', 'images/scrub7.webp', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `street_name` varchar(50) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `user_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `country`, `city`, `street_name`, `contact`, `user_role`) VALUES
(1, 'Exclusive Lip Care', 'exclusive@gmail.com', '123456', 'Ghana', 'Accra', 'University Avenue', '0274091726', 2),
(2, 'Man Sales', 'sales@gmail.com', '7c8b10694698f0188542acdd38313d9d', 'Ghana', 'Accra', 'Adjiringanor', '0557335284', 2),
(3, 'Man Test', 'test@gmail.com', '7c8b10694698f0188542acdd38313d9d', 'Ghana', 'Accra', 'Adjirn', '0557335281', 3),
(5, 'Kwasi', 'kshugah1@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', 'Ghana', 'Accra', 'Akosombo road', '0544349601', 2),
(6, 'Victor', 'victor@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'Ghana', 'Accra', 'Nii Laryea Street', '0202766120', 2),
(7, 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3', 'Ghana', 'Accra', '1 street', '0507777777', 1),
(8, 'ob', 'ob@gmail.com', '99faee4e1a331a7595932b7c18f9f5f6', 'Ghana', 'Tema', '2 lane', '0543333333', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_cat` (`product_cat`),
  ADD KEY `seller_id` (`seller_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
