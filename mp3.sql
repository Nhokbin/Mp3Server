-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 29, 2017 lúc 12:20 PM
-- Phiên bản máy phục vụ: 10.1.22-MariaDB
-- Phiên bản PHP: 7.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mp3`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `artists`
--

CREATE TABLE `artists` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `artists`
--

INSERT INTO `artists` (`id`, `name`, `country_id`) VALUES
(1, 'Bằng Cường', 1),
(2, 'Lâm Chấn Khang', 1),
(3, 'Hồ Việt Trung', 1),
(4, 'Văn Mai Hương', 1),
(5, 'Châu Khải Phong', 1),
(6, 'Phạm Trưởng', 1),
(7, 'Đông Nhi', 1),
(8, 'Nam Cường  ', 1),
(9, ' Việt My', 1),
(10, 'Nhiều Ca Sĩ', 1),
(11, 'Nhật Kim Anh', 1),
(12, 'Bích Phương', 1),
(13, 'Quách Tuấn Du', 1),
(14, 'Uyên Trang', 1),
(15, 'Vũ Duy Khánh', 1),
(16, 'Khắc Việt', 1),
(17, 'Noo Phước Thịnh', 1),
(18, 'MLee', 1),
(19, 'Lý Hải', 1),
(20, 'Min', 1),
(21, 'Việt My', 1),
(22, 'Đinh Hương', 1),
(23, 'Bằng Kiều', 1),
(24, ' Minh Tuyết', 1),
(25, 'Anh Khang  ', 1),
(26, ' Bằng Kiều', 1),
(27, 'Ed Sheeran', 2),
(28, 'Miley Cyrus', 2),
(29, 'Meghan Trainor', 2),
(30, 'Idina Menzel', 2),
(31, 'John Legend', 2),
(32, 'Maroon 5', 2),
(33, 'Jason Derulo', 2),
(34, 'Echosmith', 2),
(35, 'David Guetta  ', 2),
(36, ' Emeli Sandé', 2),
(37, 'Rachel Platten', 2),
(38, 'Omi', 2),
(39, 'Pitbull  ', 2),
(40, ' Ke$ha', 2),
(41, 'Selena Gomez', 2),
(42, 'Lorde', 2),
(43, 'DJ Snake  ', 2),
(44, ' AlunaGeorge', 2),
(45, 'Iggy Azalea  ', 2),
(46, ' Rita Ora', 2),
(47, 'Alesso  ', 2),
(48, ' Tove Lo', 2),
(49, 'Nicki Minaj', 2),
(50, 'Tove Lo', 2),
(51, 'One Direction', 2),
(52, 'Walk The Moon', 2),
(53, 'Katy Perry', 2),
(54, 'Rixton', 2),
(55, 'Avicii', 2),
(56, 'Pharrell Williams', 2),
(57, 'Hilary Duff', 2),
(58, 'Mark Ronson  ', 2),
(59, ' Bruno Mars', 2),
(60, 'Carly Rae Jepsen', 2),
(61, 'Jessie J', 2),
(62, 'Calvin Harris  ', 2),
(63, ' John Newman', 2),
(64, 'OneRepublic', 2),
(65, 'Andy Grammer', 2),
(66, 'Justin Bieber', 2),
(67, 'Lady Gaga  ', 2),
(68, ' R. Kelly', 2),
(69, 'MAGIC!', 2),
(70, ' 2 Chainz', 2),
(71, 'EXO', 2),
(72, 'MC Mong  ', 2),
(73, ' Sweden Laundry', 2),
(74, 'G-Dragon', 2),
(75, 'Tae Yang', 2),
(76, ' G-Dragon', 2),
(77, 'Tablo  ', 2),
(78, ' Tae Yang', 2),
(79, 'Epik High', 2),
(80, '2NE1', 2),
(81, 'SeungRi  ', 2),
(82, ' Jenny', 2),
(83, 'T-ARA', 2),
(84, 'SNSD', 2),
(85, 'HA:TFELT', 2),
(86, 'SISTAR', 2),
(87, 'WINNER', 2),
(88, 'Hi Suhyun  ', 2),
(89, ' Bobby', 2),
(90, 'T.O.P', 2),
(91, 'Henry', 2),
(92, 'BEAST', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'Việt Nam'),
(2, 'US-UK'),
(3, 'K-POP');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `performers`
--

CREATE TABLE `performers` (
  `song_id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `performers`
--

