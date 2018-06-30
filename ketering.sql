-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2018 at 12:50 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ketering`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `idAdmin` int(11) NOT NULL,
  `adminUserName` varchar(20) CHARACTER SET utf8 NOT NULL,
  `adminPassword` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`idAdmin`, `adminUserName`, `adminPassword`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `brojposeta`
--

CREATE TABLE `brojposeta` (
  `broj` int(10) NOT NULL,
  `IdPosete` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brojposeta`
--

INSERT INTO `brojposeta` (`broj`, `IdPosete`) VALUES
(175, '01F03F510B56271FDAD7AC4B00A302BE'),
(224, '022E739353B1EE549E50389CD804C020'),
(64, '03BEB6506CE0BB00EAE4DAD6593DB30B'),
(131, '03FBEC460D42EA80584B0AD2EDD97008'),
(57, '0519F96EAF78F9E568A86DF53531B03A'),
(211, '09B0B0EB1E114385D900C2900E7B7AA6'),
(205, '1'),
(96, '12436EDC2DD334EDB7D79332A6099247'),
(103, '150148CD2D909041B56922DD69546FFD'),
(153, '170C17E949D6F6BEBD5FAC2A4ED0D603'),
(60, '1AA776C9914412536B931F0D977B5CF5'),
(132, '2079D6FB2204CC9F9246A966649183E8'),
(197, '2094E6966C95C539D36FEFFA760341AF'),
(107, '2970BC384809681D89C22B6AE7E00374'),
(194, '29F0CC03B9B0EB2FBC789423ADA1044E'),
(179, '2BB5C85990A8BDA08FD8C0E247725071'),
(161, '2C645A64A5A9047C17CF7B1F08DCE84F'),
(185, '390C5E1BEB11948983DBEE65CB2E8572'),
(233, '39572C3B1022B596A5D7D75252F615E5'),
(209, '3A6A84BA9CAD97B48713916C58535B6F'),
(49, '4142A0060F8128B79CB23A73BA64AB9E'),
(124, '42740A9CE99ED88816EF1E3142E8BA6B'),
(58, '427998A22E1732C08ECE5486990ECA67'),
(219, '431281E162B68FB306A454A5365F5233'),
(15, '435E8D5BE72321524739CD1A9E7416FC'),
(42, '46317B7A1F867EDC76FA7AE484001DEC'),
(111, '469E760743728BBC7CC55C4B105EBEDC'),
(221, '4774E2059031A606BF68F44F34A6C831'),
(216, '4839A8422A094D1EDAEE0A0C5333E6BA'),
(145, '485A02D6D7251CD937F520F9B0A84BB2'),
(192, '4C587C9AEE5C4FA5A24348C40846EEF9'),
(181, '5045EC971CE6658B6EC4B42F0F7CF7AF'),
(68, '52386AD82D61BE12FE3F5CEF1882A9B3'),
(118, '57C054219229866EA7DDE7D38E7219B4'),
(198, '58394FC851118F50DF36CAEEAC1B185C'),
(23, '5AB2392AC88C49BDD5AB7ED929791920'),
(178, '5BF52580284B1007D85202528DDBB7F6'),
(204, '5EB9A64BFC13096A02717A09DA6C89B1'),
(26, '613E552A8D0F2EE82441FFF8E96AB197'),
(148, '626C406AA5684B55B28B13AD8DC753C1'),
(177, '639932743586B797238A5DEF59F31952'),
(21, '651B8FB329029B51F69FB03F9AA03743'),
(51, '6CDCFBF9AB152686158AD3B3F905F334'),
(228, '6D08249AD2B44C68A798E625823BC86D'),
(122, '6E0A8F4B282BF049F92E5149458862D8'),
(189, '6EC0AFCED504E4ACA6FF93209753B3AC'),
(208, '7010572FE32D75F0E6EFEEFD484763B0'),
(28, '7420FA7CB5FE87CE5DB6A2D848A923C8'),
(87, '7A7B1DA62B15C8EE8B85842CE3178BA1'),
(232, '7B63DFBEDF51DCF61242BFBA3C9254D3'),
(112, '7BCB21FAD611DCC6F14B2BF6FA651D6C'),
(226, '8079607CB7B4D45E8D3F59DA716EC792'),
(54, '8165B13A352A10E179F5A064C245DFBA'),
(44, '8183E748C9F0E93B1162B8C14D0DACCF'),
(109, '81F0175F018F3EBED2BAA9ECA2ADF939'),
(206, '821D8EB0F47270F951181517330FBD21'),
(20, '82304A5F5C4E00AFAAE00B0C8BBE1AE0'),
(53, '8743BBA93B66F73E023863EBFBF3D482'),
(108, '884A81803119B945CFFEF9F17E59B76E'),
(55, '889713E6E66E1866CE04CFEE3F9B8A19'),
(220, '8B5D1BFF9B070FC4034C313EE1D3BA94'),
(104, '8B61C8F5CAF72C9EA73ED0BA0BBF5C15'),
(50, '8CD41F55270F42C12D2BC04A28D1F258'),
(101, '8D6A97E61A5596F6B8D0F79D14D233CA'),
(65, '8DDC1A990A2961A9967201BE874759BD'),
(105, '8EDA90441C8C0C2E347048B703F07C79'),
(8, '8F56B8F99BA904C0187FE974BB7AD016'),
(200, '8FBB4E4C1ECA99AC76CC7633768D5A33'),
(214, '94CE1B9A101E84BF0BE870B1589F7387'),
(187, '95087CA2C2D74B3E76EC5ABC220F13A0'),
(173, '969F7932E29B48ED8FF042D00E537C79'),
(196, '96FE686194CB21F7C94ED44920FF71EF'),
(13, '972362F19B81CD8C6419A53F39C86F2C'),
(236, '98F1E549D4FBEBE297924AB2969AA703'),
(61, '998F80B3173959B556B1581FBE3942E0'),
(117, '9A8B216297623A6853CEE353CC20C6B3'),
(162, '9BF69EA398E71820517AE772475F826F'),
(217, '9E61256E32FFABC74DA2CEAE49EB4C56'),
(59, '9EC66FBFB742E914284EC911A71FEE03'),
(16, '9ED216EDB19B8CFB6E2CB9D917C5A379'),
(230, '9F05C543D78E217E99B2F7A65D1F22B2'),
(126, '9FABB4F6FD925226EA23B25B24B1CAD8'),
(174, 'A02492EEB5387B1F296BA1C6DFDCA151'),
(56, 'A098AB76ED841982631BAABC3023C580'),
(203, 'A57011ED7786756D21E53A1B41D3ADAD'),
(29, 'A580A5F12870ACB9FF167E1A62E5B3B4'),
(141, 'A87C646B6D70C132D61929F1DB9A5029'),
(115, 'A9A6406DC2A24424C2C3C1AB69EC0898'),
(163, 'AACACB58AA04368D98D630BF8817FB76'),
(36, 'ACC82724D6C4AECF396FEEE12AFCEE85'),
(150, 'ACF35810439CDFFA38306930F43418E2'),
(167, 'AEE8F183859C960F98050DBD4047BC11'),
(227, 'B101FFB0EEB05F886DB60576BFFF25DC'),
(164, 'B12FD2AE2B0C7C8BDD38F2D39E61DD1D'),
(88, 'B4B1E2AE491C2C8375EEC9992C06EBD5'),
(137, 'B5F63C21912CF9A2B82C3CC01656E094'),
(213, 'B7FA515500BD99C8A433F954759023D1'),
(97, 'B821C2CB554004CB486E1B6CAB407309'),
(116, 'B94D43C7FCDF1795DC4FE1F7E9BCDFD4'),
(160, 'BD1C84104C31FE5C5EEFC1A2A1A8786E'),
(229, 'BE38EC0A3F472C5035C61171CA5F5150'),
(199, 'BF5A8C6B69C8F7A43346638AB2F23C8C'),
(67, 'C39666DC216B2FD9DCAB8EE56A7741D0'),
(91, 'C3A4B510F5669F32B4EEB1AC2DA8F34B'),
(202, 'C56AA612C72863E6E1ED84C9B3E5F5C2'),
(48, 'C762ACF7ADA1B485C2DA5D2805489A95'),
(37, 'C9C6C546D0D02CBEDB07CC1255165B96'),
(225, 'CA1D740D756ABD3A5A9EABDBD75DDB67'),
(95, 'CA93DB6C155DC8E66032B1CAFB481756'),
(201, 'D1EA53CBBD88F480B4BD6DC7E2534551'),
(195, 'D22329B54F22BA67A9D72685F26F39EB'),
(40, 'D2D1CE95C94DC66D879341345BF14772'),
(154, 'D65D9F72DD89397BDB407C2CD681D402'),
(140, 'D7CE1422DB26C4F4A11DB12E1C2FDE38'),
(166, 'DC928EB133673EB2C6C53A9969767460'),
(237, 'DE1794835AC097559CF5CB79D3DB7240'),
(210, 'DF4531588FDF56BA24C59D0FF8279C97'),
(147, 'DFCA9BB94A6FECB14FB9D81343C1458A'),
(106, 'E2FB451498A417E5489D090F1540E90F'),
(149, 'E69185BD220A0E43D5CB922A30B43EE4'),
(102, 'E71A6CA14F27CE7D97FC13447E992932'),
(133, 'E84362D5271FE0403E08175C1124F829'),
(151, 'EDB3FC1921887A825761188A6CADA75F'),
(32, 'EE29CF128FEF9F0FB62CA1EF9823564A'),
(43, 'EF0287A8E9C4EA08B8AE289373C5A041'),
(223, 'EF3772BCBB97A01AFFCD6862CBF0B046'),
(11, 'F01E375E91445B04C1C8133AD8CD002E'),
(218, 'F0D502B9CDC20F7D2E921D0E675F804A'),
(14, 'F1B6EEBCC5AC8CD64D6D77B404ACF924'),
(222, 'F29E69D02D4B919E91DAF14199F7FA25'),
(34, 'F362579F6B1C716C662223C267229AAD'),
(234, 'F4E53E719405C101929BF926BD2010A6'),
(188, 'F75561DFCC58109E56A23586713BFE19'),
(35, 'FAB3B8F58B84DFAD8FBFF14CD1601F0B'),
(47, 'FE9E77FC05A1A659C28B55BF610A5A33');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija`
--

CREATE TABLE `kategorija` (
  `idKategorije` int(11) NOT NULL,
  `nazivKategorije` varchar(50) DEFAULT NULL,
  `opisKategorije` varchar(50) NOT NULL,
  `vrsta` varchar(20) NOT NULL,
  `slikaKategorije` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategorija`
