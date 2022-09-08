-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 27, 2022 at 08:06 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nguyenvansang_2120110385`
--

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_admin`
--

DROP TABLE IF EXISTS `nguyenvansang_admin`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_admin` (
  `adminId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `adminName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` char(32) COLLATE utf8mb4_general_ci NOT NULL,
  `level` tinyint(1) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`adminId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_admin`
--

INSERT INTO `nguyenvansang_admin` (`adminId`, `username`, `adminName`, `email`, `pass`, `level`, `trash`) VALUES
(1, 'sang', 'sang o to', 'sang206831@gmail.com', '1f32aa4c9a1d2ea010adcf2348166a04', 0, 0),
(2, 'nguyensang', 'NguyenSang', 'sang206831@gmail.com', '12345', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_brand`
--

DROP TABLE IF EXISTS `nguyenvansang_brand`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_brand` (
  `brandId` int NOT NULL AUTO_INCREMENT,
  `brandName` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alias` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_brand`
--

INSERT INTO `nguyenvansang_brand` (`brandId`, `brandName`, `alias`, `trash`, `status`) VALUES
(0, 'Mercedes-Maybach', 'mercedes-maybach', 0, 1),
(1, 'Mercedes-AMG', 'a-m-g', 0, 1),
(3, 'Mercedes-GLC', 'g-l-c', 0, 1),
(5, 'Mercedes-E', 'e-class', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_cart`
--

DROP TABLE IF EXISTS `nguyenvansang_cart`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `sId` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `productId` int NOT NULL,
  `productName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `price` float(10,2) NOT NULL,
  `quantity` int NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`cartId`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_cart`
--

INSERT INTO `nguyenvansang_cart` (`cartId`, `sId`, `productId`, `productName`, `price`, `quantity`, `image`) VALUES
(28, 'hb1dkvk8ptdfhleq375m01e891', 1, ' Ariyan Lorem Ipsum fsdfasdaf', 525.00, 1, 'upload/a2d9ff0c56.png'),
(42, 'ki70g8rmb4mfqs7cmei2l3qpi3', 10, 'Woman Tshirt 03', 300.00, 1, 'upload/a2fccb0144.png'),
(43, 'e6r6avk209clao063d5p18i597', 7, 'Mans Tshirt 02', 400.00, 1, 'upload/4b2b2f0556.png');

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_category`
--

DROP TABLE IF EXISTS `nguyenvansang_category`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_category` (
  `catId` int NOT NULL AUTO_INCREMENT,
  `catName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parentId` int NOT NULL,
  `trash` tinyint NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`catId`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_category`
--

INSERT INTO `nguyenvansang_category` (`catId`, `catName`, `alias`, `parentId`, `trash`, `status`) VALUES
(0, 'MayBach', 'may-bach', 0, 0, 1),
(1, 'AMG', 'a-m-g', 0, 0, 1),
(3, 'GLC', 'g-l-c', 0, 0, 1),
(5, 'E Class', 'e-class', 0, 0, 1),
(8, 'Các sản phẩm khác', 'san-pham-khac', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_contact`
--

DROP TABLE IF EXISTS `nguyenvansang_contact`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_contact` (
  `contactId` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `title` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `content` text CHARACTER SET latin1 NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`contactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_customer`
--

DROP TABLE IF EXISTS `nguyenvansang_customer`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_customer` (
  `customerId` int NOT NULL AUTO_INCREMENT,
  `userId` int NOT NULL,
  `fullname` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 NOT NULL,
  `phone` varchar(30) CHARACTER SET latin1 NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_customer`
--

INSERT INTO `nguyenvansang_customer` (`customerId`, `userId`, `fullname`, `address`, `phone`, `email`, `trash`) VALUES
(2, 0, '', 'Groan Puran Polton south Dhaka ', '4544555455', 'kaziariyan@gmail.com', 0),
(3, 0, 'Sang', 'Tran phu', '3232343', 'Sang@gmail.com', 0),
(4, 0, 'dfsa', 'Tran phu', '3232343', 'sa@gmail.com', 0),
(5, 0, 'dfsa', 'Tran phu', '3232343', 'sa@gmail.com', 0),
(6, 0, 'Sang', 'sada', '3232343', 'Sang@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_image`
--

DROP TABLE IF EXISTS `nguyenvansang_image`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET latin1 NOT NULL,
  `image` varchar(255) CHARACTER SET latin1 NOT NULL,
  `imageName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `position` tinyint NOT NULL,
  `trash` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_image`
--

INSERT INTO `nguyenvansang_image` (`id`, `title`, `image`, `imageName`, `position`, `trash`, `status`) VALUES
(1, 'Slider1', 'Hinh1.jpg', '', 1, 0, 1),
(2, 'Slider2', 'Hinh2.jpg', '', 1, 0, 1),
(3, 'Slider3', 'Hinh3.jpg', '', 1, 0, 1),
(4, 'Hinh1', 'hinh.jpg', '', 2, 0, 1),
(5, 'Hinh2', 'S450.jpg', '', 2, 0, 1),
(6, 'Hinh3', 'AMG.jpg', '', 2, 0, 1),
(7, 'Logo', 'download.png', '', 3, 0, 1),
(8, 'Hinh4', 'GLC300.jpg', '', 2, 0, 1),
(9, 'Hinh5', 'C.jpg', '', 2, 0, 1),
(10, 'Hinh6', 'E.jpg', '', 2, 0, 1),
(11, 'Hinh7', 'S.jpg', '', 2, 0, 1),
(12, 'Hinh8', 'M5.jpg', '', 2, 0, 1),
(13, 'Hinh9', 'S400.jpg', '', 4, 0, 1),
(14, 'Hinh10', 'S450.jpg', '', 4, 0, 1),
(15, 'Hinh11', 'S500.jpg', '', 4, 0, 1),
(16, 'Hinh12', 'S560.jpg', '', 4, 0, 1),
(17, 'Hinh13', 'S600.jpg', '', 4, 0, 1),
(18, 'Hinh14', 'S650.jpg', '', 4, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_link`
--

DROP TABLE IF EXISTS `nguyenvansang_link`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_link` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `position` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `link` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `orders` tinyint NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_link`
--

INSERT INTO `nguyenvansang_link` (`id`, `title`, `position`, `image`, `link`, `orders`, `trash`, `status`) VALUES
(1, 'Về chúng tôi', 'bottommenu1', '', '#', 1, 0, 1),
(2, 'Chính sách bán hàng', 'bottommenu1', '', '#', 2, 0, 1),
(3, 'Tài khoản', 'bottommenu2', '', '#', 1, 0, 1),
(4, 'Đăng kí', 'bottommenu2', '', '#', 2, 0, 1),
(5, 'Liên hệ', 'bottommenu2', '', 'lienhe/home', 3, 0, 1),
(6, 'Liên hệ', 'globalnav', '', 'lienhe/home', 2, 0, 1),
(7, 'Về chúng tôi', 'globalnav', '', '#', 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_order`
--

DROP TABLE IF EXISTS `nguyenvansang_order`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_order` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `customerId` int NOT NULL,
  `orderDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` float(10,2) NOT NULL,
  `note` varchar(255) CHARACTER SET latin1 NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_order`
--

INSERT INTO `nguyenvansang_order` (`orderId`, `customerId`, `orderDate`, `total`, `note`, `status`, `trash`) VALUES
(8, 2, '0000-00-00 00:00:00', 500.00, '', 1, 0),
(9, 2, '0000-00-00 00:00:00', 400.00, '', 0, 0),
(10, 2, '0000-00-00 00:00:00', 450.00, '', 1, 0),
(11, 1, '2022-06-25 01:18:45', 830.00, 'asedasdsa', 1, 0),
(12, 1, '2022-06-25 01:19:16', 229.00, 'sdzdsz', 1, 0),
(13, 1, '2022-06-25 01:20:27', 0.00, 'sdzdsz', 1, 0),
(14, 1, '2022-06-26 02:35:22', 5250.00, 'àasfa', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_orderdetail`
--

DROP TABLE IF EXISTS `nguyenvansang_orderdetail`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_orderdetail` (
  `orderDetailId` int NOT NULL AUTO_INCREMENT,
  `orderId` int NOT NULL,
  `productId` int NOT NULL,
  `price` float NOT NULL,
  `quantity` smallint NOT NULL,
  `trash` tinyint(1) NOT NULL,
  PRIMARY KEY (`orderDetailId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_orderdetail`
--

INSERT INTO `nguyenvansang_orderdetail` (`orderDetailId`, `orderId`, `productId`, `price`, `quantity`, `trash`) VALUES
(1, 11, 28, 130, 1, 0),
(2, 11, 1, 50, 14, 0),
(3, 12, 6, 52, 2, 0),
(4, 12, 1, 50, 1, 0),
(5, 12, 2, 30, 1, 0),
(6, 12, 5, 45, 1, 0),
(7, 14, 1, 50, 2, 0),
(8, 14, 2, 30, 3, 0),
(9, 14, 5, 450, 2, 0),
(10, 14, 6, 520, 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_page`
--

DROP TABLE IF EXISTS `nguyenvansang_page`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_page` (
  `pageId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `createBy` int NOT NULL,
  `createDate` datetime NOT NULL,
  `updateDate` datetime NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_page`
--

INSERT INTO `nguyenvansang_page` (`pageId`, `title`, `content`, `createBy`, `createDate`, `updateDate`, `trash`, `status`) VALUES
(1, 'Vê chúng tôi', 'Có nhiều lý do khiến chúng tôi quyết định mở rộng hoạt động kinh doanh, bán củ giống chất lượng cho người dùng hoa mà không thông qua bất cứ trung gian nào khác. Dù bạn muốn tự trồng và chăm sóc một chậu hoa để gần gũi với thiên nhiên hơn, thư giãn đầu óc sau một ngày làm việc. Hoặc bạn muốn có một chậu hoa đẹp vào dịp tết, tránh việc mua phải những bó hoa lạnh, hoa kém chất lượng với giá quá cao. Dù lý do là gì, chúng tôi tự tin mang tới cho bạn những cử giống hoa chất lượng nhất với chi phí hợp lý.\r\n\r\nĐược thành lập từ năm 2014, công ty chúng tôi là đơn vị tiên phong trong lĩnh vực phân phối củ giống hoa Ly và các loại hoa thành phẩm như hoa Ly, hoa hồng ngoại. Sản phẩm củ giống hoa Ly được chúng tôi nhập khẩu trực tiếp từ các nhà cung cấp tới từ châu Âu như Hà Lan, Pháp …đảm bảo chất lượng tốt nhất cho người trồng.\r\n\r\nCác vườn hoa có tổng diện tích 10ha của chúng tôi tại huyện Đan Phượng – Hà Nội cung cấp hoa tươi bán buôn, hoa tươi tết cho không chỉ thị trường Hà Nội mà cả các tỉnh miền Bắc như Nam Định, Hải Phòng, Quảng Ninh, Lạng Sơn …\r\n\r\nKhách hàng chính của chúng tôi là các nhà vườn trồng hoa ly tại miền Bắc ở các vùng chuyên canh trồng hoa như làng hoa Tây Tựu, hoa Mê Linh, hoa Sapa. Sản phẩm chất lượng và việc tư vấn sát sao tới từng người trồng là bí quyết tạo dựng uy tín công ty chúng tôi.', 1, '2021-03-02 23:09:19', '0000-00-00 00:00:00', 0, 1),
(2, 'Chính sách', 'Chúng tôi áp dụng phương thức thu tiền khi giao hàng và chuyển khoản ngân hàng với các đơn hàng trên toàn lãnh thổ Việt Nam.\r\n\r\nThông tin tài khoản:\r\n\r\nChủ tài khoản: Trịnh Xuân Trường\r\nSố tài khoản: 19032 80223 6018\r\nNgân hàng Techcombank chi nhánh Từ Liêm\r\nCó 3 cách chủ yếu để bạn đặt hàng trên hệ thống của chúng tôi:\r\n\r\nCách 1: Bạn chọn sản phẩm và số lượng mình muốn, rồi đặt hàng trên web (ưu tiên sử dụng)\r\nCách 2: Bạn để lại thông tin số điện thoại trên website hoặc facebook để chúng tôi chủ động liên lạc lại. \r\nCách 3: Bạn gọi điện trực tiếp tới các số điện thoại của Gánh hoa Ly trên website hoặc facebook.', 1, '2021-03-16 23:09:19', '0000-00-00 00:00:00', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_product`
--

DROP TABLE IF EXISTS `nguyenvansang_product`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `alias` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `catId` int NOT NULL,
  `brandId` int NOT NULL,
  `detail` text COLLATE utf8mb4_general_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `saleprice` float(10,2) DEFAULT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguyenvansang_product`
--

INSERT INTO `nguyenvansang_product` (`productId`, `productName`, `alias`, `catId`, `brandId`, `detail`, `price`, `saleprice`, `image`, `trash`, `status`) VALUES
(1, 'Mercedes Maybach S450 ', 'mercedes-s450 ', 0, 0, 'Mercedes S450 là một trong những dẫn chứng cho điều này, với vẻ ngoài lịch lãm, sang trọng nhưng không kém phần năng động, cá tính, thể hiện sự đẳng cấp thành đạt mà Mercedes-Benz mang lại.', 600.00, 500.00, 'S450.jpg', 0, 1),
(2, 'Mercedes AMG 300', 'mercedes-amg300', 1, 0, 'chiếc sedan hạng sang tới từ Đức nằm trong phân khúc được rất nhiều người ưa chuộng tại Việt Nam. Không chỉ có thương hiệu hàng đầu thế giới, Mercedes C300 AMG còn là một chiếc xe có dáng đẹp, động cơ mạnh mẽ cùng nội thất hết sức hiện đại và đặc biệt đã ít hỏng vặt hơn xưa rất nhiều.', 500.00, 300.00, 'AMG.jpg', 0, 1),
(4, 'Mercedes GLC 300', 'mercedes-glc300', 3, 3, 'Nằm trong đại gia đình G-Class, GLC còn có những người anh em khác như GLK, GLS, GLE mà người Việt có thể dễ dàng bắt gặp trên đường phố Việt Nam. Để phân biệt, bạn đọc có thể hiểu tất cả các dòng xe nào có tên bắt đầu bằng chữ G đều sẽ là xe SUV của Mercedes.', 600.00, 400.00, 'GLC300.jpg', 0, 1),
(5, 'Mercedes C Class', 'mercedes-c-class', 8, 0, 'Mercedes-Benz C Class sở hữu dáng dấp mang đậm phong cách sang trọng, đẳng cấp bởi hàng loạt trang bị đáng giá. Ngoài ra dòng xe này còn có nhiều thay đổi về công nghệ lẫn công năng nhằm mang đến những trải nghiệm cực đỉnh nhưng vẫn đảm bảo an toàn tuyệt đối cho khách hàng', 500.00, 450.00, 'C.jpg', 0, 1),
(6, 'Mercedes E Class', 'mercedes-e-class', 5, 0, 'Với hơn 14 triệu chiếc xe đã được giao tới khách hàng kể từ năm 1946, E-Class là dòng xe bán chạy nhất trong lịch sử của Mercedes-Benz. Nhiều người coi nó như “trái tim của thương hiệu” ô tô cao cấp này. Danh tiếng của dòng E-Class đã có từ những ngày khởi đầu của Mercedes. Ngay cả trong những năm đầu của thế kỷ 20, nhiều công ty con trước đó thuộc Daimler AG ngày nay đã thống trị phân khúc này. Các mẫu xe nằm thấp hơn những phân khúc cao cấp, hạng sang nhưng cao hơn hẳn xe cỡ nhỏ xe cỡ nhỏ luôn là một phần không thể thiếu trong dòng sản phẩm Mercedes-Benz.', 550.00, 520.00, 'E.jpg', 0, 1),
(7, 'Mercedes S Class', 'mercedes-s-class', 8, 0, 'Cho dù dòng xe sedan sang trọng này được bắt đầu ra đời kể từ những năm 50 của thế kỉ trước, tuy nhiên phải tới năm 1972, thương hiệu xe hơi Đức mới sử dụng tên gọi “S-Class” làm tên gọi chính thức cho dòng xe này. S-Class thường được ra mắt cùng nhiều cải tiến hiện đại bậc nhất của Mercedes-Benz bao gồm công nghệ hệ thống truyền động, nội thất và hệ thống an toàn. Mercedes-Benz S-Class đã được xếp hạng là chiếc sedan hạng sang bán chạy nhất thế giới.', 700.00, 680.00, 'S.jpg', 0, 1),
(8, 'G63', 'g-63', 8, 0, 'Là một trong những dòng SUV địa hình đến từ Mercedes-Benz, G-Class sở hữu khả năng off-road tuyệt vời. Trong đó, bản hiệu suất cao Mercedes-AMG G 63 được nhiều khách hàng ưa chuộng bởi khả năng vận hành mạnh mẽ, hỗ trợ người lái tối đa trong việc chinh phục những địa hình khó. Sắp tới đây, hãng sẽ cho ra mắt Mercedes-AMG G 63 phiên bản mới với nhiều cải tiến nhằm mang những trải nghiệm tốt hơn nữa đến khách hàng.', 700.00, 689.00, 'G63.jpg', 0, 1),
(9, 'Mercedes Maybach S500 ', 'mercedes-maybach-s500 ', 0, 0, 'Ra đời khá lâu và được giới thiệu trên trường quốc tế, Mercedes-Maybach S500 2022 sở hữu phần kích thước vô cùng hợp lý, đúng với tiêu chuẩn mà các nhà  thiết kế đã đặt ra như chiều dài, chiều rộng, chiều cao lần lượt lên tới  5453mm 1,899mm 1,498mm và chiều dài cơ sở 3,365mm, giúp cho chiếc xế hạng sang này có thể di chuyển một cách linh hoạt nhất dù trong bất cứ hoàn cảnh nào. Tiếp đến, phần đầu xe được trang bị lưới tản nhiệt 3 thanh ngang được mạ chrome sáng bóng kết hợp thêm các khe hút khí và logo mang biểu tượng ngôi sao ba cánh được đặt phía trên ngoài chức năng giúp cho lượng nhiệt độ tạo ra trong quá trình đổt cháy nhiên liệu được đưa ra ngoài nó còn phần nào khẳng định được sự mnạh mẽ, trẻ trung và vô cùng sang trọng khiến cho người đối diện bị cuốn hút và không có giây phút nào rời mắt.', 990.00, 980.00, 'S500.jpg', 0, 1),
(10, 'Mercedes Maybach S560 ', 'mercedes-maybach-s560 ', 0, 0, 'Mercedes Maybach S560 4MATIC 2021 là một trong những mẫu xe Sedan hạng sang hàng đầu tại Việt Nam. Sở hữu thiết kế sang trọng, động cơ mạnh mẽ đây chắc chắn là sự lựa chọn hàng đầu cho những đại gia, doanh nhân thành đạt mong muốn các trải nghiệm đỉnh cao. Hãy cùng chúng tôi khám phá chi tiết về mẫu xe S560 này nhé.\r\nThiết kế ngoại thất có gì đáng quan tâm?\r\nLà một mẫu xe hạng sang, chắc hẳn Mercedes Maybach S560 4MATIC 2021 phải có những thiết kế đỉnh cao để khẳng định đẳng cấp của mình. Về đầu xe ta sẽ thấy điểm nhấn là lưới tản nhiệt lớn với 3 thanh nan kép ngang mạ Chrome sáng bóng, phần Logo Mercedes thiết kế đứng trên nắp Capo mang tính khẳng định thương hiệu.\r\nĐánh giá Mercedes Maybach S560 4MATIC 2021\r\nMercedes Maybach S560 4MATIC 2021\r\nĐầu xe còn được trang bị đèn pha công nghệ Multibeam LED với 84 bóng LED cho khả năng chiếu sáng mạnh mẽ nhưng đảm bảo không gây chói mắt cho các phương tiện khác.\r\nTiến về thân xe, ta có thể thấy phần cột B được mạ Chrome sáng bóng làm tăng tính sang trọng. Mercedes Maybach S560 4MATIC 2021 sử dụng bộ mâm 20 inch đa chấu thiết kế đặc trưng làm tăng tính nhận diện.\r\nĐuôi xe sử dụng cụm đèn LED pha lê 3 tầng, thiết kế bo tròn ôm trọn đuôi và kéo dài đến thân xe. Bên dưới là cụm ống xả kép liền mạch được mạ Chrome sáng bóng, đuôi xe còn có thể dòng chữ Maybach đẹp mắt khẳng định đẳng cấp xe sang.\r\nNội thất bao gồm những gì?\r\nMercedes Maybach S560 4MATIC 2021 với chiều dài cơ sở 3365mm vừa có đủ không gian trải nghiệm thoải mái, vừa giúp trang bị nhiều tiện ích đỉnh cao. Đầu tiên ta sẽ cảm nhận được không gian thoải mái với cửa sổ trời Panoramic sang trọng tạo sự kết nối với không gian bên ngoài.\r\nĐánh giá Mercedes Maybach S560 4MATIC 2021\r\nKhoang nội thất của xe sử dụng nhiều chất liệu da Designo Exclusive Semi-aniline đắt tiền. S560 trang bị đèn viền nội thất 64 màu với 10 kiểu phối khác nhau mang đến trải nghiệm sáng tạo cho không gian. Kinh xe sử dụng màu tối cách nhiệt mang đến sự riêng tư cho hành khách.\r\nKhu vực trung tâm xe sử dụng chất liệu gỗ bóng cao cấp Designo Piano Lacquer. Phần mặt taplo và thành cửa được bọc da, đồng hồ thời gian IWC được bố trí tại giữa bảng điều khiển, S560 sử dụng đến 2 màn hình màu TFT 12,3 inch gồm bảng hiển thị đồng hồ và màn hình truyền thông giải trí đa phương tiện.\r\nGhế lái sử dụng vô lăng 3 chấu bọc da ốp gỗ đa chức năng tích hợp các nút điều khiển cảm ứng hiện đại, khả năng nhớ 3 vị trí. Ghế người lái và ghế hành khách trước có khả năng chỉnh điện, nhớ 3 vị trí. Hàng ghế sau cũng có khả năng chỉnh điện, có thêm cả bàn gấp cho người bận rộn. Hai ghế sau còn được tích hợp thêm tính năng để chân điều chỉnh điện 43,5 độ, tính năng Massage 6 chế độ có khả năng massage đá nóng và bệ đỡ chân.\r\nMercedes Maybach S560 4MATIC 2021 còn được tích hợp nhiều trang bị nội thất khác như: Hệ thống Comand Online, màn hình 12,3 inch HD, điều khiển giọng nói, kết nối Apple Carplay/Android Auto, hệ thống âm thanh vòm Burmester 26 loa 1590W, tủ lạnh 8L, dàn điều hoà khí hậu 4 vùng Thermotronic, Air Balance lọc không khí cao cấp,....\r\nVà chắc chắn không thể thiếu các tính năng hiện đại khác như: Khoá xe thông minh, khởi động nút bấm, cửa hít, tính năng đá cốp, cần gạt mưa cảm ứng và có sưởi,...\r\nVề động cơ và tính năng an toàn\r\nMercedes Maybach S560 4MATIC 2021 có động cơ V8 4.0L cho công suất cực đại 469 mã lực và mô men xoắn cực đại 700 Nm. Sử dụng hộp số tự động 9 cấp và hệ dẫn động 2 cầu 4Matic cho khả năng tăng tốc 4,9 giây và đạt tốc độ tối đa 250km/h.\r\nS560 có sự hỗ trợ của hệ thống treo khí nén Airmatic cho khả năng vận hành ổn định ở tốc độ cao. Mercedes Maybach S560 4MATIC 2021 còn mang đến 4 chế độ vận hành là: Eco, Comfort, Sport và Individual cho trải nghiệm đỉnh cao trên mọi cung đường.', 970.00, 960.00, 'S560.jpg', 0, 1),
(11, 'Mercedes Maybach S400 ', 'mercedes-maybach-s400 ', 0, 0, 'Hầu như những thiết kế cơ bản cùng những trang bị tiện nghi vốn có đều được hãng cho phiên bản Maybach S400 được thừa hưởng từ phiên bản S600 này .Ngoài thất của chiếc xe Maybach S400 này nổi bật với thiết kế đặc trưng riêng của dòng xe cao cấp S-Class với mặt trước chính là hệ thống lưới tản nhiệt kích thước lớn với kiểu dáng 4 thanh nan nằm ngang được mạ bằng chrome sáng bóng, chỉ cần nhìn vào chi tiết này, có thể chắc chắn rằng đây là một chiếc S-Class chính hiệu. Cùng với việc hãng đã tinh chỉnh lại kích thước của chiếc xe cũng thêm phần rộng hơn , với chiều dài x rộng x cao là 5457 x 1899 x 1498mm cùng chiều dài cơ sở ở mức 3365mm , với kích thước này sẽ giúp cho không gian nội thất bên trong của chiếc xe này rộng và thoáng đãng hơn rất nhiều .Chưa dừng lại tại đó hãng cũng trang bị thêm cho chiếc xe mâm bánh xe hợp kim có kích thước to lớn 18inch, kiểu dáng 5 chấu kép và phiên bản cũng được sở hữu cửa sổ trời siêu rộng mở rộng góc cho người ngồi bên trong có cái nhìn toàn cảnh nhất và cung cấp đầy đủ ánh sáng tự nhiên vào ban ngày . Ở ngay cửa phía đằng sau lại được hãng rút ngắn lại thêm 66mm so với dòng xe S-Class bản tiêu chuẩn .Nước sơn của xe cũng tuyệt hảo, nhìn khác hẳn với các dòng xe khách với sự sáng bóng, đen tuyền nổi trội', 950.00, 940.00, 'S400.jpg', 0, 1),
(12, 'Mercedes Maybach S600 ', 'mercedes-maybach-s600 ', 0, 0, 'Mercedes Maybach S600 là một trong những siêu phẩm dành cho những người chơi xe và đam mê tốc độ nhưng vẫn đáp ứng được về ngoại thất sang trọng, nội thất tinh tế. Mercedes Maybach S600 chắc chắn sẽ khiến bạn phải ngạc nhiên về những tiện ích mà chiếc xe này mang lại. Ngay khi được nhà sản xuất Mercedes cho ra mắt, chiếc Mercedes Maybach S600 là dòng xe Sedan đã tạo được một cơn sốt với phân khúc dòng xe này và đã góp phần khẳng định một thương hiệu xe nổi tiếng, đứng số 1 hiện nay trên thế giới', 110.00, 109.50, 'S600.jpg', 0, 1),
(13, 'Mercedes Maybach S650 ', 'mercedes-maybach-s650', 0, 0, 'Sở hữu diện mạo đậm chất sang trọng và đẳng cấp mang phong thái của người dẫn đầu. Mercedes Maybach S650 đã trở thành mẫu xe thời thượng khiến không ít người phải điêu đứng trước vẻ đẹp của chúng. Đây là dòng xe cao cấp hội tụ đầy đủ trong mình những đường nét tinh tế nhưng không kém phần hào nhoáng và sang trọng \r\nBên cạnh đó, xe còn được trang bị khối động cơ hoàn hảo thỏa mãn tay lái với sức mạnh vượt trội. Đó cũng chính là lý do vì sao Mercedes Maybach S650 lại được nhiều người khao khát sở hữu.\r\nĐánh giá Mercedes Maybach S650 2020\r\nMercedes Maybach S650 2020\r\nNếu bạn cũng đang quan tâm đến mẫu xe siêu phẩm này thì đừng bỏ qua phần mô tả chi tiết Maybach S650 ngay sau đây nhé.\r\nMercedes Maybach S650 nhờ sở hữu kích thước lớn nên mang đến cho người dùng một không gian nội thất rộng rãi tạo cảm giác thoải mái. Vì thế, đây chắc hẳn sẽ là người bạn đồng hành không thể thiếu trong mọi chuyến đi của cả gia đình bạn. Đặc biệt, xe được thiết kế ấn tượng với phần cửa sổ trời với kính đổi màu mang lại cảm giác gần gũi với thiên nhiên mà hiếm có mẫu xe nào có được.\r\nĐánh giá Mercedes Maybach S650 2020\r\nKhông dừng lại ở đó, sự xa hoa và lộng lẫy của dòng xe Maybach S650 còn được thể hiện qua các chi tiết nội thất tuyệt đẹp. Với tay lái 3 chấu được bọc da thượng hạng và ốp gỗ tích hợp cùng màn hình cảm ứng 12,3 inch chuẩn HD.\r\nKế đến là phần hệ thống Comand Online tích hợp nhiều chức năng như bộ thu sóng phát thanh, đầu đọc thẻ SD, cho phép kết nối Bluetooth, Apple CarPlay, Android Auto cùng các trình duyệt Internet. Đặc biệt là bộ phận trợ lý ảo giúp người dùng có thể điều khiển các chức năng xe bằng giọng nói. Đây cũng chính là những tiện nghi tuyệt vời mà Maybach S650 có thể mang lại cho người dùng.\r\nVà một trong những điều khiến nhiều người yêu Maybach S650 đó chính là khoang sau của xe được thiết kế như một văn phòng làm việc nhỏ nhắn, phù hợp cho những doanh nhân bận rộn có thể làm việc mọi lúc mọi nơi. Ngoài ra, khoang xe còn được trang bị tủ lạnh mini, đầu đọc đĩa, bộ trang bị First-Class và cụm điều khiển trung tâm Business hiện đại.\r\nCó lẽ ai cũng sẽ phải siêu lòng ngay từ lần đầu tiên được chiêm ngưỡng dòng xe siêu phẩm này. Mang trong mình vẻ đẹp sang trọng thể hiện bề thế, quyền lực của chủ sở hữu chúng. Xét về tổng thể bên ngoài, Mercedes Maybach S650 được nhà thiết kế trau chuốt trong từng chi tiết với 9 phiên bản màu sơn thời thượng bao gồm: đen Magnetite, đen Obsidian, đen Ruby, bạc Iridium, bạc Diamond, xanh Cavansite, xanh Emerald, xanh Anthracite, xám Selenite.Đánh giá Mercedes Maybach S650 2020', 150.00, 145.00, 'S650.jpg', 0, 1),
(14, 'Mercedes Maybach S680 ', 'mercedes-maybach-s680 ', 0, 0, 'Được các doanh nghiệp nhập khẩu tư nhân đưa về Việt Nam và chào bán với giá hơn 26 tỷ đồng, Mercedes-Maybach S680 2022 vẫn dùng động cơ V12 6.0L tuy nhiên đã thay đổi thiết kế ngoại thất, nội thất bên trong lột xác hoàn toàn.\r\nMaybach S680 2022 hiện chưa được phân phối chính hãng tại thị trường Việt Nam. Mẫu xe này chính thức được giới thiệu ra thị trường hồi giữa năm ngoái với rất nhiều điểm mới đáng chú ý. Sau khi Mercedes khai tử S65 AMG thì hiện đây là chiếc S-Class W223 duy nhất dùng động cơ V12 của thương hiệu ngôi sao ba cánh.\r\nGiá hơn 26 tỷ tại Việt Nam, sedan siêu sang Mercedes-Maybach S680 2022 có gì đặc biệt? \r\nTuy nhiên, đổi lấy động cơ khủng này là mức giá không hề dễ chịu. Chiếc Mercedes-Maybach S680 2022 này được doanh nghiệp tư nhân nhập về chào bán với giá hơn 26 tỷ đồng. Một phần đến từ việc xe dùng động cơ V12 6.0L chịu mức thuế tiêu thụ đặc biệt khá cao. Với động cơ có dung tích xi-lanh gần 6.000cc, mẫu xe này phải chịu mức thuế tiêu thụ đặc biệt là 130%.\r\nGiá hơn 26 tỷ tại Việt Nam, sedan siêu sang Mercedes-Maybach S680 2022 có gì đặc biệt?\r\nMercedes-Maybach S680 2022 được định vị để cạnh tranh với Bentley Flying Spur W12 hay cao hơn là Rolls-Royce Ghost. Về mặt kích thước, Maybach S680 2022 có chiều dài 5.468mm, chiều rộng 1.920 mm , chiều cao 1.508 mm và chiều dài trục cơ sở 3.395 mm. Những điểm nhấn đáng chú ý tại ngoại thất của xe có thể kể đến như tuỳ chọn sơn 2 màu trên vàng đồng, dưới đỏ đậm, hệ thống đèn pha thế hệ mới nhất Digital Light với khả năng chiếu sáng và thông minh nhất của thương hiệu ngôi sao 3 cánh hiện tại.', 200.00, 199.00, 'M4.jpg', 0, 1),
(15, 'Mercedes Maybach S650L', 'mercedes-maybach-s650l ', 0, 2, 'Chiếc xe sang trọng hàng đầu của thương hiệu ngôi sao ba cánh sở hữu nước sơn đen bóng, làm tôn thêm vẻ ngoài lịch lãm và đẳng cấp.\r\nBên cạnh đó, Maybach S 650 mới còn nổi bật nhờ kiểu dáng cuốn hút và thân hình vạm vỡ với kích thước dài x rộng x cao lần lượt là 5.462 x 1.899 x 1.498 mm, trục cơ sở của xe dài 3.365 mm.\r\nMaybach S 650 là sản phẩm cao cấp nhất của dòng sedan Mercedes-Benz, tuy nhiên, trên thực tế, nếu không đặt cả ba phiên bản S 450, S 560 và S 650 cạnh nhau thì nhiều người sẽ rất dễ bị nhầm lẫn giữa ba chiếc xe này bởi vì tổng thể phong cách thiết kế của chúng đều có sự tương đồng ví dụ như lưới tản nhiệt ba thanh kép phủ crôm đính kèm logo Maybach.\r\nMột số chi tiết đáng chú ý khác trên S 650 2018 gồm có đèn pha LED đa chùm tiên tiến tích hợp hệ thống chiếu sáng thích ứng thông minh, cùng đèn ban ngày LED kiểu ba vạch quen thuộc và đèn phanh chủ động.\r\nKích thước lớn giúp cho S 650 mới tự tin hơn hẳn hai người anh em còn lại khi có một không gian nội thất vô cùng rộng rãi và đẳng cấp, xe sử dụng nhiều vật liệu cao cấp như gỗ thật, bọc da đắt tiền hay các chi tiết trang trí bằng kim loại, tất nhiên không thể bỏ qua hệ thống đèn nền nội thất 64 màu để lựa chọn và được chia theo 10 sắc thái, tâm trạng khác nhau.\r\nLà chiếc xe sang trọng hàng đầu thương hiệu, Mercedes-Maybach S 650 2018 cũng được hưởng lợi từ hệ thống thông tin giải trí trực tuyến Comand Online, tương thích với Apple CarPlay và Android Auto và hệ thống định vị tiên tiến.\r\nĐặc biệt, S 650 ngay lập tức có thể trở thành một văn phòng di động với các bàn gập cho người ngồi sau, hoặc là nơi hưởng thụ với tủ lạnh mini, bộ ly sâm banh bằng bạc sang chảnh, bộ trang bị First-Class phía sau với các ghế ngồi riêng biệt và cụm điều khiển trung tâm Business hiện đại.', 300.00, 290.00, 'S650L.jpg', 0, 1),
(16, 'Mercedes Maybach S680L ', 'mercedes-maybach-s680l ', 0, 2, 'Mercedes-Maybach S 680 là phiên bản cao cấp nhất của dòng sedan đầu bảng Maybach S-Class thế hệ mới, ra mắt thế giới vào tháng 11/2020.\r\nNgay khi xuất hiện, Mercedes-Maybach S 680 4Matic lập tức khiến giới mộ đạo không khỏi bất ngờ và thán phục trước độ thuần thục về công nghệ cũng như thiết kế, bởi đây không chỉ là chiếc ô tô đơn thuần mà là một món trang sức xa xỉ, \"độc, sang, cuốn nhất\".\r\nTheo đánh giá của những người trong giới, Mercedes-Maybach S 680 cùng người \"anh em\" Mercedes-Maybach GLS 600 chắc chắn sẽ trở thành những cái tên khuấy đảo nền công nghiệp ô tô thế giới, mang đến sự hào hứng chưa từng có trong cộng đồng mê xe hơi.', 350.00, 300.00, '680.jpg', 0, 1),
(17, 'Mercedes Maybach S600L ', 'mercedes-maybach-s600l', 0, 0, 'Mercedes S600 Maybachsử dụng động cơ V12 6.0 lít tăng áp kép là động cơ duy nhất có sẵn ở Anh, với công suất 530 mã lực và momen xoắn cực đại 830Nm. Kết hợp thêm hộp số 7 cấp, xe mất 5s để tăng tốc từ 0 đến 100km/h để sau đó đạt tốc độ tối đa 250km/h. Với sự trang bị hệ thống ống xả 4 pô và chữ V12 trên cánh trước, bạn không bao giờ nghe thấy được tiếng động cơ của Mercedes S600 maybach. Sở hữu chiều dài lớn hơn chắc chắn không gian nội thất của xe cũng sẽ sang trọng hiện đại hơn. Không gian chỗ ngồi phía sau là sự thoải mái đặc biệt. Với bảng đồng hồ trung tâm và màn hình to, rộng, ở giữa trục điều khiển trung tâm và cần số có núm tròn với bề mặt cảm ứng cho phép người dùng có thể điều khiển các tính năng của xe, ngoài ra nó còn có thể cho phép nhập liệu bằng cách viết chữ, số. Nếu như Mercedes S400 hay Mercedes S500 chưa làm cho bạn hài lòng thì Mercedes S600 Maybach chắc chắn sẽ làm bạn thỏa mãn và thích thú hơn với sự thoải mái, thể hiện đẳng cấp riêng biệt với sự thoải mái, chế độ giải trí với công nghệ đỉnh cao. Từ khi ra đời S600 đã được sự quan tâm đáng kể của người đam mê xe hơi đặc biệt là người đam mê dòng Mercedes S-Class với phiên bản sedan đẳng cấp từ ngoại thất bên ngoài đến nội thất bên trong.\r\n', 175.00, 170.00, '600.jpg', 0, 1),
(18, 'Mercedes-AMG GLE 43', 'mercedes-amg-gle-43', 1, 1, 'Mercedes-AMG GLE 43 4Matic Coupe 2021 được đánh giá là kiệt tác nghệ thuật xe hơi đương đại, sự kết hợp hoàn hảo sự trẻ trung năng động đậm chất SUV nhưng lại rất tinh tế sang trọng và lịch lãm như mẫu Coupe. GLE 43 4Matic Coupe đã có lần giới thiệu đầu tiên đến công chúng yêu xe Việt Nam tại triển lãm. Fascination 2017, và không hổ danh là mẫu xe sang trọng hiệu suất cao huyền thoại, sự xuất hiện của GLE 43 4Matic đã khiến mọi người phải ngoái nhìn và trầm trồ ngưỡng mộ bởi sự hoàn hảo đẹp mắt đỉnh cao đến từng chi tiết.\r\nSở hữu thiết kế tuyệt mỹ kế thừa truyền thống của mẫu GLE 450 AMG  trước đó. AMG GLE 43 4Matic Coupe 2021 mang trong mình nét đẹp riêng rất thanh tao cuốn hút nhưng lại không kém phần thể thao mạnh mẽ. Sự trở lại của AMG GLE 43 4Matic 2021 thực sự khiến khách hàng hài lòng kể cả những “thượng khách” khó tính nhất.', 165.00, 150.00, 'Mercedes-AMG GLE43.jpg', 0, 1),
(19, 'Mercedes-AMG G65', 'mercedes-amg-g65', 1, 1, 'Có lẽ sẽ không cần nói quá nhiều về “Ông vua địa hình” Mercedes-Benz G-Class bởi đây là một mẫu SUV đã rất thành công và nổi tiếng của thương hiệu Ngôi sao ba cánh trên toàn cầu. Tuy nhiên, đối với phiên bản G65 AMG trong bài viết lại hoàn toàn khác. Đây là phiên bản cao nhất trong dòng G-Class và đồng thời cũng mà biến thể cuối cùng được trang bị khối động cơ khủng V12 Biturbo tăng áp kép 6.0L đầy uy lực trong gia đình Mercedes-Benz.\r\nMercedes-Benz G65 AMG này được đưa về nước hồi đầu năm 2018 và tại thời điểm đó, nó đã làm tốn không biết bao giấy mực của giới truyền thông bởi độ độc đáo và hiếm có của mình. Theo tìm hiểu, “Ông vua địa hình” G65 AMG thuộc sở hữu của một doanh nhân nổi tiếng đất Hà Thành. Thời gian gần đây, chiếc xe này lại liên tục bị bắt gặp khi đang lăn bánh ở TP.Hồ Chí Minh.\r\nVề thiết kế ngoại thất, cũng giống như các mẫu G-Class khác, G65 AMG mang trong mình ADN thiết kế cổ điển và vuông vức, đúng chuẩn xe nhà binh. Tuy vậy, để phân biệt với các phiên bản thấp hơn, G65 AMG sở hữu thêm nhiều trang bị nổi bật như lưới tản nhiệt mạ chrome sáng, logo V12 Biturbo được gắn ở nhiều vị trí trên xe, bộ mâm thể thao 5 chấu AMG sơn đen mờ với kích thước 20 inch to bản, đi kèm lốp Continental…', 200.00, 190.00, 'Mercedes-AMG G65.jpg', 0, 1),
(20, 'Mercedes-AMG GLS 63', 'mercedes-amg-gls-63', 1, 1, 'Mẫu xe hạng sang Mercedes-AMG GLS63 4MATIC là phiên bản cao cấp nhất và đồng thời cũng có hiệu năng mạnh mẽ nhất trong gia đình GLS-Class của Mercedes-Benz tại Việt Nam. Ở đợt nâng cấp mới nhất này, hãng xe đình đám của Đức muốn tái khẳng định lại rằng mẫu Mercedes GLS-Class có “vị trí như S-Class của thế giới SUV”.\r\nSo với phiên bản GLS tiêu chuẩn, bản GLS63 AMG không có nhiều khác biệt ở thiết kế ngoại thất. Ngoại trừ cản trước cơ bắp với thanh ngang mạ crôm, hốc hút gió lớn hơn được AMG thiết kế. Xe sở hữu cụm lưới tản nhiệt và đèn pha theo ngôn ngữ Sensual Purity, khiến nó trở nên “ăn nhập” và tạo thành bộ nhận diện thương hiệu chung cho tất cả các dòng xe hiện tại của hãng xe đình đám nước Đức.', 120.00, 119.00, 'Mercedes-AMG GLS 63.jpg', 0, 1),
(21, 'Mercedes-AMG GLB 35', 'mercedes-amg-glb-35', 1, 4, 'Sau 2 năm ra mắt toàn cầu, Mercedes-AMG GLB 35 4MATIC hiện đã được phân phối chính hãng và chính thức được giới thiệu tại thị trường Việt Nam vào tháng 8/2021. \r\nMercedes-AMG GLB 35 4MATIC được trang bị động cơ hiệu suất cao đi cùng với công nghệ hiện đại, cho khả năng bứt tốc ấn tượng và đáp ứng các tính năng tiện ích vận hành thoải mái trong suốt chuyến đi cho khách hàng.\r\nMercedes-AMG GLB 35 4MATIC là mẫu xe hơi pha trộn giữa những đặc điểm của dòng xe SUV và Mercedes-AMG, tạo nên sự đặc biệt và ấn tượng hơn bao giờ hết. Mercedes-AMG GLB 35 4MATIC sẽ phù hợp với đối tượng khách hàng là những người trẻ vừa muốn sự đa dụng của SUV vừa muốn duy trì đam mê tốc độ của mình.', 130.00, 120.00, 'Mercedes-AMG GLB 35.jpg', 0, 1),
(22, 'Mercedes-AMG GLA 45', 'mercedes-amg-gla-45', 1, 4, 'Trong đại gia đình Mercedes-Benz, nhỏ hơn sẽ có gia đình nhà SUV và đứa con mới của gia đình này đã ra đời chính là Mercedes GLA 45 AMG 4Matic. Ở thiết kế này có vài điểm khác biệt cả về ngoại thất lẫn nội thất, không chỉ vậy còn mang trên mình động cơ xi-lanh được cho là mạnh nhất toàn quốc. Ở phiên bản này, khả năng cạnh tranh với các đối thủ khá mạnh như Audi Q3, BMW X3 và cuối cùng là Land Rover Range Rover Evoque.\r\nMercedes-Benz đang từng ngày tạo ra những sản phẩm phù hợp với mọi người, nhưng vẫn giữ cho mình một sự sang trọng riêng biệt. Để các đứa con của mình nhận được sự tin yêu của khách hàng, thương hiệu Ngôi sao 3 cánh đang dần tái tảo lại sự trẻ trung của sản phẩm. Ở sản phẩm Mercedes GLA 45 AMG 4Matic có chiều dài là 4445 mm, chiều rộng là 1804 mm và 1474 mm là số đo của chiều cao.', 135.00, 134.00, 'Mercedes-AMG GLA 45.jpg', 0, 1),
(23, 'GLC 200', 'glc-200', 3, 6, 'Chính thức được (MBV) giới thiệu tại nước ta lần đầu vào cuối tháng 4/2016, GLC là mẫu xe hạng sang hot nhất và best seller tại Việt Nam cho đến thời điểm hiện tại với hơn 9.000 xe đã lăn bánh tại nước ta.\r\nTheo đó, Mercedes-Benz nước ta đã chính thức recommend 2 phiên bản mới của người làm mẫu xe thể thao đa dụng hạng sang bán chạy nhất Việt Nam – GLC. 2 Phiên bản GLC 200 và GLC 200 4MATIC được hy vọng sẽ là những nắm rõ ràng xe SUV hạng sang toàn diện nhất với mong muốn của người dùng Việt Nam. Những người dùng có yêu cầu cao hơn có thể chọn phiên bản GLC 300 AMG theo dạng nhập khẩu nguyên chiếc.', 100.00, 99.00, 'GLC 200.jpg', 0, 1),
(24, 'GLC 250', 'glc-250', 3, 6, 'Sự ra đời của mẫu xe GLC 250 mới nhất này được hãng cho xuất phát từ việc mẫu xe GLK nổi tiếng 1 thời của hãng xe Mercedes đã không còn sức hút và thực sự phù hợp với thị hiếu mới của người sử dụng hiện nay , do đó mà ở phiên bản GLC 250 này được xem như là mẫu xe thay thế cho chính phiên bản GLK với 1 diện mạo vô cùng hút mắt , rất tiện nghi sang trọng này , bên cạnh đó thì cũng không làm mất đi được những nét truyền thống vốn có của dòng xe, đảm bảo làm hài lòng và thỏa mãn những người hâm mộ trung thành với dòng xe này.\r\nĐược hãng cho sở hữu kích thước tổng thể và chiều dài cơ sở rất lớn , đây chính là cơ sở , tiền đề để thiết kế được không gian nội thất bên trong vô cùng thoáng , rộng và rất tiện nghi đó nhé. Hãng cũng cho biết phiên bản GLC250 mới này đã mang tới được sự đột phá mới hơn về thiết kế diện mạo bên ngoài có được những đường nét vô cùng mềm mại , tinh tế hơn , tiết chế và giảm bớt được những đường nét vuông vắn , góc cạnh của dòng xe GLK trước đó . Do đó mà ở chiếc xe này vừa có được sự uyển chuyển mà không mất đi dáng dấp thể thao trẻ trung.', 130.00, 129.00, 'GLC 250.jpg', 0, 1),
(25, 'GLC 43 4Matic', 'glc-43-4matic', 3, 3, 'Cả GLC 43 4Matic và GLC 43 AMG 4Matic Coupe mới đều sử dụng động cơ tăng áp kép 3.0 lít, sản sinh công suất 385 mã lực và mô-men xoắn cực đại 520Nm. Sức mạnh được gửi đến các bánh xe thông qua hộp số tự động 9 cấp và dẫn động 4 bánh toàn thời gian 4Matic, cho phép xe tăng tốc từ 0 – 96 km/h trong 4,7 giây. Tốc độ tối đa của bản tiêu chuẩn và Coupe đều là 250 km/h.mercedes-AMG GLC 43, gia xe GLC 43 4Matic 2021\r\nMô-men xoắn trên GLC 43 4Matic 2020 được chia cho trục trước / sau theo tỷ lệ 31 – 69%, xe được trang bị tiêu chuẩn với hệ thống treo khí nén AMG Ride Control và Air Body Control, trong đó, AMG Ride Control với 3 chế độ Comfort, Sport, và Sport+ giúp điều chỉnh giảm xóc ở mỗi bánh xe trong trường hợp cần thiết để cải thiện sự thoải mái và an toàn khi lái.', 220.00, 210.00, 'AMG GLC 43 4Matic.jpg', 0, 1),
(26, 'GLC 300 4Matic', 'glc-300-4matic-coupe', 3, 3, 'Vừa mang hơi hướng truyền thống nhưng có đẩy đủ những công nghệ cải tiến mới nhất, Mercedes GLC 300 Coupe 2021 Là sự kết hợp hoàn hảo giữa quá khứ và hiện đại.\r\nGLC 300 Coupe 2021 thừa hưởng những vẻ đẹp tinh tế nhất của các dòng xe nổi bật của MERCEDES như S-CLASS, C-CLASS. GLC 300 Coupe  sẽ là sự lựa chọn hoàn hảo của bạn chỉ với tầm giá 3 tỉ đồng.\r\nKhông chỉ sở hữu những tính năng ưu việt từ phần nội thất sang trọng tiện nghi, đa dụng với những chất liệu cao cấp.\r\nNgoại thất cuốn hút, tinh tế, khả năng vận hành mạng mẽ, vượt trội. Mercedes GLC 300 Coupe 2021 còn sở hữu thêm rất nhiều những tính năng an toàn mới nhất, hiện đại nhất của hãng xe Mercedes đảm bảo sự an toàn tuyệt đối cho cả chủ nhân và hành khách trên xe.\r\nThật vậy, Mercedes GLC 300 Coupe 2021 được giới chuyên môn đánh giá cao và coi đây như là tuyệt tác của công nghệ, một siêu phẩm hoàn hảo mà thượng đế đã ban tặng cho những tín đồ công nghệ.\r\nĐến với GLC 300 Coupe, chắc chắn bạn sẽ cảm thấy thích thú và mãn nguyện bởi những gì mà chiếc xế này mang lại quá tuyệt vời, vượt trên cả sự tưởng tượng của các bạn.', 150.00, 145.00, 'GLC 300 4Matic Coupe.jpg', 0, 1),
(27, 'Mercedes E180', 'mercedes-e180', 5, 5, '', 124.00, 122.00, 'E180.jpg', 0, 1),
(28, 'Mercedes E200', 'mercedes-e200', 5, 5, '', 132.00, 130.00, 'E200.jpg', 0, 1),
(29, 'Mercedes E300', 'mercedes-e300', 5, 5, 'E-Class hiện đang là xe sang hạng cỡ trung được ưa chuộng bậc nhất tại thị trường Việt Nam. MBV luôn chủ động nâng cấp nhằm tạo ra thêm giá trị cho khách hàng và nâng cao khả năng cạnh tranh cho E-Class. Tại triển lãm Fascination 2019, MBV đã trình làng E-Class mới với 3 phiên bản, bao gồm E 200, E 200 Sport và E 350 AMG với thế hệ động cơ M264 hoàn toàn mới.', 400.00, 389.00, 'E300.jpg', 0, 1),
(31, 'sanfff', 's-a-n-g', 1, 1, 'chiu không biết làm ', 22.00, 13.00, '2022-02-10.png', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nguyenvansang_user`
--

DROP TABLE IF EXISTS `nguyenvansang_user`;
CREATE TABLE IF NOT EXISTS `nguyenvansang_user` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pass` char(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `trash` tinyint(1) NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
