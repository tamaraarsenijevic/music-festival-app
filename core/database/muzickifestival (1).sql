-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 29, 2025 at 05:14 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `muzickifestival`
--

-- --------------------------------------------------------

--
-- Table structure for table `ankete`
--

DROP TABLE IF EXISTS `ankete`;
CREATE TABLE IF NOT EXISTS `ankete` (
  `id` int NOT NULL AUTO_INCREMENT,
  `naziv_ankete` varchar(255) NOT NULL,
  `opis` text,
  `datum_kreiranja` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ankete`
--

INSERT INTO `ankete` (`id`, `naziv_ankete`, `opis`, `datum_kreiranja`) VALUES
(1, 'VIBE festival', 'Kupovina ulaznica', '2025-03-28 11:19:16'),
(2, 'EXIT festival', 'Vidimo se na festivalu od 13. do 15. jula', '2025-03-28 11:25:30'),
(3, 'VIBE festival', '', '2025-03-28 11:32:56'),
(4, 'zanrovi', 'Zanima nas koji zanr muzike najvise slusate', '2025-03-28 11:39:39');

-- --------------------------------------------------------

--
-- Table structure for table `festivali`
--

DROP TABLE IF EXISTS `festivali`;
CREATE TABLE IF NOT EXISTS `festivali` (
  `festival_id` int NOT NULL AUTO_INCREMENT,
  `naziv_festivala` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `opis` text NOT NULL,
  `datum_pocetka` date NOT NULL,
  `datum_zavrsetka` date NOT NULL,
  `lokacija` varchar(255) NOT NULL,
  `link_lokacije` varchar(255) NOT NULL,
  `cena_ulaznica` float NOT NULL,
  `broj_preostalih_ulaznica` int NOT NULL,
  `slika` varchar(32) NOT NULL,
  `zanr_id` int NOT NULL,
  `izvodjac_id` int NOT NULL,
  `scena_id` int NOT NULL,
  `stream` varchar(255) NOT NULL,
  PRIMARY KEY (`festival_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `festivali`
--

INSERT INTO `festivali` (`festival_id`, `naziv_festivala`, `opis`, `datum_pocetka`, `datum_zavrsetka`, `lokacija`, `link_lokacije`, `cena_ulaznica`, `broj_preostalih_ulaznica`, `slika`, `zanr_id`, `izvodjac_id`, `scena_id`, `stream`) VALUES
(1, 'EXIT festival', 'Jedan od najvećih muzičkih festivala u jugoistočnoj Evropi, poznat po nastupima svetskih zvezda i jedinstvenoj atmosferi Petrovaradinske tvrđave.', '2025-07-13', '2025-07-15', 'Petrovaradinska tvrđava, Novi Sad', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2808.7795246956184!2d19.85994457521562!3d45.25225094755696!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475b107723905799%3A0x6795257e6835ec06!2z0JXQs9C30LjRgg!5e0!3m2!1ssr!2srs!4v1738953519774!5', 25000, 3000, 'Slike/slika1.jpg', 1, 0, 0, 'https://www.youtube.com/watch?v=pXoxvJW793w'),
(2, 'LOVEFEST', 'Festival ljubavi i elektronske muzike, poznat po intimnoj atmosferi i sjajnom zvuku.', '2025-08-01', '2025-08-03', 'Vrnjačka Banja', 'https://www.google.com/maps?q=Lovefest,Vrnjačka+Banja,Serbia&output=embed', 10000, 10002, 'Slike/slika2.jpg', 1, 0, 0, 'https://www.youtube.com/watch?v=8Wqnthg32-M&t=1353s'),
(3, 'Jazz Festival', 'Internacionalni džez festival koji spaja tradicionalni džez sa savremenim stilovima.', '2025-08-14', '2025-08-16', ' Niška Tvrđava, Niš', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2902.86391701892!2d21.89302617508873!3d43.317108074105114!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4755b0b1bca016c3%3A0x1bbec003d03b7cbc!2z0J3QuNGI0LLQuNC7INCP0LXQtyDQpNC10YHRgtC40LLQsNC7!5e', 9000, 8000, 'Slike/slika3.jpg', 3, 0, 0, 'https://www.youtube.com/watch?v=KQRhbaBXt-I&list=PLr9sqD_Z-_N3Zu2nPYF0gJGtzIJt09eVm&index=23'),
(4, 'Beer Fest', 'Festival piva i muzike, sa širokim izborom domaćih i stranih pivara i raznovrsnim muzičkim nastupima.', '2025-09-11', '2025-09-12', 'Ušće, Beograd', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2830.042629260471!2d20.43041757518695!3d44.82069617614524!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x475a6500157fe299%3A0x2bb3291cd8313882!2sBelgrade%20Beer%20Fest!5e0!3m2!1ssr!2srs!4v17389537', 800, 12000, 'Slike/slika4.jpg', 4, 0, 0, 'https://www.youtube.com/watch?v=5s-TrCiqzNM'),
(6, 'VIBE festival', ' VIBE, muzički festival koji od 2013. godine donosi nezaboravno letnje festivalsko iskustvo u samom srcu Kragujevca.', '2025-07-25', '2025-07-27', 'Trg Topolivaca, Kragujevac', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2727.682081959376!2d20.910935676195557!3d44.00752647108752!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4757210c9d8120e5%3A0x571f6496b2bfd57f!2sVIBE%20Festival!5e1!3m2!1sen!2srs!4v1738958347006!', 3000, 147, 'Slike/vibe.jpg', 1, 0, 0, 'https://www.youtube.com/watch?v=A49eVjDtp8s'),
(29, 'Arsenal Fest', 'Arsenal Fest održava se krajem svakog juna u Kragujevcu, srcu Šumadije, nekadašnjoj prestonici Srbije, gradu najpoznatijem po autentičnoj automobilskoj industriji.', '2025-06-26', '2025-06-28', 'Kragujevac', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2727.6645705579454!2d20.90940847619559!3d44.007907271087625!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4757211513e89aeb%3A0xd2d58ec7f276a6db!2sArsenal%20Fest!5e1!3m2!1sen!2srs!4v1741598641799!', 6200, 497, 'Slike/slika.PNG', 6, 0, 0, 'https://www.youtube.com/watch?v=xJbcGsbYkDg');

-- --------------------------------------------------------

--
-- Table structure for table `informacije_o_izvodjacima`
--

DROP TABLE IF EXISTS `informacije_o_izvodjacima`;
CREATE TABLE IF NOT EXISTS `informacije_o_izvodjacima` (
  `id_informacije` int NOT NULL AUTO_INCREMENT,
  `id_izvodjaca` int NOT NULL,
  `opis` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_informacije`),
  UNIQUE KEY `id_izvodjaca` (`id_izvodjaca`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `informacije_o_izvodjacima`
--

INSERT INTO `informacije_o_izvodjacima` (`id_informacije`, `id_izvodjaca`, `opis`) VALUES
(1, 6, 'Kenya Grace je britanska pevačica, tekstopisac i producentkinja poznata po svom jedinstvenom spoju elektronske muzike, drum and bass-a i pop melodija. Proslavila se hit singlom \'Strangers\', koji je postao viralan na TikToku i dostigao vrh top lista. Njena muzika kombinuje emotivne tekstove, sanjive vokale i moderne produkcijske tehnike, često inspirisane UK garage i house zvukom.Kao umetnica, Kenya Grace ne samo da peva već i sama producira svoje pesme, što joj omogućava da u potpunosti kontroliše svoj muzički izražaj. Njeni tekstovi često istražuju teme ljubavi, samopouzdanja i digitalne povezanosti, a njen prepoznatljiv vokal i atmosferični beatovi čine je jednom od najperspektivnijih novih izvođača u elektronskoj pop muzici.Moj cilj je da pravim muziku koja povezuje ljude i donosi emociju kroz zvuk. 🎶💙'),
(2, 8, 'Boris Brejcha je nemački DJ, producent i jedan od pionira \"high-tech minimal\" zvuka, žanra koji kombinuje elemente minimal techna, progresivnog house-a i trance-a. Poznat je po svom misterioznom imidžu i karakterističnoj venecijanskoj maski, koja je postala njegov zaštitni znak na nastupima.\r\n\r\nNjegova muzika se odlikuje dubokim bas linijama, hipnotičkim melodijama i kompleksnim ritmovima koji donose jedinstveno iskustvo na plesnom podijumu. Boris je započeo karijeru sredinom 2000-ih, a globalnu popularnost stekao albumima kao što su \"23\", \"Feuerfalter\" i \"Space Diver\". Osnivač je izdavačke kuće Fckng Serious, kroz koju objavljuje svoju muziku i podržava druge umetnike sa sličnim zvukom.\r\n\r\nNjegovi nastupi su energični, često trajaju satima, a prepoznatljiv stil i eksperimentalni pristup produkciji učinili su ga jednim od najuticajnijih imena u savremenoj elektronskoj muzici. 🎭🎶'),
(3, 15, 'Konstrakta je autorka koja pomera granice pop muzike spajajući minimalističke melodije, snažne ritmove i tekstove koji preispituju svakodnevicu. Njena muzika osciluje između introspektivnog i ironičnog, često balansirajući na ivici performansa i pesme. Na sceni stvara atmosferu rituala – jednostavnim gestovima i upečatljivim zvukom uvodi publiku u svet u kojem muzika postaje i pitanje i odgovor. Od intimnih tonova do himničnih refrena, Konstrakta gradi prepoznatljiv izraz koji je podjednako umetnički koncept koliko i muzičko iskustvo.'),
(4, 16, 'Lia hide je grčka muzičarka, kantautorka i producentkinja koja stvara na raskršću art-popa, elektronike i eksperimentalnog zvuka. Njena muzika spaja sofisticirane melodije, intimne vokale i bogate aranžmane koji nose i mračnu i svetlu emociju. Na sceni, Lia Hide gradi atmosferu performansa – svaki nastup je pažljivo oblikovan i pretvara koncert u iskustvo puno elegancije, introspekcije i neočekivanih zvučnih obrta. Sa međunarodnim nastupima i prepoznatljivim umetničkim izrazom, Lia Hide osvaja publiku koja traži muziku izvan klišea.'),
(5, 14, 'Adam Beyer je jedno od vodećih imena svetske techno scene i osnivač kultne etikete Drumcode. Njegov zvuk karakterišu snažni, hipnotički ritmovi i precizna produkcija koja oblikuje moderni techno već više od dve decenije. Kao DJ, poznat je po energičnim i besprekorno građenim setovima koji nose publiku kroz duga, intenzivna putovanja zvukom. Sa stalnim inovacijama i vernošću underground korenima, Beyer ostaje figura koja definiše i inspiriše globalni elektronski muzički pejzaž.');

-- --------------------------------------------------------

--
-- Table structure for table `izvodjaci`
--

DROP TABLE IF EXISTS `izvodjaci`;
CREATE TABLE IF NOT EXISTS `izvodjaci` (
  `id` int NOT NULL AUTO_INCREMENT,
  `korisnik_id` int NOT NULL,
  `festival_id` int NOT NULL,
  `scena_id` int NOT NULL,
  `vreme_nastupa` time NOT NULL,
  `datum_nastupa` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `korisnik_id` (`korisnik_id`),
  KEY `festival_id` (`festival_id`),
  KEY `scena_id` (`scena_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `izvodjaci`
--

INSERT INTO `izvodjaci` (`id`, `korisnik_id`, `festival_id`, `scena_id`, `vreme_nastupa`, `datum_nastupa`) VALUES
(1, 6, 1, 1, '20:00:00', '2025-07-13'),
(2, 8, 1, 2, '20:30:00', '2025-07-13'),
(3, 14, 1, 3, '22:00:00', '2025-07-13'),
(4, 14, 2, 4, '21:00:00', '2025-08-01'),
(5, 6, 2, 5, '21:00:00', '2025-08-01'),
(6, 15, 3, 6, '21:00:00', '2025-08-14'),
(7, 16, 3, 7, '21:00:00', '2025-08-14'),
(8, 17, 4, 8, '20:00:00', '2025-09-11'),
(9, 18, 4, 9, '21:00:00', '2025-09-11'),
(10, 19, 6, 10, '21:00:00', '2025-07-25'),
(11, 20, 6, 11, '23:00:00', '2025-07-25'),
(12, 20, 1, 1, '21:00:00', '2025-07-14'),
(25, 19, 2, 7, '21:30:00', '2025-08-16'),
(24, 18, 1, 7, '21:00:00', '2025-08-15'),
(23, 8, 3, 6, '21:30:00', '2025-08-16'),
(22, 6, 1, 6, '22:00:00', '2025-08-15'),
(21, 18, 2, 5, '21:30:00', '2025-08-03'),
(20, 19, 1, 5, '22:00:00', '2025-08-02'),
(19, 21, 4, 4, '21:30:00', '2025-08-03'),
(18, 8, 1, 3, '20:00:00', '2025-07-15'),
(17, 21, 2, 2, '21:00:00', '2025-07-15'),
(16, 15, 1, 3, '21:00:00', '2025-07-14'),
(15, 19, 2, 2, '21:00:00', '2025-07-14'),
(14, 16, 3, 1, '20:30:00', '2025-07-15'),
(13, 20, 4, 4, '22:00:00', '2025-08-02'),
(31, 14, 6, 11, '21:00:00', '2025-07-27'),
(30, 6, 6, 11, '22:00:00', '2025-07-26'),
(29, 16, 6, 10, '22:00:00', '2025-07-27'),
(28, 22, 6, 10, '21:00:00', '2025-07-26'),
(27, 6, 4, 9, '21:00:00', '2025-09-11'),
(26, 21, 4, 8, '21:00:00', '2025-09-12'),
(43, 20, 29, 29, '22:00:00', '2025-06-26'),
(44, 16, 29, 29, '21:00:00', '2025-06-27'),
(45, 8, 29, 29, '21:00:00', '2025-06-28'),
(46, 6, 29, 30, '21:00:00', '2025-06-26'),
(47, 21, 29, 30, '22:00:00', '2025-06-27'),
(48, 15, 29, 30, '21:00:00', '2025-06-28');

-- --------------------------------------------------------

--
-- Table structure for table `komentari`
--

DROP TABLE IF EXISTS `komentari`;
CREATE TABLE IF NOT EXISTS `komentari` (
  `korisnik_id` int NOT NULL,
  `korisnicko_ime` varchar(50) NOT NULL,
  `komentar` varchar(150) NOT NULL,
  `kreiran` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `post_id` int NOT NULL,
  `komentar_id` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`komentar_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `komentari`
--

INSERT INTO `komentari` (`korisnik_id`, `korisnicko_ime`, `komentar`, `kreiran`, `post_id`, `komentar_id`) VALUES
(2, 'jovana', 'Super!', '2025-01-10 19:47:08.000000', 1, 7),
(4, 'nikola', 'top', '2025-01-12 11:49:29.000000', 1, 8),
(4, 'nikola', 'jedva cekam', '2025-01-12 12:04:15.000000', 1, 9),
(5, 'nikola', 'Odlicno', '2025-01-26 19:30:07.000000', 1, 12),
(2, 'jovana', 'Uzbudjena sam!', '2025-01-28 18:22:41.000000', 2, 13),
(13, 'milica', 'Vidimo se!', '2025-01-28 18:25:17.000000', 1, 14),
(7, 'petar2', ':)', '2025-04-19 17:05:08.000000', 6, 15);

-- --------------------------------------------------------

--
-- Table structure for table `korisnici`
--

DROP TABLE IF EXISTS `korisnici`;
CREATE TABLE IF NOT EXISTS `korisnici` (
  `korisnik_id` int NOT NULL AUTO_INCREMENT,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `email` varchar(1024) NOT NULL,
  `korisnicko_ime` varchar(32) NOT NULL,
  `lozinka` varchar(32) NOT NULL,
  `tip_korisnika` enum('Administrator','Izvodjac','Organizator','Posetilac') NOT NULL,
  `profilna_slika` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'Slike/default_profile.jpg',
  `status` enum('offline','active now') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `blokiran` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`korisnik_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `korisnici`
--

INSERT INTO `korisnici` (`korisnik_id`, `ime`, `prezime`, `email`, `korisnicko_ime`, `lozinka`, `tip_korisnika`, `profilna_slika`, `status`, `blokiran`) VALUES
(1, 'Petar', 'Petrovic', 'petarpetrovic@gmail.com', 'petarpetrovic', '5f4dcc3b5aa765d61d8327deb882cf99', 'Posetilac', 'default_image.jpg', 'offline', 0),
(2, 'Jovana', 'Jovanovic', 'jovana@gmail.com', 'jovana', '1a1dc91c907325c69271ddf0c944bc72', 'Administrator', 'profilna4.jpg', 'active now', 0),
(5, 'Nikola', 'Nikolic', 'nikola@gmail.com', 'nikola123', '1a1dc91c907325c69271ddf0c944bc72', 'Posetilac', 'default_image.jpg', 'active now', 1),
(6, 'Kenya', 'Grace', 'Kenya02@gmaill.com', 'kenya02', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'kenya.jfif', 'offline', 0),
(7, 'Petar', 'Petrovic', 'petarpetrovic@gmail.com', 'petar2', '1a1dc91c907325c69271ddf0c944bc72', 'Posetilac', 'profilna3.jpg', 'offline', 0),
(8, 'Boris', 'Brejcha', 'boris@gmail.com', 'boris', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'boris.jfif', 'offline', 0),
(9, 'Petar', 'Jovanovic', 'petarjovanovic3@gmail.com', 'petarjovanovic', '1a1dc91c907325c69271ddf0c944bc72', 'Organizator', 'default_image.jpg', 'offline', 0),
(10, 'Nikolina', 'Nikolic', 'nikolic@gmail.com', 'nikolic', '1a1dc91c907325c69271ddf0c944bc72', 'Administrator', 'default_image.jpg', 'offline', 0),
(11, 'Milos', 'Milosevic', 'milos@gmail.com', 'milos', '1a1dc91c907325c69271ddf0c944bc72', 'Organizator', 'profilna3.jpg', 'offline', 0),
(12, 'Ivana', 'Ivanovic', 'ivana@gmail.com', 'iva', '1a1dc91c907325c69271ddf0c944bc72', 'Organizator', 'profilna.jpg', 'offline', 0),
(13, 'Milica', 'Milic', 'milica@gmail.com', 'milica', '1a1dc91c907325c69271ddf0c944bc72', 'Posetilac', 'default_image.jpg', 'offline', 0),
(14, 'Adam', 'Beyer', 'beyer@gmail.com', 'beyer', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'adam.jfif', 'offline', 0),
(15, 'Konstrakta', '', 'konstrakta@gmail.com', 'konstrakta', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'konstrakta.jfif', 'offline', 0),
(16, 'Lia', 'Hide', 'lia@gmail.com', 'lia', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'lia.jfif', 'offline', 0),
(17, 'Galija', '', 'galija@gmail.com', 'galija', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'galija.jfif', 'offline', 0),
(18, 'Dejan', 'Milicevic', 'dejan@gmail.com', 'dejan', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'dejan.png', 'offline', 0),
(19, 'Bojana', 'Vunturisevic', 'bojana@gmail.com', 'bojana', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'bojana.jpg', 'offline', 0),
(20, 'Mila', '', 'mila@gmail.com', 'mila', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'mila.png', 'offline', 0),
(21, 'Nina', 'Kraviz', 'nina@gmail.com', 'nina', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'nina.jpg', 'offline', 0),
(22, 'Anna', 'Tur', 'anna@gmail.com', 'anna', '1a1dc91c907325c69271ddf0c944bc72', 'Izvodjac', 'anna.jfif', 'offline', 0);

-- --------------------------------------------------------

--
-- Table structure for table `moguci_odgovori`
--

DROP TABLE IF EXISTS `moguci_odgovori`;
CREATE TABLE IF NOT EXISTS `moguci_odgovori` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pitanje_id` int DEFAULT NULL,
  `redni_broj` int DEFAULT NULL,
  `anketa_id` int DEFAULT NULL,
  `tekst_odgovora` text,
  PRIMARY KEY (`id`),
  KEY `pitanje_id` (`pitanje_id`),
  KEY `anketa_id` (`anketa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moguci_odgovori`
--

INSERT INTO `moguci_odgovori` (`id`, `pitanje_id`, `redni_broj`, `anketa_id`, `tekst_odgovora`) VALUES
(1, 2, NULL, NULL, '13. jul'),
(2, 2, NULL, NULL, '14. jul'),
(3, 2, NULL, NULL, '15.jul'),
(4, 3, NULL, NULL, 'NE'),
(5, 3, NULL, NULL, 'DA'),
(6, 5, NULL, NULL, 'Bojana Vunturisevic'),
(7, 5, NULL, NULL, 'Lia Hide'),
(8, 5, NULL, NULL, 'Anna Tur'),
(9, 5, NULL, NULL, 'Mila'),
(10, 5, NULL, NULL, 'Adam Beyer'),
(11, 5, NULL, NULL, 'Kenya Grace'),
(12, 6, NULL, NULL, 'NE'),
(13, 6, NULL, NULL, 'DA'),
(14, 7, NULL, NULL, 'Elektronska muzika'),
(15, 7, NULL, NULL, 'Rock'),
(16, 7, NULL, NULL, 'Jazz'),
(17, 7, NULL, NULL, 'Pop'),
(18, 7, NULL, NULL, 'Hip-Hop'),
(19, 7, NULL, NULL, 'Alternativa'),
(20, 7, NULL, NULL, 'Metal'),
(21, 7, NULL, NULL, 'Pank'),
(22, 7, NULL, NULL, 'Narodna Muzika'),
(23, 7, NULL, NULL, 'Reggae');

-- --------------------------------------------------------

--
-- Table structure for table `obavestenja`
--

DROP TABLE IF EXISTS `obavestenja`;
CREATE TABLE IF NOT EXISTS `obavestenja` (
  `id` int NOT NULL AUTO_INCREMENT,
  `korisnik_id` int DEFAULT NULL,
  `izvodjac_id` int DEFAULT NULL,
  `izvodjac` varchar(32) NOT NULL,
  `poruka` text,
  `procitano` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `korisnik_id` (`korisnik_id`),
  KEY `izvodjac_id` (`izvodjac_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `obavestenja`
--

INSERT INTO `obavestenja` (`id`, `korisnik_id`, `izvodjac_id`, `izvodjac`, `poruka`, `procitano`) VALUES
(1, 1, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=2\'>EXIT festival</a> - Pogledajte i učestvujte!', 0),
(2, 5, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=2\'>EXIT festival</a> - Pogledajte i učestvujte!', 0),
(3, 7, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=2\'>EXIT festival</a> - Pogledajte i učestvujte!', 1),
(4, 13, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=2\'>EXIT festival</a> - Pogledajte i učestvujte!', 1),
(5, 1, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=3\'>VIBE festival</a> - Pogledajte i učestvujte!', 0),
(6, 5, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=3\'>VIBE festival</a> - Pogledajte i učestvujte!', 0),
(7, 7, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=3\'>VIBE festival</a> - Pogledajte i učestvujte!', 0),
(8, 13, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=3\'>VIBE festival</a> - Pogledajte i učestvujte!', 1),
(9, 1, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=4\'>zanrovi</a> - Pogledajte i učestvujte!', 0),
(10, 5, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=4\'>zanrovi</a> - Pogledajte i učestvujte!', 0),
(11, 7, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=4\'>zanrovi</a> - Pogledajte i učestvujte!', 1),
(12, 13, 0, 'Anketa', 'Nova anketa: <a class=\'anketa\' href=\'includes/popuni_anketu.php?id=4\'>zanrovi</a> - Pogledajte i učestvujte!', 1),
(13, 7, 15, 'Konstrakta ', 'Nova pesma izlazi sutra u 12h <3', 1),
(14, 7, 20, 'Mila ', 'Vidimo se uskoro u Vrnjackoj Banji !!', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ocenjivanje`
--

DROP TABLE IF EXISTS `ocenjivanje`;
CREATE TABLE IF NOT EXISTS `ocenjivanje` (
  `korisnik_id` int NOT NULL,
  `korisnicko_ime` varchar(100) NOT NULL,
  `ocena` int NOT NULL,
  `festival_id` int NOT NULL,
  `id_ocene` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ocene`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ocenjivanje`
--

INSERT INTO `ocenjivanje` (`korisnik_id`, `korisnicko_ime`, `ocena`, `festival_id`, `id_ocene`) VALUES
(13, 'milica', 5, 2, 14),
(2, 'jovana', 5, 1, 15),
(1, 'petarpetrovic', 4, 2, 16),
(7, 'petar2', 4, 1, 17),
(7, 'petar2', 5, 2, 18),
(13, 'milica', 5, 1, 19),
(11, 'milos', 5, 2, 20),
(7, 'petar2', 3, 6, 21);

-- --------------------------------------------------------

--
-- Table structure for table `odgovori`
--

DROP TABLE IF EXISTS `odgovori`;
CREATE TABLE IF NOT EXISTS `odgovori` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pitanje_id` int NOT NULL,
  `korisnik_id` int NOT NULL,
  `tekst_odgovora` text NOT NULL,
  `anketa_id` int NOT NULL,
  `moguci_odgovor_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pitanje_id` (`pitanje_id`),
  KEY `korisnik_id` (`korisnik_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `odgovori`
--

INSERT INTO `odgovori` (`id`, `pitanje_id`, `korisnik_id`, `tekst_odgovora`, `anketa_id`, `moguci_odgovor_id`) VALUES
(7, 4, 13, 'Lepo', 3, NULL),
(6, 3, 13, '', 3, 5),
(3, 2, 7, '', 2, 1),
(4, 2, 7, '', 2, 2),
(5, 2, 13, '', 2, 2),
(8, 5, 13, '', 3, 7),
(9, 5, 13, '', 3, 8),
(10, 5, 13, '', 3, 10),
(11, 6, 13, '', 3, 13),
(12, 7, 13, '', 4, 22),
(13, 8, 13, '', 4, NULL),
(14, 7, 7, '', 4, 22),
(15, 8, 7, '', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `omiljeni`
--

DROP TABLE IF EXISTS `omiljeni`;
CREATE TABLE IF NOT EXISTS `omiljeni` (
  `id` int NOT NULL AUTO_INCREMENT,
  `posetilac_id` int NOT NULL,
  `izvodjac_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `posetilac_id` (`posetilac_id`),
  KEY `izvodjac_id` (`izvodjac_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `omiljeni`
--

INSERT INTO `omiljeni` (`id`, `posetilac_id`, `izvodjac_id`) VALUES
(1, 5, 6),
(9, 7, 15),
(10, 7, 16),
(11, 13, 6),
(12, 7, 22),
(13, 13, 17),
(14, 13, 18),
(17, 7, 19);

-- --------------------------------------------------------

--
-- Table structure for table `pitanja`
--

DROP TABLE IF EXISTS `pitanja`;
CREATE TABLE IF NOT EXISTS `pitanja` (
  `id` int NOT NULL AUTO_INCREMENT,
  `anketa_id` int NOT NULL,
  `tekst_pitanja` text NOT NULL,
  `tip_pitanja` enum('radio','checkbox','text') NOT NULL,
  PRIMARY KEY (`id`),
  KEY `anketa_id` (`anketa_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pitanja`
--

INSERT INTO `pitanja` (`id`, `anketa_id`, `tekst_pitanja`, `tip_pitanja`) VALUES
(3, 3, 'Da li ste vec bili na festivalu nekada? ', 'radio'),
(2, 2, 'Kojim danima cete biti na festivalu', 'checkbox'),
(4, 3, 'Ukoliko je odgovor DA, Kako je BIlO?', 'text'),
(5, 3, 'Koga od izvodjaca najvise slusate?', 'checkbox'),
(6, 3, 'Da li dolazite i ove godine?', 'radio'),
(7, 4, 'Sta najvise slusate', 'checkbox'),
(8, 4, 'Koji festival vam je omiljeni?', 'text');

-- --------------------------------------------------------

--
-- Table structure for table `poruka`
--

DROP TABLE IF EXISTS `poruka`;
CREATE TABLE IF NOT EXISTS `poruka` (
  `poruka_id` int NOT NULL AUTO_INCREMENT,
  `primalac_id` int NOT NULL,
  `posiljalac_id` int NOT NULL,
  `poruka` varchar(255) NOT NULL,
  `vreme` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `procitano` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`poruka_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `poruka`
--

INSERT INTO `poruka` (`poruka_id`, `primalac_id`, `posiljalac_id`, `poruka`, `vreme`, `procitano`) VALUES
(1, 15, 7, 'Caoo', '2025-03-28 11:11:00', 1),
(2, 15, 7, 'Kada izlazi nova pesma?', '2025-03-28 11:11:11', 1),
(3, 7, 15, 'Uskoro', '2025-03-28 11:11:23', 1),
(4, 14, 7, 'Zdravo', '2025-04-19 17:06:42', 0),
(5, 7, 15, '!!!', '2025-08-28 19:35:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rezervacije`
--

DROP TABLE IF EXISTS `rezervacije`;
CREATE TABLE IF NOT EXISTS `rezervacije` (
  `id` int NOT NULL AUTO_INCREMENT,
  `korisnik_id` int NOT NULL,
  `festival_id` int NOT NULL,
  `broj_mesta` int NOT NULL,
  `status` enum('rezervisano','otkazano') DEFAULT 'rezervisano',
  PRIMARY KEY (`id`),
  KEY `korisnik_id` (`korisnik_id`),
  KEY `festival_id` (`festival_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rezervacije`
--

INSERT INTO `rezervacije` (`id`, `korisnik_id`, `festival_id`, `broj_mesta`, `status`) VALUES
(24, 13, 1, 2, 'otkazano'),
(23, 13, 1, 5, 'otkazano'),
(25, 13, 1, 3, 'otkazano'),
(12, 0, 4, 1, 'otkazano'),
(27, 13, 1, 9, 'otkazano'),
(26, 13, 1, 1, 'otkazano'),
(15, 0, 2, 2, 'otkazano'),
(16, 0, 2, 2, 'otkazano'),
(17, 0, 3, 4, 'otkazano'),
(18, 0, 1, 3, 'otkazano'),
(19, 0, 1, 2, 'otkazano'),
(20, 0, 1, 3, 'otkazano'),
(21, 13, 1, 2, 'otkazano'),
(28, 13, 29, 3, 'rezervisano'),
(29, 7, 6, 3, 'rezervisano');

-- --------------------------------------------------------

--
-- Table structure for table `scene`
--

DROP TABLE IF EXISTS `scene`;
CREATE TABLE IF NOT EXISTS `scene` (
  `id` int NOT NULL AUTO_INCREMENT,
  `naziv` varchar(255) NOT NULL,
  `festival_id` int NOT NULL,
  `broj_poseta` int DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `festival_id` (`festival_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `scene`
--

INSERT INTO `scene` (`id`, `naziv`, `festival_id`, `broj_poseta`) VALUES
(1, 'Main Stage', 1, 0),
(2, 'Dance Arena', 1, 0),
(3, 'Fusion Stage', 1, 0),
(4, 'Main Stage', 2, 0),
(5, 'Fire Stage', 2, 0),
(6, 'Earth/Sky Stage', 3, 0),
(7, 'Open Stage', 3, 0),
(8, 'Main Stage', 4, 0),
(9, 'Electro Stage', 4, 0),
(10, 'Main Stage', 6, 0),
(11, 'Banger Stage', 6, 0),
(29, 'Main Stage', 29, 0),
(30, 'Garden Stage', 29, 0);

-- --------------------------------------------------------

--
-- Table structure for table `statistika_poseta`
--

DROP TABLE IF EXISTS `statistika_poseta`;
CREATE TABLE IF NOT EXISTS `statistika_poseta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `festival_id` int NOT NULL,
  `scena_id` int DEFAULT NULL,
  `izvodjac_id` int DEFAULT NULL,
  `korisnik_id` int DEFAULT NULL,
  `tip_akcije` enum('poseta_festivalu','poseta_sceni','poseta_izvodjacu') NOT NULL,
  `datum_vreme` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `festival_id` (`festival_id`),
  KEY `scena_id` (`scena_id`),
  KEY `izvodjac_id` (`izvodjac_id`),
  KEY `korisnik_id` (`korisnik_id`)
) ENGINE=MyISAM AUTO_INCREMENT=733 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `statistika_poseta`
--

INSERT INTO `statistika_poseta` (`id`, `festival_id`, `scena_id`, `izvodjac_id`, `korisnik_id`, `tip_akcije`, `datum_vreme`) VALUES
(1, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-22 14:05:42'),
(2, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-22 14:08:24'),
(3, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-22 14:08:45'),
(4, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-22 14:13:26'),
(5, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-22 14:19:23'),
(6, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:19:10'),
(7, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:21:12'),
(8, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:24:24'),
(9, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:27:14'),
(10, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:29:41'),
(11, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:37:16'),
(12, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:38:18'),
(13, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:39:45'),
(14, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:43:25'),
(15, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:44:59'),
(16, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:53:44'),
(17, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 17:53:59'),
(18, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:02:17'),
(19, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:06:43'),
(20, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:08:04'),
(21, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:09:28'),
(22, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:10:20'),
(23, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:13:27'),
(24, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:15:49'),
(25, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:20:41'),
(26, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:21:35'),
(27, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:22:53'),
(28, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:23:03'),
(29, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:24:45'),
(30, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:25:16'),
(31, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:26:00'),
(32, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:26:16'),
(33, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:27:00'),
(34, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:27:50'),
(35, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-23 18:28:49'),
(36, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:33:53'),
(37, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:33:57'),
(38, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:34:03'),
(39, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:36:03'),
(40, 6, 11, NULL, NULL, 'poseta_sceni', '2025-02-24 18:36:09'),
(41, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:36:50'),
(42, 1, 2, NULL, NULL, 'poseta_sceni', '2025-02-24 18:36:56'),
(43, 1, 3, NULL, NULL, 'poseta_sceni', '2025-02-24 18:36:59'),
(44, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:37:05'),
(45, 2, 4, NULL, NULL, 'poseta_sceni', '2025-02-24 18:37:13'),
(46, 2, 5, NULL, NULL, 'poseta_sceni', '2025-02-24 18:37:14'),
(47, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:37:20'),
(48, 3, 6, NULL, NULL, 'poseta_sceni', '2025-02-24 18:37:22'),
(49, 3, 7, NULL, NULL, 'poseta_sceni', '2025-02-24 18:37:24'),
(50, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:37:29'),
(51, 4, 8, NULL, NULL, 'poseta_sceni', '2025-02-24 18:37:32'),
(52, 4, 9, NULL, NULL, 'poseta_sceni', '2025-02-24 18:37:34'),
(53, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:37:39'),
(54, 6, 10, NULL, NULL, 'poseta_sceni', '2025-02-24 18:37:42'),
(55, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:38:38'),
(56, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:44:26'),
(57, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:47:09'),
(58, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:49:33'),
(59, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:52:23'),
(60, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:52:37'),
(61, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:56:25'),
(62, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 18:59:22'),
(63, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 19:03:52'),
(64, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-24 19:08:22'),
(65, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-25 12:44:22'),
(66, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-25 12:47:48'),
(67, 1, 1, NULL, NULL, 'poseta_sceni', '2025-02-25 12:47:50'),
(68, 1, 1, NULL, NULL, 'poseta_sceni', '2025-02-25 12:47:50'),
(69, 1, 2, NULL, NULL, 'poseta_sceni', '2025-02-25 12:47:51'),
(70, 1, 2, NULL, NULL, 'poseta_sceni', '2025-02-25 12:47:52'),
(71, 1, 2, NULL, NULL, 'poseta_sceni', '2025-02-25 12:47:52'),
(72, 1, 1, NULL, NULL, 'poseta_sceni', '2025-02-25 12:47:53'),
(73, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-25 12:48:53'),
(74, 6, 11, NULL, NULL, 'poseta_sceni', '2025-02-25 12:48:57'),
(75, 6, 11, NULL, NULL, 'poseta_sceni', '2025-02-25 12:48:58'),
(76, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-02-25 13:17:57'),
(77, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 10:23:33'),
(78, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 10:42:38'),
(79, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 10:45:29'),
(80, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 15:08:04'),
(81, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-02 15:08:07'),
(82, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-02 15:08:08'),
(83, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-02 15:08:11'),
(84, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-02 15:08:12'),
(85, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-02 15:18:19'),
(86, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-02 15:21:08'),
(87, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-02 15:21:12'),
(88, 0, NULL, 18, NULL, 'poseta_izvodjacu', '2025-03-02 15:21:17'),
(89, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 16:34:56'),
(90, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-02 16:34:59'),
(91, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-02 16:35:00'),
(92, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-02 16:35:02'),
(93, 0, NULL, 20, NULL, 'poseta_izvodjacu', '2025-03-02 16:35:16'),
(94, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-02 17:10:33'),
(95, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-02 17:23:04'),
(96, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-02 17:31:57'),
(97, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 17:49:03'),
(98, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 18:52:40'),
(99, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:01:02'),
(100, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:01:12'),
(101, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:01:25'),
(102, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:02:15'),
(103, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:17:49'),
(104, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-02 19:17:59'),
(105, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-02 19:18:00'),
(106, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-02 19:18:01'),
(107, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-02 19:18:02'),
(108, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:18:14'),
(109, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-02 19:18:31'),
(110, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:18:43'),
(111, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:20:43'),
(112, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:20:49'),
(113, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:21:06'),
(114, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-02 19:23:36'),
(115, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 15:34:21'),
(116, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 15:34:31'),
(117, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-03 15:37:27'),
(118, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 15:38:13'),
(119, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-03 15:39:24'),
(120, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-03 15:51:08'),
(121, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-03 15:54:42'),
(122, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 15:54:58'),
(123, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 16:06:55'),
(124, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 16:22:58'),
(125, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-03 16:23:13'),
(126, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 16:30:22'),
(127, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 16:32:11'),
(128, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 16:33:55'),
(129, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-03 20:35:59'),
(130, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-03 20:36:11'),
(131, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-03 20:36:49'),
(132, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-03 20:37:07'),
(133, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:09:12'),
(134, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-04 09:41:56'),
(135, 0, NULL, 17, NULL, 'poseta_izvodjacu', '2025-03-04 09:42:39'),
(136, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:45:59'),
(137, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-04 09:46:29'),
(138, 0, NULL, 14, NULL, 'poseta_izvodjacu', '2025-03-04 09:47:17'),
(139, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-04 09:47:20'),
(140, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:51:08'),
(141, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-04 09:51:16'),
(142, 0, NULL, 18, NULL, 'poseta_izvodjacu', '2025-03-04 09:51:23'),
(143, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:52:55'),
(144, 0, NULL, 17, NULL, 'poseta_izvodjacu', '2025-03-04 09:53:02'),
(145, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:53:43'),
(146, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-03-04 09:53:47'),
(147, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:54:02'),
(148, 0, NULL, 14, NULL, 'poseta_izvodjacu', '2025-03-04 09:57:12'),
(149, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:57:31'),
(150, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-04 09:57:43'),
(151, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-04 09:57:52'),
(152, 0, NULL, 14, NULL, 'poseta_izvodjacu', '2025-03-04 09:57:55'),
(153, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 09:58:14'),
(154, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-04 09:59:32'),
(155, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-04 09:59:32'),
(156, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 10:00:08'),
(157, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 10:00:18'),
(158, 0, NULL, 14, NULL, 'poseta_izvodjacu', '2025-03-04 10:00:21'),
(159, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-03-04 10:00:25'),
(160, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-04 10:00:28'),
(161, 0, NULL, 18, NULL, 'poseta_izvodjacu', '2025-03-04 10:00:33'),
(162, 0, NULL, 19, NULL, 'poseta_izvodjacu', '2025-03-04 10:00:40'),
(163, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 10:02:08'),
(164, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-04 10:02:17'),
(165, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-04 10:02:22'),
(166, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-04 10:02:23'),
(167, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-04 10:02:36'),
(168, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-04 10:02:39'),
(169, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-04 10:02:40'),
(170, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-04 10:02:41'),
(171, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 10:04:23'),
(172, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-04 10:07:05'),
(173, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-04 18:58:16'),
(174, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-04 18:58:39'),
(175, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-04 18:58:44'),
(176, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-03-04 18:58:51'),
(177, 0, NULL, 17, NULL, 'poseta_izvodjacu', '2025-03-04 18:58:55'),
(178, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 18:59:33'),
(179, 0, NULL, 14, NULL, 'poseta_izvodjacu', '2025-03-04 19:06:05'),
(180, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-03-04 19:06:09'),
(181, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-04 19:06:15'),
(182, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-04 19:20:04'),
(183, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-04 19:35:31'),
(184, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-04 19:48:16'),
(185, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-03-04 20:21:04'),
(186, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-05 14:09:02'),
(187, 0, NULL, 20, NULL, 'poseta_izvodjacu', '2025-03-05 14:09:29'),
(188, 0, NULL, 19, NULL, 'poseta_izvodjacu', '2025-03-05 14:09:35'),
(189, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-03-05 14:09:40'),
(190, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 14:09:50'),
(191, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 14:10:18'),
(192, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 14:10:21'),
(193, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 14:10:22'),
(194, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 15:52:07'),
(195, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 15:55:44'),
(196, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:00:31'),
(197, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:00:34'),
(198, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:00:35'),
(199, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:02:31'),
(200, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:05:25'),
(201, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:06:08'),
(202, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:06:09'),
(203, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:07:01'),
(204, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:03'),
(205, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:03'),
(206, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:07:26'),
(207, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:29'),
(208, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:30'),
(209, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:47'),
(210, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:48'),
(211, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:50'),
(212, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:07:50'),
(213, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:09:20'),
(214, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:09:22'),
(215, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:09:22'),
(216, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:12:24'),
(217, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:12:25'),
(218, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:12:26'),
(219, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:12:42'),
(220, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:12:44'),
(221, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:12:45'),
(222, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:18:01'),
(223, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:18:16'),
(224, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:25:47'),
(225, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:26:38'),
(226, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:26:40'),
(227, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:26:41'),
(228, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:27:09'),
(229, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:27:11'),
(230, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:27:12'),
(231, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:27:13'),
(232, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:27:56'),
(233, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:27:59'),
(234, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:27:59'),
(235, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:28:23'),
(236, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:28:25'),
(237, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:28:26'),
(238, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:28:42'),
(239, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:28:42'),
(240, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:35:20'),
(241, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:35:22'),
(242, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:35:24'),
(243, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:37:26'),
(244, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:37:28'),
(245, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:37:29'),
(246, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:38:06'),
(247, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:39:19'),
(248, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:40:16'),
(249, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:40:19'),
(250, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:40:19'),
(251, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:40:21'),
(252, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:40:21'),
(253, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:41:00'),
(254, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:41:02'),
(255, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:41:03'),
(256, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:44:03'),
(257, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:44:06'),
(258, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:44:06'),
(259, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:44:27'),
(260, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:44:28'),
(261, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-05 16:45:36'),
(262, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:45:39'),
(263, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-05 16:45:39'),
(264, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:45:41'),
(265, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-05 16:45:42'),
(266, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:45:44'),
(267, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-05 16:45:45'),
(268, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:30:35'),
(269, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:43'),
(270, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:44'),
(271, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:45'),
(272, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:46'),
(273, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:47'),
(274, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:48'),
(275, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:49'),
(276, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:52'),
(277, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:52'),
(278, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:30:52'),
(279, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:31:58'),
(280, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:01'),
(281, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:02'),
(282, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:03'),
(283, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:32:28'),
(284, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:30'),
(285, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:30'),
(286, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:34'),
(287, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:35'),
(288, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:38'),
(289, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:32:38'),
(290, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:33:59'),
(291, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:34:02'),
(292, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:34:02'),
(293, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:34:37'),
(294, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:34:40'),
(295, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:34:40'),
(296, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:38:04'),
(297, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:38:26'),
(298, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:38:28'),
(299, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:38:29'),
(300, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:38:50'),
(301, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:38:52'),
(302, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:38:53'),
(303, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:40:12'),
(304, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:40:20'),
(305, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:40:21'),
(306, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:41:11'),
(307, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:41:14'),
(308, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:41:14'),
(309, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:41:46'),
(310, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:41:47'),
(311, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:42:43'),
(312, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:42:45'),
(313, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:42:47'),
(314, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:47:58'),
(315, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:48:06'),
(316, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:48:10'),
(317, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:48:11'),
(318, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:48:54'),
(319, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:48:57'),
(320, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 10:48:57'),
(321, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:49:00'),
(322, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 10:49:00'),
(323, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:49:04'),
(324, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:49:04'),
(325, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:50:23'),
(326, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:50:25'),
(327, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:50:26'),
(328, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 10:50:29'),
(329, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:50:37'),
(330, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:50:41'),
(331, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:50:41'),
(332, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:50:52'),
(333, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:50:53'),
(334, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:51:47'),
(335, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:51:49'),
(336, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:51:50'),
(337, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:52:59'),
(338, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:53:02'),
(339, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:53:03'),
(340, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:53:15'),
(341, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:53:15'),
(342, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:54:36'),
(343, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:54:38'),
(344, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:54:38'),
(345, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:54:46'),
(346, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:54:47'),
(347, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:54:48'),
(348, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:55:14'),
(349, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:55:16'),
(350, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:55:16'),
(351, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:55:18'),
(352, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:55:18'),
(353, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:55:22'),
(354, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:55:22'),
(355, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:56:14'),
(356, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:56:17'),
(357, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:56:17'),
(358, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:56:59'),
(359, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:57:01'),
(360, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:57:03'),
(361, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:57:10'),
(362, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:57:11'),
(363, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:57:13'),
(364, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-06 10:57:13'),
(365, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:59:06'),
(366, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:59:08'),
(367, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-06 10:59:09'),
(368, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 10:59:20'),
(369, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 10:59:27'),
(370, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 10:59:27'),
(371, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 10:59:30'),
(372, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 10:59:30'),
(373, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:00:04'),
(374, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:00:07'),
(375, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:00:08'),
(376, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:00:10'),
(377, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:00:10'),
(378, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:04:12'),
(379, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:04:19'),
(380, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:04:22'),
(381, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:04:23'),
(382, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:04:47'),
(383, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:04:54'),
(384, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:04:55'),
(385, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:05:46'),
(386, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:05:48'),
(387, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:05:49'),
(388, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:07:27'),
(389, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 11:07:32'),
(390, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 11:07:33'),
(391, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:08:03'),
(392, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:08:06'),
(393, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:08:07'),
(394, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:08:22'),
(395, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:08:24'),
(396, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:08:24'),
(397, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:08:25'),
(398, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:08:26'),
(399, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:09:27'),
(400, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:09:30'),
(401, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:09:30'),
(402, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:10:09'),
(403, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-06 11:10:09'),
(404, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:10:41'),
(405, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:10:44'),
(406, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-06 11:10:45'),
(407, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:11:13'),
(408, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:11:23'),
(409, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:11:35'),
(410, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-06 11:11:41'),
(411, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-06 11:11:42'),
(412, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-06 11:11:43'),
(413, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-06 11:11:44'),
(414, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:12:09'),
(415, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-06 11:12:12'),
(416, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-06 11:12:12'),
(417, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-06 11:12:14'),
(418, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-06 11:12:14'),
(419, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:13:46'),
(420, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-06 11:13:48'),
(421, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-06 11:13:49'),
(422, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-06 11:13:51'),
(423, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-06 11:13:51'),
(424, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:14:34'),
(425, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:15:55'),
(426, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:15:56'),
(427, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:15:57'),
(428, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:15:58'),
(429, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:16:21'),
(430, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:16:23'),
(431, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:16:24'),
(432, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:16:25'),
(433, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:16:25'),
(434, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:18:23'),
(435, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:18:49'),
(436, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:19:24'),
(437, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:19:25'),
(438, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:19:26'),
(439, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:19:26'),
(440, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:20:27'),
(441, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:20:30'),
(442, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:20:30'),
(443, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:20:33'),
(444, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:20:34'),
(445, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:21:21'),
(446, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:21:23'),
(447, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:21:24'),
(448, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:21:32'),
(449, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:21:32'),
(450, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:21:33'),
(451, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:21:34'),
(452, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:23:01'),
(453, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:23:04'),
(454, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-06 11:23:05'),
(455, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:23:07'),
(456, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-06 11:23:08'),
(457, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:24:01'),
(458, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:26:31'),
(459, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 11:27:44'),
(460, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 11:27:44'),
(461, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 11:27:46'),
(462, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 11:27:46'),
(463, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 11:27:47'),
(464, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 11:27:47'),
(465, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:28:37'),
(466, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:29:03'),
(467, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 11:29:21'),
(468, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-06 11:29:22'),
(469, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 11:29:23'),
(470, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-06 11:29:23'),
(471, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 11:29:25'),
(472, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-06 11:29:25'),
(473, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:39:25'),
(474, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:44:09'),
(475, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:44:33'),
(476, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 11:45:15'),
(477, 0, NULL, 21, NULL, 'poseta_izvodjacu', '2025-03-06 11:49:56'),
(478, 0, NULL, 19, NULL, 'poseta_izvodjacu', '2025-03-06 16:23:07'),
(479, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-06 16:24:14'),
(480, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 09:01:48'),
(481, 15, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 09:29:39'),
(482, 15, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 09:34:33'),
(483, 16, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 09:39:33'),
(484, 17, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 09:50:42'),
(485, 17, 12, NULL, NULL, 'poseta_sceni', '2025-03-10 09:50:47'),
(486, 17, 12, NULL, NULL, 'poseta_sceni', '2025-03-10 09:50:47'),
(487, 17, 12, NULL, NULL, 'poseta_sceni', '2025-03-10 09:50:48'),
(488, 17, 13, NULL, NULL, 'poseta_sceni', '2025-03-10 09:50:49'),
(489, 17, 13, NULL, NULL, 'poseta_sceni', '2025-03-10 09:50:50'),
(490, 17, 13, NULL, NULL, 'poseta_sceni', '2025-03-10 09:50:51'),
(491, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:04:35'),
(492, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-10 20:04:38'),
(493, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-10 20:04:38'),
(494, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-10 20:04:44'),
(495, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-10 20:04:44'),
(496, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-10 20:04:45'),
(497, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-10 20:04:46'),
(498, 18, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:21:56'),
(499, 18, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:22:17'),
(500, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:28:09'),
(501, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:28:20'),
(502, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:32:12'),
(503, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:32:36'),
(504, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:33:23'),
(505, 18, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:33:32'),
(506, 19, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:42:12'),
(507, 20, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-10 20:52:45'),
(508, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:49'),
(509, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:49'),
(510, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:50'),
(511, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:51'),
(512, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:52'),
(513, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:52'),
(514, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:53'),
(515, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:53'),
(516, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:54'),
(517, 20, 14, NULL, NULL, 'poseta_sceni', '2025-03-10 20:52:55'),
(518, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-10 20:56:31'),
(519, 0, NULL, 22, NULL, 'poseta_izvodjacu', '2025-03-10 20:56:53'),
(520, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-10 20:58:15'),
(521, 21, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 10:38:38'),
(522, 21, 15, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:41'),
(523, 21, 15, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:42'),
(524, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:44'),
(525, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:44'),
(526, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:45'),
(527, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:46'),
(528, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:46'),
(529, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:47'),
(530, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:54'),
(531, 21, 16, NULL, NULL, 'poseta_sceni', '2025-03-11 10:38:55'),
(532, 22, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 10:50:10'),
(533, 22, 17, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:14'),
(534, 22, 17, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:14'),
(535, 22, 18, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:17'),
(536, 22, 18, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:17'),
(537, 22, 18, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:18'),
(538, 22, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 10:50:24'),
(539, 22, 17, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:26'),
(540, 22, 17, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:26'),
(541, 22, 18, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:28'),
(542, 22, 18, NULL, NULL, 'poseta_sceni', '2025-03-11 10:50:28'),
(543, 23, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 10:59:30'),
(544, 23, 19, NULL, NULL, 'poseta_sceni', '2025-03-11 10:59:33'),
(545, 23, 19, NULL, NULL, 'poseta_sceni', '2025-03-11 10:59:33'),
(546, 23, 20, NULL, NULL, 'poseta_sceni', '2025-03-11 10:59:34'),
(547, 23, 20, NULL, NULL, 'poseta_sceni', '2025-03-11 10:59:35'),
(548, 23, 20, NULL, NULL, 'poseta_sceni', '2025-03-11 10:59:35'),
(549, 23, 20, NULL, NULL, 'poseta_sceni', '2025-03-11 10:59:36'),
(550, 24, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:05:53'),
(551, 24, 22, NULL, NULL, 'poseta_sceni', '2025-03-11 11:05:56'),
(552, 24, 22, NULL, NULL, 'poseta_sceni', '2025-03-11 11:05:56'),
(553, 24, 21, NULL, NULL, 'poseta_sceni', '2025-03-11 11:05:58'),
(554, 24, 21, NULL, NULL, 'poseta_sceni', '2025-03-11 11:05:58'),
(555, 25, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:09:44'),
(556, 25, 23, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:47'),
(557, 25, 23, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:47'),
(558, 25, 24, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:48'),
(559, 25, 24, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:48'),
(560, 25, 24, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:49'),
(561, 25, 24, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:50'),
(562, 25, 24, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:56'),
(563, 25, 24, NULL, NULL, 'poseta_sceni', '2025-03-11 11:09:56'),
(564, 26, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:12:42'),
(565, 26, 25, NULL, NULL, 'poseta_sceni', '2025-03-11 11:12:44'),
(566, 26, 25, NULL, NULL, 'poseta_sceni', '2025-03-11 11:12:45'),
(567, 27, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:18:56'),
(568, 27, 26, NULL, NULL, 'poseta_sceni', '2025-03-11 11:18:58'),
(569, 27, 26, NULL, NULL, 'poseta_sceni', '2025-03-11 11:18:59'),
(570, 28, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:23:34'),
(571, 28, 27, NULL, NULL, 'poseta_sceni', '2025-03-11 11:23:37'),
(572, 28, 27, NULL, NULL, 'poseta_sceni', '2025-03-11 11:23:37'),
(573, 28, 28, NULL, NULL, 'poseta_sceni', '2025-03-11 11:23:38'),
(574, 28, 28, NULL, NULL, 'poseta_sceni', '2025-03-11 11:23:38'),
(575, 29, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:26:50'),
(576, 29, 29, NULL, NULL, 'poseta_sceni', '2025-03-11 11:26:53'),
(577, 29, 29, NULL, NULL, 'poseta_sceni', '2025-03-11 11:26:53'),
(578, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:26:55'),
(579, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:26:55'),
(580, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:26:56'),
(581, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:26:57'),
(582, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:29:56'),
(583, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-11 11:29:59'),
(584, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-11 11:29:59'),
(585, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-11 11:30:01'),
(586, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-11 11:30:01'),
(587, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-11 11:30:02'),
(588, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-11 11:30:02'),
(589, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-11 11:30:03'),
(590, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-11 11:30:04'),
(591, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:33:25'),
(592, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:27'),
(593, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:27'),
(594, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:30'),
(595, 1, 2, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:30'),
(596, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:32'),
(597, 1, 3, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:33'),
(598, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:33:43'),
(599, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:45'),
(600, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:45'),
(601, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:46'),
(602, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:46'),
(603, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:48'),
(604, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-11 11:33:48'),
(605, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:34:01'),
(606, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:05'),
(607, 3, 6, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:05'),
(608, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:07'),
(609, 3, 7, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:07'),
(610, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:34:14'),
(611, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:17'),
(612, 4, 8, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:18'),
(613, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:19'),
(614, 4, 9, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:19'),
(615, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:34:36'),
(616, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:40'),
(617, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:40'),
(618, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:42'),
(619, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-11 11:34:43'),
(620, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:34:57'),
(621, 29, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-11 11:34:58'),
(622, 29, 29, NULL, NULL, 'poseta_sceni', '2025-03-11 11:35:06'),
(623, 29, 29, NULL, NULL, 'poseta_sceni', '2025-03-11 11:35:06'),
(624, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:35:08'),
(625, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:35:08'),
(626, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:35:09'),
(627, 29, 30, NULL, NULL, 'poseta_sceni', '2025-03-11 11:35:10'),
(628, 0, NULL, 22, NULL, 'poseta_izvodjacu', '2025-03-11 11:35:36'),
(629, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-11 11:35:56'),
(630, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-17 17:45:55'),
(631, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-17 17:46:33'),
(632, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-20 13:01:31'),
(633, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:49:40'),
(634, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:50:50'),
(635, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:51:01'),
(636, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-21 12:51:19'),
(637, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-21 12:51:19'),
(638, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:51:52'),
(639, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:53:03'),
(640, 29, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:53:21'),
(641, 29, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:53:26'),
(642, 29, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-21 12:53:26'),
(643, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-21 12:53:39'),
(644, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-21 12:55:55'),
(645, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-03-26 13:59:17'),
(646, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-03-26 13:59:35'),
(647, 0, NULL, 14, NULL, 'poseta_izvodjacu', '2025-03-26 13:59:38'),
(648, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-26 13:59:40'),
(649, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-03-26 14:01:44'),
(650, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:05:24'),
(651, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-28 11:05:28'),
(652, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-28 11:05:29'),
(653, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:05:34'),
(654, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-28 11:05:37'),
(655, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-28 11:05:39'),
(656, 2, 5, NULL, NULL, 'poseta_sceni', '2025-03-28 11:05:39'),
(657, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:07:50'),
(658, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:07:55'),
(659, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-28 11:07:58'),
(660, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-28 11:08:00'),
(661, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-28 11:08:01'),
(662, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-28 11:08:03'),
(663, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-28 11:08:03'),
(664, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-28 11:08:04'),
(665, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:08:10'),
(666, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:08:15'),
(667, 29, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:08:22'),
(668, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:31:31'),
(669, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-28 11:31:35'),
(670, 6, 10, NULL, NULL, 'poseta_sceni', '2025-03-28 11:31:36'),
(671, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-28 11:31:38'),
(672, 6, 11, NULL, NULL, 'poseta_sceni', '2025-03-28 11:31:39'),
(673, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:33:00'),
(674, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:43:22'),
(675, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-28 11:43:25'),
(676, 1, 1, NULL, NULL, 'poseta_sceni', '2025-03-28 11:43:25'),
(677, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:49:45'),
(678, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-28 11:49:49'),
(679, 2, 4, NULL, NULL, 'poseta_sceni', '2025-03-28 11:49:50'),
(680, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-03-28 11:50:16'),
(681, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:03:51'),
(682, 6, 10, NULL, NULL, 'poseta_sceni', '2025-04-19 17:04:15'),
(683, 6, 10, NULL, NULL, 'poseta_sceni', '2025-04-19 17:04:18'),
(684, 6, 11, NULL, NULL, 'poseta_sceni', '2025-04-19 17:04:20'),
(685, 6, 11, NULL, NULL, 'poseta_sceni', '2025-04-19 17:04:21'),
(686, 6, 11, NULL, NULL, 'poseta_sceni', '2025-04-19 17:04:21'),
(687, 6, 11, NULL, NULL, 'poseta_sceni', '2025-04-19 17:04:22'),
(688, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:04:29'),
(689, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:04:29'),
(690, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:04:40'),
(691, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:05:08'),
(692, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:05:08'),
(693, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:05:17'),
(694, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-19 17:05:20'),
(695, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-04-19 17:05:29'),
(696, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-04-19 17:05:34'),
(697, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-04-25 09:20:36'),
(698, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-05-15 13:41:23'),
(699, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-05-15 13:42:01'),
(700, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-05-15 13:43:22'),
(701, 1, 1, NULL, NULL, 'poseta_sceni', '2025-05-15 13:43:33'),
(702, 1, 2, NULL, NULL, 'poseta_sceni', '2025-05-15 13:43:34'),
(703, 1, 2, NULL, NULL, 'poseta_sceni', '2025-05-15 13:43:35'),
(704, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-06-12 09:41:59'),
(705, 0, NULL, 16, NULL, 'poseta_izvodjacu', '2025-06-12 09:42:37'),
(706, 0, NULL, 18, NULL, 'poseta_izvodjacu', '2025-06-12 09:42:43'),
(707, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-06-12 09:43:01'),
(708, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-06-12 09:46:01'),
(709, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-06-23 16:38:38'),
(710, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-08-28 15:42:17'),
(711, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-28 15:43:04'),
(712, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-28 15:43:19'),
(713, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-28 15:46:20'),
(714, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-28 15:52:57'),
(715, 0, NULL, 15, NULL, 'poseta_izvodjacu', '2025-08-29 05:28:28'),
(716, 0, NULL, 6, NULL, 'poseta_izvodjacu', '2025-08-29 05:52:34'),
(717, 0, NULL, 8, NULL, 'poseta_izvodjacu', '2025-08-29 05:52:41'),
(718, 0, NULL, 14, NULL, 'poseta_izvodjacu', '2025-08-29 05:52:46'),
(719, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:53:54'),
(720, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:55:25'),
(721, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:56:03'),
(722, 2, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:56:15'),
(723, 4, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:56:20'),
(724, 6, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:56:25'),
(725, 29, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:56:30'),
(726, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 05:56:36'),
(727, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 06:07:20'),
(728, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 06:21:02'),
(729, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 06:21:39'),
(730, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 06:37:57'),
(731, 3, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 06:58:49'),
(732, 1, NULL, NULL, NULL, 'poseta_festivalu', '2025-08-29 09:23:26');

-- --------------------------------------------------------

--
-- Table structure for table `zanrovi`
--

DROP TABLE IF EXISTS `zanrovi`;
CREATE TABLE IF NOT EXISTS `zanrovi` (
  `zanr_id` int NOT NULL AUTO_INCREMENT,
  `naziv_zanra` varchar(255) NOT NULL,
  PRIMARY KEY (`zanr_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `zanrovi`
--

INSERT INTO `zanrovi` (`zanr_id`, `naziv_zanra`) VALUES
(1, 'Elektronska muzika'),
(2, 'Rock'),
(3, 'Jazz'),
(4, 'Pop'),
(5, 'Hip-hop'),
(6, 'Alternativa'),
(7, 'Metal'),
(8, 'Pank'),
(9, 'Narodna muzika'),
(10, 'Reggae');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