INSERT INTO `performers` (`song_id`, `artist_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 2),
(6, 1),
(7, 4),
(8, 5),
(9, 2),
(10, 2),
(11, 3),
(12, 6),
(13, 7),
(14, 8),
(14, 9),
(15, 5),
(16, 1),
(17, 1),
(18, 10),
(19, 6),
(20, 6),
(21, 1),
(22, 11),
(23, 12),
(24, 1),
(25, 1),
(26, 1),
(27, 2),
(28, 2),
(29, 1),
(30, 1),
(31, 5),
(32, 12),
(33, 2),
(34, 10),
(35, 6),
(36, 1),
(37, 13),
(38, 1),
(39, 14),
(40, 3),
(41, 2),
(42, 1),
(43, 1),
(44, 2),
(45, 13),
(46, 1),
(47, 15),
(48, 16),
(49, 17),
(50, 12),
(51, 17),
(52, 1),
(53, 3),
(54, 5),
(55, 18),
(56, 12),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 19),
(66, 1),
(67, 20),
(68, 10),
(69, 21),
(70, 1),
(71, 13),
(72, 5),
(73, 6),
(74, 1),
(75, 1),
(76, 2),
(77, 3),
(78, 1),
(79, 22),
(80, 23),
(81, 10),
(82, 23),
(83, 23),
(83, 24),
(84, 10),
(85, 23),
(86, 23),
(87, 25),
(87, 26),
(88, 23),
(88, 24),
(89, 23),
(90, 23),
(91, 23),
(92, 27),
(93, 28),
(94, 29),
(95, 30),
(96, 31),
(97, 32),
(98, 33),
(99, 34),
(100, 35),
(100, 36),
(101, 37),
(102, 10),
(103, 10),
(104, 38),
(105, 39),
(105, 40),
(106, 41),
(107, 42),
(108, 43),
(108, 44),
(109, 32),
(110, 10),
(111, 45),
(111, 46),
(112, 47),
(112, 48),
(113, 49),
(114, 50),
(115, 10),
(116, 32),
(117, 51),
(118, 52),
(119, 32),
(120, 53),
(121, 54),
(122, 55),
(123, 10),
(124, 56),
(125, 57),
(126, 58),
(126, 59),
(127, 29),
(128, 60),
(129, 51),
(130, 32),
(131, 61),
(132, 62),
(132, 63),
(133, 64),
(134, 62),
(135, 10),
(136, 55),
(137, 65),
(138, 66),
(139, 53),
(140, 67),
(140, 68),
(141, 27),
(142, 69),
(143, 58),
(143, 59),
(144, 51),
(145, 61),
(145, 70),
(146, 10),
(147, 71),
(148, 72),
(148, 73),
(149, 74),
(150, 75),
(151, 75),
(151, 76),
(152, 77),
(152, 78),
(153, 79),
(154, 80),
(155, 75),
(156, 10),
(157, 81),
(157, 82),
(158, 72),
(159, 80),
(160, 83),
(161, 84),
(162, 10),
(163, 75),
(164, 71),
(165, 85),
(166, 81),
(167, 74),
(168, 86),
(169, 74),
(170, 80),
(171, 83),
(172, 74),
(173, 81),
(174, 87),
(175, 83),
(176, 84),
(177, 84),
(178, 88),
(178, 89),
(179, 90),
(180, 75),
(181, 71),
(182, 74),
(183, 74),
(184, 83),
(185, 87),
(186, 84),
(187, 91),
(188, 84),
(189, 80),
(190, 92),
(191, 74),
(192, 83),
(193, 74),
(193, 78);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `songs`
--

INSERT INTO `songs` (`id`, `source`, `thumbnail`, `title`) VALUES
(1, 'what-is-love-nguyen-dinh-vu-edm-remix-1495956911873', 'what-is-love-nguyen-dinh-vu-edm-remix-1495956911873', 'What Is Love (Nguyễn Đình Vũ EDM Remix)'),
(2, 'nu-hong-mong-manh-dj-deelee-remix-1495956911873', 'nu-hong-mong-manh-dj-deelee-remix-1495956911873', 'Nụ Hồng Mong Manh (DJ DeeLee Remix)'),
(3, 'lan-va-diep-nonstop-remix-1495956911873', 'lan-va-diep-nonstop-remix-1495956911873', 'Lan Và Điệp (Nonstop Remix)'),
(4, 'nguoi-quan-trong-nhat-remix-1495956911873', 'nguoi-quan-trong-nhat-remix-1495956911873', 'Người Quan Trọng Nhất (Remix)'),
(5, 'chuyen-bay-di-chuyen-bay-ve-remix-1495956911873', 'chuyen-bay-di-chuyen-bay-ve-remix-1495956911873', 'Chuyến Bay Đi Chuyến Bay Về (Remix)'),
(6, 'what-is-love-vina-house-remix-1495956911873', 'what-is-love-vina-house-remix-1495956911873', 'What Is Love (Vina House Remix)'),
(7, 'neu-nhu-anh-den-daniel-mastro-remix-1495956911873', 'neu-nhu-anh-den-daniel-mastro-remix-1495956911873', 'Nếu Như Anh Đến (Daniel Mastro Remix)'),
(8, 'khong-the-ben-em-remix1495956911873', 'khong-the-ben-em-remix1495956911873', 'Không Thể Bên Em Remix'),
(9, 'lk-nguoi-ta-noi-toi-la-nguoi-the-than1495956911873', 'lk-nguoi-ta-noi-toi-la-nguoi-the-than1495956911873', 'LK Người Ta Nói Tôi Là Người Thế Thân'),
(10, 'ghet-chinh-anh-remix-1495956911873', 'ghet-chinh-anh-remix-1495956911873', 'Ghét Chính Anh (Remix)'),
(11, 'no-le-tinh-yeu-remix-1495956911873', 'no-le-tinh-yeu-remix-1495956911873', 'Nô Lệ Tình Yêu (Remix)'),
(12, 'co-tat-ca-nhung-mat-em-remix-1495956911873', 'co-tat-ca-nhung-mat-em-remix-1495956911873', 'Có Tất Cả Nhưng Mất Em (Remix)'),
(13, 'shake-the-rhythm-chien-dich-chong-e-ost-1495956911873', 'shake-the-rhythm-chien-dich-chong-e-ost-1495956911873', 'Shake The Rhythm (Chiến Dịch Chống Ế OST)'),
(14, 'lk-trai-tim-cua-gio1495956911873', 'lk-trai-tim-cua-gio1495956911873', 'LK Trái Tim Của Gió'),
(15, 'anh-se-de-em-ra-di-remix1495956911873', 'anh-se-de-em-ra-di-remix1495956911873', 'Anh Sẽ Để Em Ra Đi Remix'),
(16, 'de-tang-qua-khu-dj-deelee-remix-1495956911873', 'de-tang-qua-khu-dj-deelee-remix-1495956911873', 'Để Tang Quá Khứ (DJ DeeLee Remix)'),
(17, 'khong-ai-tuyet-voi-nhu-em-remix-1495956911873', 'khong-ai-tuyet-voi-nhu-em-remix-1495956911873', 'Không Ai Tuyệt Vời Như Em (Remix)'),
(18, 'oxy-hoi-tho-1495956911873', 'oxy-hoi-tho-1495956911873', 'Oxy (Hơi Thở)'),
(19, 'co-hang-xom-remix-1495956911873', 'co-hang-xom-remix-1495956911873', 'Cô Hàng Xóm (Remix)'),
(20, 'no-remix-1495956911873', 'no-remix-1495956911873', 'Nợ (Remix)'),
(21, 'gia-nhu-chua-tung-quen-remix1495956911873', 'gia-nhu-chua-tung-quen-remix1495956911873', 'Giá Như Chưa Từng Quen Remix'),
(22, 'ket-thuc1495956911873', 'ket-thuc1495956911873', 'Kết Thúc'),
(23, 'chua-tung-thuoc-ve-nhau-remix-1495956911873', 'chua-tung-thuoc-ve-nhau-remix-1495956911873', 'Chưa Từng Thuộc Về Nhau (Remix)'),
(24, 'tra-loi-anh-di-remix1495956911873', 'tra-loi-anh-di-remix1495956911873', 'Trả Lời Anh Đi Remix'),
(25, 'tinh-yeu-va-noi-nho-remix-1495956911873', 'tinh-yeu-va-noi-nho-remix-1495956911873', 'Tình Yêu Và Nỗi Nhớ (Remix)'),
(26, 'tinh-hoang-lanh-remix1495956911873', 'tinh-hoang-lanh-remix1495956911873', 'Tình Hoang Lạnh Remix'),
(27, 'con-thieu-than-remix-1495956911873', 'con-thieu-than-remix-1495956911873', 'Con Thiêu Thân (Remix)'),
(28, 'lk-ngay-tan-the-nu-hon-va-giot-nuoc-mat1495956911873', 'lk-ngay-tan-the-nu-hon-va-giot-nuoc-mat1495956911873', 'LK Ngày Tận Thế - Nụ Hôn Và Giọt Nước Mắt'),
(29, 'lk-dong-song-buon-remix1495956911873', 'lk-dong-song-buon-remix1495956911873', 'LK Dòng Sông Buồn Remix'),
(30, 'dang-em-nguyen-dinh-vu-remix-1495956911873', 'dang-em-nguyen-dinh-vu-remix-1495956911873', 'Dáng Em (Nguyễn Đình Vũ Remix)'),
(31, 'so-ngheo-remix1495956911873', 'so-ngheo-remix1495956911873', 'Số Nghèo Remix'),
(32, 'em-muon-remix-1495956911873', 'em-muon-remix-1495956911873', 'Em Muốn (Remix)'),
(33, 'mau-chay-ve-tim-remix-1495956911873', 'mau-chay-ve-tim-remix-1495956911873', 'Máu Chảy Về Tim (Remix)'),
(34, 'ngay-mai1495956911873', 'ngay-mai1495956911873', 'Ngày Mai'),
(35, 'lien-khuc-het-remix-1495956911873', 'lien-khuc-het-remix-1495956911873', 'Liên Khúc: Hết (Remix)'),
(36, 'vo-tinh-ta-da-yeu-dj-saw-mach-jack-remix-1495956911873', 'vo-tinh-ta-da-yeu-dj-saw-mach-jack-remix-1495956911873', 'Vô Tình Ta Đã Yêu (DJ Saw Mach Jack Remix)'),
(37, 'nonstop-11495956911873', 'nonstop-11495956911873', 'Nonstop 1'),
(38, 'em-se-la-cua-anh-remix-1495956911873', 'em-se-la-cua-anh-remix-1495956911873', 'Em Sẽ Là Của Anh (Remix)'),
(39, 'lk-mai-la-nguoi-den-sau1495956911873', 'lk-mai-la-nguoi-den-sau1495956911873', 'LK Mãi Là Người Đến Sau'),
(40, 'chuyen-tinh-tren-facebook-remix-1495956911873', 'chuyen-tinh-tren-facebook-remix-1495956911873', 'Chuyện Tình Trên Facebook (Remix)'),
(41, 'co-hang-xom-remix-1495956911873', 'co-hang-xom-remix-1495956911873', 'Cô Hàng Xóm (Remix)'),
(42, 'lk-hinh-bong-em-dj-deelee-remix-1495956911873', 'lk-hinh-bong-em-dj-deelee-remix-1495956911873', 'LK Hình Bóng Em (DJ DeeLee Remix)'),
(43, 'nu-hong-mong-manh-nguyen-dinh-vu-remix-1495956911873', 'nu-hong-mong-manh-nguyen-dinh-vu-remix-1495956911873', 'Nụ Hồng Mong Manh (Nguyễn Đình Vũ Remix)'),
(44, 'ai-hay-chu-ngo-remix-1495956911873', 'ai-hay-chu-ngo-remix-1495956911873', 'Ai Hay Chữ Ngờ (Remix)'),
(45, 'nonstop-31495956911873', 'nonstop-31495956911873', 'Nonstop 3'),
(46, 'chung-ta-chua-vi-nhau-remix1495956911873', 'chung-ta-chua-vi-nhau-remix1495956911873', 'Chúng Ta Chưa Vì Nhau Remix'),
(47, 'hay-cho-anh-dap-nat1495956911873', 'hay-cho-anh-dap-nat1495956911873', 'Hãy Cho Anh Đập Nát'),
(48, 'anh-nhan-ra-daniel-mastro-remix-1495956911873', 'anh-nhan-ra-daniel-mastro-remix-1495956911873', 'Anh Nhận Ra (Daniel Mastro Remix)'),
(49, 'khong-hoi-tiec-get-away-from-me-1495956911873', 'khong-hoi-tiec-get-away-from-me-1495956911873', 'Không Hối Tiếc (Get Away From Me)'),
(50, 'co-le-em-remix-1495956911873', 'co-le-em-remix-1495956911873', 'Có Lẽ Em (Remix)'),
(51, 'dung-nhin-lai-just-wanna-say-goodbye-1495956911873', 'dung-nhin-lai-just-wanna-say-goodbye-1495956911873', 'Đừng Nhìn Lại (Just Wanna Say Goodbye)'),
(52, 'nguoi-noi-roi-quen-remix1495956911873', 'nguoi-noi-roi-quen-remix1495956911873', 'Người Nói Rồi Quên Remix'),
(53, 'nhot-em-vao-tim-remix-1495956911873', 'nhot-em-vao-tim-remix-1495956911873', 'Nhốt Em Vào Tim (Remix)'),
(54, 'nu-cuoi-khong-vui-remix1495956911873', 'nu-cuoi-khong-vui-remix1495956911873', 'Nụ Cười Không Vui Remix'),
(55, 'chua-bao-gio-em-duoc-yeu-dance-version-1495956911873', 'chua-bao-gio-em-duoc-yeu-dance-version-1495956911873', 'Chưa Bao Giờ Em Được Yêu (Dance Version)'),
(56, 'ky-uc-ngu-quen-remix-1495956911873', 'ky-uc-ngu-quen-remix-1495956911873', 'Ký Ức Ngủ Quên (Remix)'),
(57, 'bo-mac-anh-di-remix-1495956911873', 'bo-mac-anh-di-remix-1495956911873', 'Bỏ Mặc Anh Đi (Remix)'),
(58, 'mat-nguoi-anh-yeu-2-dj-deelee-remix-1495956911873', 'mat-nguoi-anh-yeu-2-dj-deelee-remix-1495956911873', 'Mất Người Anh Yêu 2 (DJ DeeLee Remix)'),
(59, 'dem-vu-truong-remix-1495956911873', 'dem-vu-truong-remix-1495956911873', 'Đêm Vũ Trường (Remix)'),
(60, 'oxy-21495956911873', 'oxy-21495956911873', 'Oxy 2'),
(61, 'mah-love-remix-1495956911873', 'mah-love-remix-1495956911873', 'Mah Love (Remix)'),
(62, 'ky-niem-mua-dong-remix1495956911873', 'ky-niem-mua-dong-remix1495956911873', 'Kỷ Niệm Mùa Đông Remix'),
(63, 'hay-cho-anh-ben-em-remix-1495956911873', 'hay-cho-anh-ben-em-remix-1495956911873', 'Hãy Cho Anh Bên Em (Remix)'),
(64, 'than-thoai-dj-saw-mach-jack-remix-1495956911873', 'than-thoai-dj-saw-mach-jack-remix-1495956911873', 'Thần Thoại (DJ Saw Mach Jack Remix)'),
(65, 'anh-no-em-dance-version-1495956911873', 'anh-no-em-dance-version-1495956911873', 'Anh Nợ Em (Dance Version)'),
(66, 'nhu-chua-tung-co-em-remix-1495956911873', 'nhu-chua-tung-co-em-remix-1495956911873', 'Như Chưa Từng Có Em (Remix)'),
(67, 'y-e-u-edm-version-1495956911873', 'y-e-u-edm-version-1495956911873', 'Y.Ê.U (EDM Version)'),
(68, 'vut-bay-young-generation-1495956911873', 'vut-bay-young-generation-1495956911873', 'Vút Bay (Young Generation)'),
(69, 'chang-trai-bi-mat1495956911873', 'chang-trai-bi-mat1495956911873', 'Chàng Trai Bí Mật'),
(70, 'wo-ai-ni-remix1495956911873', 'wo-ai-ni-remix1495956911873', 'Wo Ai Ni Remix'),
(71, 'nonstop-21495956911873', 'nonstop-21495956911873', 'Nonstop 2'),
(72, 'em-da-den-remix1495956911873', 'em-da-den-remix1495956911873', 'Em Đã Đến Remix'),
(73, 'loi-noi-doi-khong-that-remix-1495956911873', 'loi-noi-doi-khong-that-remix-1495956911873', 'Lời Nối Dối Không Thật (Remix)'),
(74, 'hay-cho-anh-ben-em-remix1495956911873', 'hay-cho-anh-ben-em-remix1495956911873', 'Hãy Cho Anh Bên Em Remix'),
(75, 'nguoi-tung-noi-remix-1495956911873', 'nguoi-tung-noi-remix-1495956911873', 'Người Từng Nói (Remix)'),
(76, 'mua-xuan-oi-remix-1495956911873', 'mua-xuan-oi-remix-1495956911873', 'Mùa Xuân Ơi (Remix)'),
(77, 'buc-tranh-khong-mau-remix-1495956911873', 'buc-tranh-khong-mau-remix-1495956911873', 'Bức Tranh Không Màu (Remix)'),
(78, 'yeu-them-lan-nua-nguyen-dinh-vu-remix-1495956911873', 'yeu-them-lan-nua-nguyen-dinh-vu-remix-1495956911873', 'Yêu Thêm Lần Nữa (Nguyễn Đình Vũ Remix)'),
(79, 'vut-bay1495956911873', 'vut-bay1495956911873', 'Vút Bay'),
(80, 'neu-mot-ngay1495962718270', 'neu-mot-ngay1495962718270', 'Nếu Một Ngày'),
(81, 'ha-trang1495962718270', 'ha-trang1495962718270', 'Hạ Trắng'),
(82, 'cay-dan-bo-quen1495962718270', 'cay-dan-bo-quen1495962718270', 'Cây Đàn Bỏ Quên'),
(83, 'tinh-bo-vo1495962718270', 'tinh-bo-vo1495962718270', 'Tình Bơ Vơ'),
(84, 'doi-da-vang1495962718270', 'doi-da-vang1495962718270', 'Đời Đá Vàng'),
(85, 'mua-thu-trong-mua1495962718270', 'mua-thu-trong-mua1495962718270', 'Mùa Thu Trong Mưa'),
(86, 'va-nhu-con-gio1495962718270', 'va-nhu-con-gio1495962718270', 'Và Như Cơn Gió'),
(87, 'dung-hat-khi-buon1495962718270', 'dung-hat-khi-buon1495962718270', 'Đừng Hát Khi Buồn'),
(88, 'lien-khuc-mua-chieu-ky-niem-dinh-menh1495962718270', 'lien-khuc-mua-chieu-ky-niem-dinh-menh1495962718270', 'Liên Khúc: Mưa Chiều Kỷ Niệm, Định Mệnh'),
(89, 'bien-vang1495962718270', 'bien-vang1495962718270', 'Biển Vắng'),
(90, 'nha-trang-ngay-ve1495962718270', 'nha-trang-ngay-ve1495962718270', 'Nha Trang Ngày Về'),
(91, 'con-mo-bang-gia1495962718270', 'con-mo-bang-gia1495962718270', 'Cơn Mơ Băng Giá'),
(92, 'photograph1495964865375', 'photograph1495964865375', 'Photograph'),
(93, 'wrecking-ball1495964865375', 'wrecking-ball1495964865375', 'Wrecking Ball'),
(94, 'lips-are-movin1495964865375', 'lips-are-movin1495964865375', 'Lips Are Movin'),
(95, 'let-it-go1495964865375', 'let-it-go1495964865375', 'Let It Go'),
(96, 'all-of-me1495964865375', 'all-of-me1495964865375', 'All Of Me'),
(97, 'sugar1495964865375', 'sugar1495964865375', 'Sugar'),
(98, 'want-to-want-me1495964865375', 'want-to-want-me1495964865375', 'Want To Want Me'),
(99, 'cool-kids1495964865375', 'cool-kids1495964865375', 'Cool Kids'),
(100, 'what-i-did-for-love1495964865375', 'what-i-did-for-love1495964865375', 'What I Did For Love'),
(101, 'fight-song1495964865375', 'fight-song1495964865375', 'Fight Song'),
(102, 'g-d-f-r-1495964865375', 'g-d-f-r-1495964865375', 'G.D.F.R.'),
(103, 'no-money-no-love1495964865375', 'no-money-no-love1495964865375', 'No Money No Love'),
(104, 'cheerleader-felix-jaehn-remix-1495964865375', 'cheerleader-felix-jaehn-remix-1495964865375', 'Cheerleader (Felix Jaehn Remix)'),
(105, 'timber1495964865375', 'timber1495964865375', 'Timber'),
(106, 'the-heart-wants-what-it-wants1495964865375', 'the-heart-wants-what-it-wants1495964865375', 'The Heart Wants What It Wants'),
(107, 'royals1495964865375', 'royals1495964865375', 'Royals'),
(108, 'you-know-you-like-it1495964865375', 'you-know-you-like-it1495964865375', 'You Know You Like It'),
(109, 'animals1495964865375', 'animals1495964865375', 'Animals'),
(110, 'hey-mama1495964865375', 'hey-mama1495964865375', 'Hey Mama'),
(111, 'black-widow1495964865375', 'black-widow1495964865375', 'Black Widow'),
(112, 'heroes-we-could-be-1495964865375', 'heroes-we-could-be-1495964865375', 'Heroes (We Could Be)'),
(113, 'grand-piano1495964865375', 'grand-piano1495964865375', 'Grand Piano'),
(114, 'talking-body1495964865375', 'talking-body1495964865375', 'Talking Body'),
(115, 'blurred-lines1495964865375', 'blurred-lines1495964865375', 'Blurred Lines'),
(116, 'maps1495964865375', 'maps1495964865375', 'Maps'),
(117, 'steal-my-girl1495964865375', 'steal-my-girl1495964865375', 'Steal My Girl'),
(118, 'shut-up-and-dance1495964865375', 'shut-up-and-dance1495964865375', 'Shut Up And Dance'),
(119, 'animals1495964865375', 'animals1495964865375', 'Animals'),
(120, 'roar1495964865375', 'roar1495964865375', 'Roar'),
(121, 'me-and-my-broken-heart1495964865375', 'me-and-my-broken-heart1495964865375', 'Me And My Broken Heart'),
(122, 'hey-brother1495964865375', 'hey-brother1495964865375', 'Hey Brother'),
(123, 'new-flame1495964865375', 'new-flame1495964865375', 'New Flame'),
(124, 'happy1495964865375', 'happy1495964865375', 'Happy'),
(125, 'sparks1495964865375', 'sparks1495964865375', 'Sparks'),
(126, 'uptown-funk1495964865375', 'uptown-funk1495964865375', 'Uptown Funk'),
(127, 'all-about-that-bass1495964865375', 'all-about-that-bass1495964865375', 'All About That Bass'),
(128, 'i-really-like-you1495964865375', 'i-really-like-you1495964865375', 'I Really Like You'),
(129, 'night-changes1495964865375', 'night-changes1495964865375', 'Night Changes'),
(130, 'this-summer-s-gonna-hurt-like-a-motherfucker1495964865375', 'this-summer-s-gonna-hurt-like-a-motherfucker1495964865375', 'This Summer\'s Gonna Hurt Like A Motherfucker'),
(131, 'masterpiece1495964865375', 'masterpiece1495964865375', 'Masterpiece'),
(132, 'blame1495964865375', 'blame1495964865375', 'Blame'),
(133, 'counting-stars1495964865375', 'counting-stars1495964865375', 'Counting Stars'),
(134, 'summer1495964865375', 'summer1495964865375', 'Summer'),
(135, 'bang-bang1495964865375', 'bang-bang1495964865375', 'Bang Bang'),
(136, 'wake-me-up1495964865375', 'wake-me-up1495964865375', 'Wake Me Up'),
(137, 'honey-i-m-good-1495964865375', 'honey-i-m-good-1495964865375', 'Honey, I\'m Good.'),
(138, 'what-do-you-mean1495964865375', 'what-do-you-mean1495964865375', 'What Do You Mean'),
(139, 'roar1495964865375', 'roar1495964865375', 'Roar'),
(140, 'do-what-u-want1495964865375', 'do-what-u-want1495964865375', 'Do What U Want'),
(141, 'thinking-out-loud1495964865375', 'thinking-out-loud1495964865375', 'Thinking Out Loud'),
(142, 'rude1495964865375', 'rude1495964865375', 'Rude'),
(143, 'uptown-funk1495964865375', 'uptown-funk1495964865375', 'Uptown Funk'),
(144, 'story-of-my-life1495964865375', 'story-of-my-life1495964865375', 'Story Of My Life'),
(145, 'burnin-up1495964865375', 'burnin-up1495964865375', 'Burnin\' Up'),
(146, 'bailando1495964865375', 'bailando1495964865375', 'Bailando'),
(147, 'exodus1495964989014', 'exodus1495964989014', 'Exodus'),
(148, 'sick-to-death-part-21495964989014', 'sick-to-death-part-21495964989014', 'Sick To Death Part.2'),
(149, 'shake-the-world1495964989014', 'shake-the-world1495964989014', 'Shake The World'),
(150, '1am1495964989014', '1am1495964989014', '1AM'),
(151, 'stay-with-me1495964989014', 'stay-with-me1495964989014', 'Stay With Me'),
(152, 'eyes-nose-lips-english-version-1495964989014', 'eyes-nose-lips-english-version-1495964989014', 'Eyes, Nose, Lips (English Version)'),
(153, 'happen-ending1495964989014', 'happen-ending1495964989014', 'Happen Ending'),
(154, 'missing-you1495964989014', 'missing-you1495964989014', 'Missing You'),
(155, 'ringa-linga1495964989014', 'ringa-linga1495964989014', 'Ringa Linga'),
(156, 'let-s-talk-about-love1495964989014', 'let-s-talk-about-love1495964989014', 'Let\'s Talk About Love'),
(157, 'gg-be1495964989014', 'gg-be1495964989014', 'GG Be'),
(158, 'miss-me-or-diss-me1495964989014', 'miss-me-or-diss-me1495964989014', 'Miss Me Or Diss Me'),
(159, 'falling-in-love1495964989014', 'falling-in-love1495964989014', 'Falling In Love'),
(160, 'bunny-style1495964989014', 'bunny-style1495964989014', 'Bunny Style'),
(161, 'paparazzi1495964989014', 'paparazzi1495964989014', 'Paparazzi'),
(162, 'painkiller1495964989014', 'painkiller1495964989014', 'Painkiller'),
(163, 'eyes-nose-lips1495964989014', 'eyes-nose-lips1495964989014', 'Eyes, Nose, Lips'),
(164, 'call-me-baby1495964989014', 'call-me-baby1495964989014', 'Call Me Baby'),
(165, 'ain-t-nobody1495964989014', 'ain-t-nobody1495964989014', 'Ain\'t Nobody'),
(166, 'come-to-my1495964989014', 'come-to-my1495964989014', 'Come to My'),
(167, 'who-you-1495964989014', 'who-you-1495964989014', 'Who You?'),
(168, 'touch-my-body1495964989014', 'touch-my-body1495964989014', 'Touch My Body'),
(169, 'crooked1495964989014', 'crooked1495964989014', 'Crooked'),
(170, 'do-you-love-me1495964989014', 'do-you-love-me1495964989014', 'Do You Love Me'),
(171, 'lead-the-way1495964989014', 'lead-the-way1495964989014', 'Lead The Way'),
(172, 'black1495964989014', 'black1495964989014', 'Black'),
(173, 'gotta-talk-to-u1495964989014', 'gotta-talk-to-u1495964989014', 'Gotta Talk To U'),
(174, 'color-ring1495964989014', 'color-ring1495964989014', 'Color Ring'),
(175, 'first-love1495964989014', 'first-love1495964989014', 'First Love'),
(176, 'flower-power1495964989014', 'flower-power1495964989014', 'Flower Power'),
(177, 'mr-mr-1495964989014', 'mr-mr-1495964989014', 'Mr.Mr.'),
(178, 'i’m-different1495964989014', 'i’m-different1495964989014', 'I’m Different'),
(179, 'doom-dada1495964989014', 'doom-dada1495964989014', 'Doom Dada'),
(180, 'throw-away1495964989014', 'throw-away1495964989014', 'Throw Away'),
(181, 'love-me-right1495964989014', 'love-me-right1495964989014', 'Love Me Right'),
(182, 'window1495964989014', 'window1495964989014', 'Window'),
(183, 'coup-d’etat1495964989014', 'coup-d’etat1495964989014', 'COUP D’ETAT'),
(184, 'i-know-the-feeling1495964989014', 'i-know-the-feeling1495964989014', 'I Know The Feeling'),
(185, 'empty1495964989014', 'empty1495964989014', 'Empty'),
(186, 'i-got-a-boy1495964989014', 'i-got-a-boy1495964989014', 'I Got A Boy'),
(187, 'fantastic1495964989014', 'fantastic1495964989014', 'Fantastic'),
(188, 'galaxy-supernova1495964989014', 'galaxy-supernova1495964989014', 'Galaxy Supernova'),
(189, 'come-back-home1495964989014', 'come-back-home1495964989014', 'Come Back Home'),
(190, 'no-more1495964989014', 'no-more1495964989014', 'No More'),
(191, 'michigo1495964989014', 'michigo1495964989014', 'MichiGO'),
(192, 'number-nine1495964989014', 'number-nine1495964989014', 'Number Nine'),
(193, 'good-boy1495964989014', 'good-boy1495964989014', 'Good Boy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK7sdoj1330rh52shdcvil7sd4j` (`country_id`);

--
-- Chỉ mục cho bảng `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `performers`
--
ALTER TABLE `performers`
  ADD KEY `FKrlxaf858him8rqsfdsuntunkv` (`artist_id`),
  ADD KEY `FK5shsv5y8xcetqtp316uek063l` (`song_id`);

--
-- Chỉ mục cho bảng `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `artists`
--
ALTER TABLE `artists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT cho bảng `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT cho bảng `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;
--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `artists`
--
ALTER TABLE `artists`
  ADD CONSTRAINT `FK7sdoj1330rh52shdcvil7sd4j` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Các ràng buộc cho bảng `performers`
--
ALTER TABLE `performers`
  ADD CONSTRAINT `FK5shsv5y8xcetqtp316uek063l` FOREIGN KEY (`song_id`) REFERENCES `songs` (`id`),
  ADD CONSTRAINT `FKrlxaf858him8rqsfdsuntunkv` FOREIGN KEY (`artist_id`) REFERENCES `artists` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
