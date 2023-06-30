-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 19, 2020 lúc 04:28 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shopmypham`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(5, 'img/banners/banner6.jpg'),
(6, 'img/banners/banner3.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Son nước'),
(2, 'Son Sáp'),
(3, 'Son dưỡng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `PhuongThucTT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2019-05-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(44, 'Shiseido', 'Shiseido.png', 'Son Shiseido', 1),
(47, 'The Body Shop', 'The Body Shop.png', 'Các sản phẩm của The Body Shop', 1),
(48, 'Lancome', 'Lancome.png', 'Các sản phẩm của Lancome', 1),
(49, 'Neutrogena', 'Neutrogena.png', 'Các sản phẩm của Neutrogena ', 1),
(51, 'DHC', 'dhc.jpg', 'Các sản phẩm của DHC', 3),
(52, 'Hada Labo', 'Hada Labo.png', 'Các sản phẩm của Hada Labo', 3),
(53, 'Innisfree', 'innisfree.jpg', 'Các sản phẩm của innisfree', 1),
(54, 'Laneige', 'Laneige.png', 'Các sản phẩm của Laneige', 1),
(55, 'Mac', 'mac.png', 'Các sản phẩm của Mac', 1),
(56, 'Maybelline', 'Maybelline.png', 'Các sản phẩm của Maybeline', 1),
(57, 'SK-II', 'SK-II.png', 'Các sản phẩm của SK-II', 2),
(59, '3CE', '3ce.jpg', 'Các sản phẩm của 3CE', 2),
(60, 'Son Bbia ', 'bbia.jpg', 'Các sản phẩm của BBia', 2),
(61, 'Merzy', 'mezy.png', 'Các sản phẩm của Mezy', 2),
(62, 'Laneige', 'Laneige.png', 'Các sản phẩm của Laneige', 3),
(63, 'Bioderma', 'Bioderma.png', 'Các sản phẩm của Biodema', 3),
(64, 'Kiehl’s', 'Kiehl’s.png', 'Các sản phẩm của Kiehl\'s', 3),
(65, 'Maybelline', 'Maybelline.png', 'Các sản phẩm của Maybeline', 3),
(66, 'Vichy', 'Vichy.jpg', 'Các sản phẩm của Vichy', 3),
(67, 'Sebamed', 'Sebamed.png', 'Các sản phẩm của Sebamed', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(14, 'Trần Thị', 'Quỳnh Giao', 'nữ', '0123456789', 'admin@gmail.com', 'Quảng Nam', 'Giao Trần', '21232f297a57a5a743894a0e4a801fc3', 2, 1),
(16, 'Trần Thị', 'Quỳnh Giao', '', '0943147976', 'tranthiquynhgiao425@gmail.com', '', 'Quỳnh Giao', '02cfd6bba311577e29a962887546ab6f', 1, 1),
(17, 'Lê Thị', 'Mỹ Lan', '', '0808100508', 'llmlan.19it6@vku.udn.vn', '', 'Mỹ Lan', '5e65d31ce17198ff552d0750a5cc49ee', 3, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HinhAnh3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text COLLATE utf8_unicode_ci NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(60, 44, 2, 'Integrate Gracy', 130000, 20, 'img/products/ssssd.jpg', 'img/products/ssssd1.jpg', 'img/products/ssssd2.jpg', 2, 0, 0, 1, '<p><span style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: medium; background-color: rgb(226, 226, 226);\">Son mang đến sự khác biệt cho bạn,giữ màu tốt,tạo độ sáng cao và nuôi dưỡng đôi môi,bổ xung ẩm, dưỡng chất giúp môi mềm và cảm giác căng mướt Không quá bóng cũng không quá lỳ,màu lên chuẩn xác,cung cấp sắc màu tuyệt vời cho đôi môi Mang lại cảm giác mềm mại cho môi, ướt mềm vô cùng quyến rũ Kết cấu nhẹ nhàng, bao bì trang nhã, màu sắc bền lâu,dù makeup hay không trang điểm thì đơn giản là môi bạn trông rất tự nhiên với màu son nhẹ nhàng, tao nhã như một quý cô vậy Vỏ son là nhựa giả kim loại lì, ở ngoài là lớp nhựa trong, thiết kế đơn giản, hiện đại, thỏi son cầm nhẹ tay, nắp đóng mở chắc chắn, vặn son lên xuống rất dễ dàng mà không hề lỏng lẻo, đầu son dạng bằng, mềm mượt, lướt trên môi cực kì dễ dàng.</span><br style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: medium; background-color: rgb(226, 226, 226);\"><br style=\"color: rgb(0, 0, 0); font-family: Lato, sans-serif; font-size: medium; background-color: rgb(226, 226, 226);\"><br></p>', '2020-12-17 10:37:51'),
(61, 47, 1, 'MATTE LIP LIQUID', 899000, 20, 'img/products/sntbds1.jpg', 'img/products/sntbds.jpg', 'img/products/sntbds2.jpg', 5, 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Noto Serif&quot;, arial; vertical-align: baseline;\"><font color=\"#ff00ff\">HƯỚNG DẪN SỬ DỤNG</font></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Noto Serif&quot;, arial; vertical-align: baseline; color: rgb(0, 0, 0);\">Sử dụng trực tiếp lên môi bằng đầu cọ, tô đều lên môi</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Noto Serif&quot;, arial; vertical-align: baseline; color: rgb(0, 0, 0);\">Khi son môi nước thịnh hành thế giới trang điểm, The Body Shop cũng đã nhảy vào cuộc thi. Họ đã giới thiệu chất lỏng Lip Matte với gần 8 sắc thái được tung ra ở đây, nhưng tôi nghĩ rằng khoảng 12 sắc thái được tung ra ở các nơi khác trên thế giới.Chúng được đóng gói độc đáo với đáy có mã màu và nắp đậy màu đen nhung sang trọng; chúng giống với kem dưỡng môi Nyx Soft Matte.<br>Sản phẩm có một mức giá rất rẻ so với hầu hết các chất lỏng lipsticks từ nhà thuốc, đó là một cộng lớn. Lấy một sản phẩm giá cả phải chăng từ The Body Shop là một phép lạ. Tôi đã chọn màu “Goa Magnolia” đó là một sản phẩm màu hồng tuyệt đẹp.<br>Tên của những màu sắc Lip có một câu chuyện thú vị, họ được đặt tên theo một nơi cùng với một bông hoa nổi tiếng từ khu vực đó. Ví dụ “Magnolia” là một bông hoa được tìm thấy trong “Goa”, chúng có bóng mát được gọi là “Mauritius Dahlia”, trong đó “Dahlia” là hoa tìm thấy ở “Mauritius”, thú vị phải không?</p><table class=\"tblPicture\" align=\"center\" style=\"margin: 0px auto; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Noto Serif&quot;, arial; vertical-align: baseline; color: rgb(0, 0, 0);\"><tbody style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"tdphotodetails\" style=\"margin: 0px; padding: 0px; border-top: 0px; border-right: none; border-bottom: 0px; border-left: 0px; border-image: initial; font: inherit; vertical-align: baseline;\"><a class=\"fancybox linkblogdetailimage\" href=\"https://rivi.vn/wp-content/uploads/2018/03/son-nuoc-thebodyshop-trang-diem-moi-matte-lip-liquid-04.jpg\" data-fancybox-group=\"son-nuoc-thebodyshop-trang-diem-moi-matte-lip-liquid\" title=\" Đây là màu son mà tôi mua được\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline; transition: all 0.4s ease 0s; color: rgb(249, 127, 181); box-shadow: none;\"><img class=\"alignnone size-medium wp-image-21720 blogdetailimage lazyloaded\" src=\"https://rivi.vn/wp-content/uploads/2018/03/son-nuoc-thebodyshop-trang-diem-moi-matte-lip-liquid-04.jpg\" alt=\"Son nước TheBodyShop Trang điểm môi MATTE LIP LIQUID\" data-ll-status=\"loaded\" style=\"margin: 0px; padding: 0px; border-width: initial; border-color: initial; border-image: initial; font: inherit; vertical-align: top; max-width: 100%; height: auto; border-radius: 0px; box-shadow: none;\"></a></td></tr><tr style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><td class=\"pCaption caption\" style=\"margin: 20px; padding: 0px; border-top: 0px; border-right: none; border-bottom: 0px; border-left: 0px; border-image: initial; font-style: italic; font-variant: inherit; font-weight: 600; font-stretch: inherit; font-size: 16px; line-height: 1.43; font-family: Montserrat, sans-serif; vertical-align: baseline; color: rgb(249, 127, 181); display: block; letter-spacing: -0.3px; text-align: center;\">Đây là màu son mà tôi mua được</td></tr></tbody></table><div class=\"image-text\" style=\"margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 18px; line-height: inherit; font-family: &quot;Noto Serif&quot;, arial; vertical-align: baseline; color: rgb(0, 0, 0);\"><div class=\"row\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><div class=\"col-md-6 col-sm-6 col-xs-6\" style=\"margin: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">• Chất lỏng Matte lâu dài với kết thúc mượt mà.<br>• Có 12 màu mạnh mẽ.<br>• Không chứa gluten.<br>• Không có caramel</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Có một loạt màu các sắc thái khác nhau trong dòng này trải dài từ những nudes, brights, reds và bolds, do đó chắc chắn sẽ có một màu phù hợp với mỗi người. Sản phẩm kem lỏng dễ sử dụng.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Công thức là tuyệt vời! Chúng rất mờ và mịn màng và mềm mại, vì vậy chúng dễ dàng di chuyển xung quanh cho đến khi khô đi, mất khoảng một phút. Và sau đó, chúng kéo dài trên môi của tôi khoảng 5-6 giờ.</p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; font: inherit; vertical-align: baseline;\">Màu môi vẫn còn sống thậm chí cả bữa ăn và độ mờ đi rất nhỏ nếu bạn không ăn thực phẩm đặc biệt. Sản phẩm thoải mái trên môi và không khô như các son môi nước khác</p></div></div></div>', '2020-12-17 08:49:31'),
(62, 49, 1, 'Hydro Boost Hydrating Lip Shine', 180000, 10, 'img/products/snnt.png', '/img/products/snnt1.jpg', '/img/products/snnt2.jpg', 5, 0, 0, 1, '<p><span style=\"color: rgb(0, 0, 0); font-family: &quot;Noto Serif&quot;, sans-serif; font-size: 18px;\">Nếu là một cô nàng yêu thích làm đẹp và hay tìm kiếm các sản phẩm mĩ phẩm chất lượng thì các nàng chắc hẳn hẳn đã từng nghe tới hãng mĩ phẩm Neutrogena rồi. Neutrogena là một hãng mĩ phẩm khá nổi tiếng của Mỹ với các sản phẩm skincare của mình và được rất nhiều các beauty blogger khuyên dùng bởi thành phần lành tính , chất lượng tốt mà giá cả thì quá phải chăng.Tuy nhiên ngoài các sản phẩm skincare ra thì hãng còn nhiều sản phẩm makeup khác nữa cũng rất nổi tiếng.Và sản phẩm mà mình review lần này chính là em son dưỡng ẩm thần thánh Neutrogena Hydro Boost Hydrating Lip Shine.</span><br></p>', '2020-12-17 08:53:07'),
(63, 59, 2, 'Blurring Liquid Lip', 500000, 100, 'img/products/ss3ce.jpg', '/img/products/ss3ce1.jpg', '/img/products/ss3ce2.jpg', 1, 0, 0, 1, '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Son Sáp Tone Đỏ Siêu Đẹp\r\n\r\n#212 Moon : Màu đỏ thuần – Chất son Satin (đây là thỏi son lì có chứa dưỡng nên khi dùng sẽ tạo hiệu ứng môi bóng, thích hợp với những cô nàng yêu thích bờ môi căng mọng, quyến rũ)\r\n\r\n# 214 Squeezing : Màu đỏ tươi – Chất son lì (chất son lì mịn, độ bám và khả năng lên màu son cực tốt)\r\n\r\n\r\n- #211- Đỏ cam \r\n- #212 - Màu đỏ \r\n- #213 - Đỏ hồng \r\n- #214 - Đỏ tươi \r\n- #215 - Đỏ lạnh</span><br></p>', '2020-12-17 08:56:26'),
(65, 59, 1, 'VELVET LIP TINT', 350000, 50, 'img/products/sk3ce.jpg', '/img/products/sk3ce1.jpg', '/img/products/sk3ce2.jpg', 2, 0, 0, 1, '<p style=\"margin-bottom: 15px; font-size: 15px; line-height: 22px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify; background-color: rgb(247, 247, 247);\">Nhìn chung, 3CE Velvet Lip Tint có thiết kế bắt mắt, nhỏ gọn, với đặc trưng màu vỏ trùng với màu son giúp các nàng có thể dễ dàng lựa chọn. Phần vỏ son dạng trụ tròn thuôn dài khá gọn gàng, đơn giản, dễ cầm nhưng vẫn cực kì sang trọng. Logo 3CE quen thuộc được in phía bên dưới của thân son khá nổi bật và tinh tế.&nbsp;</p><p style=\"margin-bottom: 15px; font-size: 15px; line-height: 22px; color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, sans-serif; text-align: justify; background-color: rgb(247, 247, 247);\">Thông thường,&nbsp;<a href=\"http://blogbeauty.webflow.io/blog/son-3ce\" style=\"color: rgb(221, 120, 63);\"><strong style=\"font-weight: bold;\">son 3CE</strong></a>&nbsp;không hay thêm các hương liệu tạo mùi vào các sản phẩm son của mình. Tuy nhiên, ở dòng son 3CE Lip Tint này, hãng đã thêm mùi hương vani tổng hợp khá ngọt ngào, quyến rũ vừa đủ mà không hề bị nồng quá hay gây khó chịu khi sử dụng. Đầu cọ son 3CE Velvet Lip Tint cũng được hãng thiết kế khá tỉ mỉ, tinh ý với phần đầu cọ vừa vặn, dễ lấy son và tán son trên môi.&nbsp;</p>', '2020-12-17 09:02:34'),
(66, 55, 1, 'Powder Kiss Liquid Lipcolour', 400000, 12, 'img/products/skmac1.jpg', '/img/products/skm2.jpg', '/img/products/skmac.jpg', 1, 0, 0, 1, '<p data-mce-style=\"text-align: center;\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102); font-family: Tinos, Arial, Helvetica, sans-serif; font-size: 14px; text-align: center;\"><span data-mce-style=\"font-size: 15pt;\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; font-size: 15pt;\"><span style=\"margin: 0px; padding: 0px; outline: none; font-weight: 700; max-width: 100%;\"><em style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\">Son Kem Mac Powder Kiss Liquid Lipcolour Màu 996 Date-Maker Hồng Nude</em></span></span></p><p data-mce-style=\"text-align: center;\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102); font-family: Tinos, Arial, Helvetica, sans-serif; font-size: 14px; text-align: center;\"><span data-mce-style=\"font-size: 15pt;\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; font-size: 15pt;\"><span style=\"margin: 0px; padding: 0px; outline: none; font-weight: 700; max-width: 100%;\"><em style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"><br data-mce-bogus=\"1\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"></em></span></span></p><p data-mce-style=\"text-align: left;\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102); font-family: Tinos, Arial, Helvetica, sans-serif; font-size: 14px;\"><span data-mce-style=\"font-size: 15pt;\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; font-size: 15pt;\"><em style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"></em>-&nbsp;Son kem&nbsp;<em style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"><a data-mce-href=\"https://thegioisonmoi.com/products/son-kem-mac-powder-kiss-liquid-lipcolour-mau-996-date-maker-hong-nude\" href=\"https://thegioisonmoi.com/products/son-kem-mac-powder-kiss-liquid-lipcolour-mau-996-date-maker-hong-nude\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102) !important;\"><span style=\"margin: 0px; padding: 0px; outline: none; font-weight: 700; max-width: 100%;\">Mac Powder Kiss Liquid Lipcolour Màu 996 Date-Maker</span></a>&nbsp;</em>mang tông hồng nude siêu tây và cực hot của năm nay chất son làm các nàng mê mẫn từ lần chạm đầu tiên.</span></p><p data-mce-style=\"text-align: left;\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102); font-family: Tinos, Arial, Helvetica, sans-serif; font-size: 14px;\"><span data-mce-style=\"font-size: 15pt;\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; font-size: 15pt;\"><br data-mce-bogus=\"1\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102); font-family: Tinos, Arial, Helvetica, sans-serif; font-size: 14px;\"><a data-mce-href=\"https://thegioisonmoi.com/products/son-kem-mac-powder-kiss-liquid-lipcolour-mau-996-date-maker-hong-nude\" href=\"https://thegioisonmoi.com/products/son-kem-mac-powder-kiss-liquid-lipcolour-mau-996-date-maker-hong-nude\" title=\"Son Kem Mac Powder Kiss Liquid Lipcolour Màu 996 Date-Maker Hồng Nude\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102) !important;\"><img src=\"https://file.hstatic.net/1000025647/file/1_2c03cb9211f640ec8bcfb999f93bd045_1024x1024.jpg\" data-mce-src=\"https://file.hstatic.net/1000025647/file/1_2c03cb9211f640ec8bcfb999f93bd045_1024x1024.jpg\" data-mce-style=\"display: block; margin-left: auto; margin-right: auto;\" style=\"margin: 0px auto; padding: 0px; outline: none; border: 0px; max-width: 100%; display: block; width: 334.167px; height: 445.087px;\"></a></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102); font-family: Tinos, Arial, Helvetica, sans-serif; font-size: 14px;\"><span data-mce-style=\"font-size: 15pt;\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; font-size: 15pt;\"><br data-mce-bogus=\"1\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"></span></p><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102); font-family: Tinos, Arial, Helvetica, sans-serif; font-size: 14px;\"><span data-mce-style=\"font-size: 15pt;\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; font-size: 15pt;\">- Son kem&nbsp;<a data-mce-href=\"https://thegioisonmoi.com/products/son-kem-mac-powder-kiss-liquid-lipcolour-mau-996-date-maker-hong-nude\" href=\"https://thegioisonmoi.com/products/son-kem-mac-powder-kiss-liquid-lipcolour-mau-996-date-maker-hong-nude\" style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%; color: rgb(102, 102, 102) !important;\"><em style=\"margin: 0px; padding: 0px; outline: none; max-width: 100%;\"><span style=\"margin: 0px; padding: 0px; outline: none; font-weight: 700; max-width: 100%;\">MAC&nbsp;Powder Kiss Liquid Lipcolour</span></em></a>&nbsp;lên môi sẽ có độ mịn, kéo trên môi nhẹ nhàng với cảm giác mềm mại và mượt mà suốt cả ngày.&nbsp;Cấu trúc nhẹ tênh cho lớp son trên môi bền màu nhưng vẫn tạo được hiệu ứng mờ ảo quyến rũ.</span></p>', '2020-12-17 09:05:18'),
(67, 61, 2, 'Merzy Another Me The First Lipstick', 700000, 20, 'img/products/ssmz.png', '/img/products/ssmz1.jpg', '/img/products/ssmz2.jpg', 1, 0, 0, 1, '<p style=\"font-family: Verdana, Geneva, sans-serif; font-size: 15px; line-height: 26px; margin-bottom: 26px; overflow-wrap: break-word; color: rgb(34, 34, 34);\">10 màu trong bảng&nbsp;<strong style=\"font-weight: bold;\">son Merzy Another Me The First Lipstick</strong>:</p><ul style=\"padding: 0px; margin-bottom: 26px; color: rgb(34, 34, 34); font-family: Roboto, sans-serif, arial; font-size: 15px;\"><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L1 Excuse me</em>&nbsp;– hồng đất, màu cực dễ tính với mọi làn da.</li><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L2 Look at me</em>&nbsp;– hồng cam thiên hồng hợp với những cô nàng dịu dàng, nữ tính.</li><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L3 Catch me</em>&nbsp;– hồng san hô được rất nhiều cô gái thích thú bởi sự tươi tắn.</li><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L4 With me</em>&nbsp;– đỏ truyền thống nhưng không lỗi thời.</li><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L5 Kiss me</em>&nbsp;– đỏ tươi giúp bạn nổi bật.</li><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L6 Follow me</em>&nbsp;– đỏ cam, sắc đỏ cam rực rỡ này rất thích hợp với những cô bạn cá tính, sexy chúng mình.</li><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L7 Pick me</em>&nbsp;– hồng cánh sen khá kén da nhưng lại rất đáng yêu.</li><li style=\"line-height: 26px; margin-left: 21px;\"><em>Màu L8 Hug me</em>&nbsp;– cam san hô, là một gam màu khá lạ mắt.</li><li style=\"line-height: 26px; margin-left: 21px;\">Màu L9 Touch you – đỏ nâu, một gam màu cực kỳ quý phái và quyến rũ</li><li style=\"line-height: 26px; margin-left: 21px;\">Màu L10 Kiss you – cam đào, sắc cam này phù hợp nhiều phong cách và trông yêu kiều hơn.</li></ul>', '2020-12-17 09:09:17'),
(68, 60, 2, 'Bbia Last Lipstick', 170000, 170, 'img/products/ssbba.jpg', '/img/products/ssbba1.jpg', '/img/products/ssbbia2.jpg', 2, 0, 0, 1, '<p><span style=\"color: rgb(137, 137, 137); font-family: Roboto, HelveticaNeue, &quot;Helvetica Neue&quot;, sans-serif; font-size: 14px;\">Dòng son BBIA version 3 vỏ nâu đỏ gồm có 5 màu: #11 SENSUAL là sắc cam thuần #12 FANTASY là màu cam đất #13 ARTISTIC là màu cam đỏ pha nâu #14 Decadence...</span><br></p>', '2020-12-17 09:16:05'),
(70, 54, 3, ' Laneige Lip Glowy Balm', 350000, 100, 'img/products/sdlng.jpg', '/img/products/sdlng1.jpg', '/img/products/sdlng2.jpg', 1, 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Đây là dòng dưỡng môi có màu dạng tuýp của Laneige</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; font-weight: bold;\">Thiết kế:</strong></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Laneige Lip Glowy Balm có thiết kế dạng tuýp vô cùng tiện dụng. Em này có vỏ nhựa mềm, trên thân in tên thương hiệu và thông tin sản phẩm. Nắp vặn chắc chắn, tiện cho việc sử dụng và bảo quản.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><img class=\"aligncenter wp-image-3180 size-full lazy-loaded\" src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-review.jpg\" data-lazy-type=\"image\" data-src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-review.jpg\" alt=\"son dưỡng môi có màu Laneige Lip Glowy Balm\" width=\"600\" height=\"415\" srcset=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-review.jpg 600w, https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-review-300x208.jpg 300w\" data-srcset=\"\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; height: auto; max-width: 100%; display: block; text-align: center; clear: both;\"></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; font-weight: bold;\">Chất son:</strong></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Chất son dòng dưỡng môi Laneige Lip Glowy Balm này là dạng gel đặc. Em này mịn và mỏng nhẹ kho thoa lên môi</p><p class=\"alignnone\" style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><img class=\"aligncenter size-full wp-image-3179 lazy-loaded\" src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-co-tot-khong.jpg\" data-lazy-type=\"image\" data-src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-co-tot-khong.jpg\" alt=\"\" width=\"600\" height=\"600\" srcset=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-co-tot-khong.jpg 600w, https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-co-tot-khong-150x150.jpg 150w, https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-co-tot-khong-300x300.jpg 300w, https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-co-tot-khong-82x82.jpg 82w\" data-srcset=\"\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; height: 290.74px; max-width: 100%; display: block; text-align: center; clear: both; width: 290.74px;\"><img class=\"aligncenter wp-image-3178 size-full lazy-loaded\" src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm.jpg\" data-lazy-type=\"image\" data-src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm.jpg\" alt=\"review son dưỡng laneige lip glowy balm\" width=\"600\" height=\"333\" srcset=\"https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm.jpg 600w, https://tudienlamdep.org/wp-content/uploads/2019/06/son-duong-moi-laneige-glowy-lip-balm-300x167.jpg 300w\" data-srcset=\"\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; height: 204.98px; max-width: 100%; display: block; text-align: center; clear: both; width: 369.333px;\"></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; font-weight: bold;\">Mùi hương và màu sắc</strong></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Tuýp dưỡng môi Laneige Lip Glowy Balm hiện có 4 dòng cho bạn thả ga lựa chọn:</p><ul style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; color: rgb(29, 33, 41); font-family: Raleway, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Laneige Lip Glowy Balm Berry: Em này có vỏ và màu son hồng đặc trưng và rất thơm mùi dâu. Có thể nói, dòng Berry lên màu đậm nhất trong 4 em nhé.</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Laneige Lip Glowy Balm Grapefruit: Em này có vỏ ngoài màu hồng san hô. Mùi đặc trưng hương bưởi và cũng lên màu sang hô cực xinh</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Laneige Lip Glowy Balm Peach: đây là em được rất nhiều người mến mộ với vỏ ngoài vàng đượm. Hương đào kết hợp với màu hồng đào nhẹ nhàng chính là mị lực của ẻm</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Laneige Lip Glowy Balm Pear: Dòng này có vỏ ngoài màu xanh lá. Mùi lê thanh mát và không có màu nhé.</li></ul><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; font-weight: bold;\">Công dụng:</strong></p><ul style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; color: rgb(29, 33, 41); font-family: Raleway, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Dưỡng ẩm cho môi và hạn chế tình trạng bong tróc, khô vảy</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Màu son tươi tắn cho môi luôn xinh xắn</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Em này dùng giúp môi mịn và mướt hơn</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Sau khi dùng lâu môi sẽ hồng tự nhiên</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Giúp phục hồi nhanh các vết nứt nẻ</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Dưỡng môi mềm, căng mọng và cải thiện độ đàn hồi tốt</li></ul><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; font-weight: bold;\">Trải nghiệm:</strong></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Em này khi thoa lên môi rất mịn. Chất không nặng nhưng sẽ gây dính dính khi bặm môi. Nhưng Laneige Lip Glowy Balm khá dễ trôi nhé</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Sau khi dùng thấy môi mềm và đỡ khô hơn. Môi tươi hơn và mọng hơn trông thấy. Về khả năng dưỡng ẩm, mình không đánh giá quá cao, nhưng mình xài cùng mask môi Laneige nên môi vẫn luôn căng mọng.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><strong style=\"margin: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; font-weight: bold;\">Đánh giá:</strong></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">– Ưu điểm</p><ul style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; color: rgb(29, 33, 41); font-family: Raleway, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Có 4 màu với 4 hương cho bạn tha hồ lựa chọn</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Màu son khá tự nhiên</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Không gây bóng nhẫy trên môi</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Thiết kế dạng tuýp cực dễ sử dụng</li></ul><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">– Nhược điểm:</p><ul style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; color: rgb(29, 33, 41); font-family: Raleway, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Son bám không đều màu</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Màu son hơi nhạt</li><li style=\"margin: 0px 0px 12px; padding: 0px 0px 0px 21px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; list-style: none; position: relative; font-family: &quot;Open Sans&quot;, sans-serif !important;\">Hiệu quả dưỡng ẩm ở mức trung bình</li></ul>', '2020-12-17 09:21:26'),
(71, 44, 1, 'LacquerInk Lipshine', 800000, 130, 'img/products/ssd.jpg', '/img/products/ssd1.jpg', '/img/products/ssd2.jpg', 1, 0, 0, 1, '<div class=\"product-image-container\" style=\"outline: 0px; position: relative; width: 710.625px; padding-right: 10px; padding-left: 0px; min-height: 1px; flex: 0 0 56.25%; max-width: 56.25%; margin-left: 78.9583px; align-self: start;\"><div class=\"product-primary-image\" style=\"outline: 0px;\"><h2 class=\"visually-hidden\" style=\"outline: 0px; margin: -1px; font-weight: 600; font-size: 2.125rem; letter-spacing: 0.9px; font-family: Arial, Medium, sans-serif; text-transform: uppercase; border: 0px; clip: rect(0px, 0px, 0px, 0px); height: 1px; overflow: hidden; padding: 0px; position: absolute; width: 1px;\">IMAGE</h2></div></div><div class=\"product-details-wrapper \" style=\"outline: 0px; position: relative; width: 315.833px; min-height: 1px; padding-right: 0px; padding-left: 10px; flex: 0 0 25%; max-width: 25%;\"><div class=\"product-info-container\" style=\"outline: 0px; display: flex; flex-direction: column;\"><div class=\"product-info-details\" style=\"outline: 0px; order: 1;\"><div class=\"product-title \" style=\"outline: 0px;\"><h3 class=\"product-brand\" style=\"outline: 0px; margin-right: 0px; margin-bottom: 0.83333vw; margin-left: 0px; font-size: 16px; line-height: 0.86; letter-spacing: 0.02em; font-family: Arial, sans-serif; text-transform: capitalize; color: rgb(102, 102, 102);\">SHISEIDO</h3><h2 class=\"product-name\" itemprop=\"name\" style=\"text-align: center; outline: 0px; margin: -1px 0px 0.83333vw; font-weight: 600; font-size: 24px; letter-spacing: 0.9px; font-family: Arial, Medium, sans-serif;\">Son môi dạng nước LacquerInk Lipshine</h2></div><div class=\"product-description \" style=\"outline: 0px; font-size: 18px; margin-top: 12px;\"><span class=\"shortDescPart1\" style=\"outline: 0px;\"><span style=\"color: rgb(0, 0, 0); font-family: Arial, sans-serif; letter-spacing: -0.1px;\"></span><p style=\"outline: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; color: rgb(0, 0, 0); font-family: Arial, sans-serif; letter-spacing: -0.1px;\"></p><div style=\"text-align: center;\"><span style=\"letter-spacing: -0.1px;\">Sắc tố màu cường độ cao kết hợp cùng độ sáng bóng ở&nbsp;</span><span class=\"shortDescPart2\" style=\"letter-spacing: -0.1px; outline: 0px;\">loại son nước này chính là yếu tố giúp đôi môi luôn căng mọng, đầy sức sống</span></div><span class=\"shortDescPart2\" style=\"outline: 0px;\"><div style=\"text-align: center;\"><span style=\"letter-spacing: -0.1px;\">● Sự pha trộn độc đáo của các loại dầu khiến môi luôn tươi sáng và bền màu</span></div><div style=\"text-align: center;\"><span style=\"letter-spacing: -0.1px;\">● Đầu cọ thiết kế đặc biệt giúp son phủ kín và bám đều, không gây ra cảm giác bết dính</span></div></span><p></p><div style=\"text-align: center;\"><span class=\"shortDescPart2\" style=\"outline: 0px;\"><br></span></div></span></div></div></div></div>', '2020-12-19 19:38:28'),
(72, 48, 2, 'L\'Absolu Rouge Drama Matte Lipstick', 760000, 130, 'img/products/lcm.jpg', '/img/products/lcm1.jpg', '/img/products/lcm2.jpg', 1, 0, 0, 1, '<p><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 13px;\"><strong style=\"font-weight: bold;\">Son Lì Lâu Trôi&nbsp;<strong style=\"font-weight: bold;\">Lancôme&nbsp;</strong>L\'Absolu Rouge Drama Matte Lipstick&nbsp;</strong></span><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 13px;\">là dòng son thỏi</span><span style=\"color: rgb(0, 0, 0); font-family: arial, helvetica, sans-serif; font-size: 13px;\">&nbsp;<a href=\"https://hasaki.vn/danh-muc/trang-diem-moi-high-end-c1927.html\" target=\"_blank\" style=\"color: rgb(50, 109, 82); outline: none; font-weight: bold;\"><span style=\"color: rgb(0, 51, 0);\"><strong style=\"font-weight: bold;\">trang điểm môi</strong></span></a>&nbsp;đến từ thương hiệu mỹ phẩm&nbsp;<strong style=\"font-weight: bold;\"><span style=\"color: rgb(0, 51, 0);\"><a href=\"https://hasaki.vn/thuong-hieu/lancome.html\" target=\"_blank\" style=\"color: rgb(50, 109, 82); outline: none;\"><span style=\"color: rgb(0, 51, 0);\">Lancôme</span></a></span>&nbsp;</strong>cao cấp chính hãng của Pháp, với công thức cải tiến cho chất son lì đậm nét nhất và bền màu hơn so với các dòng son trước đây của&nbsp;<strong style=\"font-weight: bold;\">Lancôme,&nbsp;</strong>không chỉ mang lại độ bám màu cao mà còn giữ cho đôi môi cảm giác ẩm mượt, mịn như nhung. Bạn sẽ luôn tự tin với sắc son lì trung thực, đầy ấn tượng suốt cả ngày dài.</span><br></p>', '2020-12-19 19:48:21'),
(73, 48, 1, 'L’ABSOLU LACQUER', 880000, 170, 'img/products/L’ABSOLU LACQUER.jpg', '/img/products/L’ABSOLU LACQUER1.jpg', '/img/products/L’ABSOLU LACQUER2.jpg', 1, 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: Arimo, Calibri, Geneva, sans-serif; text-align: justify;\">Son kem lâu trôi, màu sắc và độ bóng cao, mang lại cảm giác siêu nhẹ và ẩm mượt cho môi.</span><br></p>', '2020-12-19 19:56:47'),
(74, 53, 1, 'Môi Vivid Cotton Ink', 168000, 600, 'img/products/son-kem-innisfree-vivid-cotton-ink1-500x500.jpg', '/img/products/innisfree-vivid-cotton-ink-09-500x500.jpg', '/img/products/son-kem-innisfree-vivid-cotton-ink6-500x500.jpg', 1, 0, 0, 1, '<p style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Tahoma, Geneva, sans-serif; font-size: 14px;\">- Son được lấy cảm hứng từ những đóa hoa Tulip xinh đẹp.</p><p style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Tahoma, Geneva, sans-serif; font-size: 14px;\">- Ấn tượng đầu tiên đối với dòng Son kem Innisfree này chính là sự mềm mịn của chất son khi thoa lên môi và độ lì của nó.</p><p style=\"-webkit-font-smoothing: antialiased; -webkit-tap-highlight-color: transparent; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; color: rgb(51, 55, 69); font-family: Tahoma, Geneva, sans-serif; font-size: 14px;\">- Có thành phần dưỡng giúp môi không bị khô, đôi môi sẽ trở nên căng mộng và quyến rũ.</p>', '2020-12-19 20:01:54'),
(75, 54, 1, 'Tattoo Lip Tint', 500000, 1000, 'img/products/lng.jpg', '/img/products/lng1.jpg', '/img/products/lng2.jpg', 1, 0, 0, 1, '<p><span style=\"color: rgb(41, 42, 55); font-family: &quot;Segoe UI&quot;, Helvetica, Arial, sans-serif, &quot;Bitstream Vera Sans&quot;; font-size: 14px; letter-spacing: -0.64px; text-align: right;\">Son lâu trôi với chất son mềm mịn, nhẹ nhàng giúp đôi môi bền màu như hình xăm</span><br></p>', '2020-12-19 20:05:35');
INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(76, 56, 1, 'Maybelline Superstay Matte Ink', 300000, 5000, 'img/products/mbl.jpg', '/img/products/mbl1.jpg', '/img/products/mbl2.jpg', 1, 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Dù đã ra mắt từ năm 2017 nhưng son <em style=\"margin: 0px; padding: 0px; outline: none; overflow-anchor: none;\"><strong style=\"margin: 0px; padding: 0px; outline: none; overflow-anchor: none;\">Maybelline Superstay Matte Ink</strong></em> vẫn luôn nằm trong Top những thỏi son kem lì bán chạy nhất của từng năm. Vì sao dòng son môi Maybelline lại có sức hút đến vậy?</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Bảng màu son Superstay Matte Ink Maybelline đa dạng không? Chất son như nào? Lên màu có đẹp không? Có bên màu không? Hãy cùng tham khảo bài đánh giá chi tiết dòng son này để đánh giá khách quan về sản phẩm, có nên mua hay không nhé!</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\"></p><div class=\"posts-menu\" data-toggle_wrap=\"\" style=\"margin: 0px 0px 10px; padding: 10px; outline: none; overflow-anchor: none; width: 906px; clear: both; display: inline-block; background: rgb(252, 252, 252); border: 1px dashed rgb(204, 204, 204); font-size: 18px; line-height: 30px; text-align: justify; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\"><div class=\"posts-menu__title\" data-toggle_btn=\"\" style=\"margin: 0px 0px 10px; padding: 0px; outline: none; overflow-anchor: none; font-weight: bold; background: rgb(222, 222, 222); cursor: pointer; line-height: 30px;\">Mục lục</div></div><h2 id=\"mcetoc_1e70ona8h0\" style=\"margin: 15px 0px; padding: 0px; outline: none; overflow-anchor: none; color: rgb(62, 62, 62); font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 22px; line-height: 26px; font-family: sans-serif; text-align: justify;\">Thông tin thương hiệu Maybelline</h2><figure style=\"margin-bottom: 0px; padding: 0px; outline: none; overflow-anchor: none; color: rgb(62, 62, 62); font-family: Arial, sans-serif; font-size: 14px;\"><img src=\"https://cdn.chanhtuoi.com/uploads/2020/04/maybelline-superstay-matte-ink-1.jpg.webp\" alt=\"Maybelline Superstay Matte Ink\" width=\"600\" height=\"366\" class=\"lazy img-loading-content\" data-original=\"https://cdn.chanhtuoi.com/uploads/2020/04/maybelline-superstay-matte-ink-1.jpg.webp\" style=\"margin: 20px auto; padding: 0px; outline: none; overflow-anchor: none; max-width: 100%; display: block; object-fit: contain !important; width: auto !important; height: auto !important;\"><div id=\"adbro\" class=\"adbro-animated adbro-md adbro-xs\" style=\"margin: 0px auto -366px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; position: relative; overflow: hidden; width: 600px; height: 366px; top: -386px;\"><div class=\"adbro-residence\" style=\"margin-bottom: 10px; padding: 0px; outline: none; overflow-anchor: none; position: absolute; top: 0px; bottom: 0px; left: 0px; width: 600px; overflow: hidden; line-height: 30px; margin-top: 0px !important; margin-right: 0px !important; margin-left: 0px !important;\"><br></div></div></figure><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: center; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\"></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Thương hiệu Maybelline thực chất không còn xa lạ với đa số các bạn gái ở nước ta cũng như nhiều nước khác trên thế giới. Maybelline đến từ Mỹ và những dòng sản phẩm mang thương hiệu Maybelline nổi tiếng về chất lượng vượt trội và mức giá cả bình dân.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Khi nhắc đến Maybelline, chúng ta không thể nào không nhắc đến son môi và massacara. Đặc biệt là son kem lì Superstay Matte Ink Maybelline được tung ra vào thời điểm giữa năm 2017.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Dù đã xuất hiện được 1 thời gian khá dài nhưng em này vẫn luôn giữ được độ HOT đến thời điểm hiện tại và nằm trong Top son kem lì bán chạy nhất. Sức hút của&nbsp;Superstay Matte Ink Maybelline là do đâu? Hãy cùng tham khảo nội dung reviews chi tiết dưới đây nhé!</p><h2 id=\"mcetoc_1e70onkeh3\" style=\"margin: 15px 0px; padding: 0px; outline: none; overflow-anchor: none; color: rgb(62, 62, 62); font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 22px; line-height: 26px; font-family: sans-serif; text-align: justify;\">Reviews&nbsp;son kem lì Maybelline Superstay Matte Ink</h2><h3 id=\"mcetoc_1e7mnjm9g0\" style=\"margin: 15px 0px; padding: 0px; outline: none; overflow-anchor: none; color: rgb(62, 62, 62); font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 20px; line-height: 23px; font-family: sans-serif; text-align: justify;\">Thiết kế, bao bì son S<span class=\"keyword _ngcontent-fri-94\" aria-hidden=\"false\" style=\"margin: 0px; padding: 0px; outline: none; overflow-anchor: none;\">uperstay Matte Ink</span></h3><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Sản phẩm son kem lì của Maybelline được thiết kế theo dạng thỏi và các cạnh đều vuông vức với nhau. Chất liệu nhựa nhưng nhìn chắc chắn, đơn giản nhưng cũng rất tinh tế. Thân son sẽ trùng với màu son bên trong và nắp có màu trắng nổi bật cùng tone với màu của tên son.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Với cọ son được thiết kế đặc biệt to ở khu vực gốc cọ và từ từ nhỏ dần về phía đầu. Bên ngoài thỏi son sẽ có dán đầy đủ thông tin cơ bản về xuất xứ sản phẩm, thành phần…</p><figure style=\"margin-bottom: 0px; padding: 0px; outline: none; overflow-anchor: none; color: rgb(62, 62, 62); font-family: Arial, sans-serif; font-size: 14px;\"><em style=\"margin: 0px; padding: 0px; outline: none; overflow-anchor: none;\"><img src=\"https://cdn.chanhtuoi.com/uploads/2020/04/maybelline-superstay-matte-ink-2.jpg.webp\" alt=\"Maybelline Superstay Matte Ink\" width=\"600\" height=\"466\" class=\"lazy img-loading-content\" data-original=\"https://cdn.chanhtuoi.com/uploads/2020/04/maybelline-superstay-matte-ink-2.jpg.webp\" style=\"margin: 20px auto; padding: 0px; outline: none; overflow-anchor: none; max-width: 100%; display: block; object-fit: contain !important; width: 444.333px; height: 345.099px;\"></em></figure><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: center; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\"><em style=\"margin: 0px; padding: 0px; outline: none; overflow-anchor: none;\">Cọ son được thiết kế to ở gốc cọ và nhỏ về phía đầu cọ</em></p><h3 id=\"mcetoc_1e72d25q71\" style=\"margin: 15px 0px; padding: 0px; outline: none; overflow-anchor: none; color: rgb(62, 62, 62); font-variant-numeric: normal; font-variant-east-asian: normal; font-weight: 700; font-stretch: normal; font-size: 20px; line-height: 23px; font-family: sans-serif; text-align: justify;\">Thành phần son M<span class=\"keyword _ngcontent-fri-94\" aria-hidden=\"false\" style=\"margin: 0px; padding: 0px; outline: none; overflow-anchor: none;\">atte ink</span></h3><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; text-align: justify; white-space: pre-line; color: rgb(62, 62, 62); font-family: Arial, sans-serif;\">Thành phần&nbsp;son môi Superstay Matte Ink gồm có:</p><p><span style=\"color: rgb(62, 62, 62); font-family: Arial, sans-serif; font-size: 14px;\"></span></p><ul style=\"margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding: 0px; outline: none; overflow-anchor: none; list-style: none; color: rgb(62, 62, 62); font-family: Arial, sans-serif; font-size: 14px;\"><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 15px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; position: relative; text-align: justify;\">Dimethicone: Hỗ trợ làm mềm cũng như cung cấp độ ẩm cho đôi môi.</li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 15px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; position: relative; text-align: justify;\">Trimethylsiloxysilicate: Thành phần giúp son không bị kem và giữ cho son lâu trôi hơn.</li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 15px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; position: relative; text-align: justify;\">Isododecane: Dưỡng ẩm để đôi môi luôn mềm mượt.</li><li style=\"margin: 0px 0px 10px; padding: 0px 0px 0px 15px; outline: none; overflow-anchor: none; font-size: 18px; line-height: 30px; position: relative; text-align: justify;\">Ngoài ra bên trong son còn chứa chất tạo màu, Titanium Dioxide, CI 77499 / Iron Oxides, CI 45410 / Red 28 Lake CI 15850 / Red 7, CI 77491… Ngoài ra bên trong son còn có hương liệu và những thành phần cần thiết khác.</li></ul>', '2020-12-19 20:08:44'),
(77, 57, 2, 'Color Clear beauty moisture lipstick', 650000, 200, 'img/products/sk.jpg', '/img/products/sk1.jpg', '/img/products/sk2.jpg', 1, 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: Tahoma, Geneva, sans-serif; font-size: large;\">Loại Mỹ Phẩm cao cấp hàng đầu của Nhật Bản được ưa thích trên toàn thế giới. Các sản phẩm của SK-II nổi tiếng với hợp chất Pitera.&nbsp;Qua nhiều năm nghiên cứu hơn 350 loại men rượu SK-II đã tìm ra được một loại men rượu tự nhiên có thể dùng để điều chế Pitera. Pitera là hỗn hợp đặc biệt của các vitamin, axit amino, khoáng và các axit hữu cơ khác mà cùng nhau chúng sẽ giúp quá trình trẻ hóa da tự nhiên được cải thiện một cách tốt nhất.</span><br></p>', '2020-12-19 20:14:36'),
(78, 67, 3, 'SEBAMED SENSITIVE SKIN LIP DEFENSE STRAWBERRY', 169000, 300, 'img/products/Sebamed.png', '/img/products/Sebamed1.png', '/img/products/Sebamed2.png', 1, 0, 0, 1, '<p><span style=\"color: rgb(76, 76, 76); font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;\">Son dưỡng bảo vệ&nbsp;</span><strong style=\"color: rgb(76, 76, 76); font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;\">GẤP 3 LẦN</strong><span style=\"color: rgb(76, 76, 76); font-family: Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify;\">: tái tạo, nuôi dưỡng, bảo vệ và chống nắng hương dâu. Bảo vệ, chống khô và chống nứt môi được Kiểm nghiệm Da liễu và Lâm sàng đảm bảo mang lại làn môi mịn màng. Giàu vitamin E ngăn ngừa tác hại từ các gốc tự do, giúp cấp ẩm cho môi, tinh dầu jojoba, cám gạo, cây thầu dầu giúp chữa lành và bảo vệ đôi môi không bị bong tróc, khô, thiếu nước. Tránh được các tác nhân môi trường giúp môi luôn mềm mịn và quyến rũ.&nbsp;Hoạt chất chống nắng với chỉ số SPF 30 bảo vệ đôi môi trước tác hại của tia UVA và UVB, hạn chế thâm môi.&nbsp;Hương dâu tự nhiên, không chất bảo quản, không gây kích ứng.</span><br></p>', '2020-12-19 20:20:10'),
(79, 44, 3, 'Atoderm Levres Stick Hydratant', 465000, 130, 'img/products/sdb.jpg', '/img/products/sbd1.jpg', '/img/products/sbd2.jpg', 1, 0, 0, 1, '<p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Bioderma có tên đầy đủ là The Laboratoire Dermatologique BIODERMA. Đây là một trong những thương hiệu dược mỹ phẩm hàng đầu tại Lyon – Pháp. Với hơn 20 năm tuổi đời, tập đoàn này đã gây dựng tiếng vang lớn trong giới làm đẹp.</p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\"><img class=\"aligncenter wp-image-3035 size-full lazy-loaded\" src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/bioderma.jpg\" data-lazy-type=\"image\" data-src=\"https://tudienlamdep.org/wp-content/uploads/2019/06/bioderma.jpg\" alt=\"Thông tin thương hiệu Bioderma\" width=\"600\" height=\"223\" srcset=\"https://tudienlamdep.org/wp-content/uploads/2019/06/bioderma.jpg 600w, https://tudienlamdep.org/wp-content/uploads/2019/06/bioderma-300x112.jpg 300w\" data-srcset=\"\" sizes=\"(max-width: 600px) 100vw, 600px\" style=\"margin: 0px auto; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: transparent; overflow-wrap: break-word; height: auto; max-width: 100%; display: block; text-align: center; clear: both;\"></p><p style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; border: 0px; outline: 0px; vertical-align: baseline; background: rgb(252, 252, 252); overflow-wrap: break-word; line-height: 1.7em; color: rgb(29, 33, 41); font-family: &quot;Open Sans&quot;, sans-serif !important;\">Tại Việt Nam, Bioderma nổi tiếng hơn cả với dòng nước tẩy trang Bioderma. Đây được coi là một siêu phẩm trong dòng sản phẩm làm sạch.</p>', '2020-12-19 20:22:41'),
(80, 51, 3, 'Son Dưỡng DHC Dưỡng Ẩm, Cải Thiện Thâm Môi Hiệu Quả, Không mùi', 150000, 120, 'img/products/dhc.jpg', '/img/products/dhc1.jpg', '/img/products/dhc2.jpg', 1, 0, 0, 1, '<p>Giảm ẩm môi giảm thâm hiệu quả</p>', '2020-12-19 20:26:09');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
