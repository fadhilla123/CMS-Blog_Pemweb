-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 17 Jun 2024 pada 13.37
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teras berita`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int NOT NULL,
  `AdminUserName` varchar(255) DEFAULT NULL,
  `AdminPassword` varchar(255) DEFAULT NULL,
  `AdminEmailId` varchar(255) DEFAULT NULL,
  `userType` int DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `AdminUserName`, `AdminPassword`, `AdminEmailId`, `userType`, `CreationDate`, `UpdationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', 'phpgurukulofficial@gmail.com', 1, '2024-01-09 18:30:00', '2024-01-31 05:42:52'),
(3, 'subadmin', 'f925916e2754e5e03f75dd58a5733251', 'sudamin@gmail.in', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01'),
(4, 'suadmin2', 'f925916e2754e5e03f75dd58a5733251', 'sbadmin@test.com', 0, '2024-01-09 18:30:00', '2024-01-31 05:43:01'),
(5, 'terasberita', '371ff30a7e5f71a13749f5393399b915', 'terasberita@gmail.com', 0, '2024-06-14 03:53:35', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int NOT NULL,
  `CategoryName` varchar(200) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Description`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 'Fashion', 'Berita Fashion Terkini', '2024-01-11 18:30:00', '2024-06-14 01:18:37', 1),
(5, 'Makanan', 'Informasi Makanan Terbaru', '2024-01-11 18:30:00', '2024-06-14 01:19:12', 1),
(6, 'Budaya', 'Berita dan Informasi Budaya', '2024-01-11 18:30:00', '2024-06-14 01:19:34', 1),
(7, 'Business', 'Business', '2024-01-11 18:30:00', '2024-06-14 01:18:00', 0),
(8, 'COVID-19', 'COVID-19', '2024-01-11 18:30:00', '2024-06-14 01:18:02', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblcomments`
--

CREATE TABLE `tblcomments` (
  `id` int NOT NULL,
  `postId` int DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `comment` mediumtext,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblcomments`
--

INSERT INTO `tblcomments` (`id`, `postId`, `name`, `email`, `comment`, `postingDate`, `status`) VALUES
(1, 12, 'Anuj', 'anuj@gmail.com', 'Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis.', '2024-01-17 18:30:00', 1),
(2, 12, 'Test user', 'test@gmail.com', 'This is sample text for testing.', '2024-01-18 18:30:00', 1),
(3, 7, 'ABC', 'abc@test.com', 'This is sample text for testing.', '2024-01-22 18:30:00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int NOT NULL,
  `PageName` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext,
  `Description` longtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `PageTitle`, `Description`, `PostingDate`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Teras Berita', '<p><br></p><p>Selamat datang di Teras Berita, sumber informasi terkini yang mengedepankan kebenaran dan ketepatan dalam memberikan berita. Kami bertekad untuk menjadi jembatan informasi yang dapat diandalkan bagi pembaca setia kami.</p><p><br></p><p><strong>Misi Kami</strong>\r\n</p><p>Kami berkomitmen untuk menyajikan berita-berita terpercaya dan relevan yang mempengaruhi masyarakat secara luas. Melalui liputan yang mendalam dan analisis yang komprehensif, kami bertujuan untuk memberikan pemahaman yang lebih baik akan peristiwa-peristiwa terkini.</p><p><br></p><p><strong>Visi Kami</strong>\r\n</p><p>Menjadi portal berita terkemuka yang tidak hanya memberitakan fakta, tetapi juga membangun kepercayaan pembaca dengan integritas dan ketelitian dalam setiap artikel yang kami publikasikan.</p><p><br></p><p><strong>Nilai-Nilai Kami</strong></p><p><br></p><ol><li><strong>Kebenaran</strong>: Mengutamakan fakta dan objektivitas dalam setiap laporan.</li><li><strong>Ketepatan</strong>: Memastikan keakuratan informasi yang kami sampaikan.</li><li><strong>Keterbukaan</strong>: Transparansi dalam proses peliputan dan pengungkapan sumber informasi.</li><li><strong>Inovasi</strong>: Mengadopsi teknologi dan metodologi terbaru untuk meningkatkan pengalaman pembaca.</li><li><strong>Pelayanan Publik</strong>: Menyediakan layanan berita yang bermanfaat bagi masyarakat secara keseluruhan.</li></ol><p><br></p><p><strong>Tim Kami</strong>\r\n</p><p>Kami adalah tim yang terdiri dari jurnalis-jurnalis berpengalaman dan profesional media yang berkomitmen untuk menjaga standar tertinggi dalam penyampaian informasi kepada pembaca kami.</p><p><br></p><p>Teras Berita siap memberikan berita terkini dan terpercaya, serta menjadi mitra informasi yang dapat diandalkan bagi Anda. Terima kasih telah mempercayakan kami sebagai sumber berita utama Anda.</p><p><br></p>', '2024-01-14 18:30:00', '2024-06-14 03:52:31'),
(2, 'contactus', 'Contact Details', '<p><br></p><p><b>Address :&nbsp; </b>Teras Berita<br></p><p><b>Phone Number : </b>+91 -01234567890</p><p><b>Email -id : </b>terasberita@gmail.com</p>', '2024-01-15 18:30:00', '2024-06-14 03:52:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblposts`
--

CREATE TABLE `tblposts` (
  `id` int NOT NULL,
  `PostTitle` longtext,
  `CategoryId` int DEFAULT NULL,
  `SubCategoryId` int DEFAULT NULL,
  `PostDetails` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL,
  `PostUrl` mediumtext,
  `PostImage` varchar(255) DEFAULT NULL,
  `viewCounter` int DEFAULT NULL,
  `postedBy` varchar(255) DEFAULT NULL,
  `lastUpdatedBy` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblposts`
--

INSERT INTO `tblposts` (`id`, `PostTitle`, `CategoryId`, `SubCategoryId`, `PostDetails`, `PostingDate`, `UpdationDate`, `Is_Active`, `PostUrl`, `PostImage`, `viewCounter`, `postedBy`, `lastUpdatedBy`) VALUES
(7, 'Manfaat Jamur Enoki untuk Tubuh dan Tips Mengolahnya  ', 5, 3, '<p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Jamur enoki dapat dinikmati dalam berbagai cara. Mereka sering ditambahkan ke sup, salad, tumisan, dan hotpot. Teksturnya yang renyah dan rasa yang ringan membuatnya cocok untuk berbagai hidangan. Berikut adalah beberapa cara mudah untuk menikmati jamur enoki:<br><br>Jamur enoki, yang dikenal dengan nama latin *Flammulina velutipes*, adalah jenis jamur yang banyak digunakan dalam masakan Asia, terutama dalam hidangan Jepang, Korea, dan Tiongkok. Selain rasanya yang lezat dan teksturnya yang renyah, jamur enoki juga menawarkan berbagai manfaat kesehatan. Berikut ini adalah beberapa manfaat jamur enoki yang patut Anda ketahui:<br></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><br>Manfaat Jamur Enoki bagi Kesehatan</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">1. Kaya Akan Nutrisi</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Jamur enoki adalah sumber nutrisi yang baik, mengandung vitamin B, \r\nseperti niasin (B3), riboflavin (B2), dan tiamin (B1), serta mineral \r\npenting seperti kalium, zat besi, dan fosfor. Selain itu, jamur ini juga\r\n mengandung protein, serat, dan sedikit kalori, menjadikannya pilihan \r\nmakanan yang sehat dan bergizi.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">2. Meningkatkan Sistem Kekebalan Tubuh</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Penelitian menunjukkan bahwa jamur enoki mengandung polisakarida, \r\nterutama beta-glukan, yang dapat meningkatkan sistem kekebalan tubuh. \r\nBeta-glukan dikenal mampu merangsang aktivitas sel imun seperti \r\nmakrofag, sel T, dan sel pembunuh alami (NK cells), yang berperan \r\npenting dalam melawan infeksi dan penyakit.<br></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">3. Sumber Antioksidan</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Jamur enoki mengandung senyawa antioksidan seperti ergothioneine dan \r\nselenium. Antioksidan ini membantu melawan radikal bebas dalam tubuh \r\nyang dapat merusak sel dan menyebabkan berbagai penyakit kronis, \r\ntermasuk kanker dan penyakit jantung. Mengonsumsi makanan yang kaya \r\nantioksidan dapat membantu menjaga kesehatan sel dan mengurangi risiko \r\npenyakit.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"> 4. Mendukung Kesehatan Jantung<br>Kandungan serat dalam jamur enoki membantu mengurangi kadar \r\nkolesterol dalam darah, yang merupakan faktor risiko utama penyakit \r\njantung. Selain itu, kandungan kalium dalam jamur ini juga berperan \r\npenting dalam mengatur tekanan darah dan menjaga kesehatan jantung.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><br>5. Membantu Pengelolaan Berat Badan</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Dengan kandungan kalori yang rendah dan serat yang tinggi, jamur enoki \r\ndapat membantu dalam program pengelolaan berat badan. Serat membantu \r\nmemberikan rasa kenyang lebih lama, sehingga mengurangi keinginan untuk \r\nmakan berlebihan.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">6. Mendukung Kesehatan Pencernaan</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Serat dalam jamur enoki juga bermanfaat untuk kesehatan pencernaan. \r\nSerat membantu meningkatkan pergerakan usus, mencegah sembelit, dan \r\nmemelihara kesehatan saluran pencernaan secara keseluruhan. Selain itu, \r\nserat juga dapat bertindak sebagai prebiotik, mendukung pertumbuhan \r\nbakteri baik dalam usus.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">7. Berpotensi Anti-Kanker</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Beberapa penelitian awal menunjukkan bahwa ekstrak jamur enoki memiliki \r\nsifat antitumor. Polisakarida dan senyawa bioaktif lainnya dalam jamur \r\nini dapat menghambat pertumbuhan sel kanker dan merangsang sistem \r\nkekebalan untuk melawan sel-sel kanker. Meski demikian, penelitian lebih\r\n lanjut masih diperlukan untuk mengonfirmasi manfaat ini pada manusia.</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><br></p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\">Cara Menikmati Jamur Enoki<br><br>Jamur enoki dapat dinikmati dalam berbagai cara. Mereka sering \r\nditambahkan ke sup, salad, tumisan, dan hotpot. Teksturnya yang renyah \r\ndan rasa yang ringan membuatnya cocok untuk berbagai hidangan. Berikut \r\nadalah beberapa cara mudah untuk menikmati jamur enoki:</p><p style=\"margin-bottom: 15px; padding: 0px; font-size: 16px; font-family: PTSans, sans-serif;\"><br>1. Hotpot: Masukkan jamur enoki ke dalam hotpot atau shabu-shabu untuk mendapatkan rasa dan nutrisi yang lezat.<br>2. Tumisan: Tumis jamur enoki dengan sayuran lain dan bumbu favorit Anda.<br>3. Salad: Gunakan jamur enoki mentah sebagai tambahan pada salad segar.<br>4. Sup: Tambahkan jamur enoki ke dalam sup miso atau sup ayam untuk menambah tekstur dan rasa.<br><br><br><br></p>', '2024-01-15 18:30:00', '2024-06-14 01:34:22', 1, 'Manfaat-Jamur-Enoki-untuk-Tubuh-dan-Tips-Mengolahnya--', '9386cfc745473e4bb4225efdb0d3a1b0jpeg', 24, 'admin', 'admin'),
(10, '6 Contoh Bahan Pangan Setengah Jadi yang Umum Dikonsumsi Sehari-hari', 5, 6, '<p><font face=\"Arial Black\">Bahan pangan setengah jadi adalah produk yang telah melalui beberapa tahap pengolahan namun masih memerlukan proses lanjutan sebelum siap dikonsumsi. Berikut adalah enam contoh bahan pangan setengah jadi yang sering dikonsumsi dalam kehidupan sehari-hari:</font></p><p><br></p><h3><span style=\"font-weight: normal;\">1. Tepung Terigu</span></h3><h3><br><span style=\"font-weight: normal;\">Tepung terigu adalah bahan utama dalam pembuatan roti, kue, dan pasta. Tepung ini dihasilkan dari gandum yang telah digiling halus.</span></h3><h3><br></h3><h3><br></h3><h3><span style=\"font-weight: normal;\">2. Mie Instan</span></h3><h3><br></h3><h3><br><span style=\"font-weight: normal;\">Mie instan merupakan mie yang telah dikukus, dikeringkan, dan biasanya dilengkapi dengan bumbu. Hanya perlu direbus sebentar sebelum dikonsumsi.</span></h3><p><br></p><p><br></p><h3><span style=\"font-weight: normal;\">3. Nugget Ayam</span></h3><h3><br><span style=\"font-weight: normal;\">Nugget ayam adalah potongan daging ayam yang telah dibumbui, dilapisi tepung roti, dan digoreng setengah matang. Biasanya disimpan beku dan hanya perlu digoreng atau dipanaskan sebelum disantap.</span></h3><p><br></p><h3><br></h3><h3><span style=\"font-weight: normal;\">4. Sosis</span></h3><h3><span style=\"font-weight: normal;\">Sosis adalah daging yang telah diolah dan dibumbui, kemudian dimasukkan ke dalam casing dan dimasak setengah matang. Bisa digoreng, direbus, atau dipanggang sebelum dimakan.</span></h3><h3><br></h3><h3><br></h3><h3><span style=\"font-weight: normal;\">5. Kentang Beku</span></h3><h3><span style=\"font-weight: normal;\">Kentang beku, seperti kentang goreng atau hash browns, telah dipotong dan dimasak setengah matang sebelum dibekukan. Cukup digoreng atau dipanggang sebelum disajikan.</span></h3><p><br></p><p><br></p><h3><span style=\"font-weight: normal;\">6. Tahu</span></h3><h3><br><span style=\"font-weight: normal;\">Tahu adalah produk olahan dari kedelai yang telah dipadatkan. Biasanya digunakan dalam berbagai hidangan dan perlu dimasak terlebih dahulu, seperti digoreng atau dikukus, sebelum dikonsumsi.</span></h3><p><br></p><h3><br></h3><p><br></p>', '2024-01-16 18:30:00', '2024-06-14 02:10:46', 1, '6-Contoh-Bahan-Pangan-Setengah-Jadi-yang-Umum-Dikonsumsi-Sehari-hari', 'c9b4dbefc47ddeec265f2b8795f4e904jpeg', 1, 'admin', 'admin'),
(11, 'UNs Jean Pierre Lacroix thanks India for contribution to peacekeeping', 6, 8, '<p><br></p><p>\"Panjang\" adalah sesaji khas dari Cirebon yang berbentuk seperti rumah mini dan diisi dengan berbagai macam makanan. Tradisi ini dilakukan sebagai ungkapan syukur dan doa kepada Tuhan. Biasanya, panjang diisi dengan nasi, lauk-pauk, buah-buahan, dan kue-kue tradisional. Ritual ini merupakan bagian dari upacara adat seperti perayaan panen atau acara keagamaan, yang bertujuan untuk memohon keselamatan dan keberkahan bagi masyarakat.</p><p><br></p><h4>Makna dan Filosofi</h4><p><br></p><p>\"Panjang\" tidak hanya berfungsi sebagai sesaji, tetapi juga sarat dengan makna filosofis. Bentuk rumah melambangkan tempat tinggal yang nyaman dan penuh berkah, sementara aneka makanan di dalamnya melambangkan rezeki dan kelimpahan. Setiap jenis makanan yang dipilih memiliki simbolik tersendiri, seperti nasi yang melambangkan kesejahteraan, dan buah-buahan yang melambangkan kesuburan.</p><p><br></p><h4>Proses Pembuatan</h4><p><br></p><p>Proses pembuatan sesaji panjang melibatkan berbagai tahapan mulai dari persiapan bahan, merangkai bentuk rumah, hingga menyusun makanan di dalamnya. Biasanya, kegiatan ini dilakukan secara gotong royong oleh masyarakat setempat, yang sekaligus menjadi ajang mempererat kebersamaan. Panjang dibuat dengan penuh ketelitian dan doa, sehingga menjadi simbol pengabdian dan ketulusan hati.</p><p><br></p><h4>Penggunaan dalam Upacara</h4><p><br></p><p>Panjang sering digunakan dalam berbagai upacara adat, seperti perayaan hari besar keagamaan, acara syukuran, dan ritual panen. Sesaji ini diletakkan di tempat-tempat tertentu, seperti rumah ibadah atau lapangan desa, dan diiringi dengan doa dan upacara khusus. Setelah ritual selesai, makanan dari panjang biasanya dibagikan kepada masyarakat sebagai berkah.</p><p><br></p><h4>Peran dalam Pelestarian Budaya</h4><p><br></p><p>Tradisi membuat dan menggunakan panjang juga berperan penting dalam melestarikan budaya dan kearifan lokal. Melalui ritual ini, generasi muda diajarkan untuk menghargai dan melanjutkan tradisi leluhur, serta memahami makna dan filosofi yang terkandung di dalamnya. Selain itu, panjang juga menjadi daya tarik bagi wisatawan yang tertarik dengan kebudayaan dan tradisi Indonesia.</p><p><br></p>', '2024-01-16 18:30:00', '2024-06-14 02:21:44', 1, 'UNs-Jean-Pierre-Lacroix-thanks-India-for-contribution-to-peacekeeping', '740bb188798e59662d9f36534717e441jpeg', 34, 'admin', 'admin'),
(12, 'Melihat Ritual Memandikan Perahu Saat Perayaan Peh Cun di Tangerang', 6, 7, '<p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><p>Perayaan Peh Cun di Tangerang merupakan salah satu festival budaya Tionghoa yang paling dinanti. Festival ini dipenuhi dengan berbagai tradisi dan ritual, salah satunya adalah ritual memandikan perahu naga. Ritual ini dilakukan sebagai bentuk penghormatan kepada dewa laut dan dipercaya dapat membawa keberuntungan serta mengusir energi negatif.</p><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><h4>Sejarah dan Makna Peh Cun</h4><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><p>Peh Cun, yang juga dikenal sebagai Festival Perahu Naga, dirayakan untuk mengenang Qu Yuan, seorang penyair dan pejabat patriotik Tiongkok kuno yang hidup pada periode Negara-Negara Berperang (Warring States Period). Qu Yuan adalah seorang patriot yang bunuh diri dengan melompat ke Sungai Miluo sebagai bentuk protes terhadap korupsi dan pengkhianatan di negaranya. Untuk menghormatinya, masyarakat mengadakan lomba perahu naga dan ritual lainnya.</p><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><h4>Proses Ritual Memandikan Perahu</h4><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><p>Ritual memandikan perahu naga dimulai dengan membersihkan perahu secara menyeluruh. Perahu-perahu ini kemudian dihias dengan ornamen-ornamen berwarna cerah dan ditempatkan di atas air sebagai simbol pemurnian dan penghormatan. Upacara ini juga melibatkan doa-doa dan persembahan kepada dewa laut agar diberikan keselamatan dan keberuntungan.</p><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><h4>Peserta dan Antusiasme Masyarakat</h4><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><p>Ritual ini tidak hanya diikuti oleh masyarakat Tionghoa, tetapi juga menarik perhatian berbagai kalangan yang tertarik dengan budaya dan tradisi. Antusiasme masyarakat terlihat dari ramainya pengunjung yang datang untuk menyaksikan prosesi ini. Mereka berbondong-bondong ke lokasi acara untuk menikmati kemeriahan dan kekayaan budaya yang disajikan.</p><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><h4>Makna Budaya dan Sosial</h4><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><p>Selain sebagai bentuk penghormatan terhadap leluhur dan dewa, perayaan Peh Cun juga menjadi ajang untuk mempererat tali persaudaraan antar komunitas. Melalui kegiatan bersama, seperti lomba perahu naga dan festival kuliner, masyarakat dapat saling berinteraksi dan mengenal satu sama lain dengan lebih baik.</p><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><h4>Harapan dan Doa</h4><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p><p>Dalam setiap ritual, terdapat doa-doa yang dipanjatkan untuk keselamatan, kesehatan, dan kemakmuran. Memandikan perahu naga diyakini dapat menghilangkan nasib buruk dan membawa keberuntungan bagi seluruh komunitas. Ini adalah salah satu momen penting di mana spiritualitas dan budaya menyatu dalam satu perayaan yang harmonis.</p><p><span style=\"color: rgb(25, 25, 25); font-family: &quot;Noto Serif&quot;; font-size: 16px;\"><br></span></p>', '2024-01-17 18:30:00', '2024-06-14 02:17:19', 1, 'Melihat-Ritual-Memandikan-Perahu-Saat-Perayaan-Peh-Cun-di-Tangerang', 'e13947f89abf60f11bdea4b1dc6e7d7cjpeg', 22, 'admin', 'admin'),
(13, 'Tips Mendapatkan Barang Berkualitas Saat Thrifting', 3, 4, '<p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">Thrifting atau berbelanja barang bekas kini semakin populer, tidak hanya karena alasan ekonomi tetapi juga untuk mendukung gaya hidup yang lebih berkelanjutan. Namun, untuk mendapatkan barang berkualitas saat thrifting, diperlukan kejelian dan strategi tertentu. Berikut adalah beberapa tips yang dapat membantu Anda menemukan barang-barang berkualitas saat thrifting:</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">1. <strong>Kenali Tempat Thrifting yang Tepat<br></strong>Setiap toko thrifting memiliki karakteristik dan jenis barang yang berbeda-beda. Beberapa toko mungkin lebih fokus pada pakaian, sementara yang lain lebih banyak menjual peralatan rumah tangga atau furnitur. Lakukan riset terlebih dahulu dan temukan toko yang sesuai dengan kebutuhan Anda.</p><ul><li style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><strong>Toko Thrift Lokal</strong>: Biasanya memiliki koleksi yang beragam dengan harga yang lebih murah.</li><li style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><strong>Toko Online</strong>: Platform seperti eBay, Poshmark, atau Depop menawarkan berbagai barang bekas berkualitas yang dapat dibeli secara online.</li><li style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><strong>Garage Sale</strong>: Seringkali menyediakan barang-barang unik dengan harga miring.</li></ul><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">2. <strong>Periksa Kualitas Barang dengan Teliti<br></strong>Saat berbelanja barang bekas, perhatikan kualitas barang dengan saksama. Berikut beberapa hal yang perlu diperiksa:</p><ul><li style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><strong>Kondisi Fisik</strong>: Cek apakah ada kerusakan, noda, atau bagian yang hilang. Untuk pakaian, perhatikan jahitan, kancing, dan resleting.</li><li style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><strong>Label dan Merek</strong>: Barang dari merek terkenal biasanya memiliki kualitas yang lebih baik dan tahan lama.</li><li style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><strong>Material</strong>: Pilih bahan yang berkualitas, seperti katun, wol, atau kulit asli, yang lebih awet dan nyaman digunakan.</li></ul><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">3. <strong>Perhatikan Tren dan Kebutuhan</strong></p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">Meski barang-barang di toko thrift berharga murah, penting untuk tetap bijak dalam berbelanja. Beli barang yang benar-benar Anda butuhkan atau sesuai dengan gaya dan tren saat ini. Membeli hanya karena harga murah bisa membuat Anda menghabiskan uang untuk barang yang tidak diperlukan.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">4. <strong>Manfaatkan Diskon dan Promo<br></strong>Banyak toko thrift yang menawarkan diskon khusus pada hari-hari tertentu atau saat ada acara khusus. Manfaatkan momen ini untuk mendapatkan barang berkualitas dengan harga yang lebih murah. Jangan ragu untuk menanyakan kepada staf toko tentang adanya diskon atau promo.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">5. <strong>Bersabar dan Konsisten<br></strong>Thrifting membutuhkan kesabaran dan konsistensi. Anda mungkin tidak selalu menemukan barang yang diinginkan dalam satu kunjungan. Lakukan kunjungan secara rutin ke toko thrift favorit Anda. Barang-barang baru biasanya datang setiap minggu, jadi peluang menemukan barang bagus semakin besar.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">6. <strong>Coba dan Ukur<br></strong>Jika Anda berbelanja pakaian, pastikan untuk mencobanya terlebih dahulu. Ukuran pada pakaian bekas bisa berbeda dengan ukuran standar karena perubahan bentuk setelah digunakan. Jika berbelanja online, periksa kebijakan pengembalian barang dan pastikan ukuran yang dipilih sesuai dengan ukuran tubuh Anda.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">7. <strong>Bersihkan dan Rawat Barang yang Dibeli<br></strong>Setelah membeli barang bekas, pastikan untuk membersihkannya dengan baik. Pakaian bisa dicuci atau dibawa ke laundry, sementara barang rumah tangga bisa dibersihkan dengan cairan pembersih yang aman. Perawatan yang baik akan membuat barang-barang tersebut lebih tahan lama dan nyaman digunakan.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">8. <strong>Jangan Ragu untuk Bernegosiasi<br></strong>Di beberapa toko thrift atau pasar loak, Anda bisa bernegosiasi untuk mendapatkan harga yang lebih baik. Bersikap sopan dan ajukan penawaran yang masuk akal. Terkadang, penjual bersedia memberikan diskon tambahan, terutama jika Anda membeli dalam jumlah banyak.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\">9. <strong>Jadilah Kreatif<br></strong>Barang-barang thrift sering kali memerlukan sedikit kreativitas untuk bisa dimanfaatkan dengan baik. Anda bisa memperbaiki atau mengubah barang yang dibeli agar sesuai dengan selera dan kebutuhan Anda. Misalnya, pakaian bisa dimodifikasi dengan tambahan aksesori atau barang furnitur bisa dicat ulang agar terlihat baru.</p><p style=\"margin-bottom: 3rem; font-size: 20px; color: rgb(41, 41, 41); line-height: 1.6; font-family: &quot;Proxima Nova&quot;;\"><br></p><br>', '2024-01-18 18:30:00', '2024-06-14 02:01:55', 1, 'Tips-Mendapatkan-Barang-Berkualitas-Saat-Thrifting', '79579aa2500fed20cf33154cb99d3e83.jpg', 6, 'admin', 'admin'),
(14, 'East Java Fashion Harmony 2024 di Tulungagung, Upaya Promosi Wastra Tenun', 3, 5, '<p><br></p><p>East Java Fashion Harmony 2024, yang diadakan di Tulungagung, merupakan sebuah acara yang berfokus pada promosi wastra tenun, khususnya tenun tradisional dari Jawa Timur. Acara ini diselenggarakan untuk meningkatkan apresiasi dan pengakuan terhadap kerajinan tenun lokal, serta untuk mendorong pertumbuhan industri kreatif di wilayah tersebut.</p><p><br></p><p>Pada tahun ini, East Java Fashion Harmony menampilkan berbagai karya desainer lokal yang menggunakan kain tenun sebagai bahan utama. Para desainer ini berhasil mengolah tenun menjadi busana yang modern dan elegan tanpa meninggalkan nilai tradisional yang melekat pada kain tersebut. Selain itu, acara ini juga menghadirkan pameran dan workshop yang membahas proses pembuatan tenun, mulai dari pemintalan benang hingga pewarnaan alami.</p><p><br></p><p>Tujuan utama dari acara ini adalah untuk memperkenalkan wastra tenun kepada pasar yang lebih luas, baik di dalam maupun luar negeri. Dengan semakin dikenalnya tenun Tulungagung dan daerah sekitarnya, diharapkan akan ada peningkatan permintaan yang pada akhirnya dapat membantu perekonomian lokal.</p><p><br></p><p>East Java Fashion Harmony juga menjadi ajang untuk mempromosikan pariwisata budaya di Jawa Timur. Pengunjung tidak hanya disuguhi dengan keindahan busana tenun, tetapi juga diajak untuk menikmati kekayaan budaya dan kuliner daerah setempat. Kegiatan ini sejalan dengan upaya pemerintah daerah dalam mempromosikan Tulungagung sebagai destinasi wisata yang menarik.</p><p><br></p><p>Acara ini mendapat sambutan yang positif dari berbagai kalangan, termasuk pemerintah daerah, pelaku industri kreatif, dan masyarakat umum. Diharapkan, dengan adanya East Java Fashion Harmony, tenun Jawa Timur dapat lebih dikenal dan diapresiasi, serta mampu bersaing di pasar global.</p><p><br></p>', '2024-06-14 02:05:41', NULL, 1, 'East-Java-Fashion-Harmony-2024-di-Tulungagung,-Upaya-Promosi-Wastra-Tenun', '75df8997b3288e297eabee3da3b0b8dd.jpg', NULL, 'admin', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblsubcategory`
--

CREATE TABLE `tblsubcategory` (
  `SubCategoryId` int NOT NULL,
  `CategoryId` int DEFAULT NULL,
  `Subcategory` varchar(255) DEFAULT NULL,
  `SubCatDescription` mediumtext,
  `PostingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `Is_Active` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tblsubcategory`
--

INSERT INTO `tblsubcategory` (`SubCategoryId`, `CategoryId`, `Subcategory`, `SubCatDescription`, `PostingDate`, `UpdationDate`, `Is_Active`) VALUES
(3, 5, 'Food', 'Manfaat', '2024-01-14 18:30:00', '2024-06-14 01:21:20', 1),
(4, 3, 'Thrifting', 'tips\r\n\r\n', '2024-01-14 18:30:00', '2024-06-14 01:55:46', 1),
(5, 3, 'Budaya Indonesia', 'Budaya', '2024-01-14 18:30:00', '2024-06-14 02:04:19', 1),
(6, 5, 'bahan pangan', 'contoh', '2024-01-14 18:30:00', '2024-06-14 02:07:19', 1),
(7, 6, 'Perayaan', 'Tiong Hoa', '2024-01-14 18:30:00', '2024-06-14 02:14:32', 1),
(8, 6, 'Rumah', 'Replika', '2024-01-14 18:30:00', '2024-06-14 02:19:00', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tblusers`
--

CREATE TABLE `tblusers` (
  `userId` int NOT NULL,
  `fullName` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `emailId` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `conatctNo` bigint DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_general_ci,
  `regDate` int DEFAULT NULL,
  `isActive` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `AdminUserName` (`AdminUserName`);

--
-- Indeks untuk tabel `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postId` (`postId`);

--
-- Indeks untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tblposts`
--
ALTER TABLE `tblposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `postcatid` (`CategoryId`),
  ADD KEY `postsucatid` (`SubCategoryId`),
  ADD KEY `subadmin` (`postedBy`);

--
-- Indeks untuk tabel `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD PRIMARY KEY (`SubCategoryId`),
  ADD KEY `catid` (`CategoryId`);

--
-- Indeks untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`userId`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tblcomments`
--
ALTER TABLE `tblcomments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tblposts`
--
ALTER TABLE `tblposts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  MODIFY `SubCategoryId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `userId` int NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tblcomments`
--
ALTER TABLE `tblcomments`
  ADD CONSTRAINT `pid` FOREIGN KEY (`postId`) REFERENCES `tblposts` (`id`);

--
-- Ketidakleluasaan untuk tabel `tblposts`
--
ALTER TABLE `tblposts`
  ADD CONSTRAINT `postcatid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`),
  ADD CONSTRAINT `postsucatid` FOREIGN KEY (`SubCategoryId`) REFERENCES `tblsubcategory` (`SubCategoryId`),
  ADD CONSTRAINT `subadmin` FOREIGN KEY (`postedBy`) REFERENCES `tbladmin` (`AdminUserName`);

--
-- Ketidakleluasaan untuk tabel `tblsubcategory`
--
ALTER TABLE `tblsubcategory`
  ADD CONSTRAINT `catid` FOREIGN KEY (`CategoryId`) REFERENCES `tblcategory` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
