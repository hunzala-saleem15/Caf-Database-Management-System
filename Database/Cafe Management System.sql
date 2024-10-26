-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2023 at 11:48 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cafe`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `bill_id` int(11) NOT NULL,
  `bill_date` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `tax` decimal(6,2) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`bill_id`, `bill_date`, `total_amount`, `tax`, `cust_id`, `order_id`) VALUES
(1, '2021-04-11', '23847.60', '0.05', 7, 1),
(2, '2021-04-11', '23847.60', '0.05', 2, 2),
(3, '2021-04-11', '11923.80', '0.05', 5, 3),
(4, '2021-04-11', '11923.80', '0.05', 1, 4),
(5, '2021-04-11', '17885.70', '0.05', 5, 5),
(6, '2021-04-11', '35771.40', '0.05', 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `quantity`, `total_amount`, `cust_id`, `item_id`) VALUES
(1, 4, '22712.00', 1, 10),
(2, 5, '28390.00', 2, 26),
(3, 8, '45424.00', 6, 2),
(4, 1, '5678.00', 7, 51),
(5, 2, '11356.00', 3, 23),
(6, 3, '17034.00', 5, 29);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(1, 'Breakfast'),
(2, 'Lunch'),
(3, 'Dinner'),
(4, 'Beverages'),
(5, 'Kids'),
(6, 'Soups'),
(7, 'Healthy Choices'),
(8, 'Desserts'),
(9, 'Special Deals');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `cont_id` int(11) NOT NULL,
  `message` varchar(100) NOT NULL,
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`cont_id`, `message`, `cust_id`) VALUES
(1, 'Hello, I have a question about your products.', 1),
(2, 'I need assistance with my account.', 2),
(3, 'Can you provide more information about your services?', 3),
(4, 'I\'m experiencing issues with the website. Help!', 4),
(5, 'Is there a discount available for bulk orders?', 5),
(6, 'I\'d like to inquire about your return policy.', 6),
(7, 'How can I contact your customer support team?', 7);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `cust_id` int(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `mng_id` int(11) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`cust_id`, `first_name`, `last_name`, `email`, `phone_no`, `address`, `password`, `mng_id`, `date_of_birth`) VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '123-456-7890', '123 Main St', 'Qwer1111', 4, '1990-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '555-555-5555', '456 Elm St', 'Qwer2222', 3, '1985-07-22'),
(3, 'Alice', 'Johnson', 'alice.johnson@email.com', '777-888-9999', '789 Oak St', 'Qwer3333', 1, '1995-03-10'),
(4, 'Bob', 'Williams', 'bob.williams@email.com', '333-444-5555', '101 Pine St', 'Qwer4444', 4, '1980-09-05'),
(5, 'Sarah', 'Brown', 'sarah.brown@email.com', '999-888-7777', '222 Cedar St', 'Qwer5555', 5, '1992-11-30'),
(6, 'Michael', 'Lee', 'michael.lee@email.com', '111-222-3333', '333 Birch St', 'Qwer6666', 2, '1988-04-18'),
(7, 'Emily', 'Davis', 'emily.davis@email.com', '666-777-8888', '444 Maple St', 'Qwer7777', 3, '1993-08-12'),
(8, 'David', 'Clark', 'david.clark@email.com', '777-666-5555', '555 Walnut St', 'Qwer8888', 1, '1975-12-25'),
(9, 'Olivia', 'Martin', 'olivia.martin@email.com', '444-333-2222', '666 Redwood St', 'Qwer9999', 4, '1987-02-28'),
(10, 'James', 'Wilson', 'james.wilson@email.com', '222-333-4444', '777 Spruce St', 'Qwer0000', 5, '1997-06-08');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `mng_id` int(5) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`mng_id`, `first_name`, `last_name`, `email`, `phone_no`, `password`, `address`, `date_of_birth`) VALUES
(1, 'John', 'Smith', 'john.smith@email.com', '123-456-7890', 'Hello0000', '123 Main St', '1980-01-15'),
(2, 'Jane', 'Doe', 'jane.doe@email.com', '555-555-5555', 'Hello1111', '456 Elm St', '1975-07-22'),
(3, 'Michael', 'Johnson', 'michael.johnson@email.com', '777-888-9999', 'Hello2222', '789 Oak St', '1990-03-10'),
(4, 'Sarah', 'Williams', 'sarah.williams@email.com', '111-222-3333', 'Hello3333', '101 Pine St', '1988-09-05'),
(5, 'David', 'Brown', 'david.brown@email.com', '999-888-7777', 'Hello4444', '222 Cedar St', '1982-11-30'),
(6, 'Emily', 'Davis', 'emily.davis@email.com', '666-777-8888', 'Hello5555', '444 Maple St', '1995-04-18'),
(7, 'Robert', 'Wilson', 'robert.wilson@email.com', '777-666-5555', 'Hello6666', '555 Walnut St', '1976-12-25'),
(8, 'Olivia', 'Martin', 'olivia.martin@email.com', '444-333-2222', 'Hello7777', '666 Redwood St', '1989-02-28'),
(9, 'William', 'Clark', 'william.clark@email.com', '222-333-4444', 'Hello8888', '777 Spruce St', '1991-06-08'),
(10, 'Susan', 'Lee', 'susan.lee@email.com', '333-444-5555', 'Hello9999', '888 Birch St', '1984-08-19');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `item_id` int(11) NOT NULL,
  `food_name` varchar(25) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`item_id`, `food_name`, `price`, `cat_id`) VALUES
(1, 'Bread Pudding', '5678.00', 1),
(2, 'Coffee cake Muffins', '5678.00', 1),
(3, 'French Toast', '5678.00', 1),
(4, 'Avocado Toast', '5678.00', 1),
(5, 'Steak Eggs', '5678.00', 1),
(6, 'Cottage cheese', '5678.00', 1),
(7, 'Morning Sunshine Combo', '99.90', 9),
(8, 'Deep Fried Chicken Burger', '5678.00', 2),
(9, 'Vegetable Burger', '5678.00', 2),
(10, 'Patty Molt Sandwich', '5678.00', 2),
(11, 'Turkey Sandwiches', '5678.00', 2),
(12, 'Pan Fried Fritters', '5678.00', 2),
(13, 'Daily Lunch Special', '5678.00', 9),
(14, 'Calzones', '5678.00', 3),
(15, 'Pizza', '5678.00', 3),
(16, 'Fajitas', '5678.00', 3),
(17, 'Meatballs and rice', '5678.00', 3),
(18, 'Quesadillas', '5678.00', 3),
(19, 'Chef\'s Gourmet Feast', '5678.00', 9),
(20, 'Whiskey Sour', '99.90', 4),
(21, 'Pina Colada', '5678.00', 4),
(22, 'Long Island Iced Tea', '5678.00', 4),
(23, 'Martini', '5678.00', 4),
(24, 'Margarita', '5678.00', 4),
(25, 'Bloody Mary', '5678.00', 4),
(26, 'BOGO Deal', '5678.00', 9),
(27, 'Mini Mac & Cheese Bites', '5678.00', 5),
(28, 'Hot Dog Sliders with Mang', '5678.00', 5),
(29, 'Mama Mia Meatball Taquito', '5678.00', 5),
(30, 'Fruit Kabobs with cream c', '5678.00', 5),
(31, 'Cheesy Quesadillas', '5678.00', 5),
(32, 'Nuggets', '5678.00', 5),
(33, 'Kids Meal Deal', '5678.00', 9),
(34, 'Chicken Noodle Soup', '5678.00', 6),
(35, 'Italian Wedding Soup', '5678.00', 6),
(36, 'Minestrone', '5678.00', 6),
(37, 'Lentil Soup', '5678.00', 6),
(38, 'Tomato Soup', '5678.00', 6),
(39, 'New England Clam Chowder', '5678.00', 6),
(40, 'Soup of the Day Special', '5678.00', 9),
(41, 'Garlic Chicken Stir Fry', '5678.00', 7),
(42, 'Lemon-Pepper Salmon', '5678.00', 7),
(43, 'Spiralized Cucumber', '5678.00', 7),
(44, 'Mediterranean Chicken', '5678.00', 7),
(45, 'Day Special', '5678.00', 9),
(46, 'Cheese Cake', '5678.00', 8),
(47, 'Strawberry Mochi', '5678.00', 8),
(48, 'Chocolate Sorbet', '5678.00', 8),
(49, 'Raspberry Muffins', '5678.00', 8),
(50, 'Vegan Brownie', '5678.00', 8),
(51, 'Red Velvet Cake', '5678.00', 8),
(52, 'Temptations Sampler', '5678.00', 9);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `date_of_order` date NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `quantity` int(6) NOT NULL,
  `cust_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `date_of_order`, `total_amount`, `quantity`, `cust_id`) VALUES
