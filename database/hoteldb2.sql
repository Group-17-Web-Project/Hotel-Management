-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 17, 2024 lúc 05:22 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hoteldb2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bookings`
--

CREATE TABLE `bookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'waiting',
  `start_date` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`) VALUES
(4, 'Lại Tiến Đức', 'laitienduc37@gmail.com', '01686186265', 'Message 123', '2024-06-13 20:52:45', '2024-06-13 20:52:45'),
(9, 'Nguyễn Nam Khánh', 'exodiakhanh@gmail.com', '0386260203', 'Tôi cần tư vấn', '2024-06-16 08:53:21', '2024-06-16 08:53:21'),
(10, 'Nguyễn Nam Khánh', 'exodiakhanh@gmail.com', '0386260203', 'Tôi cần đặt phòng', '2024-06-16 09:03:55', '2024-06-16 09:03:55'),
(11, 'Nguyễn Nam Khánh', 'exodiakhanh@gmail.com', '0386260203', 'Tôi cần hỗ trợ', '2024-06-16 10:37:50', '2024-06-16 10:37:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
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
-- Cấu trúc bảng cho bảng `gallaries`
--

CREATE TABLE `gallaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `gallaries`
--

INSERT INTO `gallaries` (`id`, `image`, `created_at`, `updated_at`) VALUES
(3, '1718331843.jpg', '2024-06-13 19:24:03', '2024-06-13 19:24:03'),
(4, '1718331854.jpg', '2024-06-13 19:24:14', '2024-06-13 19:24:14'),
(5, '1718331865.png', '2024-06-13 19:24:26', '2024-06-13 19:24:26'),
(6, '1718331871.jpg', '2024-06-13 19:24:31', '2024-06-13 19:24:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_06_09_134311_create_sessions_table', 1),
(7, '2024_06_11_162350_create_rooms_table', 1),
(8, '2024_06_13_044509_create_bookings_table', 2),
(9, '2024_06_13_100158_add_status_field_to_bookings', 3),
(10, '2024_06_13_141913_create_gallaries_table', 4),
(11, '2024_06_14_031800_create_contacts_table', 5),
(12, '2024_06_14_065619_create_notifications_table', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
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
-- Cấu trúc bảng cho bảng `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `room_title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `wifi` varchar(255) NOT NULL DEFAULT 'yes',
  `n_bathroom` int(25) NOT NULL,
  `n_bed` int(25) NOT NULL,
  `n_people` int(25) NOT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rooms`
--

INSERT INTO `rooms` (`id`, `room_title`, `image`, `description`, `price`, `wifi`, `n_bathroom`, `n_bed`, `n_people`, `room_type`, `created_at`, `updated_at`) VALUES
(1, 'MetaHotel', '1718250785.jpg', 'Đây là một khách sạn khá vừa với túi tiền của người đi khách sạn', '500', 'yes', 2, 2, 2, 'regular', '2024-06-12 20:53:05', '2024-06-15 09:52:00'),
(2, 'Khách sạn Vương Giả', '1718250841.jpg', 'Khách sạn này phù hợp với những người trong giới thượng lưu', '5000', 'yes', 0, 0, 0, 'premium', '2024-06-12 20:54:01', '2024-06-12 20:54:01'),
(6, 'Metropole Ha Noi', '1718545098.jpg', 'Có tuổi đời cao nhất trong số các khách sạn tại thủ đô, Metropole được xây dựng từ năm 1901 và mang dấu ấn của kiến trúc Pháp cổ điển. Là khách sạn 5 sao chuẩn quốc tế và nằm ở trung tâm quận Hoàn Kiếm, quận trung tâm Hà Nội, đây là nơi đón tiếp và diễn ra nhiều cuộc gặp gỡ cấp cao của các nguyên thủ quốc gia trong các chuyến công du tới Việt Nam. So với các khách sạn hiện đại mới xây, phòng tại Metropole nhỏ hơn, ít ổ cắm điện và không đa dạng các món ăn Việt Nam trong thực đơn.', '400', 'yes', 2, 2, 2, 'regular', '2024-06-16 03:45:24', '2024-06-16 06:38:18'),
(7, 'JW Marriott Hotel Hanoi', '1718545170.jpg', 'Thứ Ba, 16/04/2024\r\nTOP 10 khách sạn 5 sao tốt nhất Việt Nam\r\nNếu bạn muốn có những bức hình sang chảnh trong chuyến du lịch sắp tới của mình, hãy chọn những cái tên được điểm danh sau đây vì những nơi lưu trú này đã được Bộ Văn hóa, Thể thao và Du lịch xếp hạng top 10 khách sạn 5 sao tốt nhất trong lễ trao \"Giải thưởng du lịch Việt Nam năm 2024\"\r\n\r\nCác tin tức du lịch khác:\r\n\r\nHomestay Đà Lạt\r\nVé máy bay Hà Nội Phú Quốc Vietjet\r\n1. Intercontinental Danang Sun Penisula Resort (Đà Nẵng)\r\nĐịa chỉ: Bãi Bắc, Sơn Trà, Đà Nẵng\r\n\r\n\r\nKhu nghỉ dưỡng này cách sân bay Đà Nẵng khoảng 45 phút đi taxi, được du khách ưa chuộng bởi có bãi biển riêng, hồ bơi lớn ngoài trời và trung tâm spa. Bạn có thể đặt cho mình và gia đình một căn biệt thự ven biển để tận hưởng trọn vẹn nhất vẻ đẹp của biển Đà Nẵng. Từ đây, bạn cũng dễ dàng di chuyển đến một số điểm du lịch nổi bật của Đà Nẵng như Ngũ Hành Sơn, khu di tích Mỹ Sơn...\r\n\r\nGiá phòng: 10.000.000 - 12.000.000 đồng/phòng/đêm. \r\n\r\n2. Metropole Ha Noi (Hà Nội)\r\nĐịa chỉ: 15 Ngô Quyền, Hoàn Kiếm, Hà Nội\r\n\r\n\r\nCó tuổi đời cao nhất trong số các khách sạn tại thủ đô, Metropole được xây dựng từ năm 1901 và mang dấu ấn của kiến trúc Pháp cổ điển. Là khách sạn 5 sao chuẩn quốc tế và nằm ở trung tâm quận Hoàn Kiếm, quận trung tâm Hà Nội, đây là nơi đón tiếp và diễn ra nhiều cuộc gặp gỡ cấp cao của các nguyên thủ quốc gia trong các chuyến công du tới Việt Nam. So với các khách sạn hiện đại mới xây, phòng tại Metropole nhỏ hơn, ít ổ cắm điện và không đa dạng các món ăn Việt Nam trong thực đơn.\r\n\r\nGiá phòng: 4.000.000 - 8.000.000 đồng/phòng/đêm.\r\n\r\n3. JW Marriott Hotel Hanoi (Hà Nội)\r\nĐịa chỉ: Số 8 Đỗ Đức Dục, Từ Liêm, Hà Nội\r\n\r\n\r\nNằm ở phía tây Hà Nội, với không gian vô cùng thoáng đãng, JW Marriott được nhiều du khách đánh giá cao về cảnh quan và kiến trúc hiện đại vô cùng ấn tượng. Khách sạn này nằm ở ngoại ô, chỉ mất 35 phút đi tới từ sân bay Nội Bài và ít khi gặp tắc đường. Thực đơn của khách sạn rất phong phú với các món ăn được phục vụ từ nhiều đầu bếp nổi tiếng Âu - Á.', '500', 'yes', 1, 1, 2, 'regular', '2024-06-16 03:46:51', '2024-06-16 06:39:30'),
(8, 'Rex Hotel', '1718545201.jpg', 'Với vị trí cực \"hot\", nằm ngay giữa phố đi bộ Nguyễn Huệ, đây là địa chỉ được nhiều du khách lựa chọn để thuận tiện khám phá Sài Gòn sôi động ngày đêm. Từ Rex Hotel, du khách dễ dàng di chuyển tới các điểm du lịch nổi tiếng như Nhà Hát Lớn, chợ Bến Thành và các khu vui chơi của thành phố.', '200', 'yes', 1, 1, 1, 'regular', '2024-06-16 03:48:17', '2024-06-16 06:40:01'),
(9, 'Laguna Lăng Cô', '1718545365.jfif', 'Biển Lăng Cô xinh đẹp và yên bình là nơi Laguna đặt mình và mang đến cho những vị khách yêu quý không gian nghỉ dưỡng sang trọng, đẳng cấp với các khu biệt thự có hồ bơi riêng. Nếu bạn yêu thích phong cách Á Đông và dấu ấn Việt Nam, Laguna là lựa chọn hợp lý dành cho bạn.', '450', 'yes', 1, 1, 1, 'regular', '2024-06-16 03:49:08', '2024-06-16 06:42:45'),
(10, 'Dalat Palace', '1718545242.jpg', 'Thứ Ba, 16/04/2024\r\nTOP 10 khách sạn 5 sao tốt nhất Việt Nam\r\nNếu bạn muốn có những bức hình sang chảnh trong chuyến du lịch sắp tới của mình, hãy chọn những cái tên được điểm danh sau đây vì những nơi lưu trú này đã được Bộ Văn hóa, Thể thao và Du lịch xếp hạng top 10 khách sạn 5 sao tốt nhất trong lễ trao \"Giải thưởng du lịch Việt Nam năm 2024\"\r\n\r\nCác tin tức du lịch khác:\r\n\r\nHomestay Đà Lạt\r\nVé máy bay Hà Nội Phú Quốc Vietjet\r\n1. Intercontinental Danang Sun Penisula Resort (Đà Nẵng)\r\nĐịa chỉ: Bãi Bắc, Sơn Trà, Đà Nẵng\r\n\r\n\r\nKhu nghỉ dưỡng này cách sân bay Đà Nẵng khoảng 45 phút đi taxi, được du khách ưa chuộng bởi có bãi biển riêng, hồ bơi lớn ngoài trời và trung tâm spa. Bạn có thể đặt cho mình và gia đình một căn biệt thự ven biển để tận hưởng trọn vẹn nhất vẻ đẹp của biển Đà Nẵng. Từ đây, bạn cũng dễ dàng di chuyển đến một số điểm du lịch nổi bật của Đà Nẵng như Ngũ Hành Sơn, khu di tích Mỹ Sơn...\r\n\r\nGiá phòng: 10.000.000 - 12.000.000 đồng/phòng/đêm. \r\n\r\n2. Metropole Ha Noi (Hà Nội)\r\nĐịa chỉ: 15 Ngô Quyền, Hoàn Kiếm, Hà Nội\r\n\r\n\r\nCó tuổi đời cao nhất trong số các khách sạn tại thủ đô, Metropole được xây dựng từ năm 1901 và mang dấu ấn của kiến trúc Pháp cổ điển. Là khách sạn 5 sao chuẩn quốc tế và nằm ở trung tâm quận Hoàn Kiếm, quận trung tâm Hà Nội, đây là nơi đón tiếp và diễn ra nhiều cuộc gặp gỡ cấp cao của các nguyên thủ quốc gia trong các chuyến công du tới Việt Nam. So với các khách sạn hiện đại mới xây, phòng tại Metropole nhỏ hơn, ít ổ cắm điện và không đa dạng các món ăn Việt Nam trong thực đơn.\r\n\r\nGiá phòng: 4.000.000 - 8.000.000 đồng/phòng/đêm.\r\n\r\n3. JW Marriott Hotel Hanoi (Hà Nội)\r\nĐịa chỉ: Số 8 Đỗ Đức Dục, Từ Liêm, Hà Nội\r\n\r\n\r\nNằm ở phía tây Hà Nội, với không gian vô cùng thoáng đãng, JW Marriott được nhiều du khách đánh giá cao về cảnh quan và kiến trúc hiện đại vô cùng ấn tượng. Khách sạn này nằm ở ngoại ô, chỉ mất 35 phút đi tới từ sân bay Nội Bài và ít khi gặp tắc đường. Thực đơn của khách sạn rất phong phú với các món ăn được phục vụ từ nhiều đầu bếp nổi tiếng Âu - Á.\r\n\r\nGiá phòng: 8.000.000 - 10.000.000 đồng/phòng/đêm. \r\n\r\n4. Four Seasons The Nam Hải Resort (Quảng Nam)\r\nĐịa chỉ: Hội An, Điện Bàn, Quảng Nam\r\n\r\n\r\nĐiểm nổi bật nhất của khu nghỉ dưỡng này là chỉ cách phố cổ Hội An 10 phút đi bộ nên được du khách đánh giá cao. Resort nằm gần bãi biển Hà My, bãi biển đẹp nhất của Quảng Nam và được xây dựng theo kiến trúc mang đậm văn hóa Việt, gần gũi với thiên nhiên nên rất được du khách quốc tế ưa chuộng.\r\n\r\nGiá phòng: 19.000.000 - 20.000.000 đồng/ phòng/ đêm\r\n\r\n5. Rex Hotel (TP.HCM)\r\nĐịa chỉ: 141 Nguyễn Huệ, Bến Nghé, Quận 1, Hồ Chí Minh\r\n\r\n\r\nVới vị trí cực \"hot\", nằm ngay giữa phố đi bộ Nguyễn Huệ, đây là địa chỉ được nhiều du khách lựa chọn để thuận tiện khám phá Sài Gòn sôi động ngày đêm. Từ Rex Hotel, du khách dễ dàng di chuyển tới các điểm du lịch nổi tiếng như Nhà Hát Lớn, chợ Bến Thành và các khu vui chơi của thành phố.\r\n\r\nGiá phòng: 3.000.000 - 3.500.000 đồng/ phòng/ đêm.\r\n\r\n6. Laguna Lăng Cô (Huế)\r\nĐịa chỉ: Lộc Vĩnh, Phú Lộc, Thừa Thiên Huế\r\n\r\n\r\nBiển Lăng Cô xinh đẹp và yên bình là nơi Laguna đặt mình và mang đến cho những vị khách yêu quý không gian nghỉ dưỡng sang trọng, đẳng cấp với các khu biệt thự có hồ bơi riêng. Nếu bạn yêu thích phong cách Á Đông và dấu ấn Việt Nam, Laguna là lựa chọn hợp lý dành cho bạn.\r\n\r\nGiá phòng: 5.000.000 - 10.000.000 đồng/phòng/đêm.\r\n\r\n7. Vinpearl Resort & Spa Halong (Quang Ninh)\r\nĐịa chỉ: Đảo Rều, Hạ Long, Quảng Ninh\r\n\r\n\r\nLà một sản phẩm của tập đoàn Vingroup, khu nghỉ dưỡng Vinpearl Hạ Long là một trong những lựa chọn đẳng cấp nhất cho bạn và gia đình trong mùa hè này. Từ đây, bạn dễ dàng tham quan vịnh Hạ Long - kỳ quan thiên nhiên thế giới cùng các khu vui chơi đẳng cấp quốc tế khác.\r\n\r\nGiá phòng: 3.000.000 - 5.000.000 đồng/phòng/đêm.\r\n\r\n8. Dalat Palace (Lâm Đồng)\r\nĐịa chỉ: 12 Trần Phú, Đà Lạt, Lâm Đồng\r\n\r\n\r\nĐúng như cái tên của nó, \"cung điện\" này được xây dựng từ năm 1916 và hoàn thành năm 1922 nên mang những nét kiến trúc cổ điển của Pháp và là nơi dừng chân lý tưởng cho những ai \"hoài cổ\".', '1000', 'yes', 2, 2, 2, 'premium', '2024-06-16 03:49:50', '2024-06-16 06:40:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('ENRsUHBHR85iO4pPTymbB5Z4ufnmB2uj5TEPdyoj', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiQ1YwS0p5TXQ4dXlVdWYyWmxKVFN6MzYxOG5IeEM0ZkNjcXViS2dUMiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9zZW5kX21haWwvMTEiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1718559490),
('fSe43FcgznbiUn3mrZGGCouSrlweV8LQqDFnEgaZ', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic2VUWnNGd2VINkxMWlZXQ2JSWVpjSlFBdU13Y0ZObVRNblhscHl0TCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMCI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjI7fQ==', 1718559473);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `usertype` varchar(255) NOT NULL DEFAULT 'user',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `usertype`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '123456789', 'admin', NULL, '$2y$10$5DJCyxts.dkhC2wEKim1N.XOmdAdJ4D72rc2QNQFo9otdRFwv4oAa', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 20:41:13', '2024-06-12 20:41:13'),
(2, 'user', 'user@gmail.com', '0987697283', 'user', NULL, '$2y$10$HllOVRMnifj.5HXtfzC.ruHd6wqntzxzX0grLwM0lqiELAWBxILq6', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-12 20:41:52', '2024-06-12 20:41:52'),
(3, 'user2', 'user2@gmail.com', '0987544637', 'user', NULL, '$2y$10$DZhxAZI29wjNuCVdAyGwfOd1BFDoP7v94Gry7WADZZWK2k6AQVOmu', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-13 01:11:55', '2024-06-13 01:11:55'),
(4, 'User3', 'user3@gmail.com', NULL, 'admin', NULL, '$2y$10$G8/mI36Sj/Bvqu424HDGuuoYQFhn7dC4TfExB9JxTG1LQ3JYQCVey', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-16 07:48:02', '2024-06-16 07:48:02');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `gallaries`
--
ALTER TABLE `gallaries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gallaries`
--
ALTER TABLE `gallaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
