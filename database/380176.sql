-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th6 29, 2022 lúc 05:56 AM
-- Phiên bản máy phục vụ: 10.3.22-MariaDB-log
-- Phiên bản PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `380176`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id` int(11) NOT NULL,
  `madonhang` int(11) NOT NULL,
  `masanpham` int(11) NOT NULL,
  `tensanpham` varchar(10000) NOT NULL,
  `giasanpham` int(11) NOT NULL,
  `soluongsanpham` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id`, `madonhang`, `masanpham`, `tensanpham`, `giasanpham`, `soluongsanpham`) VALUES
(1, 1, 20, 'Lenovo', 699000, 1),
(2, 2, 2, 'Samsung Galaxy S22 Ultra', 29190000, 1),
(3, 3, 3, 'Xiaomi Redmi Note 11 Pro ', 17600000, 2),
(4, 4, 2, 'Samsung Galaxy S22 Ultra', 58380000, 2),
(5, 5, 6, 'OPPO Reno7 Z (5G)', 9190000, 1),
(6, 6, 1, 'iPhone 13 Pro Max 128GB ', 89400000, 3),
(7, 7, 3, 'Xiaomi Redmi Note 11 Pro ', 8800000, 1),
(8, 8, 13, 'Laptop Acer Gaming Predator Triton 300', 24000000, 1),
(9, 9, 8, 'Nubia Red Magic 7 Obsidian', 18990000, 1),
(10, 10, 1, 'Iphone XS max 21212', 20000000, 1),
(11, 11, 4, 'Samsung Galaxy Z Flip3 5G', 18790000, 1),
(12, 12, 2, 'Samsung Galaxy S22 Ultra 123', 39190000, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `tendanhmuc` varchar(200) NOT NULL,
  `anhdanhmuc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tendanhmuc`, `anhdanhmuc`) VALUES