--

INSERT INTO `kategorija` (`idKategorije`, `nazivKategorije`, `opisKategorije`, `vrsta`, `slikaKategorije`) VALUES
(1, 'Slani zalogaji', 'Slane korpice, zelirana bajadera, kuglice od sira', 'slano', 'slike/kategorije/slaniZalogaji.jpg'),
(2, 'Kanapei i sendvici', 'Deciji sendvici, kanapei, mini sendvici', 'slano', 'slike/kategorije/kanapeiISendvici.jpg'),
(3, 'Meso', 'Prasece pecenje, jagnjece pecenje, mesani rostilj', 'slano', 'slike/kategorije/meso.jpg'),
(4, 'Pite i peciva', 'Pita sa kupusom, pita sa krompirom, pita sa sirom.', 'slano', 'slike/kategorije/piteIPeciva.jpg'),
(5, 'Posno', 'Slane korpice, filet oslica, mesana pohovana riba', 'slano', 'slike/kategorije/posno.jpg'),
(6, 'Slatko', 'Sitni kolaci, torte, zito, zito u kuglicama...', 'slatko', 'slike/kategorije/slatko.jpg'),
(7, 'Salate', 'Salate od kupusa i soje, kukuruza, prolecna salata', 'slano', 'slike/kategorije/salate.jpg'),
(8, 'Slani rolati i torte', 'Torta od paprika, slana torta, domino kocke, rolat', 'slano', 'slike/kategorije/slaniRolatiITorte.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `klijent`
--

CREATE TABLE `klijent` (
  `IDKorisnika` int(11) NOT NULL,
  `DatumRegistracije` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `IDKorisnika` int(11) NOT NULL,
  `Ime` varchar(255) NOT NULL,
  `Prezime` varchar(255) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Adresa` varchar(255) NOT NULL,
  `Telefon` varchar(30) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `radnoMesto` varchar(20) DEFAULT 'klijent'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`IDKorisnika`, `Ime`, `Prezime`, `Username`, `Password`, `Adresa`, `Telefon`, `Email`, `radnoMesto`) VALUES
(3, 'Nebojsa', 'Lazovic', 'laza', 'laza', '17 oktobar 59', '011222333', 'neb.lazovic@gmail.com', 'klijent'),
(4, 'Dragana', 'Lazovic', 'gaga', 'gagili', '17 oktobar 59 ', '011222334', 'gaga.lazovic@gmail.com', 'klijent'),
(7, 'Mile', 'Markovic', 'mile', 'mile', 'Pregrevica 116', '01144456', 'mile@gmail.com', 'klijent'),
(21, 'Jovan', 'Jovanovic', 'admin', 'admin', 'Administratorska kolonija 2', '022154826', 'admin@gmail.com', 'admin'),
(22, 'Dragan', 'Dragovic', 'menadzer', 'menadzer', 'Menadzerski raj bb', '0124587965', 'menadzer@gmail.com', 'menadzer'),
(23, 'Milovan', 'Milovanovic', 'sefPoslovnice', 'sefPoslovnice', 'Dusanova 34', '032548542', 'milovan@gmail.com', 'sefPoslovnice'),
(24, 'Petar', 'Petrovic', 'sefKuhinje', 'sefKuhinje', 'Kuhinjska 35', '011845789', 'petar@gmail.com', 'sefKuhinje'),
(26, 'Vesela', 'Markovic', 'veka', 'veka', 'Pregrevica 116', '0112107343', 'veka@gmail', 'klijent'),
(27, 'Branko', 'Orlandic', 'krofnica', 'krofnica', 'Frontovska 32', '0600388250', 'bane@gmail.com', 'klijent'),
(28, 'Mila', 'Jesic', 'milady', 'milady', 'Les Vallees 22', '01223165323', 'milady@gmail.com', 'klijent'),
(29, 'Zorana', 'Mihajlovic', 'Zoka', 'zoka', 'skupstina 7', '0119899542', 'zoka@skupstina', 'sefKuhinje'),
(30, 'Svetlana', 'Jevremovic', 'svetlana', 'svetlana1', 'jkggjhkf', '26466541', 'kjhdfklsh;s@hdskfhjks', 'klijent');

-- --------------------------------------------------------

--
-- Table structure for table `kuhinja`
--

CREATE TABLE `kuhinja` (
  `IDKuhinje` int(11) NOT NULL,
  `tipKuhinje` varchar(20) NOT NULL,
  `brojZaposlenih` int(11) DEFAULT NULL,
  `IDPoslovnice` int(11) NOT NULL,
  `IDKorisnika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menadzer`
--

CREATE TABLE `menadzer` (
  `IDKorisnika` int(11) NOT NULL,
  `IDMenadzera` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `namirnice`
--

CREATE TABLE `namirnice` (
  `IDNamirnice` int(11) NOT NULL,
  `nazivNamirnice` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `narudzbenicanamirnica`
--

CREATE TABLE `narudzbenicanamirnica` (
  `IDNarudzbenice` int(11) NOT NULL,
  `DatumNarudzbenice` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `porudzbina`
--

CREATE TABLE `porudzbina` (
  `IDPorudzbine` int(11) NOT NULL,
  `datumPorudzbine` varchar(30) NOT NULL,
  `datumIsporuke` varchar(30) DEFAULT NULL,
  `imeUplatioca` varchar(50) NOT NULL,
  `adresaUplatioca` varchar(255) NOT NULL,
  `adresaPrimaoca` varchar(255) DEFAULT NULL,
  `telPrimaoca` varchar(50) DEFAULT NULL,
  `emailUplatioca` varchar(100) DEFAULT NULL,
  `imePrimaoca` varchar(50) DEFAULT NULL,
  `CreditCard` varchar(50) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `porudzbina`
--

INSERT INTO `porudzbina` (`IDPorudzbine`, `datumPorudzbine`, `datumIsporuke`, `imeUplatioca`, `adresaUplatioca`, `adresaPrimaoca`, `telPrimaoca`, `emailUplatioca`, `imePrimaoca`, `CreditCard`, `status`) VALUES
(1, '20-02-2016', '25-02-2016', 'Nebojsa Lazovic', '17 oktobar 59', '17 oktobar 59', NULL, NULL, 'Nebojsa Lazovic', NULL, 'isporucena'),
(4, '15.2.2015.', '17.2.2016.', 'Milja Lazovic', 'Vinogradarska 9', '17.oktobar 59 v', '0112223333', 'neb.lazovic@gmail.com', 'Nebojsa Lazovic', '4455111122', 'porucena'),
(5, '15.2.2015.', '17.2.2016.', 'Nebojsa Lazovic', 'Vinogradarska 9', '17.oktobar 59 v', '0112223333', 'neb.lazovic@gmail.com', 'Nebojsa Lazovic', '4455111122', 'porucena'),
(6, '13.07.2016', '15.07.2016', 'Miladinka Jesic', 'fkjsdfkhk', 'gjkhgjgj', '7956453', 'milady@gmail', 'Miladinka Jesic', '98765431', 'isporucena'),
(7, '02.12.2017.', '06.12.2017.', 'Milos Sestic', 'Aleksinackih rudara 2', 'Aleksinackih rudara 2', '0116549895', 'sekiSestic@gmail.com', 'Milos Sestic', '65464641', 'isporucena');

-- --------------------------------------------------------

--
-- Table structure for table `poslovnica`
--

CREATE TABLE `poslovnica` (
  `IDPoslovnice` int(11) NOT NULL,
  `imePoslovnice` varchar(255) NOT NULL,
  `telefonPoslovnice` varchar(30) NOT NULL,
  `adresaPoslovnice` varchar(255) NOT NULL,
  `IDKorisnika` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `proizvod`
--

CREATE TABLE `proizvod` (
  `IDProizvoda` int(11) NOT NULL,
  `nazivProizvoda` varchar(100) NOT NULL,
  `IDKategorije` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `slika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `proizvod`
--

INSERT INTO `proizvod` (`IDProizvoda`, `nazivProizvoda`, `IDKategorije`, `cena`, `slika`) VALUES
(1, 'Kesten rolat', 6, 1400, 'slike/proizvodi/slatko/kestenRolat.jpg'),
(2, 'Pita sa jabukama i orasima', 6, 700, 'slike/proizvodi/slatko/pitaSaJabukamaIOrasima.jpg'),
(3, 'Kuglice od mesa', 3, 1600, 'slike/proizvodi/slano/kugliceOdMesa.jpg'),
(4, 'Kuglice od sira', 1, 950, 'slike/proizvodi/slano/kugliceOdSira.jpg'),
(5, 'Pita sa krompirom', 4, 850, 'slike/proizvodi/slano/pitaSaKrompirom.jpg'),
(6, 'Pita sa kupusom', 4, 850, 'slike/proizvodi/slano/pitaSaKupusom.jpg'),
(7, 'Pita sa sirom', 4, 850, 'slike/proizvodi/slano/pitaSaSirom.jpg'),
(8, 'Rolovani file', 3, 1400, 'slike/proizvodi/slano/rolovaniFile.jpg'),
(9, 'Slana torta', 1, 1000, 'slike/proizvodi/slano/slanaTorta.jpg'),
(10, 'Slane korpice', 1, 950, 'slike/proizvodi/slano/slaneKorpice.jpg'),
(11, 'Pita sa visnjama', 6, 850, 'slike/proizvodi/slatko/pitaSaVisnjama.jpg'),
(12, 'Posni sitni kolaci', 6, 900, 'slike/proizvodi/slatko/posniSitniKolaci.jpg'),
(13, 'Sitni kolaci', 6, 750, 'slike/proizvodi/slatko/sitniKolaci.jpg'),
(14, 'Strudla sa makom', 6, 900, 'slike/proizvodi/slatko/strudlaSaMakom.jpg'),
(15, 'Strudla sa orasima', 6, 1000, 'slike/proizvodi/slatko/strudlaSaOrasima.jpg'),
(16, 'Torte', 6, 1800, 'slike/proizvodi/slatko/torte.jpg'),
(17, 'Zito', 6, 550, 'slike/proizvodi/slatko/zito.jpg'),
(18, 'Zito u kuglicama', 6, 600, 'slike/proizvodi/slatko/zitoUKuglicama.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reklamacija`
--

CREATE TABLE `reklamacija` (
  `IDReklamacije` int(11) NOT NULL,
  `datumReklamacije` varchar(30) NOT NULL,
  `datumPorudzbine` varchar(30) NOT NULL,
  `opis` varchar(500) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'poslata',
  `IDPorudzbine` int(11) DEFAULT NULL,
  `ime` varchar(25) NOT NULL,
  `prezime` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reklamacija`
--

INSERT INTO `reklamacija` (`IDReklamacije`, `datumReklamacije`, `datumPorudzbine`, `opis`, `status`, `IDPorudzbine`, `ime`, `prezime`, `email`) VALUES
(1, '26-02-2016', '20-02-2016', 'Nije isporucena na vreme', 'obradjena', 1, 'Nebojsa', 'Lazovic', 'neb.lazovic@gmail.com'),
(5, '11.09.2000.', '12.09.2000.', 'Ne svidja mi se', 'obradjena', NULL, 'Nebojsa', 'Lazovic', 'neb.lazovic@gmail.com'),
(6, '15.03.1852.', '12.03.1852.', 'Turci sve pojeli', 'obradjena', NULL, 'Milan', 'Obrenovic', 'kraljMilan@gmail.com'),
(7, '15.03.1852.', '12.03.1852.', 'Budjav lebac', 'obradjena', NULL, 'Dragoslav', 'Markovic', 'draza@gmail.com'),
(8, '13.07.2016', '13.07.2016', 'ghfgddgndfdg', 'obradjena', NULL, 'Svetlana', 'Jevremovic', 'svetlana@gmail');

-- --------------------------------------------------------

--
-- Table structure for table `sefkuhinje`
--

CREATE TABLE `sefkuhinje` (
  `IDKorisnika` int(11) NOT NULL,
  `IDSefaKuhinje` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sefposlovnice`
--

CREATE TABLE `sefposlovnice` (
  `IDKorisnika` int(11) NOT NULL,
  `IDSefaPoslovnice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stanjezaliha`
--

CREATE TABLE `stanjezaliha` (
  `IDStanjaZaliha` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `IDPoslovnice` int(11) NOT NULL DEFAULT '0',
  `IDNamirnice` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stanjezalihaproizvoda`
--

CREATE TABLE `stanjezalihaproizvoda` (
  `redniBroj` int(11) NOT NULL,
  `Datum` datetime NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `IDPoslovnice` int(11) NOT NULL DEFAULT '0',
  `IDProizvoda` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stavkanarudzbenice`
--

CREATE TABLE `stavkanarudzbenice` (
  `redniBroj` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `IDNarudzbenice` int(11) NOT NULL,
  `IDNamirnice` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stavkaporudzbine`
--

CREATE TABLE `stavkaporudzbine` (
  `idStavke` int(11) NOT NULL,
  `Kolicina` int(11) NOT NULL,
  `IDPorudzbine` int(11) NOT NULL DEFAULT '0',
  `IDProizvoda` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zaposleni`
--

CREATE TABLE `zaposleni` (
  `IDKorisnika` int(11) NOT NULL,
  `IDZaposlenog` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `brojposeta`
--
ALTER TABLE `brojposeta`
  ADD PRIMARY KEY (`broj`),
  ADD UNIQUE KEY `IdPosete` (`IdPosete`);

--
-- Indexes for table `kategorija`
--
ALTER TABLE `kategorija`
  ADD PRIMARY KEY (`idKategorije`);

--
-- Indexes for table `klijent`
--
ALTER TABLE `klijent`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`IDKorisnika`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `kuhinja`
--
ALTER TABLE `kuhinja`
  ADD PRIMARY KEY (`IDKuhinje`),
  ADD KEY `IDKorisnika` (`IDKorisnika`),
  ADD KEY `IDPoslovnice` (`IDPoslovnice`);

--
-- Indexes for table `menadzer`
--
ALTER TABLE `menadzer`
  ADD PRIMARY KEY (`IDKorisnika`),
  ADD UNIQUE KEY `IDMenadzera` (`IDMenadzera`);

--
-- Indexes for table `namirnice`
--
ALTER TABLE `namirnice`
  ADD PRIMARY KEY (`IDNamirnice`);

--
-- Indexes for table `narudzbenicanamirnica`
--
ALTER TABLE `narudzbenicanamirnica`
  ADD PRIMARY KEY (`IDNarudzbenice`);

--
-- Indexes for table `porudzbina`
--
ALTER TABLE `porudzbina`
  ADD PRIMARY KEY (`IDPorudzbine`);

--
-- Indexes for table `poslovnica`
--
ALTER TABLE `poslovnica`
  ADD PRIMARY KEY (`IDPoslovnice`),
  ADD KEY `IDKorisnika` (`IDKorisnika`);

--
-- Indexes for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD PRIMARY KEY (`IDProizvoda`),
  ADD KEY `IDKategorije` (`IDKategorije`);

--
-- Indexes for table `reklamacija`
--
ALTER TABLE `reklamacija`
  ADD PRIMARY KEY (`IDReklamacije`),
  ADD KEY `IDPorudzbine` (`IDPorudzbine`);

--
-- Indexes for table `sefkuhinje`
--
ALTER TABLE `sefkuhinje`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- Indexes for table `sefposlovnice`
--
ALTER TABLE `sefposlovnice`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- Indexes for table `stanjezaliha`
--
ALTER TABLE `stanjezaliha`
  ADD PRIMARY KEY (`IDStanjaZaliha`,`IDPoslovnice`,`IDNamirnice`),
  ADD KEY `IDPoslovnice` (`IDPoslovnice`),
  ADD KEY `IDNamirnice` (`IDNamirnice`);

--
-- Indexes for table `stanjezalihaproizvoda`
--
ALTER TABLE `stanjezalihaproizvoda`
  ADD PRIMARY KEY (`IDProizvoda`,`IDPoslovnice`,`redniBroj`),
  ADD KEY `IDPoslovnice` (`IDPoslovnice`);

--
-- Indexes for table `stavkanarudzbenice`
--
ALTER TABLE `stavkanarudzbenice`
  ADD PRIMARY KEY (`IDNarudzbenice`,`redniBroj`,`IDNamirnice`),
  ADD KEY `IDNamirnice` (`IDNamirnice`);

--
-- Indexes for table `stavkaporudzbine`
--
ALTER TABLE `stavkaporudzbine`
  ADD PRIMARY KEY (`IDProizvoda`,`IDPorudzbine`,`idStavke`),
  ADD KEY `IDPorudzbine` (`IDPorudzbine`);

--
-- Indexes for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD PRIMARY KEY (`IDKorisnika`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `brojposeta`
--
ALTER TABLE `brojposeta`
  MODIFY `broj` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;
--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `IDKorisnika` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `kuhinja`
--
ALTER TABLE `kuhinja`
  MODIFY `IDKuhinje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `namirnice`
--
ALTER TABLE `namirnice`
  MODIFY `IDNamirnice` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `poslovnica`
--
ALTER TABLE `poslovnica`
  MODIFY `IDPoslovnice` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reklamacija`
--
ALTER TABLE `reklamacija`
  MODIFY `IDReklamacije` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `stanjezaliha`
--
ALTER TABLE `stanjezaliha`
  MODIFY `IDStanjaZaliha` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `klijent`
--
ALTER TABLE `klijent`
  ADD CONSTRAINT `klijent_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `korisnik` (`IDKorisnika`);

--
-- Constraints for table `kuhinja`
--
ALTER TABLE `kuhinja`
  ADD CONSTRAINT `kuhinja_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `sefkuhinje` (`IDKorisnika`),
  ADD CONSTRAINT `kuhinja_ibfk_2` FOREIGN KEY (`IDPoslovnice`) REFERENCES `poslovnica` (`IDPoslovnice`);

--
-- Constraints for table `menadzer`
--
ALTER TABLE `menadzer`
  ADD CONSTRAINT `menadzer_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `zaposleni` (`IDKorisnika`);

--
-- Constraints for table `poslovnica`
--
ALTER TABLE `poslovnica`
  ADD CONSTRAINT `poslovnica_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `sefposlovnice` (`IDKorisnika`);

--
-- Constraints for table `proizvod`
--
ALTER TABLE `proizvod`
  ADD CONSTRAINT `proizvod_ibfk_2` FOREIGN KEY (`IDKategorije`) REFERENCES `kategorija` (`idKategorije`);

--
-- Constraints for table `reklamacija`
--
ALTER TABLE `reklamacija`
  ADD CONSTRAINT `reklamacija_ibfk_1` FOREIGN KEY (`IDPorudzbine`) REFERENCES `porudzbina` (`IDPorudzbine`);

--
-- Constraints for table `sefkuhinje`
--
ALTER TABLE `sefkuhinje`
  ADD CONSTRAINT `sefkuhinje_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `zaposleni` (`IDKorisnika`);

--
-- Constraints for table `sefposlovnice`
--
ALTER TABLE `sefposlovnice`
  ADD CONSTRAINT `sefposlovnice_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `zaposleni` (`IDKorisnika`);

--
-- Constraints for table `stanjezaliha`
--
ALTER TABLE `stanjezaliha`
  ADD CONSTRAINT `stanjezaliha_ibfk_1` FOREIGN KEY (`IDPoslovnice`) REFERENCES `poslovnica` (`IDPoslovnice`),
  ADD CONSTRAINT `stanjezaliha_ibfk_2` FOREIGN KEY (`IDNamirnice`) REFERENCES `namirnice` (`IDNamirnice`);

--
-- Constraints for table `stanjezalihaproizvoda`
--
ALTER TABLE `stanjezalihaproizvoda`
  ADD CONSTRAINT `stanjezalihaproizvoda_ibfk_2` FOREIGN KEY (`IDPoslovnice`) REFERENCES `poslovnica` (`IDPoslovnice`);

--
-- Constraints for table `stavkanarudzbenice`
--
ALTER TABLE `stavkanarudzbenice`
  ADD CONSTRAINT `stavkanarudzbenice_ibfk_1` FOREIGN KEY (`IDNarudzbenice`) REFERENCES `narudzbenicanamirnica` (`IDNarudzbenice`),
  ADD CONSTRAINT `stavkanarudzbenice_ibfk_2` FOREIGN KEY (`IDNamirnice`) REFERENCES `namirnice` (`IDNamirnice`);

--
-- Constraints for table `stavkaporudzbine`
--
ALTER TABLE `stavkaporudzbine`
  ADD CONSTRAINT `stavkaporudzbine_ibfk_1` FOREIGN KEY (`IDProizvoda`) REFERENCES `proizvod` (`IDProizvoda`),
  ADD CONSTRAINT `stavkaporudzbine_ibfk_2` FOREIGN KEY (`IDPorudzbine`) REFERENCES `porudzbina` (`IDPorudzbine`);

--
-- Constraints for table `zaposleni`
--
ALTER TABLE `zaposleni`
  ADD CONSTRAINT `zaposleni_ibfk_1` FOREIGN KEY (`IDKorisnika`) REFERENCES `korisnik` (`IDKorisnika`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
