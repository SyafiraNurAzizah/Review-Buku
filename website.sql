-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 11:47 AM
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
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `DESKRIPSI` varchar(500) NOT NULL,
  `FOTO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'Jomblo:sebuah komedi cinta', 'Adhitya Mulya', 'Sebuah kisah komedi romantis yang mengikuti kehidupan seorang jomblo yang mencoba menemukan cinta sejati dengan berbagai kejadian lucu dan kisah persahabatan.', 'jomblo sebuah komedi cinta.jpg'),
(2, 'Radikus Makankakus', 'Raditya Dika', 'Raditya Dika, yang terkenal dengan karyanya yang kocak, menghadirkan novel ini yang berisi kumpulan kisah lucu seputar kehidupan sehari-hari.', 'radikus makan kakus.jpg'),
(3, 'Cintapuccino', 'Icha Rahmanti', 'Novel ini menawarkan campuran cinta, komedi, dan kehidupan kota. Kisahnya berkisar di sekitar seorang wanita muda yang mengalami berbagai kebingungan dalam percintaan.', 'cintapuccino.jpg'),
(4, 'Babi Ngesot', 'Raditya Dika', 'Sebuah kisah humor yang menggambarkan kehidupan sehari-hari seorang pemuda dengan segala tingkah konyol dan komikalnya.', 'babi ngesot.jpg'),
(5, 'Madre', 'Dee Lestari', 'Novel ini membawa pembaca ke dalam dunia kocak dan magis yang dihuni oleh karakter-karakter unik. Kisahnya berfokus pada petualangan seorang wanita yang hidup di Jakarta modern namun terlibat dalam situasi supernatural yang lucu.', 'madre.jpg'),
(6, 'Good Omens', 'Terry Pratchett', 'Novel ini mengisahkan tentang seorang malaikat dan setan yang tidak sengaja menjadi teman baik selama berabad-abad. Ketika mereka menyadari bahwa kiamat akan terjadi, mereka bersatu untuk menghentikannya karena mereka menyukai hidup di Bumi terlalu banyak.', 'good omens.png'),
(7, 'Luka Cita', 'Valerie Patkar', 'Novel ini bercerita tentang dua orang yang merasa dikhianati oleh mimpi mereka sendiri. Mereka adalah Utara dan Javier. Utara adalah seorang atlet catur, mantan atlet yang hidupnya catur mulu. sangkin dia cintanya sama catur, dia gak bisa melakukan apapun karena hidupnya habis untuk catur.', 'luka cita.jpg'),
(8, 'Akhir di Antara Kita (It Ends with Us)', 'Colleen Hoover', 'Novel ini bercerita tentang Lily Bloom, wanita 24 tahun yang tinggal di Boston. Ayahnya baru saja meninggal, walaupun Lily tidak menyukai sang ayah, kematiannya membuat Lily butuh waktu untuk menenangkan pikirannya—di rooftop gedung milik orang lain.', 'akhir antara kita.jpg'),
(9, 'Serangkai', 'Valerie Patkar', 'Buku novel Serangkai bercerita tentang seorang pria bernama Kai Deverra atau akrab disapa Deverra yang mencoba menjalani rasa penyesalannya karena ditinggal kekasihnya dan kemudian bertemu dengan Karina Maladivas. Hal itu masih jadi Nota yang terkunci dalam kesendirian dan kesepiannya sendiri.', 'serangkai.jpg'),
(10, 'Hilmy Milan', 'Nadia Ristivani', 'Novel Hilmy Milan mengisahkan kehidupan romansa antara dua orang yang bernama Hilmy dan Milan, yang diceritakan sedang menempuh Pendidikan perguruan tinggi. Meskipun novel ini bergenre romantis, tetapi cerita pada novel ini tidak klise dan cocok banget buat kalian yang ingin merasakan sensasi kisah romansa.', 'hilmy milan.jpg'),
(11, '#Berhentidikamu', 'Gia Pratama', 'Novel #BerhentiDiKamu menceritakan tentang kisah Gia Pratama dalam pencarian jodoh. Cerita tersebut diangkat dari kisah nyata Gia Pratama, dan sempat diceritakan di twitter oleh sang penulis. Ia menceritakan kisah asmaranya begitu memikat, disimak ribuan pengguna twitter lain hingga jadi trending topic.', 'berhentidikamu.jpg'),
(12, 'Areksa', 'Ita Kurniawati', 'Novel Areksa merupakan novel fiksi yang mengisahkan tentang seorang lelaki tampan, keras, menakutkan, tetapi bijaksana yang bernama Areksa Dirgantara. Di mata banyak orang, Areksa Dirgantara memang dinilai hampir sempurna.', 'areksa.jpg'),
(13, 'Her Name is', 'Cho Nam Joo', 'Buku \"Her Name Is…\" dibagi menjadi 4 bagian yang menggambarkan kesulitan hidup perempuan dan semangat mereka untuk bangkit demi kehidupan yang lebih baik. Kisah-kisah termasuk pelecehan seksual, perjuangan seorang ibu, pencarian jati diri seorang anak, dan perjuangan seorang nenek untuk keluarganya. Semua cerita ini dituangkan dengan indah dalam buku tersebut.', 'her name is.jpg'),
(14, 'Saat Saat Jatuh', 'Lia Seplia', 'Novel \"Saat-Saat Jatuh\" karya Lia Seplia menceritakan kisah cinta antara dua tokoh utama, Aline dan Alex, yang awalnya yakin akan bersama. Namun, kepercayaan mereka mulai memudar karena jarak antara mereka.', 'saat saat jatuh.jpg'),
(15, 'Pulang - Pergi', 'Tere Liye', 'Dalam buku series ini menceritakan kisah Bujang yang terus melakukan perjalanan pulang dan perginya. Namun dalam buku ini, Bujang melakukan perjalanan pulang dan pergi sekaligus. Diawali dengan kepulangannya ke tanah kelahirannya yaitu, Talang untuk mengunjungi makam orang tuanya atau lebih tepatnya makam mamaknya.', 'pulang pergi.jpeg'),
(16, 'The Star and I', 'Ilana Tan', '\r\n\"Buku The Star and I\" mengisahkan perjalanan Olivia Mitchell, seorang aktris opera yang tumbuh di panti asuhan tanpa tahu asal-usulnya. Setelah diadopsi, ia tetap merasa gelisah dan pergi ke New York untuk mencari keluarganya. Di sana, ia bertemu kembali dengan cinta pertamanya, Lawrence Rex Rankin, yang membantunya mencari identitasnya. ', 'the star and i.jpg'),
(17, 'Dikta dan Hukum', 'Dhia\'an Farah', 'Dikta dan Hukum adalah novel karya Dhia\'an Farah yang diterbitkan pada tahun 2021. Novel ini bercerita tentang kisah cinta antara Dikta, seorang mahasiswa hukum yang dingin dan Nadhira, seorang mahasiswi hukum yang ceria. Dikta adalah mahasiswa hukum yang pintar dan populer di kampus.', 'dikta dan hukum.jpg'),
(18, 'Heartbreak Motel', 'Ika Natassa', 'rtbreak Motel, Ava bertemu dengan Raga. Raga ternyata tidak mengenal Ava sebagai seorang aktris. Bukannya tersinggun, Ava malah menyukai kenyamanan yang ia rasakan, karena dianggap sebagai orang biasa. Namun, kenyataan bahwa Ava adalah seorang aktris populer yang disembunyikannya itu malah menimbulkan berbagai masalah yang pada akhirnya harus Ava tanggung sendiri.', 'heartbreak motel.jpg'),
(19, 'Dilan 1990', 'Pidi Baiq', 'Dia Adalah Dilanku Tahun 1990” bercerita tentang kisah cinta dua remaja Bandung pada tahun 90an. Berawal dari seorang siswa bernama Dilan yang jatuh cinta dengan siswi pindahan dari SMA di Jakarta bernama Milea. Dilan memiliki beragam cara untuk mendekati dan mencuri perhatian Milea.', 'dilan 1990.jpg'),
(20, 'Ayat - Ayat Cinta', 'Habiburrahman El Shirazy', 'Novel ini bercerita tentang kisah percintaan yang bernuansa islam. Cerita bermula dari seorang mahasiswa asal Indonesia bernama Fahri yang kuliah di Universitas Al- Azhar, ia tinggal di sebuah apartemen bersama keempat temannya.', 'ayat ayat cinta.jpg'),
(21, 'Perahu Kertas', 'Dee Lestari', 'Perahu Kertas bercerita tentang dua orang yang sama-sama unik bernama Kugy dan Keenan. Kugy adalah seorang mahasiswi Sastra berkepribadian nyentrik yang bercita-cita menjadi juru dongeng. Keenan adalah seorang laki-laki kalem yang cinta melukis, namun harus kuliah Ekonomi karena mengikuti keinginan ayahnya.', 'perahu kertas.jpg'),
(22, 'Bidadari - Bidadari Surga', 'Tere Liye', 'Bidadari-Bidadari Surga bercerita tentang pengorbanan seorang kakak (Laisa) untuk adik-adiknya (Dalimunte, Ikanuri, Wibisana dan Yashinta) di Lembah Lahambay agar adik-adiknya dapat melanjutkan pendidikan mereka, meski ia harus bekerja hingga tak kenal waktu.', 'bidadari bidadari surga.jpg'),
(23, 'Dear Nathan', ' Erisca Febriani', 'Novel ini mengisahkan tentang masa indah putih abu-abu, persahabatan, pelajaran kehidupan, dan pentingnya untuk selalu menghargai perasaan. Berawal dari keterlambatan mengikuti upacara pertama di sekolah baru, Salma Alvira bertemu dengan seorang cowok yang membantunya menelusup lewat gerbang samping.', 'dear nathan.jpg'),
(24, 'Critical Eleven', 'Ika Natassa', 'Ale dan Anya pertama kali bertemu dalam penerbangan dari Jakarta menuju Sydney. Dalam waktu yang singkat, Anya mulai terpikat. 7 jam berikutnya mereka saling mengenal lewat percakapan dan canda tawa, tak menduga hidup mereka akan berubah selamanya.', 'critical eleven.jpg'),
(25, 'Marmut Merah Jambu', 'Raditya Dika', 'Dika menceritakan kisah cinta pertamanya saat SMA dengan cewek bernama Ina Mangunkusumo. Cerita ketika dia dan temannya Bertus membentuk sebuah grup detektif, dan juga persahabatannya dengan Cindy.', 'marmut merah jambu.jpg'),
(26, 'Remember When', 'Winna Efendi', '\"Remember When\" menceritakan tentang dua pasangan, Gia & Andrian serta Moses & Freya, yang mengalami perubahan perasaan dan konflik dalam hubungan mereka. Freya merasa jenuh dengan Moses, sementara Andrian berbohong kepada Gia. Ketika perselingkuhan terungkap, persahabatan retak. Moses putus dengan Freya, tetapi Andrian tetap bersama Gia karena merasa bertanggung jawab. Akhirnya, Gia menerima takdir bahwa Andrian hanya untuk Freya.\r\n', 'remember when.jpg'),
(27, 'Rindu', 'Tere Liye', 'Akan menceritakan tentang perjalanan yang panjang dengan sebuah kerinduan, akan bertemakan zaman penjajahan belanda di tanggal 1 desember 1938 dimana dalam sejarah kita Makassar yang untuk pertama kalinya dimunculkan oleh kedatangan kapal uap yang sangat besar pada zamannya.', 'rindu.jpg'),
(28, 'Hujan', 'Tere Liye', 'Novel ini mengisahkan tentang percintaan dan perjuangan hidup seorang perempuan bernama Lail. Ketika Lail baru berusia 13 tahun, dirinya harus menjadi seorang anak yatim piatu karena ibu dan ayahnya meninggal dalam bencana letusan gunung api dan gempa bumi yang menghancurkan kota tempat tinggal mereka.', 'hujan.jpg'),
(29, 'Aroma Karsa', 'Dee Lestari', 'Aroma Karsa adalah sebuah novel karangan Dewi Lestari yang diterbitkan pada tahun 2018. Menceritakan tentang pemuda bernama Jati Wesi yang dibesarkan di kawasan kumuh Bantar Gebang. Jati memiliki kemampuan penciuman aroma yang melebihi orang biasa.', 'aroma karsa.jpg'),
(30, 'Dia Tanpa Aku', 'Esti Kinasih', 'Ronald menyukai Citra, tapi kecewa saat tahu Citra sekelas dengan adiknya, Reinald, di SMA. Reinald awalnya benci pada Citra karena menganggapnya penyebab kematian kakaknya, Ronald. Namun, hubungan mereka berubah ketika Reinald jujur kepada Citra dan menyatakan perasaannya.', 'dia tanpa aku.jpg'),
(31, 'My Childish Girl', 'Tamara Biliski', 'Gala dan Riri sudah pacaran selama 4 tahun, tetapi hubungan mereka penuh pertengkaran karena perbedaan kepribadian. Gala ingin Riri lebih dewasa dan tidak egois, sementara Riri merasa Gala terlalu kasar. Ketika mereka mau berpisah, Riri kehilangan orang tua. Gala berusaha menjadi pelindung Riri dan membuktikan cintanya.', 'my childish girl.jpg'),
(32, 'Asmara Bukan Ramayana', 'Nimas Aksan', 'Mungkin dongeng Ramayana dalam kehidupan nyata itu memang ada. Kau, aku, tanpa dia sang Rahwana. Lalu aku menjadi Sinta yang paling bahagia. Namun, Kalau aku Sinta, dan kau Rama, lalu mengapa pernikahan kita ini tidak seindah dongeng Ramayana? Kalau aku Sinta, dan kau Rama, lalu dia siapa? Rahwana? Mengapa justru aku menginginkan dia datang dan menculikku pergi jauh? Mengapa?', 'asmara bukan ramayana.jpg'),
(33, 'MetroPop: Mismatch', 'Arata Kim', 'Kenizia dan Giovanni, sahabat lama, menjalin hubungan setelah Giovanni melamar Kenizia. Namun, Kenizia mulai curiga dan bertanya langsung kepada Giovanni, membuatnya merenungkan hubungan mereka.', 'metropopmismatch.jpg'),
(38, 'The Hobbit', 'J.R.R Tolkien', 'Cerita dalam The Hobbit adalah tentang petualangan sekelompok pencari harta yang hendak mengklaim kembali harta milik leluhurnya yang telah direbut oleh naga jahat Smaug. Kelompok ini terdiri dari 13 kurcaci, satu hobbit, dan satu penyihir.', 'the hobbit.jpg'),
(39, 'Bowl of Happines', 'Sophie Maya', 'Sinopsis: Helen hidup dibayangi kenyataan bahwa Mama, Papa, dan ketiga kakaknya menjadi dokter sukses. Didikan Mama yang kaku menghalangi mimpinya menjadi penyanyi. Bahkan ia harus rela pindah ke Semarang dan bersekolah di SMA Sinar Bangsa selama setahun.', 'bowl of happines.jpg'),
(40, 'TeenLit : Ranking 1 ', 'Sara Tee', 'Novel \"Rangking Satu\" mengisahkan Ella, remaja pintar yang ditekan oleh ayahnya untuk meraih peringkat satu. Ella memiliki sahabat setia, namun persahabatan mereka merenggang ketika Vera, murid pintar dan dekat dengan Ivan, muncul. Vera memberi tantangan pada Ella untuk meraih peringkat satu. Tantangan itu dimanfaatkan seseorang untuk mempermalukan Ella di depan publik dan Ivan. Setelah kejadian itu, Ella belajar dari pengalaman dan memetik hikmah dari kehidupannya.', 'teenlit ranking 1.jpg'),
(41, 'SI ANAK KUAT - tere liye', 'SI ANAK KUAT - tere liye', 'Si Anak Kuat merupakan fiksi sastra jenis novel karya Tere Liye. Membahas mengenai seorang anak bernama Amelia, kisah anak yang memiliki mimpi-mimpi hebat untuk kampung tercintanya. Dalam seri ini Tere liye memberikan kesan dan pengalaman yang berbeda di setiap bukunya.', 'si anak kuat.jpg'),
(42, 'Milea: Suara dari Dilan', 'Pidi Baiq', 'Tidak ada kisah yang lebih Indah dari kisah cinta di SMA.Sama halnya dengan kisah cinta Dilan dan Milea.Dari yang awalnya benci hingga saling mencintai. Dari yang awalnya manis hingga menjadi rumit.Menjelang reuni akbar,Dilan memutuskan untuk menceritakan kembali masa masa itu.', 'milea suara dari dilan.jpg'),
(43, 'Kata ', 'Rintik Sedu', 'Novel Kata menceritakan tentang kehidupan seorang remaja bernama Binta yang cuek dan tertutup, disebabkan keluarga kecilnya hancur. Sejak usia lima tahun, mama Binta mengidap penyakit skizofrenia yang menyebabkan ayahnya pergi meninggalkan mereka.', 'kata.jpg'),
(44, 'Manusia Urban', 'A.M. Lilik Agung', 'Kumpulan cerpen mengajak kita melepaskan imajinasi, menyusuri kehidupan di bawah gemerlap lampu, semerbak parfum mewah, di balik penampilan berkelas. Benarkah gaya hidup kosmopolitan secemerlang yang ditampilkannya? Penuh intrik, permainan, rahasia kelam.\r\nKumpulan cerpen menggambarkan sisi terang dan sisi gelap kehidupan. Dari gelimang kemewahan menuju sudut terkelam manusia-manusia kalah yang terpinggirkan.\r\nmanakah Anda?', 'manusia urban.jpg'),
(45, 'Dilan bagian 2 :Dia Adalah Dilanku 1991 ', 'Pidi Baiq', 'Kisah cinta Milea dan Dilan berlanjut setelah mereka resmi berpacaran. Meskipun bahagia, Dilan dihadapkan pada masalah dengan orang-orang yang mencelakainya. Kang Adi mencoba merebut Milea tetapi gagal. Yugo, saudara jauh Milea, menyatakan perasaannya padanya. Milea khawatir dengan rencana balas dendam Dilan. Meskipun ada penambahan tokoh, kisah ini tetap menarik dengan latar Bandung dan Jakarta pada tahun 1990 hingga Milea lulus SMA.', 'dilan kedua dia adalah dilanku.jpg'),
(46, ' 1 kos 3 cinta 7 keberuntungan - Astrid Tito', ' 1 kos 3 cinta 7 keberuntungan - Astrid Tito', 'Ada apa dengan kamar nomor 7 di Kos 7? Mengapa penghuni kamar itu selalu berulah dan bermasalah? Linda sang perempuan kusut, pengidap skizofrenia. Renata yang diduga pelakor akibat berwajah cantik berbodi biola. Serta Bram si laki-laki kemayu yang digebuki penagih akibat utang kartu kredit yang menggulung hingga segunung. Lantas bagaimana keempat sahabat, Aol-Rendy-Vika-Eda, mampu membantu permasalahan para penghuni kamar kos nomor 7? Bagaimana pula kisah cinta Aol dan Rendy, Vika dan Rakai, ser', '1kos 3cinta 7keberuntungan.jpg'),
(47, 'Hilmy Milan', 'Nadia Ristivani', 'Novel Hilmy Milan mengisahkan kehidupan romansa antara dua orang yang bernama Hilmy dan Milan, yang diceritakan sedang menempuh Pendidikan perguruan tinggi. Meskipun novel ini bergenre romantis, tetapi cerita pada novel ini tidak klise dan cocok banget buat kalian yang ingin merasakan sensasi kisah romansa.', 'hilmy milan.jpg'),
(48, 'Jakarta Sebelum Pagi', 'Ziggy Zezsyazeoviennazabrizkie', 'Buku ini bercerita tentang kehidupan seorang anak berusia enam tahun bernama Ava. Ia memiliki ayah yang tidak menyukainya dan baru saja ditinggal oleh kakeknya yang bernama Kia. Kakek Kia memberikan dia kamus saat dirinya berusia tiga tahun yang membuat dirinya pintar berbahasa Indonesia.', 'jakarta sebelum pagi.jpg'),
(49, 'Kekasih Musim Gugur', 'Laksmi Pamuntjak', 'Kekasih musim gugur adalah kisah dua perempuan, Srikandi (Siri) dan Dara. Yang satu seorang seniman kosmopolitan, dan yang satunya seorang aktivis politik. Setelah bertahun-tahun mengembara di berbagai kota di dunia, Siri memutuskan hidup di Berlin untuk menhindar dari masa lalu keluarganya.', 'kekasih musim gugur.jpg'),
(50, 'Fairish', 'Esti Kinasih', 'Davi adalah siswa baru di sekolah. Dia adalah cowo yang tampan sehingga banyak cewe yang mengidolakannya, kecuali Fairish, Fairish adalah satu-satunya cewe yang acuh dengan keberadaan Davi. Namun Davi justru memilih Fairish untuk menjadi orang yang paling dekat dengannya. Dengan Fairish jadi pacarnya tujuannya agar tidak di kejar-kejar cewek-cewek di sekolahnya Fairish dipanggil Irish ini memang tidak cantik dan tidak ngetop di sekolahnya. Davi merasa aman karena tidak mungkin jatuh cinta pada F', 'fairish.jpg'),
(51, 'Pergi', 'Tere Liye', 'Pergi mengisahkan tentang petualangan Bujang dalam menemukan makna dari tujuan hidupnya, dan menemukan arti dari kata \'Pergi\' yang sesungguhnya. Bujang yang sering dijuluki sebagai “Sang Babi Hutan” memiliki nama asli Agam.', 'pergi.jpeg'),
(52, 'Sunshine Becomes you', 'Ilana Tan', 'Alex Hirano, pianis terkenal keturunan Jepang, lebih sering dalam suasana hati buruk. Ia sedang uring-uringan memikirkan konser yang akan diadakan seminggu lagi. Tak ada yang mampu mengubah suasana hatinya ketika terserang bad mood, bahkan adiknya sendiri, Ray Hirano, anggota grup B-Boy. Satu hari, Ray mengajak Alex bertemu gadis yang dia cintai, yaitu Mia Clark, penari balet kontemporer berbakat, di tempatnya mengajar dansa.', 'sunshine becomes you.jpg'),
(53, 'Ikhlas Paling Seriua', 'Fajar Sulaiman', 'Ikhlas Paling Serius merupakan buku karya Fajar Sulaiman. Buku ini menyuguhkan diksi-diksi yang membuat kita sadar bahwa ikhlas menjadi kunci untuk menerima perjalanan cinta yang harus berakhir. Bagi Anda yang sedang berjuang mengobati luka, Ikhlas Paling Serius dapat menemani perjalanan untuk mencapai kesembuhan.\r\n', 'ikhlas paling serius.jpg'),
(54, 'Dilan : Dia Adalah Dilanku', 'Pidi Baiq', 'Novel “Dilan: Dia adalah Dilanku Tahun 1990” menceritakan kilas balik Milea pada tahun 1990. Pada tahun tersebut, Milea hanyalah remaja SMA pindahan dari Jakarta ke Bandung. Milea memiliki kehidupan layaknya anak SMA. Semuanya berubah ketika seorang remaja pria bernama Dilan mengajaknya berkenalan di suatu siang pada saat jam pulang sekolah. Kisah pun bergulir. Milea mulai menemukan keseruan berkenalan dengan Dilan yang penuh kejutan dan memiliki segala cara untuk membahagiakan dirinya.', 'dilan dia adalah dilanku.jpg'),
(55, 'Azzamine', 'Shopie Aulia', '“Kalau saya sudah sayang sama kamu, angka-angka yang besar nggak akan bisa menggambarkan rasa sayang saya ke kamu, Jasmine.”\r\n“Terus digambarin pake apa?”\r\n“Sepertiga.”\r\n“Cuma sepertiga?”\r\n“Iya, saya akan selalu langitkan namamu di sepertiga malam saya, Jasmine.”\r\nRaden Azzam Al-Baihaqi datang secara tiba-tiba di hidup Haura Jasmine lewat sebuah perjodohan. Jasmine yang tidak siap dengan perjodohan ini pun meminta Azzam untuk mundur. Bukan karena tidak suka, melainkan Jasmine si pemalas ini mera', 'azzamine.jpg'),
(56, 'Esccedentesiast', 'Ita Krn', '\"Kalau gue nggak bisa bahagia, berarti gue harus membahagiakan orang lain.\"\r\n- Canva Narendra\r\nKalau banyak remaja ingin menjadi kaya dan hura-hura, tapi tidak dengan Canva Narendra. Cita-citanya hanya satu, \"Mau peluk Mama sama Papa. Anva sayang dan rindu banget sama mereka.\"\r\nSejak itulah, ia melakukan apa pun, termasuk belajar yang luar biasa dan mendapatkan penghargaan agar diperhatikan oleh orang tuanya. Untuk mewujudkan mimpinya tersebut, Canva ditemani oleh sahabat-sahabat dekatnya yang t', ' eccedentesiast.jpg'),
(69, 'Dracula', 'Bram Stoker', 'Novel dimulai dengan Jonathan Harker, seorang pengacara muda dari Inggris, melakukan perjalanan ke Transylvania untuk menyelesaikan transaksi real estat dengan Count Dracula. Saat Harker menghabiskan waktu di kastil Drakula, dia perlahan menyadari bahwa tuan rumahnya bukanlah bangsawan biasa, melainkan vampir berusia berabad-abad yang haus darah manusia.', 'dracula.jpg'),
(70, 'Frankenstein', 'Mary Shelley', 'Frankenstein berkisah tentang Victor, seorang ilmuwan Swiss, yang lahir di Jenewa (Geneva) dan dibesarkan orang tuanya untuk memahami dunia lewat ilmu pengetahuan. Ketika kanak-kanak, ia melihat petir menyambar pohon, lalu bertanya-tanya itukah sumber kehidupan? Apakah manusia dapat menciptakan manusia lain?', 'frankenstein.jpg'),
(71, 'The Shining', 'Stephen King', 'The Shining mengisahkan tentang keluarga yang dihantui di sebuah hotel. Keluarga Jack Torrance menjadi penjaga Hotel Overlook yang terletak di Pegunungan Rocky. Padahal, wilayah tersebut tutup selama musim dingin dan jauh dari pemukiman. Ia berniat untuk mengerjakan proyek menulisnya selama berada di hotel itu.', 'the shining.jpg'),
(72, 'It', 'Stephen King', 'It mengisahkan tentang cerita tujuh remaja dari kota fiksi bernama Derry yang harus berhadapan dengan iblis mengerikan yang suka memakan anak-anak kecil. Iblis ini seringkali mengambil wujud badut bernama Pennywise. Kisah awalnya bermula ketika remaja bernama Bill Denbrough kehilangan adiknya, Georgie.', 'it.jpg'),
(73, 'Psycho', 'Robert Bloch', 'Novel ini bercerita tentang Norman Bates , seorang penjaga di sebuah motel terpencil yang berjuang di bawah bimbingan ibunya yang mendominasi dan terlibat dalam serangkaian pembunuhan.', 'psycho.jpg'),
(74, 'The Exorcist', 'William Peter Blatty', 'Berkisah tentang seorang gadis kecil yang kerasukan roh jahat sehingga melakukan hal-hal mengerikan yang tak terbayangkan, The Exorcist pertama kali terbit pada 1971 dan langsung menjadi buku laris versi The New York Times selama 57 minggu berturut-turut (lebih dari setahun).', 'the exorcist.jpg'),
(75, 'The Haunting of Hill House', 'Shirley Jackson', 'Kilas balik antara masa lalu dan masa kini, keluarga yang retak menghadapi kenangan yang menghantui dari rumah lama mereka dan kejadian seram yang memaksa mereka pindah. Tonton semua yang kamu mau.', 'the haunting of hill house.jpg'),
(76, 'American Psycho', 'Bret Easton Ellis', 'Kisah ini diceritakan sebagai orang pertama oleh Patrick Bateman , seorang bankir investasi Manhattan yang kaya, narsis, dan sia-sia yang konon menjalani kehidupan ganda sebagai pembunuh berantai . Alison Kelly dari The Observer mencatat bahwa meskipun \"beberapa negara [menganggapnya] sangat berpotensi mengganggu sehingga hanya bisa dijual dalam kemasan kecil\", \"kritikus memujinya\" dan \"para akademisi menyukai kualitas transgresif dan postmodernnya \" . ', 'american psycho.jpg'),
(77, 'World War Z', 'Max Brooks', 'ketika infeksi misterius melanda dunia dan mengubah manusia menjadi kawanan zombie, Gerry Lane, mantan penyelidik PBB, berpacu dengan waktu untuk menemukan infeksi. Dunia di ambang kehancuran', 'world war z.jpg'),
(78, 'Pet Sematary', 'Stephen King', 'Dr. Louis Creed pindah dengan keluarganya ke Maine. Mereka menemukan area kuburan misterius di hutan dekat rumah mereka. Setelah sebuah tragedi, Louis meminta bantuan tetangganya, Jud Crandall, yang memicu serangkaian peristiwa mengerikan akibat kekuatan jahat yang terbangun.', 'pet sematary.jpg'),
(79, 'Janur Ireng', 'SimpleMan', 'Janur Ireng atau yang berarti Janur Hitam merupakan kisah asal mula tragedi kutukan santet 1000 hari yang disebut sebagai alat yang merenggut nyawa keluarga Kuncoro.', 'janur ireng.jpg'),
(80, 'Kuntilanak Kesurupan', 'Indah Hanaco', 'Wesley, Kevin, dan Momon adalah sahabat. Wesley ditawari menulis biografi artis Indra Devian oleh Momon. Namun, setelah menerima tawaran itu, kejadian gaib terjadi, termasuk penampakan kuntilanak yang mengganggu Wesley dan orang-orang di sekitarnya, termasuk teman-teman dan adiknya.', 'kuntilanak kesurupan.jpg'),
(81, 'Gerbang Dialog Danur', 'Risa Saraswati', 'Salah satu karya sastra yang dikenal di Indonesia yaitu novel Gerbang Dialog Danur ini merupakan novel yang menarik, bercerita tentang kisah persahabatan antara anak perempuan bernama Risa dengan lima sosok hantu Belanda dikarenakan kemampuan indigo yang dimilikinya.', 'gerbang dialog danur.jpg'),
(82, 'Sewu Dino', 'SImpleMan', 'Berikut sinopsis Sewu Dino. Film ini mengisahkan Sri (Mikha Tambayong), seorang perempuan muda yang hidup dengan keterbatasan. Ia hanya tinggal bersama ayahnya yang sakit parah dan butuh biaya pengobatan. Kehidupan sehari-hari Sri dihabiskan dengan bekerja pada Yu Minah (Maryam Supraba).', 'sewu dino.jpg'),
(83, 'Mereka Ada 2', 'Mwv Mystic', 'Inilah awal perkenalan saya dengan si Cantik—sosok bermata merah yang menghuni batu Merah Delima dan menjadi awal mula kejadian yang tidak pernah saya pikirkan akan terjadi. Sosok yang paling saya hindari keberadaannya, tapi selalu mengikuti ke mana pun saya pergi. Selalu saja ada kejadian tidak masuk akal daan semua itu ada kaitannya dengan si Cantik….', 'mereka ada 2.jpeg'),
(84, 'Wingit', 'Sara WIjayanto', 'Saat menjelajahi kompleks perumahan tua di Jakarta Timur dengan teman-teman, saya melihat makhluk tak kasatmata, termasuk seorang hantu anak kecil bernama Adik dan seorang kuntilanak bernama Tante. Adik mengkomunikasikan keberadaan Tante dan mengungkapkan lokasinya di sebuah pohon. Penelusuran kami menjadi terfokus pada kisah Adik dan Tante Kun di kompleks tersebut.', 'wingit.jpg'),
(85, 'Kisah Tanah Jawa: Pocong Gundul', 'Hao', 'Hao, yang memiliki kemampuan melihat kejadian di masa lalu, menolong Sari yang diculik oleh pocong gundul. Bersama sahabatnya, Rida, mereka menyelamatkan Sari, tetapi membuat pocong gundul murka. Teror berulang mengancam Hao karena pocong tersebut ternyata adalah manusia jahat bernama Walisdi yang melakukan ritual kuno. Hao harus menghentikan rencana jahatnya, meski nyawanya menjadi taruhannya.', 'kisah tanah jawa.jpg'),
(86, 'Pesta Bunuh Diri', 'Daniel Ahmad', 'Sebuah peradaban kuno di sebuah hutan di pulau terpencil, dan manusia bukanlah satu-satunya penghuni. Taman Kembar sejak awal selalu dikelilingi hutan, tapi penduduknya dilarang keras memasuki hutan. Bertahan dari terbatasnya bahan pangan, pengetahuan, dan gangguan binatang bukanlah masalah terbesar mereka.\r\nNamun, ada sesuatu yang mengganggu. \r\nKumpulan Sisik Hitam selalu datang berkunjung dan setiap malam mengundang penduduk desa ke sebuah pesta. Pesta singkat yang selalu berakhir sebelum semp', 'pesta bunuh diri.jpg'),
(87, 'Misteri Patung Garam', 'Ruwi Meita', 'Dia sangat sadis. Dan, dia masih berkeliaran.Seorang pianis ditemukan mati, terduduk di depan pianonya, dengan bibir terjahit.Bola matanya dirusak, meninggalkan lubang hitam yang amat mengerikan.Rambut palsu merah panjang menutupi kepalanya.', 'misteri patung garam.jpg'),
(88, 'Sihir Mesir di Tanah Jawa', 'Kisah Tanah Jawa', 'Pada proyek pembangunan Jalan Raya Pos, para pekerja kerasukan dan berperilaku aneh. Kabar ini sampai ke telinga eks prajurit VOC yang mengetahui bahwa Belanda membawa kitab sihir dari Mesir ke Pulau Jawa. Gubernur Jenderal Daendels memimpin proyek dan menghancurkan Keraton Surosowan di Banten. Kisah ini mencampur fiksi ilmiah dan sejarah untuk merenungkan masa lalu dan masa depan.', 'sihir mesir di tanah jawa.jpg'),
(89, 'Hilang Dalam Dekapan Semeru', 'Fajar Aditya', 'Arif terkejut saat arwah Daris muncul melalui jelangkung. Dia meminta bukti dengan pertanyaan tentang warna baju Bang Daing saat terakhir kali bertemu. Jawabannya mengonfirmasi pendakian terakhir mereka ke Semeru, mengakhiri pencarian tim selama berminggu-minggu.', 'hilang dalam dekapan semeru.jpeg'),
(90, 'Ranjat Kembang', 'SimpleMan', 'Ranjat Kembang akan menceritakan bagaimana Dela Atmojo bertahan hidup setelah sebelumnya selama dua tahun terpungkur akibat terjebak dalam santet kuno yang dimiliki oleh keluarganya sendiri.', 'ranjat kembang.jpg'),
(91, 'Arwah', 'Guntur Alam', 'Jou dan Jounatan menerima pekerjaan part-time di Diskotek Lipstik meskipun tempat itu dianggap angker. Jou awalnya tidak percaya hantu, tetapi adiknya memberi tahu bahwa ada sesuatu yang mengikuti Jou pulang. Mereka menyadari bahwa kunjungan mereka ke diskotek telah membangkitkan arwah haus darah yang terlibat dalam tragedi lama. Arwah tersebut ingin membuktikan bahwa yang mati tidak pernah benar-benar mati.', 'arwah.jpg'),
(92, 'Kamar Nomor 7', 'Hazzahrra', 'Di sebuah asrama yang disediakan oleh yayasan sekolah swasta favorit, beredar rumor yang membuat para penghuni asrama Maitra Boarding School menghindari salah satu kamar.Tepatnya, kamar nomor 7 di asrama tersebut menyimpan sebuah misteri yang kerap kali “memakan” korban setiap penghuninya', 'kamar nomor 7.jpg'),
(93, 'Jurnal Risa: Teror Liburan Sekolah', ' Risa Saraswati', 'Kisah serial Jurnal Risa mengambil latar masa kecil Risa dan saudara sepupunya. Risa (Shofia Shireen) merupakan perempuan 13 tahun yang memiliki kemampuan lebih daripada umumnya. Ia dapat berbicara dengan makhluk halus. Keadaan itu sempat membuat Risa sulit bergaul dengan teman sebaya. Saat musim liburan tiba, ia diantar ke rumah kakeknya di Bandung bersama dengan saudara sepupu yang seusia dengan Risa.', 'jurnal risa.jpg'),
(94, 'Gong Nyai Gandrung', 'Sekar Ayu Asmara', 'Sebagai pengantin baru, Waru dan Kintan, mulai berburu rumah untuk mereka tempati berdua. Pilihan mereka pun jatuh pada sebuah rumah di daerah Magelang. Saat melihat foto-foto rumah itu dari sang broker, seketika mereka jatuh cinta dengan penampakan setiap ruangannya.', 'gong nyai gandrung.jpg'),
(95, 'Lewat Tengah Malam - Ganjil', 'Sweta Kartika', 'menceritakan sebuah kisah yang mereka bilang, harta bukanlah segalanya. Mereka juga bilang, tahta tak bisa membeli bahagia. Semua itu hanyalah dusta dari mulut-mulut nestapa semata. Nyatanya harta dan tahta adalah segalanya. Hingga nyawa pun layak ditumbalkan untuk mendapatkannya. Hingga akhirnya gerbang iblis pun terbuka dan manusia-manusia menjadi gila harta.', 'lewat tengah malam.jpeg'),
(100, 'The Name of the Wind', 'Patrick Rothfuss', 'Kvothe, seorang anak yatim piatu yang cerdas dan berbakat, bermimpi menjadi penyihir terhebat dalam sejarah. Dia menceritakan kisah hidupnya kepada seorang kronikus, memaparkan perjalanan mulai dari masa kecilnya di sebuah pertanian hingga kehidupan sebagai mahasiswa di Universitas Magick. Namun, di balik bakatnya yang luar biasa, mengintai rahasia-rahasia yang gelap dan mematikan.', 'the name of the wind.jpg'),
(101, 'Mistborn: The Final Empire', 'Brandon Sanderson', 'Dalam dunia yang dikuasai oleh Dark Lord kejam, sekelompok pemberontak bernama Mistings berusaha menggulingkan tirani tersebut. Vin, seorang gadis muda dengan kekuatan magis, menjadi bagian dari kelompok ini. Mereka memiliki rencana berani untuk mencuri kekuatan magis terakhir yang bisa melawan Dark Lord dan membawa harapan kepada rakyat mereka.', 'the final empire.jpg'),
(102, 'A Song of Ice and Fire', 'George R.R. Martin', 'Seri ini mengisahkan konflik antar keluarga bangsawan di daratan fiksi Westeros. Intrik politik, perang, dan kepahlawanan bersatu dalam cerita ini, di mana tahta besi menjadi taruhan utama dalam permainan kekuasaan yang berbahaya.', 'a song of ice and fire.jpg'),
(103, 'The Lies of Locke Lamora', 'Scott Lynch', 'Locke Lamora adalah pemimpin kelompok pencuri ulung di kota Camorr. Mereka adalah penipu ulung yang mengambil uang dari orang-orang kaya dan berkuasa. Namun, ketika sebuah ancaman muncul dari masa lalu mereka, Locke dan teman-temannya harus menghadapi bahaya yang lebih besar daripada yang pernah mereka bayangkan.', 'the lies of locke lamora.jpg'),
(104, 'Uprooted', 'Naomi Novik', 'Di desa terpencil, setiap 10 tahun sekali, seorang gadis dipilih untuk melayani penyihir yang mengerikan. Agnieszka, gadis desa sederhana, terpilih, dan dia menemukan bahwa dunia sihir yang penuh bahaya dan kekuatan gelap berada di luar imajinasinya. Dia harus memahami kekuatan magisnya sendiri untuk melawan ancaman yang mengancam desanya.', 'uprooted.jpg'),
(105, 'The Night Circus', 'Erin Morgenstern', 'Cirus of Dreams adalah sirkus yang tampil hanya pada tengah malam, dan di dalamnya terdapat pesulap-pesulap luar biasa. Namun, di balik keindahan mereka, dua pesulap muda, Celia dan Marco, terjebak dalam sebuah persaingan yang berbahaya dan tak terduga, yang bisa menghancurkan sirkus dan kehidupan mereka.', 'the night circus.jpg'),
(107, 'Indonesia Etc', 'Elizabeth Pisani', ' Dalam buku ini, Elizabeth Pisani melakukan perjalanan ke berbagai pelosok Indonesia untuk memberikan gambaran komprehensif tentang kehidupan, budaya, dan tantangan yang dihadapi negara ini.', 'indonesia etc.jpg'),
(108, 'Sitti Nurbaya:Kasih Tak Sampai', 'Marah Rusli', ' \"Sitti Nurbaya\" adalah salah satu roman sastra Indonesia klasik yang memberikan gambaran kuat tentang masyarakat Minangkabau pada awal abad ke-20. Kisah ini menggambarkan konflik sosial dan budaya di masa itu.', 'siti nurbaya.jpg'),
(109, 'The Rainbow Troops [Laskar Pelangi]', 'Andrea Hirata', 'buku ini mencerminkan pengalaman penulis di sebuah desa kecil di Belitung dan perjuangan untuk mendapatkan pendidikan. Buku ini memberikan wawasan tentang sistem pendidikan Indonesia.', 'the rainbow troops.jpg'),
(110, 'Bumi Manusia', 'Pramoedya Ananta Toer', ' membawa pembaca ke dalam masyarakat desa di Indonesia. Ceritanya mengeksplorasi tema-tema seperti cinta, kekerasan, dan mitologi setempat.', 'bumi manusia.jpg'),
(111, 'Man Tiger', 'Eka Kurniawan', ' \"Buru\" dan menggambarkan kehidupan Arok, seorang tokoh dalam sejarah Indonesia pada masa kerajaan Majapahit. Meskipun bersifat fiksi sejarah, karya ini memberikan wawasan tentang latar belakang sejarah Indonesia.', 'tiger man.jpg'),
(112, 'Arok Dedes', 'Pramoedya Ananta Toer', 'Buku ini adalah lanjutan dari tetralogi \"Buru\" dan', 'arok dedes.jpg'),
(114, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Dee Lestari', 'Merupakan bagian dari seri Supernova, novel ini menggabungkan elemen fiksi ilmiah dengan unsur fantasi dan roman. Ceritanya mengisahkan petualangan sekelompok orang yang memiliki kekuatan khusus dalam menghadapi ancaman luar biasa.', 'supernova.jpg'),
(115, 'Rectoverso', 'Dee Lestari', 'Buku ini adalah kumpulan cerita pendek, dan beberapa di antaranya berisi elemen fiksi ilmiah. Dee Lestari menyajikan cerita-cerita yang unik, termasuk yang mengeksplorasi dimensi-dimensi alternatif dan realitas futuristik.', 'rectoverso.png'),
(116, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Kisahnya mengisahkan perjalanan lima remaja dari berbagai latar belakang yang bertujuan untuk mencapai puncak lima gunung.', 'negeri 5 menara.jpg'),
(117, 'Tentang Kamu', 'Tere Liye', 'Buku ini menggabungkan elemen fiksi ilmiah dengan kisah romantis. Kisahnya mengenai teknologi canggih yang memungkinkan orang untuk melihat kembali kenangan mereka, dan bagaimana hal itu memengaruhi hubungan dua karakter utama.', 'tentang kamu.jpg'),
(118, 'Bulan', 'Tere Liye', 'Novel ini mengisahkan petualangan dua remaja yang tiba-tiba mendapati diri mereka berada di bulan. Dengan kecerdasan mereka, mereka harus menyelesaikan berbagai tantangan untuk bertahan hidup.', 'bulan.jpg'),
(119, 'Dune', 'Frank Herbert', 'Di dunia gurun yang keras bernama Arrakis, seorang pemuda bernama Paul Atreides menjadi pahlawan dan pemimpin ketika dia menghadapi kekuatan politik dan ekologis yang kompleks di galaksi. \"Dune\" menggabungkan elemen politik, agama, dan ekologi dalam sebuah epik fiksi ilmiah.', 'dune.jpg'),
(121, 'The Fault in Our Stars', 'John Green', 'Hazel Grace Lancaster, seorang remaja yang mengidap kanker, bertemu Augustus Waters di kelompok pendukung kanker anak-anak. Mereka menjalin hubungan yang penuh emosi dan petualangan, menjelajahi makna hidup dan cinta di tengah-tengah tantangan kesehatan mereka.', 'the fault in our stars.jpg'),
(122, 'To All the Boys I`ve Loved Before', 'Jenny Han', 'Lara Jean Covey menulis surat-surat cinta rahasia kepada semua mantan pacarnya, yang tak pernah dimaksudkan untuk dibagikan. Namun, ketika surat-surat itu tiba-tiba tersebar, hidup Lara Jean berubah drastis, terutama ketika salah satu mantan pacarnya adalah sahabat masa kecilnya.', 'to all the boys ive loved before.jpg'),
(123, 'The Hunger Games', 'Suzanne Collins', 'Di dunia pasca-apokaliptik Panem, Katniss Everdeen terpilih untuk mengikuti \"Hunger Games\" - pertandingan mematikan di mana anak-anak dipilih untuk bertempur sampai mati sebagai hiburan bagi Capitol. Novel ini mengikuti perjuangan Katniss untuk bertahan hidup dan merobohkan sistem yang kejam.', 'the hunger games.jpg'),
(124, 'Divergent', 'Veronica Roth', 'Di dunia futuristik yang terbagi menjadi lima faksi berdasarkan sifat-sifat manusia, Tris Prior menemukan bahwa dia adalah seorang \"Divergent,\" yang tidak cocok dengan satu pun faksi. Saat konflik muncul di antara faksi-faksi, Tris harus melawan sistem dan menentukan identitasnya sendiri.', 'divergent.jpg'),
(125, 'The Perks of Being a Wallflower', 'Stephen Chbosky', 'Charlie, seorang siswa SMA introvert, mencoba mencari jati dirinya melalui surat-surat yang ia tulis kepada seseorang yang tidak diketahui. Ia berteman dengan dua siswa senior, Sam dan Patrick, dan melalui hubungan ini, Charlie menemukan arti persahabatan dan cinta.', 'the perks of being a wallflower.jpg'),
(126, 'Eleanor & Park', 'Rainbow Rowell', 'Dalam kisah cinta yang penuh kehangatan dan keunikan, Eleanor, seorang gadis yang berbeda, dan Park, seorang anak yang terpencil, menemukan hubungan yang kuat dan mendalam melalui kesukaan mereka terhadap musik dan buku komik di bus sekolah.', 'eleanor & park.jpg'),
(128, 'The Midnight Library', 'Matt Haig', 'deskripsi singkat', 'the midnight library.png'),
(129, 'Bridge to Terabithia', 'Katherine Paterson', 'deskripsi singkat', 'bridge to terabithia.jpg'),
(130, 'Percy Jackson and the Olympians', 'Rick Riordan', 'deskripsi singkat', 'percy jackson and the olympians.jpg'),
(131, 'The Kite Runner', 'Khaled Hosseini', 'deskripsi singkat', 'the kite runner.jpg'),
(132, 'Funiculi Funicula (Before the Coffee Gets Cold', 'Toshikazu Kawaguchi', 'deskripsi singkat', 'funiculi funicula.png'),
(133, 'The Miracles of The Namiya General Store', 'Keigo Higashino', 'deskripsi singkat', 'the miracles of the namiya general store.png'),
(134, 'Kim Ji-Yeong Lahir Tahun 1982', 'Cho Nam-Joo', 'deskripsi singkat', 'kim ji-yeong.png'),
(135, 'Of Mice and Men', 'John Steinbeck', 'deskripsi singkat', 'of mice and men.jpg'),
(136, 'The Little Prince', 'Antoine', 'deskripsi singkat', 'the little prince.jpg'),
(143, 'Bumi', 'Tere Liye', 'Novel ini mengisahkan tentang petualangan 3 remaja yang berusia 15 tahun bernama Raib, Ali dan Seli. Namun mereka bukanlah remaja biasa, melainkan remaja yang memiliki kekuatan khusus seperti Raib yang bisa menghilang, Seli yang bisa mengeluarkan petir dan Ali seorang pelajar yang sangat jenius.', 'bumi.jpg'),
(144, 'Bulan', 'Tere Liye', 'Buku Novel Bulan karya Tere Liye ini merupakan buku kedua dari serial novel Bumi. Jika di novel Bumi menceritakan petualangan di klan Bulan, maka novel Bulan ini menceritakan petualangan di klan Matahari. Masih tentang kisah petualangan tiga remaja tangguh Raib, Seli, dan Ali.', 'bulan.jpg'),
(145, 'Matahari', 'Tere Liye', 'Novel Matahari menceritakan Ali yang telah memecahkan misteri tentang keberadaan Klan Bintang yang dikatakan berada di titik terjauh. Ali memperkirakan bahwa sebenarnya Klan Bintang berada di bawah mereka atau lebih tepatnya di perut bumi. Ali akhirnya mengajak raib dan seli pergi ke Klan Bintang ang yang d', 'matahari.jpg'),
(146, 'Bintang', 'Tere Liye', 'Tere Liye - Nama Orang; Bintang merupakan novel keempat dari serial “Bumi” yang ditulis oleh Tere Liye. Novel ini menceritakan petualangan 3 remaja SMA yang memiliki keingintahuan sangat tinggi, mereka adalah Raib, Seli, dan Ali.', 'bintang.jpg'),
(147, 'Ceros dan Batozar', 'Tere Liye', 'Buku Ceroz dan Batozar mengangkat tema tentang persahabatan yang menyentuh dan mengharukan, keberanian, berbagai pengorbanan, dan kebaikan. Karena memang pada hakikatnya, hal-hal itulah yang menjadi sumber kekuatan terbesar di dunia paralel.', 'ceros dan batozar.jpg'),
(148, 'Komet', 'Tere Liye', 'Berdasarkan petualangan tiga sahabat, yakni Raib, Ali, dan Seli dalam novel Komet ini, mereka adalah remaja tangguh dan tidak pernah menyerah untuk menghadapi berbagai ujian kehidupan melalui beberapa tantangan yang telah mereka hadapi selama melakukan petualangan di klan Komet dalam novel ini.', 'komet.jpg'),
(149, 'Komet Minor', 'Tere Liye', 'ia bercerita tentang aliansi bernama Para Pemburu, yang salah satu anggotanya membuat sebuah senjata pusaka berupa tombak, senjata terkuat di dunia paralel, dan bagaimana tombak tersebut dipecah menjadi tiga bagian dan disebar di berbagai tempat, dijaga oleh anggota Para Pemb', 'komet minor.jpg'),
(150, 'Selena', 'Tere Liye', 'Buku Selena berlatar di Klan Bulan, menceritakan sosok Selena guru matematika Raib, Seli, dan Ali di Klan Bumi. Kisahnya dimulai saat Selena berusia 15 tahun, menjadi anak yatim piatu karena Ayahnya meninggal, dan kemudian menyusul ibunya, hidup miskin dan tinggal di Distrik Sabit Enam.', 'selena.jpg'),
(151, 'Nebula', 'Tere Liye', 'Nebula adalah pelengkap dari puzzle kisah masa lalu Selena. Masih melanjutkan kisah antara Selena dengan sahabat-sahabatnya di Akademi Bayangan Tingkat Tinggi yaitu Mata dan Tazk, dan petualangan mereka di klan Nebula.', 'nebula.jpg'),
(152, 'Si Putih', 'Tere Liye', 'Novel karya Tere Liye ini mengisahkan tentang N-ou si anak lelaki tangguh yang terpaksa ditinggalkan oleh orang tuanya saat sebuah wabah penyakit menyerang Klan Polaris.', 'si putih.jpg'),
(153, 'Lumpu', 'Tere Liye', 'Seperti judulnya, buku ini menceritakan tentang petualangan di dunia yang berjalan sejajar dengan dunia nyata atau yang disebut dunia paralel untuk menghadapi lumpu dengan misi menyelamatkan Miss Selena.', 'lumpu.jpg'),
(154, 'Bibi Gilll', 'Tere Liye', 'Sinopsis novel Bibi Gill Tere Liye menceritakan kehidupan tokoh yang bernama Gill. Nama tersebut merupakan sapaan akrab dari keluarga dan penduduk di Distrik Misteri dan Malamnya. Gill adalah anak perempuan satu-satunya yang paling kecil dari tujuh bersaudara.', 'bibi gilll.jpeg'),
(155, 'SagaraS', 'Tere Liye', 'Novel Sagaras menceritakan petualangan dan penjelajahan tiga remaja bersahabat yang ditemani seorang petarung dan pengintai ternama di dunia paralel untuk menemukan orang tua asli satu-satunya sahabat laki-laki mereka, Ali. Kisah ini mengandung pesan moral untuk kehidupan sehari-hari generasi muda bahkan orang dewasa.', 'sagaras.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `book_reviews`
--

CREATE TABLE `book_reviews` (
  `id` int(10) NOT NULL,
  `cover` varchar(35) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `sinopsis` text NOT NULL,
  `bahasa` varchar(20) NOT NULL,
  `format` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_reviews`
--

INSERT INTO `book_reviews` (`id`, `cover`, `isbn`, `title`, `author`, `penerbit`, `sinopsis`, `bahasa`, `format`) VALUES
(1, 'Cover Malioboro at Midnight.jpg', '9786022204909', 'Malioboro at Midnight', 'Skysphire', 'Bukuné', 'Suatu malam, Malioboro Hartigan yang tidak sadarkan diri mendobrak pintu apartemen tetangganya, Serana Nigitha.\r\n\r\nPertemuan yang awalnya untuk mengganti pintu rusak berubah menjadi kedekatan antara dua orang.\r\n\r\nNamun Sera punya pacar, seorang Jan Ichard, vokalis band yang sedang sibuk membangun nama di ibukota.\r\n\r\nTapi, bagaimana jika Malio tahu bahwa Sera sering menangis tengah malam dan itu semua karena pacarnya?\r\n\r\nBagaimana jika pintu itu sengaja didobrak Malio karena ia tahu Sera memendam sendiri sedihnya?', 'Indonesia', '436 halaman, Soft Cover'),
(2, 'Cover Filosofi Teras.jpg', '9786024125189', 'Filosofi Teras', 'Henry Manampiring', 'Penerbit Buku Kompas', 'Apakah kamu sering merasa khawatir akan banyak hal? baperan? susah move-on? mudah tersinggung dan marah-marah di social media maupun dunia nyata?\r\n\r\nLebih dari 2.000 tahun lalu, sebuah mazhab filsafat menemukan akar masalah dan juga solusi dari banyak emosi negatif. Stoisisme, atau Filosofi Teras, adalah filsafat Yunani-Romawi kuno yang bisa membantu kita mengatasi emosi negatif dan menghasilkan mental yang tangguh dalam menghadapi naik-turunnya kehidupan. Jauh dari kesan filsafat sebagai topik berat dan mengawang-awang, Filosofi Teras justru bersifat praktis dan relevan dengan kehidupan Generasi Milenial dan Gen-Z masa kini.', 'Indonesia', '344 halaman, Soft Cover'),
(3, 'Cover Laut Bercerita.jpg', '9786024246945', 'Laut Bercerita', 'Leila S. Chudori', 'Kepustakaan Populer Gramedia (KPG)', 'Jakarta, Maret 1998\r\n\r\nDi sebuah senja, di sebuah rumah susun di Jakarta, mahasiswa bernama Biru Laut disergap empat lelaki tak dikenal. Bersama kawan-kawannya, Daniel Tumbuan, Sunu Dyantoro, Alex Perazon, dia dibawa ke sebuah tempat yang tak dikenal. Berbulan-bulan mereka disekap, diinterogasi, dipukul, ditendang, digantung, dan disetrum agar bersedia menjawab satu pertanyaan penting: siapakah yang berdiri di balik gerakan aktivis dan mahasiswa saat itu.\r\n\r\nJakarta, Juni 1998\r\n\r\nKeluarga Arya Wibisono, seperti biasa, pada hari Minggu sore memasak bersama, menyediakan makanan kesukaan Biru Laut. Sang ayah akan meletakkan satu piring untuk dirinya, satu piring untuk sang ibu, satu piring untuk Biru Laut, dan satu piring untuk si bungsu Asmara Jati. Mereka duduk menanti dan menanti. Tapi Biru Laut tak kunjung muncul.\r\n\r\nJakarta, 2000\r\n\r\nAsmara Jati, adik Biru Laut, beserta Tim Komisi Orang Hilang yang dipimpin Aswin Pradana mencoba mencari jejak mereka yang hilang serta merekam dan mempelajari testimoni mereka yang kembali. Anjani, kekasih Laut, para orangtua dan istri aktivis yang hilang menuntut kejelasan tentang anggota keluarga mereka. Sementara Biru Laut, dari dasar laut yang sunyi bercerita kepada kita, kepada dunia tentang apa yang terjadi pada dirinya dan kawan-kawannya.\r\n\r\nLaut Bercerita, novel terbaru Leila S. Chudori, bertutur tentang kisah keluarga yang kehilangan, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan akan anaknya, dan tentang cinta yang tak akan luntur.', 'Indonesia', '379 halaman, Soft Cover');

-- --------------------------------------------------------

--
-- Table structure for table `comedy`
--

CREATE TABLE `comedy` (
  `id` int(8) NOT NULL,
  `JUDUL` varchar(50) DEFAULT NULL,
  `AUTHOR` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(500) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comedy`
--

INSERT INTO `comedy` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'Jomblo:sebuah komedi cinta', 'Adhitya Mulya', 'Sebuah kisah komedi romantis yang mengikuti kehidupan seorang jomblo yang mencoba menemukan cinta sejati dengan berbagai kejadian lucu dan kisah persahabatan.', 'jomblo sebuah komedi cinta.jpg'),
(2, 'Radikus Makankakus', 'Raditya Dika', 'Raditya Dika, yang terkenal dengan karyanya yang kocak, menghadirkan novel ini yang berisi kumpulan kisah lucu seputar kehidupan sehari-hari.', 'radikus makan kakus.jpg'),
(3, 'Cintapuccino', 'Icha Rahmanti', 'Novel ini menawarkan campuran cinta, komedi, dan kehidupan kota. Kisahnya berkisar di sekitar seorang wanita muda yang mengalami berbagai kebingungan dalam percintaan.', 'cintapuccino.jpg'),
(4, 'Babi Ngesot', 'Raditya Dika', 'Sebuah kisah humor yang menggambarkan kehidupan sehari-hari seorang pemuda dengan segala tingkah konyol dan komikalnya.', 'babi ngesot.jpg'),
(5, 'Madre', 'Dee Lestari', 'Novel ini membawa pembaca ke dalam dunia kocak dan magis yang dihuni oleh karakter-karakter unik. Kisahnya berfokus pada petualangan seorang wanita yang hidup di Jakarta modern namun terlibat dalam situasi supernatural yang lucu.', 'madre.jpg'),
(6, 'Good Omens', 'Terry Pratchett', 'Novel ini mengisahkan tentang seorang malaikat dan setan yang tidak sengaja menjadi teman baik selama berabad-abad. Ketika mereka menyadari bahwa kiamat akan terjadi, mereka bersatu untuk menghentikannya karena mereka menyukai hidup di Bumi terlalu banyak.', 'good omens.png');

-- --------------------------------------------------------

--
-- Table structure for table `fantasi`
--

CREATE TABLE `fantasi` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `DESKRIPSI` varchar(500) NOT NULL,
  `FOTO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fantasi`
--

INSERT INTO `fantasi` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'The Name of the Wind', 'Patrick Rothfuss', 'Kvothe, seorang anak yatim piatu yang cerdas dan berbakat, bermimpi menjadi penyihir terhebat dalam sejarah. Dia menceritakan kisah hidupnya kepada seorang kronikus, memaparkan perjalanan mulai dari masa kecilnya di sebuah pertanian hingga kehidupan sebagai mahasiswa di Universitas Magick. Namun, di balik bakatnya yang luar biasa, mengintai rahasia-rahasia yang gelap dan mematikan.', 'the name of the wind.jpg'),
(2, 'Mistborn: The Final Empire', 'Brandon Sanderson', 'Dalam dunia yang dikuasai oleh Dark Lord kejam, sekelompok pemberontak bernama Mistings berusaha menggulingkan tirani tersebut. Vin, seorang gadis muda dengan kekuatan magis, menjadi bagian dari kelompok ini. Mereka memiliki rencana berani untuk mencuri kekuatan magis terakhir yang bisa melawan Dark Lord dan membawa harapan kepada rakyat mereka.', 'the final empire.jpg'),
(3, 'A Song of Ice and Fire', 'George R.R. Martin', 'Seri ini mengisahkan konflik antar keluarga bangsawan di daratan fiksi Westeros. Intrik politik, perang, dan kepahlawanan bersatu dalam cerita ini, di mana tahta besi menjadi taruhan utama dalam permainan kekuasaan yang berbahaya.', 'a song of ice and fire.jpg'),
(4, 'The Lies of Locke Lamora', 'Scott Lynch', 'Locke Lamora adalah pemimpin kelompok pencuri ulung di kota Camorr. Mereka adalah penipu ulung yang mengambil uang dari orang-orang kaya dan berkuasa. Namun, ketika sebuah ancaman muncul dari masa lalu mereka, Locke dan teman-temannya harus menghadapi bahaya yang lebih besar daripada yang pernah mereka bayangkan.', 'the lies of locke lamora.jpg'),
(5, 'Uprooted', 'Naomi Novik', 'Di desa terpencil, setiap 10 tahun sekali, seorang gadis dipilih untuk melayani penyihir yang mengerikan. Agnieszka, gadis desa sederhana, terpilih, dan dia menemukan bahwa dunia sihir yang penuh bahaya dan kekuatan gelap berada di luar imajinasinya. Dia harus memahami kekuatan magisnya sendiri untuk melawan ancaman yang mengancam desanya.', 'uprooted.jpg'),
(6, 'The Night Circus', 'Erin Morgenstern', 'Cirus of Dreams adalah sirkus yang tampil hanya pada tengah malam, dan di dalamnya terdapat pesulap-pesulap luar biasa. Namun, di balik keindahan mereka, dua pesulap muda, Celia dan Marco, terjebak dalam sebuah persaingan yang berbahaya dan tak terduga, yang bisa menghancurkan sirkus dan kehidupan mereka.', 'the night circus.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `fiksi`
--

CREATE TABLE `fiksi` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `DESKRIPSI` varchar(500) NOT NULL,
  `FOTO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fiksi`
--

INSERT INTO `fiksi` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'The Hobbit', 'J.R.R Tolkien', 'Cerita dalam The Hobbit adalah tentang petualangan sekelompok pencari harta yang hendak mengklaim kembali harta milik leluhurnya yang telah direbut oleh naga jahat Smaug. Kelompok ini terdiri dari 13 kurcaci, satu hobbit, dan satu penyihir.', 'the hobbit.jpg'),
(2, 'Bowl of Happines', 'Sophie Maya', 'Sinopsis: Helen hidup dibayangi kenyataan bahwa Mama, Papa, dan ketiga kakaknya menjadi dokter sukses. Didikan Mama yang kaku menghalangi mimpinya menjadi penyanyi. Bahkan ia harus rela pindah ke Semarang dan bersekolah di SMA Sinar Bangsa selama setahun.', 'bowl of happines.jpg'),
(3, 'TeenLit : Ranking 1 ', 'Sara Tee', 'Novel \"Rangking Satu\" mengisahkan Ella, remaja pintar yang ditekan oleh ayahnya untuk meraih peringkat satu. Ella memiliki sahabat setia, namun persahabatan mereka merenggang ketika Vera, murid pintar dan dekat dengan Ivan, muncul. Vera memberi tantangan pada Ella untuk meraih peringkat satu. Tantangan itu dimanfaatkan seseorang untuk mempermalukan Ella di depan publik dan Ivan. Setelah kejadian itu, Ella belajar dari pengalaman dan memetik hikmah dari kehidupannya.', 'teenlit ranking 1.jpg'),
(4, 'SI ANAK KUAT - tere liye', 'SI ANAK KUAT - tere liye', 'Si Anak Kuat merupakan fiksi sastra jenis novel karya Tere Liye. Membahas mengenai seorang anak bernama Amelia, kisah anak yang memiliki mimpi-mimpi hebat untuk kampung tercintanya. Dalam seri ini Tere liye memberikan kesan dan pengalaman yang berbeda di setiap bukunya.', 'si anak kuat.jpg'),
(5, 'Milea: Suara dari Dilan', 'Pidi Baiq', 'Tidak ada kisah yang lebih Indah dari kisah cinta di SMA.Sama halnya dengan kisah cinta Dilan dan Milea.Dari yang awalnya benci hingga saling mencintai. Dari yang awalnya manis hingga menjadi rumit.Menjelang reuni akbar,Dilan memutuskan untuk menceritakan kembali masa masa itu.', 'milea suara dari dilan.jpg'),
(6, 'Kata ', 'Rintik Sedu', 'Novel Kata menceritakan tentang kehidupan seorang remaja bernama Binta yang cuek dan tertutup, disebabkan keluarga kecilnya hancur. Sejak usia lima tahun, mama Binta mengidap penyakit skizofrenia yang menyebabkan ayahnya pergi meninggalkan mereka.', 'kata.jpg'),
(7, 'Manusia Urban', 'A.M. Lilik Agung', 'Kumpulan cerpen mengajak kita melepaskan imajinasi, menyusuri kehidupan di bawah gemerlap lampu, semerbak parfum mewah, di balik penampilan berkelas. Benarkah gaya hidup kosmopolitan secemerlang yang ditampilkannya? Penuh intrik, permainan, rahasia kelam.\r\nKumpulan cerpen menggambarkan sisi terang dan sisi gelap kehidupan. Dari gelimang kemewahan menuju sudut terkelam manusia-manusia kalah yang terpinggirkan.\r\nmanakah Anda?', 'manusia urban.jpg'),
(8, 'Dilan bagian 2 :Dia Adalah Dilanku 1991 ', 'Pidi Baiq', 'Kisah cinta Milea dan Dilan berlanjut setelah mereka resmi berpacaran. Meskipun bahagia, Dilan dihadapkan pada masalah dengan orang-orang yang mencelakainya. Kang Adi mencoba merebut Milea tetapi gagal. Yugo, saudara jauh Milea, menyatakan perasaannya padanya. Milea khawatir dengan rencana balas dendam Dilan. Meskipun ada penambahan tokoh, kisah ini tetap menarik dengan latar Bandung dan Jakarta pada tahun 1990 hingga Milea lulus SMA.', 'dilan kedua dia adalah dilanku.jpg'),
(9, ' 1 kos 3 cinta 7 keberuntungan - Astrid Tito', ' 1 kos 3 cinta 7 keberuntungan - Astrid Tito', 'Ada apa dengan kamar nomor 7 di Kos 7? Mengapa penghuni kamar itu selalu berulah dan bermasalah? Linda sang perempuan kusut, pengidap skizofrenia. Renata yang diduga pelakor akibat berwajah cantik berbodi biola. Serta Bram si laki-laki kemayu yang digebuki penagih akibat utang kartu kredit yang menggulung hingga segunung. Lantas bagaimana keempat sahabat, Aol-Rendy-Vika-Eda, mampu membantu permasalahan para penghuni kamar kos nomor 7? Bagaimana pula kisah cinta Aol dan Rendy, Vika dan Rakai, ser', '1kos 3cinta 7keberuntungan.jpg'),
(10, 'Hilmy Milan', 'Nadia Ristivani', 'Novel Hilmy Milan mengisahkan kehidupan romansa antara dua orang yang bernama Hilmy dan Milan, yang diceritakan sedang menempuh Pendidikan perguruan tinggi. Meskipun novel ini bergenre romantis, tetapi cerita pada novel ini tidak klise dan cocok banget buat kalian yang ingin merasakan sensasi kisah romansa.', 'hilmy milan.jpg'),
(11, 'Jakarta Sebelum Pagi', 'Ziggy Zezsyazeoviennazabrizkie', 'Buku ini bercerita tentang kehidupan seorang anak berusia enam tahun bernama Ava. Ia memiliki ayah yang tidak menyukainya dan baru saja ditinggal oleh kakeknya yang bernama Kia. Kakek Kia memberikan dia kamus saat dirinya berusia tiga tahun yang membuat dirinya pintar berbahasa Indonesia.', 'jakarta sebelum pagi.jpg'),
(12, 'Kekasih Musim Gugur', 'Laksmi Pamuntjak', 'Kekasih musim gugur adalah kisah dua perempuan, Srikandi (Siri) dan Dara. Yang satu seorang seniman kosmopolitan, dan yang satunya seorang aktivis politik. Setelah bertahun-tahun mengembara di berbagai kota di dunia, Siri memutuskan hidup di Berlin untuk menhindar dari masa lalu keluarganya.', 'kekasih musim gugur.jpg'),
(13, 'Fairish', 'Esti Kinasih', 'Davi adalah siswa baru di sekolah. Dia adalah cowo yang tampan sehingga banyak cewe yang mengidolakannya, kecuali Fairish, Fairish adalah satu-satunya cewe yang acuh dengan keberadaan Davi. Namun Davi justru memilih Fairish untuk menjadi orang yang paling dekat dengannya. Dengan Fairish jadi pacarnya tujuannya agar tidak di kejar-kejar cewek-cewek di sekolahnya Fairish dipanggil Irish ini memang tidak cantik dan tidak ngetop di sekolahnya. Davi merasa aman karena tidak mungkin jatuh cinta pada F', 'fairish.jpg'),
(14, 'Pergi', 'Tere Liye', 'Pergi mengisahkan tentang petualangan Bujang dalam menemukan makna dari tujuan hidupnya, dan menemukan arti dari kata \'Pergi\' yang sesungguhnya. Bujang yang sering dijuluki sebagai “Sang Babi Hutan” memiliki nama asli Agam.', 'pergi.jpeg'),
(15, 'Sunshine Becomes you', 'Ilana Tan', 'Alex Hirano, pianis terkenal keturunan Jepang, lebih sering dalam suasana hati buruk. Ia sedang uring-uringan memikirkan konser yang akan diadakan seminggu lagi. Tak ada yang mampu mengubah suasana hatinya ketika terserang bad mood, bahkan adiknya sendiri, Ray Hirano, anggota grup B-Boy. Satu hari, Ray mengajak Alex bertemu gadis yang dia cintai, yaitu Mia Clark, penari balet kontemporer berbakat, di tempatnya mengajar dansa.', 'sunshine becomes you.jpg'),
(16, 'Ikhlas Paling Serius', 'Fajar Sulaiman', 'Ikhlas Paling Serius merupakan buku karya Fajar Sulaiman. Buku ini menyuguhkan diksi-diksi yang membuat kita sadar bahwa ikhlas menjadi kunci untuk menerima perjalanan cinta yang harus berakhir. Bagi Anda yang sedang berjuang mengobati luka, Ikhlas Paling Serius dapat menemani perjalanan untuk mencapai kesembuhan.\r\n', 'ikhlas paling serius.jpg'),
(17, 'Dilan : Dia Adalah Dilanku', 'Pidi Baiq', 'Novel “Dilan: Dia adalah Dilanku Tahun 1990” menceritakan kilas balik Milea pada tahun 1990. Pada tahun tersebut, Milea hanyalah remaja SMA pindahan dari Jakarta ke Bandung. Milea memiliki kehidupan layaknya anak SMA. Semuanya berubah ketika seorang remaja pria bernama Dilan mengajaknya berkenalan di suatu siang pada saat jam pulang sekolah. Kisah pun bergulir. Milea mulai menemukan keseruan berkenalan dengan Dilan yang penuh kejutan dan memiliki segala cara untuk membahagiakan dirinya.', 'dilan dia adalah dilanku.jpg'),
(18, 'Azzamine', 'Shopie Aulia', '“Kalau saya sudah sayang sama kamu, angka-angka yang besar nggak akan bisa menggambarkan rasa sayang saya ke kamu, Jasmine.”\r\n“Terus digambarin pake apa?”\r\n“Sepertiga.”\r\n“Cuma sepertiga?”\r\n“Iya, saya akan selalu langitkan namamu di sepertiga malam saya, Jasmine.”\r\nRaden Azzam Al-Baihaqi datang secara tiba-tiba di hidup Haura Jasmine lewat sebuah perjodohan. Jasmine yang tidak siap dengan perjodohan ini pun meminta Azzam untuk mundur. Bukan karena tidak suka, melainkan Jasmine si pemalas ini mera', 'azzamine.jpg'),
(19, 'Esccedentesiast', 'Ita Krn', '\"Kalau gue nggak bisa bahagia, berarti gue harus membahagiakan orang lain.\"\r\n- Canva Narendra\r\nKalau banyak remaja ingin menjadi kaya dan hura-hura, tapi tidak dengan Canva Narendra. Cita-citanya hanya satu, \"Mau peluk Mama sama Papa. Anva sayang dan rindu banget sama mereka.\"\r\nSejak itulah, ia melakukan apa pun, termasuk belajar yang luar biasa dan mendapatkan penghargaan agar diperhatikan oleh orang tuanya. Untuk mewujudkan mimpinya tersebut, Canva ditemani oleh sahabat-sahabat dekatnya yang t', ' eccedentesiast.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `horor`
--

CREATE TABLE `horor` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `DESKRIPSI` varchar(500) NOT NULL,
  `FOTO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `horor`
--

INSERT INTO `horor` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'Dracula', 'Bram Stoker', 'Novel dimulai dengan Jonathan Harker, seorang pengacara muda dari Inggris, melakukan perjalanan ke Transylvania untuk menyelesaikan transaksi real estat dengan Count Dracula. Saat Harker menghabiskan waktu di kastil Drakula, dia perlahan menyadari bahwa tuan rumahnya bukanlah bangsawan biasa, melainkan vampir berusia berabad-abad yang haus darah manusia.', 'dracula.jpg'),
(2, 'Frankenstein', 'Mary Shelley', 'Frankenstein berkisah tentang Victor, seorang ilmuwan Swiss, yang lahir di Jenewa (Geneva) dan dibesarkan orang tuanya untuk memahami dunia lewat ilmu pengetahuan. Ketika kanak-kanak, ia melihat petir menyambar pohon, lalu bertanya-tanya itukah sumber kehidupan? Apakah manusia dapat menciptakan manusia lain?', 'frankenstein.jpg'),
(3, 'The Shining', 'Stephen King', 'The Shining mengisahkan tentang keluarga yang dihantui di sebuah hotel. Keluarga Jack Torrance menjadi penjaga Hotel Overlook yang terletak di Pegunungan Rocky. Padahal, wilayah tersebut tutup selama musim dingin dan jauh dari pemukiman. Ia berniat untuk mengerjakan proyek menulisnya selama berada di hotel itu.', 'the shining.jpg'),
(4, 'It', 'Stephen King', 'It mengisahkan tentang cerita tujuh remaja dari kota fiksi bernama Derry yang harus berhadapan dengan iblis mengerikan yang suka memakan anak-anak kecil. Iblis ini seringkali mengambil wujud badut bernama Pennywise. Kisah awalnya bermula ketika remaja bernama Bill Denbrough kehilangan adiknya, Georgie.', 'it.jpg'),
(5, 'Psycho', 'Robert Bloch', 'Novel ini bercerita tentang Norman Bates , seorang penjaga di sebuah motel terpencil yang berjuang di bawah bimbingan ibunya yang mendominasi dan terlibat dalam serangkaian pembunuhan.', 'psycho.jpg'),
(6, 'The Exorcist', 'William Peter Blatty', 'Berkisah tentang seorang gadis kecil yang kerasukan roh jahat sehingga melakukan hal-hal mengerikan yang tak terbayangkan, The Exorcist pertama kali terbit pada 1971 dan langsung menjadi buku laris versi The New York Times selama 57 minggu berturut-turut (lebih dari setahun).', 'the exorcist.jpg'),
(7, 'The Haunting of Hill House', 'Shirley Jackson', 'Kilas balik antara masa lalu dan masa kini, keluarga yang retak menghadapi kenangan yang menghantui dari rumah lama mereka dan kejadian seram yang memaksa mereka pindah. Tonton semua yang kamu mau.', 'the haunting of hill house.jpg'),
(8, 'American Psycho', 'Bret Easton Ellis', 'Kisah ini diceritakan sebagai orang pertama oleh Patrick Bateman , seorang bankir investasi Manhattan yang kaya, narsis, dan sia-sia yang konon menjalani kehidupan ganda sebagai pembunuh berantai . Alison Kelly dari The Observer mencatat bahwa meskipun \"beberapa negara [menganggapnya] sangat berpotensi mengganggu sehingga hanya bisa dijual dalam kemasan kecil\", \"kritikus memujinya\" dan \"para akademisi menyukai kualitas transgresif dan postmodernnya \" . ', 'american psycho.jpg'),
(9, 'World War Z', 'Max Brooks', 'ketika infeksi misterius melanda dunia dan mengubah manusia menjadi kawanan zombie, Gerry Lane, mantan penyelidik PBB, berpacu dengan waktu untuk menemukan infeksi. Dunia di ambang kehancuran', 'world war z.jpg'),
(10, 'Pet Sematary', 'Stephen King', 'Dr. Louis Creed pindah dengan keluarganya ke Maine. Mereka menemukan area kuburan misterius di hutan dekat rumah mereka. Setelah sebuah tragedi, Louis meminta bantuan tetangganya, Jud Crandall, yang memicu serangkaian peristiwa mengerikan akibat kekuatan jahat yang terbangun.', 'pet sematary.jpg'),
(11, 'Janur Ireng', 'SimpleMan', 'Janur Ireng atau yang berarti Janur Hitam merupakan kisah asal mula tragedi kutukan santet 1000 hari yang disebut sebagai alat yang merenggut nyawa keluarga Kuncoro.', 'janur ireng.jpg'),
(12, 'Kuntilanak Kesurupan', 'Indah Hanaco', 'Wesley, Kevin, dan Momon adalah sahabat. Wesley ditawari menulis biografi artis Indra Devian oleh Momon. Namun, setelah menerima tawaran itu, kejadian gaib terjadi, termasuk penampakan kuntilanak yang mengganggu Wesley dan orang-orang di sekitarnya, termasuk teman-teman dan adiknya.', 'kuntilanak kesurupan.jpg'),
(13, 'Gerbang Dialog Danur', 'Risa Saraswati', 'Salah satu karya sastra yang dikenal di Indonesia yaitu novel Gerbang Dialog Danur ini merupakan novel yang menarik, bercerita tentang kisah persahabatan antara anak perempuan bernama Risa dengan lima sosok hantu Belanda dikarenakan kemampuan indigo yang dimilikinya.', 'gerbang dialog danur.jpg'),
(14, 'Sewu Dino', 'SImpleMan', 'Berikut sinopsis Sewu Dino. Film ini mengisahkan Sri (Mikha Tambayong), seorang perempuan muda yang hidup dengan keterbatasan. Ia hanya tinggal bersama ayahnya yang sakit parah dan butuh biaya pengobatan. Kehidupan sehari-hari Sri dihabiskan dengan bekerja pada Yu Minah (Maryam Supraba).', 'sewu dino.jpg'),
(15, 'Mereka Ada 2', 'Mwv Mystic', 'Inilah awal perkenalan saya dengan si Cantik—sosok bermata merah yang menghuni batu Merah Delima dan menjadi awal mula kejadian yang tidak pernah saya pikirkan akan terjadi. Sosok yang paling saya hindari keberadaannya, tapi selalu mengikuti ke mana pun saya pergi. Selalu saja ada kejadian tidak masuk akal daan semua itu ada kaitannya dengan si Cantik….', 'mereka ada 2.jpeg'),
(16, 'Wingit', 'Sara WIjayanto', 'Saat menjelajahi kompleks perumahan tua di Jakarta Timur dengan teman-teman, saya melihat makhluk tak kasatmata, termasuk seorang hantu anak kecil bernama Adik dan seorang kuntilanak bernama Tante. Adik mengkomunikasikan keberadaan Tante dan mengungkapkan lokasinya di sebuah pohon. Penelusuran kami menjadi terfokus pada kisah Adik dan Tante Kun di kompleks tersebut.', 'wingit.jpg'),
(17, 'Kisah Tanah Jawa: Pocong Gundul', 'Hao', 'Hao, yang memiliki kemampuan melihat kejadian di masa lalu, menolong Sari yang diculik oleh pocong gundul. Bersama sahabatnya, Rida, mereka menyelamatkan Sari, tetapi membuat pocong gundul murka. Teror berulang mengancam Hao karena pocong tersebut ternyata adalah manusia jahat bernama Walisdi yang melakukan ritual kuno. Hao harus menghentikan rencana jahatnya, meski nyawanya menjadi taruhannya.', 'kisah tanah jawa.jpg'),
(18, 'Pesta Bunuh Diri', 'Daniel Ahmad', 'Sebuah peradaban kuno di sebuah hutan di pulau terpencil, dan manusia bukanlah satu-satunya penghuni. Taman Kembar sejak awal selalu dikelilingi hutan, tapi penduduknya dilarang keras memasuki hutan. Bertahan dari terbatasnya bahan pangan, pengetahuan, dan gangguan binatang bukanlah masalah terbesar mereka.\r\nNamun, ada sesuatu yang mengganggu. \r\nKumpulan Sisik Hitam selalu datang berkunjung dan setiap malam mengundang penduduk desa ke sebuah pesta. Pesta singkat yang selalu berakhir sebelum semp', 'pesta bunuh diri.jpg'),
(19, 'Misteri Patung Garam', 'Ruwi Meita', 'Dia sangat sadis. Dan, dia masih berkeliaran.Seorang pianis ditemukan mati, terduduk di depan pianonya, dengan bibir terjahit.Bola matanya dirusak, meninggalkan lubang hitam yang amat mengerikan.Rambut palsu merah panjang menutupi kepalanya.', 'misteri patung garam.jpg'),
(20, 'Sihir Mesir di Tanah Jawa', 'Kisah Tanah Jawa', 'Pada proyek pembangunan Jalan Raya Pos, para pekerja kerasukan dan berperilaku aneh. Kabar ini sampai ke telinga eks prajurit VOC yang mengetahui bahwa Belanda membawa kitab sihir dari Mesir ke Pulau Jawa. Gubernur Jenderal Daendels memimpin proyek dan menghancurkan Keraton Surosowan di Banten. Kisah ini mencampur fiksi ilmiah dan sejarah untuk merenungkan masa lalu dan masa depan.', 'sihir mesir di tanah jawa.jpg'),
(21, 'Hilang Dalam Dekapan Semeru', 'Fajar Aditya', 'Arif terkejut saat arwah Daris muncul melalui jelangkung. Dia meminta bukti dengan pertanyaan tentang warna baju Bang Daing saat terakhir kali bertemu. Jawabannya mengonfirmasi pendakian terakhir mereka ke Semeru, mengakhiri pencarian tim selama berminggu-minggu.', 'hilang dalam dekapan semeru.jpeg'),
(22, 'Ranjat Kembang', 'SimpleMan', 'Ranjat Kembang akan menceritakan bagaimana Dela Atmojo bertahan hidup setelah sebelumnya selama dua tahun terpungkur akibat terjebak dalam santet kuno yang dimiliki oleh keluarganya sendiri.', 'ranjat kembang.jpg'),
(23, 'Arwah', 'Guntur Alam', 'Jou dan Jounatan menerima pekerjaan part-time di Diskotek Lipstik meskipun tempat itu dianggap angker. Jou awalnya tidak percaya hantu, tetapi adiknya memberi tahu bahwa ada sesuatu yang mengikuti Jou pulang. Mereka menyadari bahwa kunjungan mereka ke diskotek telah membangkitkan arwah haus darah yang terlibat dalam tragedi lama. Arwah tersebut ingin membuktikan bahwa yang mati tidak pernah benar-benar mati.', 'arwah.jpg'),
(24, 'Kamar Nomor 7', 'Hazzahrra', 'Di sebuah asrama yang disediakan oleh yayasan sekolah swasta favorit, beredar rumor yang membuat para penghuni asrama Maitra Boarding School menghindari salah satu kamar.Tepatnya, kamar nomor 7 di asrama tersebut menyimpan sebuah misteri yang kerap kali “memakan” korban setiap penghuninya', 'kamar nomor 7.jpg'),
(25, 'Jurnal Risa: Teror Liburan Sekolah', ' Risa Saraswati', 'Kisah serial Jurnal Risa mengambil latar masa kecil Risa dan saudara sepupunya. Risa (Shofia Shireen) merupakan perempuan 13 tahun yang memiliki kemampuan lebih daripada umumnya. Ia dapat berbicara dengan makhluk halus. Keadaan itu sempat membuat Risa sulit bergaul dengan teman sebaya. Saat musim liburan tiba, ia diantar ke rumah kakeknya di Bandung bersama dengan saudara sepupu yang seusia dengan Risa.', 'jurnal risa.jpg'),
(26, 'Gong Nyai Gandrung', 'Sekar Ayu Asmara', 'Sebagai pengantin baru, Waru dan Kintan, mulai berburu rumah untuk mereka tempati berdua. Pilihan mereka pun jatuh pada sebuah rumah di daerah Magelang. Saat melihat foto-foto rumah itu dari sang broker, seketika mereka jatuh cinta dengan penampakan setiap ruangannya.', 'gong nyai gandrung.jpg'),
(27, 'Lewat Tengah Malam - Ganjil', 'Sweta Kartika', 'menceritakan sebuah kisah yang mereka bilang, harta bukanlah segalanya. Mereka juga bilang, tahta tak bisa membeli bahagia. Semua itu hanyalah dusta dari mulut-mulut nestapa semata. Nyatanya harta dan tahta adalah segalanya. Hingga nyawa pun layak ditumbalkan untuk mendapatkannya. Hingga akhirnya gerbang iblis pun terbuka dan manusia-manusia menjadi gila harta.', 'lewat tengah malam.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(30) NOT NULL,
  `AUTHOR` varchar(30) NOT NULL,
  `DESKRIPSI` varchar(500) NOT NULL,
  `FOTO` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'Bumi', 'Tere Liye', 'Novel ini mengisahkan tentang petualangan 3 remaja yang berusia 15 tahun bernama Raib, Ali dan Seli. Namun mereka bukanlah remaja biasa, melainkan remaja yang memiliki kekuatan khusus seperti Raib yang bisa menghilang, Seli yang bisa mengeluarkan petir dan Ali seorang pelajar yang sangat jenius.', 'bumi.jpg'),
(2, 'Bulan', 'Tere Liye', 'Buku Novel Bulan karya Tere Liye ini merupakan buku kedua dari serial novel Bumi. Jika di novel Bumi menceritakan petualangan di klan Bulan, maka novel Bulan ini menceritakan petualangan di klan Matahari. Masih tentang kisah petualangan tiga remaja tangguh Raib, Seli, dan Ali.', 'bulan.jpg'),
(3, 'Matahari', 'Tere Liye', 'Novel Matahari menceritakan Ali yang telah memecahkan misteri tentang keberadaan Klan Bintang yang dikatakan berada di titik terjauh. Ali memperkirakan bahwa sebenarnya Klan Bintang berada di bawah mereka atau lebih tepatnya di perut bumi. Ali akhirnya mengajak raib dan seli pergi ke Klan Bintang ang yang d', 'matahari.jpg'),
(4, 'Bintang', 'Tere Liye', 'Tere Liye - Nama Orang; Bintang merupakan novel keempat dari serial “Bumi” yang ditulis oleh Tere Liye. Novel ini menceritakan petualangan 3 remaja SMA yang memiliki keingintahuan sangat tinggi, mereka adalah Raib, Seli, dan Ali.', 'bintang.jpg'),
(5, 'Ceros dan Batozar', 'Tere Liye', 'Buku Ceroz dan Batozar mengangkat tema tentang persahabatan yang menyentuh dan mengharukan, keberanian, berbagai pengorbanan, dan kebaikan. Karena memang pada hakikatnya, hal-hal itulah yang menjadi sumber kekuatan terbesar di dunia paralel.', 'ceros dan batozar.jpg'),
(6, 'Komet', 'Tere Liye', 'Berdasarkan petualangan tiga sahabat, yakni Raib, Ali, dan Seli dalam novel Komet ini, mereka adalah remaja tangguh dan tidak pernah menyerah untuk menghadapi berbagai ujian kehidupan melalui beberapa tantangan yang telah mereka hadapi selama melakukan petualangan di klan Komet dalam novel ini.', 'komet.jpg'),
(7, 'Komet Minor', 'Tere Liye', 'ia bercerita tentang aliansi bernama Para Pemburu, yang salah satu anggotanya membuat sebuah senjata pusaka berupa tombak, senjata terkuat di dunia paralel, dan bagaimana tombak tersebut dipecah menjadi tiga bagian dan disebar di berbagai tempat, dijaga oleh anggota Para Pemb', 'komet minor.jpg'),
(8, 'Selena', 'Tere Liye', 'Buku Selena berlatar di Klan Bulan, menceritakan sosok Selena guru matematika Raib, Seli, dan Ali di Klan Bumi. Kisahnya dimulai saat Selena berusia 15 tahun, menjadi anak yatim piatu karena Ayahnya meninggal, dan kemudian menyusul ibunya, hidup miskin dan tinggal di Distrik Sabit Enam.', 'selena.jpg'),
(9, 'Nebula', 'Tere Liye', 'Nebula adalah pelengkap dari puzzle kisah masa lalu Selena. Masih melanjutkan kisah antara Selena dengan sahabat-sahabatnya di Akademi Bayangan Tingkat Tinggi yaitu Mata dan Tazk, dan petualangan mereka di klan Nebula.', 'nebula.jpg'),
(10, 'Si Putih', 'Tere Liye', 'Novel karya Tere Liye ini mengisahkan tentang N-ou si anak lelaki tangguh yang terpaksa ditinggalkan oleh orang tuanya saat sebuah wabah penyakit menyerang Klan Polaris.', 'si putih.jpg'),
(11, 'Lumpu', 'Tere Liye', 'Seperti judulnya, buku ini menceritakan tentang petualangan di dunia yang berjalan sejajar dengan dunia nyata atau yang disebut dunia paralel untuk menghadapi lumpu dengan misi menyelamatkan Miss Selena.', 'lumpu.jpg'),
(12, 'Bibi Gilll', 'Tere Liye', 'Sinopsis novel Bibi Gill Tere Liye menceritakan kehidupan tokoh yang bernama Gill. Nama tersebut merupakan sapaan akrab dari keluarga dan penduduk di Distrik Misteri dan Malamnya. Gill adalah anak perempuan satu-satunya yang paling kecil dari tujuh bersaudara.', 'bibi gilll.jpeg'),
(13, 'SagaraS', 'Tere Liye', 'Novel Sagaras menceritakan petualangan dan penjelajahan tiga remaja bersahabat yang ditemani seorang petarung dan pengintai ternama di dunia paralel untuk menemukan orang tua asli satu-satunya sahabat laki-laki mereka, Ali. Kisah ini mengandung pesan moral untuk kehidupan sehari-hari generasi muda bahkan orang dewasa.', 'sagaras.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nonfiction`
--

CREATE TABLE `nonfiction` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) DEFAULT NULL,
  `AUTHOR` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(500) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nonfiction`
--

INSERT INTO `nonfiction` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'Indonesia Etc', 'Elizabeth Pisani', ' Dalam buku ini, Elizabeth Pisani melakukan perjalanan ke berbagai pelosok Indonesia untuk memberikan gambaran komprehensif tentang kehidupan, budaya, dan tantangan yang dihadapi negara ini.', 'indonesia etc.jpg'),
(2, 'Sitti Nurbaya:Kasih Tak Sampai', 'Marah Rusli', ' \"Sitti Nurbaya\" adalah salah satu roman sastra Indonesia klasik yang memberikan gambaran kuat tentang masyarakat Minangkabau pada awal abad ke-20. Kisah ini menggambarkan konflik sosial dan budaya di masa itu.', 'siti nurbaya.jpg'),
(3, 'The Rainbow Troops [Laskar Pelangi]', 'Andrea Hirata', 'buku ini mencerminkan pengalaman penulis di sebuah desa kecil di Belitung dan perjuangan untuk mendapatkan pendidikan. Buku ini memberikan wawasan tentang sistem pendidikan Indonesia.', 'the rainbow troops.jpg'),
(4, 'Bumi Manusia', 'Pramoedya Ananta Toer', ' membawa pembaca ke dalam masyarakat desa di Indonesia. Ceritanya mengeksplorasi tema-tema seperti cinta, kekerasan, dan mitologi setempat.', 'bumi manusia.jpg'),
(5, 'Man Tiger', 'Eka Kurniawan', ' \"Buru\" dan menggambarkan kehidupan Arok, seorang tokoh dalam sejarah Indonesia pada masa kerajaan Majapahit. Meskipun bersifat fiksi sejarah, karya ini memberikan wawasan tentang latar belakang sejarah Indonesia.', 'tiger man.jpg'),
(6, 'Arok Dedes', 'Pramoedya Ananta Toer', 'Buku ini adalah lanjutan dari tetralogi \"Buru\" dan', 'arok dedes.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `revbook_login`
--

CREATE TABLE `revbook_login` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `revbook_login`
--

INSERT INTO `revbook_login` (`id`, `username`, `password`) VALUES
(1, 'azizah', '$2y$10$fojtBwxTPkFB3VAgj6'),
(2, 'syafira', '$2y$10$QjBkCxeR9BaDH3UkbVmU8ueM9tbluATYHXXOnFtdFYt5yNRhPnyB6'),
(3, 'winda', '$2y$10$/h9Jn0Cjd.6XLuEeN5HAB.oQXlE5IPqGWZpgdp6o1RrU5EdU1rzyy'),
(4, 'zfshyra', '$2y$10$ww/VIQlrnb2D5hcgiiS15uUv0Mp3.caLKc5JBIPcK9F0lvDHTCs/G'),
(5, 'windaaa', '$2y$10$ADjpyZzW.e.tFJkxY6NjLOEY0T8W3eY9AQGKprj.j2w3MDldSIUzm'),
(6, 'nay', '$2y$10$l6NOJsppioN9Vu.YfhjNXezg42HsHFQl.FrPvQGt7xXFtPPydYOm2'),
(7, 'syafir', '$2y$10$U9Ax/dH1/LsP8BC3M2ECSOUlQmMAJeUPnkvCy5nQusA2R5HdFtds2');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `reviews` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `romance`
--

CREATE TABLE `romance` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) NOT NULL,
  `AUTHOR` varchar(50) NOT NULL,
  `DESKRIPSI` varchar(500) NOT NULL,
  `FOTO` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `romance`
--

INSERT INTO `romance` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'Luka Cita', 'Valerie Patkar', 'Novel ini bercerita tentang dua orang yang merasa dikhianati oleh mimpi mereka sendiri. Mereka adalah Utara dan Javier. Utara adalah seorang atlet catur, mantan atlet yang hidupnya catur mulu. sangkin dia cintanya sama catur, dia gak bisa melakukan apapun karena hidupnya habis untuk catur.', 'luka cita.jpg'),
(2, 'Akhir di Antara Kita (It Ends with Us)', 'Colleen Hoover', 'Novel ini bercerita tentang Lily Bloom, wanita 24 tahun yang tinggal di Boston. Ayahnya baru saja meninggal, walaupun Lily tidak menyukai sang ayah, kematiannya membuat Lily butuh waktu untuk menenangkan pikirannya—di rooftop gedung milik orang lain.', 'akhir antara kita.jpg'),
(3, 'Serangkai', 'Valerie Patkar', 'Buku novel Serangkai bercerita tentang seorang pria bernama Kai Deverra atau akrab disapa Deverra yang mencoba menjalani rasa penyesalannya karena ditinggal kekasihnya dan kemudian bertemu dengan Karina Maladivas. Hal itu masih jadi Nota yang terkunci dalam kesendirian dan kesepiannya sendiri.', 'serangkai.jpg'),
(4, 'Hilmy Milan', 'Nadia Ristivani', 'Novel Hilmy Milan mengisahkan kehidupan romansa antara dua orang yang bernama Hilmy dan Milan, yang diceritakan sedang menempuh Pendidikan perguruan tinggi. Meskipun novel ini bergenre romantis, tetapi cerita pada novel ini tidak klise dan cocok banget buat kalian yang ingin merasakan sensasi kisah romansa.', 'hilmy milan.jpg'),
(5, '#Berhentidikamu', 'Gia Pratama', 'Novel #BerhentiDiKamu menceritakan tentang kisah Gia Pratama dalam pencarian jodoh. Cerita tersebut diangkat dari kisah nyata Gia Pratama, dan sempat diceritakan di twitter oleh sang penulis. Ia menceritakan kisah asmaranya begitu memikat, disimak ribuan pengguna twitter lain hingga jadi trending topic.', 'berhentidikamu.jpg'),
(6, 'Areksa', 'Ita Kurniawati', 'Novel Areksa merupakan novel fiksi yang mengisahkan tentang seorang lelaki tampan, keras, menakutkan, tetapi bijaksana yang bernama Areksa Dirgantara. Di mata banyak orang, Areksa Dirgantara memang dinilai hampir sempurna.', 'areksa.jpg'),
(7, 'Her Name is', 'Cho Nam Joo', 'Buku \"Her Name Is…\" dibagi menjadi 4 bagian yang menggambarkan kesulitan hidup perempuan dan semangat mereka untuk bangkit demi kehidupan yang lebih baik. Kisah-kisah termasuk pelecehan seksual, perjuangan seorang ibu, pencarian jati diri seorang anak, dan perjuangan seorang nenek untuk keluarganya. Semua cerita ini dituangkan dengan indah dalam buku tersebut.', 'her name is.jpg'),
(8, 'Saat Saat Jatuh', 'Lia Seplia', 'Novel \"Saat-Saat Jatuh\" karya Lia Seplia menceritakan kisah cinta antara dua tokoh utama, Aline dan Alex, yang awalnya yakin akan bersama. Namun, kepercayaan mereka mulai memudar karena jarak antara mereka.', 'saat saat jatuh.jpg'),
(9, 'Pulang - Pergi', 'Tere Liye', 'Dalam buku series ini menceritakan kisah Bujang yang terus melakukan perjalanan pulang dan perginya. Namun dalam buku ini, Bujang melakukan perjalanan pulang dan pergi sekaligus. Diawali dengan kepulangannya ke tanah kelahirannya yaitu, Talang untuk mengunjungi makam orang tuanya atau lebih tepatnya makam mamaknya.', 'pulang pergi.jpeg'),
(10, 'The Star and I', 'Ilana Tan', '\r\n\"Buku The Star and I\" mengisahkan perjalanan Olivia Mitchell, seorang aktris opera yang tumbuh di panti asuhan tanpa tahu asal-usulnya. Setelah diadopsi, ia tetap merasa gelisah dan pergi ke New York untuk mencari keluarganya. Di sana, ia bertemu kembali dengan cinta pertamanya, Lawrence Rex Rankin, yang membantunya mencari identitasnya. ', 'the star and i.jpg'),
(11, 'Dikta dan Hukum', 'Dhia\'an Farah', 'Dikta dan Hukum adalah novel karya Dhia\'an Farah yang diterbitkan pada tahun 2021. Novel ini bercerita tentang kisah cinta antara Dikta, seorang mahasiswa hukum yang dingin dan Nadhira, seorang mahasiswi hukum yang ceria. Dikta adalah mahasiswa hukum yang pintar dan populer di kampus.', 'dikta dan hukum.jpg'),
(12, 'Heartbreak Motel', 'Ika Natassa', 'rtbreak Motel, Ava bertemu dengan Raga. Raga ternyata tidak mengenal Ava sebagai seorang aktris. Bukannya tersinggun, Ava malah menyukai kenyamanan yang ia rasakan, karena dianggap sebagai orang biasa. Namun, kenyataan bahwa Ava adalah seorang aktris populer yang disembunyikannya itu malah menimbulkan berbagai masalah yang pada akhirnya harus Ava tanggung sendiri.', 'heartbreak motel.jpg'),
(13, 'Dilan 1990', 'Pidi Baiq', 'Dia Adalah Dilanku Tahun 1990” bercerita tentang kisah cinta dua remaja Bandung pada tahun 90an. Berawal dari seorang siswa bernama Dilan yang jatuh cinta dengan siswi pindahan dari SMA di Jakarta bernama Milea. Dilan memiliki beragam cara untuk mendekati dan mencuri perhatian Milea.', 'dilan 1990.jpg'),
(14, 'Ayat - Ayat Cinta', 'Habiburrahman El Shirazy', 'Novel ini bercerita tentang kisah percintaan yang bernuansa islam. Cerita bermula dari seorang mahasiswa asal Indonesia bernama Fahri yang kuliah di Universitas Al- Azhar, ia tinggal di sebuah apartemen bersama keempat temannya.', 'ayat ayat cinta.jpg'),
(15, 'Perahu Kertas', 'Dee Lestari', 'Perahu Kertas bercerita tentang dua orang yang sama-sama unik bernama Kugy dan Keenan. Kugy adalah seorang mahasiswi Sastra berkepribadian nyentrik yang bercita-cita menjadi juru dongeng. Keenan adalah seorang laki-laki kalem yang cinta melukis, namun harus kuliah Ekonomi karena mengikuti keinginan ayahnya.', 'perahu kertas.jpg'),
(16, 'Bidadari - Bidadari Surga', 'Tere Liye', 'Bidadari-Bidadari Surga bercerita tentang pengorbanan seorang kakak (Laisa) untuk adik-adiknya (Dalimunte, Ikanuri, Wibisana dan Yashinta) di Lembah Lahambay agar adik-adiknya dapat melanjutkan pendidikan mereka, meski ia harus bekerja hingga tak kenal waktu.', 'bidadari bidadari surga.jpg'),
(17, 'Dear Nathan', ' Erisca Febriani', 'Novel ini mengisahkan tentang masa indah putih abu-abu, persahabatan, pelajaran kehidupan, dan pentingnya untuk selalu menghargai perasaan. Berawal dari keterlambatan mengikuti upacara pertama di sekolah baru, Salma Alvira bertemu dengan seorang cowok yang membantunya menelusup lewat gerbang samping.', 'dear nathan.jpg'),
(18, 'Critical Eleven', 'Ika Natassa', 'Ale dan Anya pertama kali bertemu dalam penerbangan dari Jakarta menuju Sydney. Dalam waktu yang singkat, Anya mulai terpikat. 7 jam berikutnya mereka saling mengenal lewat percakapan dan canda tawa, tak menduga hidup mereka akan berubah selamanya.', 'critical eleven.jpg'),
(19, 'Marmut Merah Jambu', 'Raditya Dika', 'Dika menceritakan kisah cinta pertamanya saat SMA dengan cewek bernama Ina Mangunkusumo. Cerita ketika dia dan temannya Bertus membentuk sebuah grup detektif, dan juga persahabatannya dengan Cindy.', 'marmut merah jambu.jpg'),
(20, 'Remember When', 'Winna Efendi', '\"Remember When\" menceritakan tentang dua pasangan, Gia & Andrian serta Moses & Freya, yang mengalami perubahan perasaan dan konflik dalam hubungan mereka. Freya merasa jenuh dengan Moses, sementara Andrian berbohong kepada Gia. Ketika perselingkuhan terungkap, persahabatan retak. Moses putus dengan Freya, tetapi Andrian tetap bersama Gia karena merasa bertanggung jawab. Akhirnya, Gia menerima takdir bahwa Andrian hanya untuk Freya.\r\n', 'remember when.jpg'),
(21, 'Rindu', 'Tere Liye', 'Akan menceritakan tentang perjalanan yang panjang dengan sebuah kerinduan, akan bertemakan zaman penjajahan belanda di tanggal 1 desember 1938 dimana dalam sejarah kita Makassar yang untuk pertama kalinya dimunculkan oleh kedatangan kapal uap yang sangat besar pada zamannya.', 'rindu.jpg'),
(22, 'Hujan', 'Tere Liye', 'Novel ini mengisahkan tentang percintaan dan perjuangan hidup seorang perempuan bernama Lail. Ketika Lail baru berusia 13 tahun, dirinya harus menjadi seorang anak yatim piatu karena ibu dan ayahnya meninggal dalam bencana letusan gunung api dan gempa bumi yang menghancurkan kota tempat tinggal mereka.', 'hujan.jpg'),
(23, 'Aroma Karsa', 'Dee Lestari', 'Aroma Karsa adalah sebuah novel karangan Dewi Lestari yang diterbitkan pada tahun 2018. Menceritakan tentang pemuda bernama Jati Wesi yang dibesarkan di kawasan kumuh Bantar Gebang. Jati memiliki kemampuan penciuman aroma yang melebihi orang biasa.', 'aroma karsa.jpg'),
(24, 'Dia Tanpa Aku', 'Esti Kinasih', 'Ronald menyukai Citra, tapi kecewa saat tahu Citra sekelas dengan adiknya, Reinald, di SMA. Reinald awalnya benci pada Citra karena menganggapnya penyebab kematian kakaknya, Ronald. Namun, hubungan mereka berubah ketika Reinald jujur kepada Citra dan menyatakan perasaannya.', 'dia tanpa aku.jpg'),
(25, 'My Childish Girl', 'Tamara Biliski', 'Gala dan Riri sudah pacaran selama 4 tahun, tetapi hubungan mereka penuh pertengkaran karena perbedaan kepribadian. Gala ingin Riri lebih dewasa dan tidak egois, sementara Riri merasa Gala terlalu kasar. Ketika mereka mau berpisah, Riri kehilangan orang tua. Gala berusaha menjadi pelindung Riri dan membuktikan cintanya.', 'my childish girl.jpg'),
(26, 'Asmara Bukan Ramayana', 'Nimas Aksan', 'Mungkin dongeng Ramayana dalam kehidupan nyata itu memang ada. Kau, aku, tanpa dia sang Rahwana. Lalu aku menjadi Sinta yang paling bahagia. Namun, Kalau aku Sinta, dan kau Rama, lalu mengapa pernikahan kita ini tidak seindah dongeng Ramayana? Kalau aku Sinta, dan kau Rama, lalu dia siapa? Rahwana? Mengapa justru aku menginginkan dia datang dan menculikku pergi jauh? Mengapa?', 'asmara bukan ramayana.jpg'),
(27, 'MetroPop: Mismatch', 'Arata Kim', 'Kenizia dan Giovanni, sahabat lama, menjalin hubungan setelah Giovanni melamar Kenizia. Namun, Kenizia mulai curiga dan bertanya langsung kepada Giovanni, membuatnya merenungkan hubungan mereka.', 'metropopmismatch.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `scifiction`
--

CREATE TABLE `scifiction` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) DEFAULT NULL,
  `AUTHOR` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(500) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scifiction`