(2, 'Điện Thoại', 'https://cf.shopee.vn/file/31234a27876fb89cd522d7e3db1ba5ca_tn'),
(3, 'Laptop', 'https://cf.shopee.vn/file/c3f3edfaa9f6dafc4825b77d8449999d_tn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `sodienthoai` int(11) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id`, `tenkhachhang`, `sodienthoai`, `email`) VALUES
(1, 'abc', 99999999, 'abc@gmail.com'),
(2, 'Đạt', 97886999, 'dat@gmail.com'),
(3, 'Khải', 978669, 'khai@gmail.com'),
(4, 'Thuận', 97999699, 'thuan@gmail.com'),
(5, 'chiến', 865766032, 'vuvietchien07042001@gmail.com'),
(6, 'Vu Viet Chien', 865766032, 'chien@gmail.com'),
(7, 'Le Quang Doa', 789149712, 'quangdao5320@gmail.com'),
(8, 'Lê Quang Đạo', 789149712, 'quangdao5320@gmail.com'),
(9, 'Lê Quang Đạo 1', 789149712, 'quangdao5320@gmail.com'),
(10, 'Hoàng', 1231231231, 'hoang@gmail.com'),
(11, 'Đức', 1231232131, 'duc@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `id` int(11) NOT NULL,
  `tenloaisanpham` varchar(200) NOT NULL,
  `hinhanhloaisanpham` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`id`, `tenloaisanpham`, `hinhanhloaisanpham`) VALUES
(1, 'Trang Chính', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIzKRIktaOYX5Op2oTppGXrBTmMXaliLIPWlIBICdkMbz81TbB6jxIUfmoxQXK5pvQ80A&usqp=CAU'),
(2, 'Điện thoại', 'https://ngochieu.name.vn/img/mobile.png'),
(3, 'Laptop', 'https://ngochieu.name.vn/img/laptop.png'),
(4, 'Liên Hệ', 'https://ngochieu.name.vn/img/contact.png'),
(5, 'Thông Tin', 'https://ngochieu.name.vn/img/info.png'),
(8, 'Cập Nhật Tài Khoản', 'https://www.seekpng.com/png/detail/504-5044740_change-user-icon.png'),
(9, 'Đăng Xuất', 'https://cdn-icons-png.flaticon.com/512/1053/1053210.png?w=360'),
(10, 'Gửi Email', 'https://icons.iconarchive.com/icons/custom-icon-design/pretty-office-9/256/email-send-icon.png'),
(11, 'Lịch sử mua hàng', 'http://darkhero.orgfree.com@darkhero.orgfree.com/projectandroid/icons8-history-100.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `tensanpham` varchar(200) NOT NULL,
  `giasanpham` int(15) NOT NULL,
  `hinhanhsanpham` varchar(200) NOT NULL,
  `motasanpham` varchar(10000) NOT NULL,
  `idsanpham` int(3) NOT NULL,
  `idspdanhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensanpham`, `giasanpham`, `hinhanhsanpham`, `motasanpham`, `idsanpham`, `idspdanhmuc`) VALUES
(1, 'Iphone XS max 21212', 20000000, 'https://image.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_13-_pro-1_2.jpg', 'iPhone Xs Max 64GB cũ có màn hình rộng đến 6.5inch cho nội dung hiển thị chi tiết, sắc nét. màn hình tai thỏ thời thượng. Đi cùng là hệ điều hành iOS 12 với chip A12 Bionic giúp máy chạy mượt mà mọi tác vụ.', 2, 0),
(2, 'Samsung Galaxy S22 Ultra 123', 39190000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/s/2/s22_2_1.jpg', 'Vi xử lý mạnh mẽ nhất Galaxy - Snapdragon 8 Gen 1 (4 nm) Camera mắt thần bóng đêm Nightography - Chụp đêm cực đỉnh S Pen đầu tiên trên Galaxy S - Độ trễ thấp, dễ thao tác Dung lượng pin bất chấp ngày đêm - Viên pin 5000mAh, sạc nhanh 50W', 2, 0),
(3, 'Xiaomi Redmi Note 11 Pro ', 8800000, 'https://image.cellphones.com.vn/358x/media/catalog/product/1/1/11-pro-plus-green-1.jpg', 'Đón đầu thử thách, bứt phá mọi tựa game - Chip MediaTek Dimensity 920 5G 8 nhân siêu mạnh mẽ\r\nKhông gian giải trí đỉnh cao - Màn hình AMOLED 6.67 inch sắc nét, tần số quét 120Hz mượt mà\r\nSạc nhanh thần tốc, tràn đầy năng lượng - Dung lượng pin lớn 4500mAh, sạc nhanh đến 120W\r\nTrải nghiệm nhiếp ảnh cực đỉnh - Camera chính 108MP, hỗ trợ nhiều chế độ chụp linh hoạt', 2, 0),
(4, 'Samsung Galaxy Z Flip3 5G', 18790000, 'https://image.cellphones.com.vn/358x/media/catalog/product/8/0/800x800_flip_3_black.png', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp - Thiết kế gập mở vỏ sò, khung nhôm aluminum chắc chắn\r\nMàn hình kép ấn tượng - Màn hình chính: 6.7\", màn hình phụ: 1.9\" AMOLED\r\nHệ thống camera siêu ấn tượng - Bộ 3 ống kính camera 12MP, camera selfie sắc nét\r\nHiệu năng ấn tượng, làm chủ tốc độ - Snapdragon 888 kết hợp RAM 8GB, hỗ trợ 5G', 2, 0),
(5, 'iPhone SE 2022', 12490000, 'https://image.cellphones.com.vn/358x/media/catalog/product/l/c/lcimg-beede483-355b-48bb-b07a-51285393a1031122.jpg', 'Hiệu năng vượt trội với vi xử lý mới nhất - Chip Apple A15 tiên tiến nhất, cân mọi tác vụ\r\nTận hưởng không gian hiển thị sắc nét - Màn hình Liquid Retina nhỏ gọn 4.7 inch tỷ lệ 16:9\r\nGiải trí trọn vẹn ngày dài - Viên pin có nhiều cải tiến giúp bạn không còn lo lắng khi sử dụng\r\nCamera ghi trọn mọi khoảnh khắc - Camera đơn 12 MP f/1.8 hỗ trợ công nghệ Deep Fusion', 2, 0),
(6, 'OPPO Reno7 Z (5G)', 9190000, 'https://image.cellphones.com.vn/358x/media/catalog/product/c/o/combo_product_-_rainbow_spectrum_-_reno7_z.png', 'Trải nghiệm mượt mà các tác vụ - Bộ xử lý Snapdragon 695 mạnh mẽ RAM 8 GB\r\nNăng lượng bất tận cả ngày - Dung lượng pin lớn 4500 mAh và sạc nhanh 60W\r\nTrọn vẹn từng khoảnh khắc - Cụm 3 camera sau cảm biến lên đến 64MP, chụp chân dung chuyên nghiệp\r\nMàn hình hiển thị sắc nét, màu sắc sống động - Màn hình AMOLED 6.43\"\", tần số quét 60 Hz', 2, 0),
(7, 'Samsung Galaxy A73', 10190000, 'https://image.cellphones.com.vn/358x/media/catalog/product/g/a/galaxy-a73-grey-001.jpg', 'Camera chất lượng, bắt trọn từng khoảng khắc - Cụm 4 camera với cảm biến chính lên đến 108 MP\r\nThưởng thức không gian giải trí cực đỉnh - Màn hình lớn 6.7 inch, độ phân giải Full HD+, 120Hz mượt mà\r\nCấu hình Galaxy A73 5G được nâng cấp mạnh với chip Snapdragon 778G, RAM lên đến 8 GB\r\nChiến game thoải mái không lo gián đoạn - Viên pin lớn 5000 mAh, hỗ trợ sạc nhanh 25 W', 2, 0),
(8, 'Nubia Red Magic 7 Obsidian', 18990000, 'https://image.cellphones.com.vn/358x/media/catalog/product/n/u/nubia_red_magic_7.jpg', 'Trải nghiệm chơi game cực đã và mượt mà với màn hình AMOLED 6.8 inches, Full HD, 165hz\r\nNâng cấp hệ thống tản nhiệt, cải tiến mặt lưng giúp làm mát nhanh chóng và ổn định\r\nChiến game đỉnh cao, hiệu năng cực khủng - Chip Snapdragon 8 Gen 1 mạnh mẽ cùng RAM 12GB\r\nThiết kế hầm hồ và độc đáo dành riêng cho các game thủ cá tính', 2, 0),
(10, 'Iphone 13 pro max', 200000, 'https://image.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_13-_pro-4_2.jpg', 'anh yeeu em', 2, 0),
(13, 'Laptop Acer Gaming Predator Triton 300 123', 24000000, 'https://anphat.com.vn/media/product/40592_laptop_acer_gaming_predator_triton_300_pt315_53_77cv.jpg', 'CPU: Intel® Core™ i7-11800H (upto 4.60 GHz, 24MB)\r\nRAM: 16GB(8x2GB) DDR4 3200MHz (2 khe, nâng cấp tối đa 32GB)\r\nỔ cứng: 512GB PCIe NVMe SED SSD\r\nVGA: NVIDIA® GeForce® RTX 3060 6GB GDDR6', 3, 0),
(14, 'Laptop Acer Gaming Aspire 7 A715-42G-R4XX', 15390000, 'https://anphat.com.vn/media/product/39874_laptop_acer_gaming_aspire_7_a715_75g_58u4_nh_q97sv_004.jpg', 'CPU: AMD Ryzen 5-5500U (2.1GHz upto 4.0GHz, 8MB)\r\nRAM: 8GB khe rời DDR4 3200Mhz (2 khe, Nâng cấp tối đa 32GB)\r\nỔ cứng: 256GB PCIe NVMe SSD cắm sẵn (nâng cấp tối đa 1TB SSD)\r\nVGA: NVIDIA® GeForce® GTX 1650 4GB GDDR6', 3, 0),
(15, 'Samsung Galaxy A73 (5G)', 10690000, 'https://image.cellphones.com.vn/358x/media/catalog/product/s/a/samsung-galaxy-a73-1-600x600.jpg', 'Nguyên hộp, đầy đủ phụ kiện từ nhà sản xuất\r\n\r\nMáy, Sách hướng dẫn, Cây lấy sim, Cáp Type C', 2, 0),
(16, 'Xiaomi Redmi Note 11\r\n', 4250000, 'https://image.cellphones.com.vn/358x/media/catalog/product/8/0/800x800-1-640x640-5_2.png', 'Bảo hành 18 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất', 2, 0),
(17, 'Samsung Galaxy S22 Ultra', 29000000, 'https://image.cellphones.com.vn/358x/media/catalog/product/s/m/sm-s908_galaxys22ultra_front_green_211119.jpg', 'Máy, Sách hướng dẫn, Bút cảm ứng, Cây lấy sim, Cáp Type C\r\n\r\nBảo hành chính hãng 12 tháng tại trung tâm bảo hành ủy quyền, 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ NSX. ', 2, 0),
(18, 'Laptop Dell Inspiron 3511 5G8TF', 9990000, 'https://image.cellphones.com.vn/358x/media/catalog/product/2/6/26d682130766610096a5244f2da1075d-hi-ksp.jpg', 'Dây nguồn, Sách hướng dẫn, Sạc Laptop Dell\r\n\r\nBảo hành 12 tháng tại các trung tâm bảo hành FPT Service toàn quốc. Đổi mới trong 30 ngày đầu nếu bị lỗi phần cứng nhà sản xuất', 3, 0),
(19, 'Laptop Lenovo Ideapad 3', 10690000, 'https://image.cellphones.com.vn/358x/media/catalog/product/_/0/_0002_lenovo-ideapad-3-15itl6-82h800m4.jpg', 'Bảo hành 24 tháng tại trung tâm bảo hành Chính hãng. 1 đổi 1 trong 30 ngày nếu có lỗi phần cứng từ nhà sản xuất.', 3, 0),
(20, 'iPhone 13 Pro Max 128GB | Chính hãng VN/A', 27990000, 'https://cdn2.cellphones.com.vn/358x/media/catalog/product/i/p/iphone_13-_pro-3_7.jpg', 'iPhone 13 Pro Max chắc chắn sẽ là chiếc smartphone cao cấp được quan tâm nhiều nhất trong năm 2021. Dòng iPhone 13 series được ra mắt vào ngày 14 tháng 9 năm 2021 tại sự kiện \"California Streaming\" diễn ra trực tuyến tương tự năm ngoái cùng với 3 phiên bản khác là iPhone 13, 13 mini và 13 Pro. Vậy điện thoại 13 Pro Max giá bao nhiêu? Có gì nổi bật? Cùng tìm hiểu ngay nhé!\r\n\r\nĐánh giá iPhone 13 Pro Max – Hiệu năng vô đối, camera cực đỉnh\r\niPhone 12 ra mắt cách đây chưa lâu, thì những tin đồn mới nhất về iPhone 13 Pro Max đã khiến bao tín đồ công nghệ ngóng chờ. Cụm camera được nâng cấp, màu sắc mới, đặc biệt là màn hình 120Hz với phần notch được làm nhỏ gọn hơn chính là những điểm làm cho thu hút mọi sự chú ý trong năm nay.\r\n\r\nThiết kế cạnh phẳng sang trọng, nhiều màu sắc nổi bật\r\nDòng iPhone 12 được Apple áp dụng ngôn ngữ thiết kế tương tự iPhone 12 năm ngoái với phần cạnh viền máy được dát phẳng sang trọng cùng bốn góc được làm bo cong nhẹ, đây có thể được xem là một thiết kế hoài cổ từ dòng iPhone 5 trước đó. Vì thế mà iPhone 13 Pro Max nói riêng, cũng như dòng điện thoại iPhone 13 nói chung, cũng sẽ đi theo ngôn ngữ thiết kế này.\r\n\r\nĐiểm thay đổi lớn trên 13 Pro Max có thể là phần nhô của cụm camera. Trong khi đó mặt trước của thiết bị được phủ một lớp Ceramic Shield, loại vật liệu cứng hơn bất kỳ loại kính điện thoại thông minh nào hiện có trên thị trường, giúp bảo vệ màn hình iPhone hiệu quả.', 2, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `created_at`) VALUES
(1, '19288408c788054155ab1ac10fba5c71', '2021-10-28 08:16:31'),
(1, '1d552c60d420aca09b97ced942bfa207', '2021-10-31 07:18:09'),
(1, '20a2031fc6dea52852b51c8e2d276071', '2021-11-01 05:55:18'),
(1, '2c2f8d5e5af7ad2918a82f3e5eac9f8d', '2021-10-30 12:45:11'),
(1, '321041b0d1dda05369393d53d906edf3', '2021-10-29 06:30:00'),
(1, '4a49d22fb0ef171b33ba287f9fb831a1', '2021-10-29 08:56:01'),
(1, '5cfdf014aa983bc6a3247ff189ca57ce', '2021-11-01 05:48:32'),
(1, '637916d54f596007609ea7a5f44949c4', '2021-10-28 14:05:47'),
(1, '6706726d68bce3855dfa21b2e5084a4a', '2021-10-28 09:36:05'),
(1, '69824cff9e02af15308328f9ccbfa1eb', '2021-10-28 09:36:12'),
(1, '6da120980accbdd4574c1f6b6989237a', '2021-10-29 07:14:28'),
(1, 'a399c3cd78ecd71ab9c67ca329544a05', '2021-11-01 06:33:24'),
(1, 'a9e284d5bffd656afceb2f0c7072976c', '2021-10-30 14:24:12'),
(1, 'b711b8299b4721b2917b2b9d3c6635fd', '2021-10-28 09:30:38'),
(1, 'c2d7301408f0c58faa6453529e68cd87', '2021-10-28 09:16:54'),
(1, 'cb7d23d0441f849337efed0c22c17830', '2021-10-30 03:18:05'),
(1, 'ee4738999d0e3ea199fb871bc96340c1', '2021-10-28 14:08:47'),
(1, 'fb78230c3c129a0c5e22099339a4abd5', '2021-10-29 09:05:21'),
(12, '181078a30af3f528869514b78f40bb2b', '2021-10-30 14:24:41'),
(13, 'af08e39cb4fb5f11417b6bc89eef6114', '2021-10-30 14:25:14'),
(15, '463d15ae36b5deda07d258a98582611b', '2021-11-10 15:17:36'),
(15, '48e7e95f60f703f0e91e30c001b42f42', '2021-11-05 01:19:47'),
(16, '4adf6d44c15e53ec1749c7622fa61ba6', '2022-05-14 14:48:57'),
(16, '5d3c283c7c7fa562ed0b2407f2260e88', '2021-11-05 17:09:42'),
(17, 'f16fd3ddd04bf996c9136bfd25d5b009', '2021-11-08 06:45:40'),
(18, '8d658c23a61473b9845593e8e591f65f', '2022-06-06 14:57:09'),
(18, 'b098e3b2b06f68ff4d58fffb1d5407b6', '2022-06-06 09:05:51'),
(18, 'be8be4593cd515ac80f09417c63a7e3c', '2022-06-06 09:22:55'),
(18, 'dac35f61a23e7b068f2b725997038252', '2022-06-06 09:36:51'),
(19, 'aa272f8b3e2d236d8248a832f556b7dc', '2022-06-06 16:03:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted` int(11) DEFAULT 0,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `phone_number`, `address`, `password`, `role_id`, `created_at`, `updated_at`, `deleted`, `avatar`) VALUES
(19, 'Vũ Viết Chiến', 'vuvietchien07042001@gmail.com', NULL, NULL, '8fa466b953e9025766a08181391b2120', 2, '2022-06-06 16:03:26', '2022-06-06 16:03:26', 0, NULL),
(20, 'chiến vũ', 'vuvietchien07042001@gmail.com', '0865766032', NULL, 'b64f0c45c1f42ecb0677d81983e6eb0b', NULL, NULL, NULL, 0, NULL),
(21, 'chiến vũ', 'vuvietchien@gmail.com', '0865766032', NULL, 'b64f0c45c1f42ecb0677d81983e6eb0b', NULL, NULL, NULL, 0, NULL),
(22, 'Lê Quang Đạo', '1', '1', NULL, 'c4ca4238a0b923820dcc509a6f75849b', NULL, NULL, NULL, 0, NULL),
(23, 'Nguyễn Minh Thuận232311', 'thuan@gmail.com', '12121223231111434', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 0, NULL),
(24, 'le quang dao', 'quangdao5320@gmail.com', '0789149712', NULL, '827ccb0eea8a706c4c34a16891f84e7b', NULL, NULL, NULL, 0, NULL),
(25, 'Lê Quang Đạo', 'quangdao5320@gmail.com', '0789149712', NULL, '202cb962ac59075b964b07152d234b70', NULL, NULL, NULL, 0, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sanpham` (`idsanpham`),
  ADD KEY `idsanpham` (`idsanpham`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`,`token`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_role` (`role_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `danhmuc_ibfk_1` FOREIGN KEY (`id`) REFERENCES `loaisanpham` (`id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `FK_sanpham` FOREIGN KEY (`idsanpham`) REFERENCES `loaisanpham` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
