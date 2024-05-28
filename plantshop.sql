-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 11:20 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plantshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `mobile`, `email`, `password`) VALUES
(3, 'Samana Shrestha', 9818275110, 'samana@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `user_id`, `qty`) VALUES
(1, 10001, 101, 1),
(2, 10002, 101, 1),
(6, 10001, 103, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(100) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `order_amount` float NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `product_qty`, `order_amount`, `order_date`, `status`) VALUES
(201, 10003, 102, 1, 2249, '2024-02-02 14:03:48', 'Delivered'),
(204, 10001, 104, 1, 50, '2024-03-14 15:11:23', 'Shipped'),
(208, 10001, 104, 1, 50, '2024-03-14 19:02:22', 'Confirmed'),
(212, 10008, 104, 1, 2249, '2024-03-17 12:00:03', 'Confirmed'),
(213, 10003, 104, 1, 2249, '2024-03-17 12:00:03', 'Confirmed'),
(214, 10002, 105, 1, 1849, '2024-03-17 12:36:02', 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `category` int(10) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` int(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `desc` longtext NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category`, `title`, `price`, `qty`, `desc`, `image`) VALUES
(10001, 1001, 'All Zodiac', 500, 16, 'Each segment of the mandala is dedicated to one of the twelve zodiac signs, arranged in a harmonious pattern around the center. Aries, Taurus, Gemini, Cancer, Leo, Virgo, Libra, Scorpio, Sagittarius, Capricorn, Aquarius, and Pisces each find their place within the mandala, represented by their unique symbols. ', 'mandala_1.png'),
(10002, 1002, 'Shades of Blue', 1800, 22, 'The overall effect of this mandala is one of serenity and calm. It evokes the vast expanse of the sky meeting the endless horizon of the sea, filling you with a sense of peace represented by the Blue.', 'mandala_2.png'),
(10003, 1001, 'Half and half', 2200, 26, 'On one side, you have a simple mandala, with intricate patterns and shapes radiating from the center, creating a symmetrical design. On the other side, there\'s a serene depiction of the moon, its gentle glow casting a soft light over the mandala.', 'mandala_3.png'),
(10004, 1002, 'Floral Mandala Portrait\r\n\r\n\r\n\r\n\r\n', 1200, 15, 'The combination of the girl\'s face, adorned with flowers, and the mini mandala behind her creates a sense of harmony between human beauty and the cosmic order. It\'s a reminder of the profound connection between humanity and the natural world, encapsulated within the delicate intricacies of the mandala\'s design.', 'mandala_4.png'),
(10005, 1002, 'Splash of Pink', 1500, 31, 'cyan and bright pink creates a striking visual harmony, symbolizing the balance between calmness and vitality, serenity and passion. It\'s a mandala that invites contemplation and celebration, a testament to the beauty of contrast and diversity in the world around us.', 'mandala_5.png'),
(10006, 1003, 'Cosmic Bloom', 2700, 16, 'In her outstretched hand, she cradles a mandala, its intricate patterns swirling like galaxies in the cosmos. It gleams with cosmic energy, radiating light and harmony. With a gentle touch, she guides the mandala like a celestial body, its orbit echoing the dance of planets and stars.', 'mandala_6.png'),
(10007, 1003, 'Lotus Symphony', 1400, 36, 'As you gaze upon this mandala, you are transported to a realm of serenity and majesty, where the lotus symbolizes purity and enlightenment, and the royal blue mandala design embodies cosmic order and harmony. ', 'mandala_7.png'),
(10008, 1004, 'The Black and White Mandala', 2200, 17, 'Intricate white patterns emerge from a deep black background, like stars illuminating the night sky. The black expanse serves as a canvas, accentuating the ethereal beauty of the white designs that dance across its surface.', 'mandala_8.png'),
(10009, 1004, 'Golden Moonlight', 2400, 30, 'Surrounding the moon, intricate patterns and geometric shapes unfurl in lustrous gold, weaving a symphony of elegance.', 'mandala_9.png'),
(10010, 1004, 'Buddhist Wisdom', 2800, 50, 'In this intricate mandala, the rich tapestry of Buddhist symbolism unfolds, weaving together a profound narrative of spirituality and enlightenment. ', 'mandala_10.png'),
(10011, 1005, 'Bookmark-Combo', 1700, 19, 'When you use this bookmark to mark your place in a book, it not only serves a practical purpose but also adds a touch of elegance and mindfulness to your reading experience. It\'s a reminder to pause, breathe, and immerse yourself in the beauty of the present moment, just like you did when you created the mandala itself.', 'mandala_11.png'),
(10012, 1005, 'Golden Hour', 2900, 42, 'Imagine a mandala that captures the essence of the golden hour – that magical time just before sunset when the world is bathed in a warm, golden glow.', 'mandala_12.png'),
(10013, 1006, 'The letter - S', 2800, 14, '\r\nPicture a unique mandala crafted in the shape of the letter \"S\", its elegant curves forming a graceful and harmonious design. At the bottom curve of the \"S\", nestled within the intricate patterns, blooms a solitary flower, radiating beauty and serenity.', 'mandala_13.png'),
(10014, 1006, 'The letter - A', 2000, 32, 'Visualize a captivating mandala ingeniously shaped like the letter \"A\", its bold lines and intricate details forming a stunning work of art. Positioned delicately at the base of the \"A\", an exquisite flower blooms, adding a touch of natural beauty to the mandala\'s design.\r\n\r\n', 'mandala_14.png'),
(10015, 1006, 'Ganesha\'s Blessings', 1200, 40, 'Surrounding Lord Ganesha, intricate patterns and motifs in shades of deep blue emerge, contrasting beautifully against the vibrant background. ', 'mandala_15.png'),
(10016, 1006, 'Swan Embrace', 2100, 35, 'The swans, symbols of love, grace, and purity, are intricately depicted with flowing lines and gentle curves, their heads meeting in a tender union that evokes a sense of harmony and devotion. Their elegant forms create a seamless flow, mirroring the eternal dance of connection and companionship.', 'mandala_16.png'),
(10017, 1006, 'Notebook Mandala - 1', 80, 36, 'Notebook cover adorned with a captivating mandala, its intricate design captivating the eye and inviting exploration. The mandala, intricately drawn with delicate lines and vibrant colors, radiates with a sense of harmony and balance.', 'mandala_17.png'),
(10018, 1006, 'Notebook Mandala - 2', 80, 25, 'Notebook cover adorned with a captivating mandala, its intricate design captivating the eye and inviting exploration. The mandala, intricately drawn with delicate lines and vibrant colors, radiates with a sense of harmony and balance.', 'mandala_18.png'),
(10019, 1007, 'Notebook Mandala - 3', 80, 26, 'Notebook cover adorned with a captivating mandala, its intricate design captivating the eye and inviting exploration. The mandala, intricately drawn with delicate lines and vibrant colors, radiates with a sense of harmony and balance.', 'mandala_19.png'),
(10020, 1007, 'The Kumari Mandala', 2400, 12, 'Kumari\'s form is depicted with reverence and reverence, her serene expression exuding an aura of mystical power and ancient wisdom. Adorned in resplendent attire and adorned with jewels, she emanates an otherworldly beauty that captivates all who behold her.', 'mandala_20.png'),
(10021, 1007, 'Ganesha\'s Blessing II', 2600, 24, 'Mandala where the vibrant color red dominates, exuding an aura of passion, power, and vitality. At its center stands Lord Ganesha, the revered Hindu deity known as the remover of obstacles and the patron of intellect and wisdom.', 'mandala_21.png'),
(10022, 1007, 'The Marbled Blue and Pink ', 900, 45, 'Captivating mandala adorned with four marble-like designs, each imbued with serene shades of blue and gentle hues of pink.', 'mandala_22.png'),
(10023, 1007, 'The Floral Mandala', 900, 45, 'Mandala adorned with a profusion of exquisite flowers, each petal delicately crafted with intricate detail and vibrant colors.', 'mandala_23.png'),
(10024, 1007, 'The Floral Mandala II', 1700, 50, 'The Floral Mandala', 'mandala_24.png'),
(10025, 1008, 'Phases of Moon', 1600, 38, 'Phases of moon mandala', 'mandala_25.png'),
(10026, 1008, 'Golden Hour II', 1800, 32, 'Golden Hour II', 'mandala_26.png'),
(10027, 1008, 'Lotus Stare', 1300, 29, 'Lotus Stare', 'mandala_27.png'),
(10028, 1009, 'Brown Symphony', 2200, 30, 'Brown Symphony', 'mandala_28.png'),
(10029, 1009, 'Name Mandala I', 1800, 40, 'aarahan', 'mandala_29.png'),
(10030, 1010, 'Name Mandala II', 2200, 32, 'Sujata', 'mandala_30.png'),
(10031, 1010, 'The Buddha Mandala', 2000, 45, 'The Buddha Mandala', 'mandala_31.png'),
(10032, 1010, 'Parent\'s Embrace', 2500, 35, 'hands', 'mandala_32.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile` bigint(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `mobile`, `email`, `password`) VALUES
(102, 'Surya', 'Shrestha', 9853575324, 'surya@gmail.com', '9624dab0ab4b9b6cb89442fed6dca5ce'),
(104, 'sumina', 'Shrestha', 9856788765, 'sumina@gmail.com', '9e90b0a84e904031ebe906ab0fbe2232'),
(105, 'samanaa', 'shrestha', 9817263556, 'samanaa@gmail.com', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10033;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