--

INSERT INTO `scifiction` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'Supernova: Ksatria, Puteri, dan Bintang Jatuh', 'Dee Lestari', 'Merupakan bagian dari seri Supernova, novel ini menggabungkan elemen fiksi ilmiah dengan unsur fantasi dan roman. Ceritanya mengisahkan petualangan sekelompok orang yang memiliki kekuatan khusus dalam menghadapi ancaman luar biasa.', 'supernova.jpg'),
(2, 'Rectoverso', 'Dee Lestari', 'Buku ini adalah kumpulan cerita pendek, dan beberapa di antaranya berisi elemen fiksi ilmiah. Dee Lestari menyajikan cerita-cerita yang unik, termasuk yang mengeksplorasi dimensi-dimensi alternatif dan realitas futuristik.', 'rectoverso.png'),
(3, 'Negeri 5 Menara', 'Ahmad Fuadi', 'Kisahnya mengisahkan perjalanan lima remaja dari berbagai latar belakang yang bertujuan untuk mencapai puncak lima gunung.', 'negeri 5 menara.jpg'),
(4, 'Tentang Kamu', 'Tere Liye', 'Buku ini menggabungkan elemen fiksi ilmiah dengan kisah romantis. Kisahnya mengenai teknologi canggih yang memungkinkan orang untuk melihat kembali kenangan mereka, dan bagaimana hal itu memengaruhi hubungan dua karakter utama.', 'tentang kamu.jpg'),
(5, 'Bulan', 'Tere Liye', 'Novel ini mengisahkan petualangan dua remaja yang tiba-tiba mendapati diri mereka berada di bulan. Dengan kecerdasan mereka, mereka harus menyelesaikan berbagai tantangan untuk bertahan hidup.', 'bulan.jpg'),
(6, 'Dune', 'Frank Herbert', 'Di dunia gurun yang keras bernama Arrakis, seorang pemuda bernama Paul Atreides menjadi pahlawan dan pemimpin ketika dia menghadapi kekuatan politik dan ekologis yang kompleks di galaksi. \"Dune\" menggabungkan elemen politik, agama, dan ekologi dalam sebuah epik fiksi ilmiah.', 'dune.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `teenfiction`
--

CREATE TABLE `teenfiction` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) DEFAULT NULL,
  `AUTHOR` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(500) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teenfiction`
--

INSERT INTO `teenfiction` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'The Fault in Our Stars', 'John Green', 'Hazel Grace Lancaster, seorang remaja yang mengidap kanker, bertemu Augustus Waters di kelompok pendukung kanker anak-anak. Mereka menjalin hubungan yang penuh emosi dan petualangan, menjelajahi makna hidup dan cinta di tengah-tengah tantangan kesehatan mereka.', 'the fault in our stars.jpg'),
(2, 'To All the Boys I`ve Loved Before', 'Jenny Han', 'Lara Jean Covey menulis surat-surat cinta rahasia kepada semua mantan pacarnya, yang tak pernah dimaksudkan untuk dibagikan. Namun, ketika surat-surat itu tiba-tiba tersebar, hidup Lara Jean berubah drastis, terutama ketika salah satu mantan pacarnya adalah sahabat masa kecilnya.', 'to all the boys ive loved before.jpg'),
(3, 'The Hunger Games', 'Suzanne Collins', 'Di dunia pasca-apokaliptik Panem, Katniss Everdeen terpilih untuk mengikuti \"Hunger Games\" - pertandingan mematikan di mana anak-anak dipilih untuk bertempur sampai mati sebagai hiburan bagi Capitol. Novel ini mengikuti perjuangan Katniss untuk bertahan hidup dan merobohkan sistem yang kejam.', 'the hunger games.jpg'),
(4, 'Divergent', 'Veronica Roth', 'Di dunia futuristik yang terbagi menjadi lima faksi berdasarkan sifat-sifat manusia, Tris Prior menemukan bahwa dia adalah seorang \"Divergent,\" yang tidak cocok dengan satu pun faksi. Saat konflik muncul di antara faksi-faksi, Tris harus melawan sistem dan menentukan identitasnya sendiri.', 'divergent.jpg'),
(5, 'The Perks of Being a Wallflower', 'Stephen Chbosky', 'Charlie, seorang siswa SMA introvert, mencoba mencari jati dirinya melalui surat-surat yang ia tulis kepada seseorang yang tidak diketahui. Ia berteman dengan dua siswa senior, Sam dan Patrick, dan melalui hubungan ini, Charlie menemukan arti persahabatan dan cinta.', 'the perks of being a wallflower.jpg'),
(6, 'Eleanor & Park', 'Rainbow Rowell', 'Dalam kisah cinta yang penuh kehangatan dan keunikan, Eleanor, seorang gadis yang berbeda, dan Park, seorang anak yang terpencil, menemukan hubungan yang kuat dan mendalam melalui kesukaan mereka terhadap musik dan buku komik di bus sekolah.', 'eleanor & park.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `universal`
--

CREATE TABLE `universal` (
  `id` int(5) NOT NULL,
  `JUDUL` varchar(50) DEFAULT NULL,
  `AUTHOR` varchar(50) DEFAULT NULL,
  `DESKRIPSI` varchar(500) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `universal`
--

INSERT INTO `universal` (`id`, `JUDUL`, `AUTHOR`, `DESKRIPSI`, `FOTO`) VALUES
(1, 'The Midnight Library', 'Matt Haig', 'deskripsi singkat', 'the midnight library.png'),
(2, 'Bridge to Terabithia', 'Katherine Paterson', 'deskripsi singkat', 'bridge to terabithia.jpg'),
(3, 'Percy Jackson and the Olympians', 'Rick Riordan', 'deskripsi singkat', 'percy jackson and the olympians.jpg'),
(4, 'The Kite Runner', 'Khaled Hosseini', 'deskripsi singkat', 'the kite runner.jpg'),
(5, 'Funiculi Funicula (Before the Coffee Gets Cold', 'Toshikazu Kawaguchi', 'deskripsi singkat', 'funiculi funicula.png'),
(6, 'The Miracles of The Namiya General Store', 'Keigo Higashino', 'deskripsi singkat', 'the miracles of the namiya general store.png'),
(7, 'Kim Ji-Yeong Lahir Tahun 1982', 'Cho Nam-Joo', 'deskripsi singkat', 'kim ji-yeong.png'),
(8, 'Of Mice and Men', 'John Steinbeck', 'deskripsi singkat', 'of mice and men.jpg'),
(9, 'The Little Prince', 'Antoine', 'deskripsi singkat', 'the little prince.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_reviews`
--
ALTER TABLE `book_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comedy`
--
ALTER TABLE `comedy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fantasi`
--
ALTER TABLE `fantasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fiksi`
--
ALTER TABLE `fiksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `horor`
--
ALTER TABLE `horor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nonfiction`
--
ALTER TABLE `nonfiction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revbook_login`
--
ALTER TABLE `revbook_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `romance`
--
ALTER TABLE `romance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scifiction`
--
ALTER TABLE `scifiction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teenfiction`
--
ALTER TABLE `teenfiction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `universal`
--
ALTER TABLE `universal`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `book_reviews`
--
ALTER TABLE `book_reviews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comedy`
--
ALTER TABLE `comedy`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fantasi`
--
ALTER TABLE `fantasi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fiksi`
--
ALTER TABLE `fiksi`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `horor`
--
ALTER TABLE `horor`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `nonfiction`
--
ALTER TABLE `nonfiction`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `revbook_login`
--
ALTER TABLE `revbook_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `romance`
--
ALTER TABLE `romance`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `scifiction`
--
ALTER TABLE `scifiction`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teenfiction`
--
ALTER TABLE `teenfiction`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `universal`
--
ALTER TABLE `universal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `fk_id` FOREIGN KEY (`id`) REFERENCES `revbook_login` (`id`),
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`id`) REFERENCES `book_reviews` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