(1, '2021-09-23', '22712.00', 4, 3),
(2, '2022-01-03', '22712.00', 4, 5),
(3, '2023-06-13', '11356.00', 2, 2),
(4, '2022-01-13', '11356.00', 2, 1),
(5, '2020-10-20', '17034.00', 3, 8),
(6, '2021-02-23', '34068.00', 6, 10),
(7, '2022-04-22', '5678.00', 1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_menu`
--

CREATE TABLE `order_menu` (
  `item_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_menu`
--

INSERT INTO `order_menu` (`item_id`, `order_id`) VALUES
(3, 1),
(4, 1),
(2, 1),
(7, 1),
(3, 2),
(4, 2),
(6, 3),
(8, 3),
(3, 4),
(4, 4),
(6, 5),
(8, 5),
(6, 6),
(8, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cust_id` (`cust_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`cont_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`cust_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `mng_id` (`mng_id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`mng_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD KEY `item_id` (`item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `cont_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `cust_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `mng_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `bill_ibfk_2` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`) ON DELETE CASCADE;

--
-- Constraints for table `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`mng_id`) REFERENCES `manager` (`mng_id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`cust_id`);

--
-- Constraints for table `order_menu`
--
ALTER TABLE `order_menu`
  ADD CONSTRAINT `order_menu_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `menu` (`item_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_menu_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
