-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 03 2019 г., 22:34
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `new_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `cart`
--

CREATE TABLE `cart` (
  `#` int(11) NOT NULL,
  `id_session` text NOT NULL,
  `id_good` int(11) NOT NULL,
  `pic` text NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `stotal` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Дамп данных таблицы `cart`
--

INSERT INTO `cart` (`#`, `id_session`, `id_good`, `pic`, `price`, `quantity`, `stotal`, `name`) VALUES
(770, 'n0js6mftq9kfqnppuh5l93p09jtb3rtd', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(778, 'ij6iu9n5ampv150vmf1ah48sh2id8f4p', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(779, 'ij6iu9n5ampv150vmf1ah48sh2id8f4p', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(780, 'ij6iu9n5ampv150vmf1ah48sh2id8f4p', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(782, 'h6pcsue7iqcpo134lp8gdg17ji1guhf9', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(783, 'h6pcsue7iqcpo134lp8gdg17ji1guhf9', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(786, '05b2o8k2fqocfvftuj329bdh80u4ngf0', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(787, '05b2o8k2fqocfvftuj329bdh80u4ngf0', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(788, '05b2o8k2fqocfvftuj329bdh80u4ngf0', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(791, '1r7cqq0nvvc0oijjtroq1tuodo96r78d', 2, '02.jpg', 64, 3, 64, 'men s coat'),
(798, 'uev9c41vmtjnd5ke7b1km3408pu87184', 4, '04.jpg', 28, 4, 112, 'T-shirt'),
(799, 'uev9c41vmtjnd5ke7b1km3408pu87184', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(800, 'uev9c41vmtjnd5ke7b1km3408pu87184', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(801, 'uev9c41vmtjnd5ke7b1km3408pu87184', 1, '01.jpg', 52, 2, 104, 'men s jacket'),
(813, '1esgplddtpcla1fifsjjcvsqtfuikdbn', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(814, '1esgplddtpcla1fifsjjcvsqtfuikdbn', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(815, '1esgplddtpcla1fifsjjcvsqtfuikdbn', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(817, 'k65b7k006t3n80kfs16suhgccfl1k8ct', 2, '02.jpg', 64, 2, 128, 'men s coat'),
(820, '6ddvo8lerd5g5deqo56hmoctaknqnptl', 5, '05.jpg', 32, 3, 96, 'jacket'),
(821, '6ddvo8lerd5g5deqo56hmoctaknqnptl', 2, '02.jpg', 64, 4, 256, 'men s coat'),
(822, 'hntgtdsctouqh4evcgu1dn4s1lgqaiem', 1, '01.jpg', 52, 3, 156, 'men s jacket'),
(823, 'hntgtdsctouqh4evcgu1dn4s1lgqaiem', 2, '02.jpg', 64, 7, 448, 'men s coat'),
(824, 'q568d3jktguit6jli79dl0b0s2rlcnm3', 2, '02.jpg', 64, 5, 320, 'men s coat'),
(825, 'mnkm4111glf4ccogq79i30r2h9issm9v', 2, '02.jpg', 64, 5, 320, 'men s coat'),
(826, '6guobgdnhleld3vda913j2h027reh525', 1, '01.jpg', 52, 5, 260, 'men s jacket'),
(827, 'b7fca1v3gikofktg2ouo9o2ngip2qqih', 1, '01.jpg', 52, 5, 260, 'men s jacket'),
(828, 'a0glk23u1bdk0hnna490nami0epp32h9', 3, '03.jpg', 26, 5, 130, 'T-shirt'),
(829, 'amciu1spkumbnp49d1ukrnulgttessd1', 4, '04.jpg', 28, 3, 84, 'T-shirt'),
(830, 'hh59s04s17p7b1cj0k9rhuu1eq3b7fqc', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(831, 'iofj9n5mvf73irvrtp6d87ppiremd3ji', 5, '05.jpg', 32, 1, 32, 'jacket'),
(832, '2of7hmpl21im48bpepkkjcjp1bedkkbu', 5, '05.jpg', 32, 1, 32, 'jacket'),
(833, '7hptjjenhdumktf3s4h7madj9efuhplp', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(834, 'jtmo8b08g6djto3gp7r0u1c210hse3dj', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(835, 'obc26beied839dvd6ogtnf2turaa0cs5', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(836, 'obc26beied839dvd6ogtnf2turaa0cs5', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(837, 'mul490seqg9eldblj4b451hi7qr4ie9i', 1, '01.jpg', 52, 3, 156, 'men s jacket'),
(838, 'mul490seqg9eldblj4b451hi7qr4ie9i', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(839, '4ra71ssaa1t5e49a70kv87l2oja9rmvf', 2, '02.jpg', 64, 3, 192, 'men s coat'),
(840, 'taj1utc6548afbjggkdtrepm8hsqf1tq', 1, '01.jpg', 52, 3, 156, 'men s jacket'),
(841, 'jhb0ssng67l61mlnbirb99cdsqfbt01h', 1, '01.jpg', 52, 3, 156, 'men s jacket'),
(842, 'q0b749nsp3m7fnn698a85di7bfhb9veb', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(843, 't3aqri0sv546hthnhmnmcm0n97hu066a', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(844, 'fruahh43upjhm2cd1adpt8q71tc3m6d1', 7, '07.jpg', 38, 4, 152, 'jacket'),
(845, 'gf9v2ua53d8nmi8736jpgi5nl1ecmhnk', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(846, 'gf9v2ua53d8nmi8736jpgi5nl1ecmhnk', 2, '02.jpg', 64, 2, 128, 'men s coat'),
(847, '9n7278crvh5cv247s3h81ppthkib9mg0', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(848, 'svggc1lumhhhsukg5klpqolq2fbjmrh0', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(849, '1u1chh7ujea8d4pkfffs1p09afahqqlb', 4, '04.jpg', 28, 3, 84, 'T-shirt'),
(850, 'm1jrj02i3u7paqn1tt5lspluadlaqiad', 8, '08.jpg', 42, 4, 168, 'down jacket'),
(851, 'tjokoustb3o1ua48jesl41m996l58ha5', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(852, 'ajvndckrc0srdu401risc1qe5h0kf1uu', 2, '02.jpg', 64, 3, 192, 'men s coat'),
(853, 'ajvndckrc0srdu401risc1qe5h0kf1uu', 5, '05.jpg', 32, 1, 32, 'jacket'),
(854, 'fcdmf4b96hovqb9qcudmebrdns085r92', 4, '04.jpg', 28, 5, 140, 'T-shirt'),
(855, 'qa1kcnm90recimf9a2fgqamfe9crs1ik', 3, '03.jpg', 26, 2, 52, 'T-shirt'),
(856, 'qtpq45h154gpf8flh2mnk27ljcq1hq1h', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(857, 'qtpq45h154gpf8flh2mnk27ljcq1hq1h', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(858, 'ob45iscvu48rfgh7d9lmig3cc276ho3a', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(861, '9rmgq5r49rt12tqfs0olphut75e2saie', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(862, 'q0p0hepdap391vojojekoouml1mkk9iq', 7, '07.jpg', 38, 3, 114, 'jacket'),
(863, '0ih7h18krv0dfolshfv21jvlu771l8qn', 2, '02.jpg', 64, 2, 128, 'men s coat'),
(864, 'vrins7v8kk7vq2b5io2nf2eelkqpuobc', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(865, 'tlfrafhigsirb82h2t8etjfe75klhr99', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(866, 'anie1ps7bg0g6944vj17va9pemhq7blh', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(867, '8lfqdkpmaj2cgqp6k1qhr2co0jnlkkg7', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(868, '8lfqdkpmaj2cgqp6k1qhr2co0jnlkkg7', 2, '02.jpg', 64, 2, 128, 'men s coat'),
(869, '8lfqdkpmaj2cgqp6k1qhr2co0jnlkkg7', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(870, 'q9p00au3q41itivrchh937g9drjahlf5', 4, '04.jpg', 28, 2, 56, 'T-shirt'),
(871, 'osug47a283kq0vs9kmu84jd9kvmkg41m', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(873, '6ldn883h8pf1pe1o7erne7udhm8epa7b', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(874, '6ldn883h8pf1pe1o7erne7udhm8epa7b', 5, '05.jpg', 32, 1, 32, 'jacket'),
(875, '6ldn883h8pf1pe1o7erne7udhm8epa7b', 7, '07.jpg', 38, 1, 38, 'jacket'),
(876, '8ra35su30k6p7d6gbgcibtove0fjhau7', 3, '03.jpg', 26, 3, 78, 'T-shirt'),
(877, '8bcd9i1fhc5515tskmf0ascjmf6iqi0k', 4, '04.jpg', 28, 4, 112, 'T-shirt'),
(880, '0mbs647e3g9n3679c63kgdtrj4hkdqvs', 3, '03.jpg', 26, 3, NULL, 'T-shirt'),
(881, '0mbs647e3g9n3679c63kgdtrj4hkdqvs', 8, '08.jpg', 42, 1, NULL, 'down jacket'),
(882, 'j5l84bhu1mpnbphh48bshjhfvb8lvst2', 3, '03.jpg', 26, 1, NULL, 'T-shirt'),
(883, '3orc6oan15lrbiba9so8em1sf90p47ec', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(884, 'iiu5mq3e3getlgb056t66i2qkr0il4vl', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(885, 'iiu5mq3e3getlgb056t66i2qkr0il4vl', 6, '06.jpg', 28, 2, 56, 'vest'),
(886, 'iiu5mq3e3getlgb056t66i2qkr0il4vl', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(887, 'or1us8aafr3guvv5gtkg05p61mumremi', 5, '05.jpg', 32, 3, 96, 'jacket'),
(889, 'jkrs75bkvdh4aes8vve8k3nvgtl19rjq', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(890, 'jkrs75bkvdh4aes8vve8k3nvgtl19rjq', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(891, '6akrb7fg7ps9vv1cdeia42skl9qj5khc', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(893, 'tvpmidtk4fg8l279a6mq7bg0kf6e5so4', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(894, 'tvpmidtk4fg8l279a6mq7bg0kf6e5so4', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(895, 'tvpmidtk4fg8l279a6mq7bg0kf6e5so4', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(896, 'qblam2q988mf9kih0kmj90gi3u9jpoog', 5, '05.jpg', 32, 1, 32, 'jacket'),
(897, 'qblam2q988mf9kih0kmj90gi3u9jpoog', 6, '06.jpg', 28, 1, 28, 'vest'),
(898, 'qblam2q988mf9kih0kmj90gi3u9jpoog', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(899, 'k06r1mugh2joemsfu11m58r64fva38c3', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(900, '088k9b46t19jf5javd3fh9sfccpoonva', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(901, 'q0ba4bh8371gr1h4c6hmj4b9no96q396', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(902, 'q0ba4bh8371gr1h4c6hmj4b9no96q396', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(903, 'cp0qovukjne38ahpgfpigho038l9p1mh', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(904, '1rs65kvbpd7558e4gifq0fj5oecp1cfb', 7, '07.jpg', 38, 1, 38, 'jacket'),
(905, 'gvgdfusg1chofqtkdjk6vktcumr68bbr', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(906, 'ldgh3uthg16h2drvjglbtfaue7t3hu9j', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(907, 'ppccufsl43s7b0bif5b0egd95ta45h87', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(908, 'vrr1fbi93loqh4235ddr14civqf9dsbv', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(909, 'bp7h537go7patl6mflfn2b14q4b9b83s', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(910, 'dblehth4pmkaa8q6k236jige52kg9rf0', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(911, 'cbap5kmhmbpv77j6vkmdv87adcnpduej', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(912, 'pibnkcqj2sdeculf6a5f45144v2vlc2o', 6, '06.jpg', 28, 1, 28, 'vest'),
(913, '20qh8a2gqnsjo0v22b6mgbip1s0hkn9p', 7, '07.jpg', 38, 1, 38, 'jacket'),
(914, '20qh8a2gqnsjo0v22b6mgbip1s0hkn9p', 2, '02.jpg', 64, 3, 192, 'men s coat'),
(915, '20qh8a2gqnsjo0v22b6mgbip1s0hkn9p', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(916, 'e8shi8bcootfeo125isp7jmgenapvqf7', 5, '05.jpg', 32, 1, 32, 'jacket'),
(917, 'e8shi8bcootfeo125isp7jmgenapvqf7', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(918, '44dbqj78t3hc5oaifmupctdem2d619u4', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(919, 'ao4qe8dpo3pvqg0rj7rtk5se1si0sse3', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(920, 'bt4gqjch9c5mrmm2gvskji85un6vddea', 2, '02.jpg', 64, 2, 128, 'men s coat'),
(921, '0lq8qgr3avrads1ld860s8slfjia5lqo', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(922, '3s7kmnu3dem5hd9ogplfcuhrcpi6ftij', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(923, 'nonahsd8k2dsq0b2qj2d48su902a43tf', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(924, 'klncm7upe0npmr4l3vjrgsvtk0afvcri', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(925, 'klncm7upe0npmr4l3vjrgsvtk0afvcri', 2, '02.jpg', 64, 3, 192, 'men s coat'),
(926, 'nn5vjd7a7e8i8ppa2j00pirh506o8qom', 2, '02.jpg', 64, 3, 192, 'men s coat'),
(927, '9b01tllee4pjlp4qr1l9gncboocrp5ck', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(928, 'jr941deojjavn4tgslt0ecuccqqhn2f1', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(929, '6p2jphcuvsp6fbomd05r29qqo8cpg7cg', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(930, 'vf46dkjlqii3ji45kp8iknqgkug82u18', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(931, 'vf46dkjlqii3ji45kp8iknqgkug82u18', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(932, 'pnuocie2p1c1b1magjms38bu87da7f7r', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(934, '913un6451jb5qpmug8usr8hlt0qmreai', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(936, 'vaepgql2kusodqq0mn67t9d7qn4qm19p', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(937, 'vaepgql2kusodqq0mn67t9d7qn4qm19p', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(938, 'v0ap5ut2afm3ad4rog4r3p9k5an1iguk', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(939, 'unfo420ifu3i4a5634g2o3p12ncmfd0g', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(940, '08dphvd6h7lsq5nsp199p5aia9e613u6', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(941, '3djlgqbgu55d8i1sagkg155ioo7nmts7', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(942, '260n6df5k730ka72cpk2d0cknb7tr6th', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(943, 'u2sjc90iidvj6rlvtdb8uvmrhg95be3i', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(944, 'u2sjc90iidvj6rlvtdb8uvmrhg95be3i', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(945, '99lrikehunilflfcatvud68kb5lfscin', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(947, 'oo85bhf8dcoivtmefgport5jsuo4nt1d', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(948, 'o4l1726b3hj408cq1nej658snrijvnjk', 8, '08.jpg', 42, 1, 42, 'down jacket'),
(949, 'ochajgl0umpvrrosuuapng9nmvis5p95', 7, '07.jpg', 38, 1, 38, 'jacket'),
(950, 'jgbautkrrhldr6uultp80v8rejpsoflv', 1, '01.jpg', 52, 1, 52, 'men s jacket'),
(951, 'jbjbgm0mgf9hjruh264romg61mcfj42m', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(952, 'p7qt2nphs6c2ju1premhqpv2kf0m8vni', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(953, 'cvd2d83h44c85onrlo88bijc1vdeu2bb', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(954, 'pr9392p808i7g3pr648e4p9r1gh1fb9e', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(955, 'dktij99tu4rcsb3v756k51795v79omer', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(956, '6b7gmglp5tm3col9iorhd89c023qgtua', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(957, '77gsflt03m43l96th54chp60j6uuuh4l', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(958, 'ci7t4p4e7a173qejul1da374gs240g7g', 6, '06.jpg', 28, 1, 28, 'vest'),
(959, 'vrrkt0nqc66k7nt27fato4tjl5mpv6dk', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(960, 'd2292b0e60ibg8suj9044c1tmsvofedd', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(961, '4nk4jonie6m3rn93nvkhsb7jknue1qaj', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(963, 'ihg2voo72if2uelgtgdqb9vv7fb7fue9', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(964, 'ikj08f2jol55tbilp64jmsl8e7e7crur', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(965, 'ikj08f2jol55tbilp64jmsl8e7e7crur', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(966, '76nobbq9vapd86hte8odm11aul95jlas', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(967, '25ec4g22m2r3m1rkf324hkd2ivh5rfeg', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(968, 'cle1473059gr8n1t6iisdtig1icll039', 3, '03.jpg', 26, 1, 26, 'T-shirt'),
(969, 'kd72lb0jcvsrb7o3vvp7kdnpt8ulujn1', 4, '04.jpg', 28, 2, 56, 'T-shirt'),
(970, 'g6cf5vndnginpkvl5epij3lrdr99ro1o', 5, '05.jpg', 32, 1, 32, 'jacket'),
(971, 'gl5cbffkttgs63c1emhih2qritbg0k08', 8, '08.jpg', 42, 1, 42, 'down jacket'),
(972, 'va1g7g7trgjed5flu0nv68co1b5dselg', 2, '02.jpg', 64, 1, 64, 'men s coat'),
(977, 'sltlg8ordufrvs39rqn1tfsmabj1nsm0', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(978, 'b93ti9mvo13k1cethdcb0vif51joa3m0', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(979, 's66ofa4klo9tngt839cnbvd82cke87o5', 6, '06.jpg', 28, 1, 28, 'vest'),
(980, '0j4br75m57shjsjgs5a5aggd1cn7uo8r', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(981, 'mfli0837dlmq6bifrmi4td5gma6degiu', 8, '08.jpg', 42, 2, 84, 'down jacket'),
(982, 'nu0td8ub7b6po6a62mpa5874hp58ei4n', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(984, 'dsvqact0vm9o0acujtv0lpa8kln0frd2', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(985, 'eb07e36t7bc0n2knjj5pusjt2bl41qp7', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(987, '8ju6vk9qfh4drnkvc136e0jgkkc3d900', 4, '04.jpg', 28, 1, 28, 'T-shirt'),
(1046, 'n703piv86ibq29o5iqptl32tgdde2c5f', 8, '08.jpg', 42, 1, 42, 'down jacket'),
(1048, 'i4mjao3jccsdssro3rq0ob0m8oadham6', 8, '08.jpg', 42, 1, 42, 'down jacket'),
(1049, 'm4btg20hp0r9284pia2i3m1heouhr8sl', 4, '04.jpg', 28, 1, 28, 'T-shirt');

-- --------------------------------------------------------

--
-- Структура таблицы `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `id_good` int(11) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `comments`
--

INSERT INTO `comments` (`id`, `name`, `id_good`, `feedback`) VALUES
(1, 'Nick', 3, 'Отличная куртка!');

-- --------------------------------------------------------

--
-- Структура таблицы `gallery_2`
--

CREATE TABLE `gallery_2` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `displayed` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `gallery_2`
--

INSERT INTO `gallery_2` (`id`, `name`, `displayed`) VALUES
(1, '01.jpg', 5),
(2, '02.jpg', 18),
(3, '03.jpg', 2),
(4, '04.jpg', 1),
(5, '05.jpg', 2),
(6, '06.jpg', 2),
(7, '07.jpg', 2),
(8, '08.jpg', 3),
(9, '09.jpg', 4),
(10, '10.jpg', 0),
(11, '11.jpg', 0),
(12, '12.jpg', 4),
(13, '13.jpg', 0),
(14, '14.jpg', 2),
(15, '15.jpg', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `pic` text NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `pic`, `name`, `price`, `description`) VALUES
(1, '01.jpg', 'men s jacket', 52, 'Colors: black, grey, dark-blue'),
(2, '02.jpg', 'men s coat', 64, 'Colors: black, grey, dark-blue'),
(3, '03.jpg', 'T-shirt', 26, 'Colors: black, grey, dark-blue'),
(4, '04.jpg', 'T-shirt', 28, 'Colors: black, grey, dark-blue'),
(5, '05.jpg', 'jacket', 32, 'Color: black, grey, red '),
(6, '06.jpg', 'vest', 28, 'Colors: black, grey, dark-blue '),
(7, '07.jpg', 'jacket', 38, 'Colors: black, grey, dark-blue '),
(8, '08.jpg', 'down jacket', 42, 'Colors: black, grey, dark-blue ');

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`) VALUES
(1, 'Пицца', 'С сыром, круглая.', 22),
(2, 'Пончик', 'Сладкий, с шоколадом.', 12);

-- --------------------------------------------------------

--
-- Структура таблицы `the_order`
--

CREATE TABLE `the_order` (
  `id` int(11) NOT NULL,
  `id_session` text NOT NULL,
  `date` text NOT NULL,
  `phone_num` bigint(24) NOT NULL,
  `client` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `the_order`
--

INSERT INTO `the_order` (`id`, `id_session`, `date`, `phone_num`, `client`, `status`) VALUES
(38, 'n0js6mftq9kfqnppuh5l93p09jtb3rtd', '280219', 72772727827, 'Serge', 1),
(39, 'ij6iu9n5ampv150vmf1ah48sh2id8f4p', '280219', 45345345, 'Serge', 1),
(40, 'h6pcsue7iqcpo134lp8gdg17ji1guhf9', '280219', 727278287, 'Serge', 1),
(41, '05b2o8k2fqocfvftuj329bdh80u4ngf0', '280219', 7327837837830, 'Nick', 1),
(44, '7ua2hobdfiplb801ehpqd0dlabmoivkc', '280219', 4532782782078, 'Serge', 1),
(45, 'uev9c41vmtjnd5ke7b1km3408pu87184', '280219', 2725757575, 'Nick', 1),
(51, '1tqbrgll7mj7ot8n5g827chk6ntibqlb', '280219', 463783783783, 'Serge', 1),
(52, '1esgplddtpcla1fifsjjcvsqtfuikdbn', '020319', 452727272, 'Nick', 0),
(53, 'k65b7k006t3n80kfs16suhgccfl1k8ct', '020319', 561641981055, 'Ann', 1),
(54, 'chueegjgsl7ikm5kphvnp2mfbvo2uhag', '020319', 561641981055, 'Ann', 1),
(55, '6ddvo8lerd5g5deqo56hmoctaknqnptl', '020319', 3541640654065045, 'Ann', 0),
(56, 'hntgtdsctouqh4evcgu1dn4s1lgqaiem', '020319', 641414155445, 'Nick', 0),
(57, 'q568d3jktguit6jli79dl0b0s2rlcnm3', '020319', 61064161265555, 'Nick', 0),
(58, 'mnkm4111glf4ccogq79i30r2h9issm9v', '020319', 55555555555, 'Nick', 1),
(59, '6guobgdnhleld3vda913j2h027reh525', '020319', 453453453, 'Serge', 0),
(60, '40tq40e6i7m65hqn55sk5vpovt0314lp', '020319', 453453453, 'Serge', 0),
(61, 'b7fca1v3gikofktg2ouo9o2ngip2qqih', '020319', 44444444, 'Nick', 0),
(62, 'a4cpf36vhhpkgs42du2toilnd4qgbnsr', '020319', 44444444, 'Nick', 0),
(63, 'evq8nbvb5fsm8pp5rqnniatimqe3h28a', '020319', 44444444, 'Nick', 0),
(64, 'a0glk23u1bdk0hnna490nami0epp32h9', '020319', 7777785545211, 'Ann', 0),
(77, 't3aqri0sv546hthnhmnmcm0n97hu066a', '030319', 3734373793, 'Serge', 1),
(79, 'gf9v2ua53d8nmi8736jpgi5nl1ecmhnk', '030319', 4545034530, 'Serge', 0),
(83, '1u1chh7ujea8d4pkfffs1p09afahqqlb', '030319', 4444444444444, 'Nick', 0),
(84, 'm1jrj02i3u7paqn1tt5lspluadlaqiad', '030319', 65414168410640, 'Ann', 0),
(106, 'ob45iscvu48rfgh7d9lmig3cc276ho3a', '030319', 554545454545, 'Serge', 0),
(113, '9rmgq5r49rt12tqfs0olphut75e2saie', '030319', 33333, 'Ann', 0),
(117, 'tlfrafhigsirb82h2t8etjfe75klhr99', '040319', 7738, 'Nick', 0),
(119, '8lfqdkpmaj2cgqp6k1qhr2co0jnlkkg7', '100319', 5555, 'Nick', 0),
(121, 'osug47a283kq0vs9kmu84jd9kvmkg41m', '100319', 546, 'admin', 0),
(122, '6ldn883h8pf1pe1o7erne7udhm8epa7b', '130319', 55555555, 'Nick', 0),
(123, '3orc6oan15lrbiba9so8em1sf90p47ec', '200319', 0, '', 0),
(124, 'iiu5mq3e3getlgb056t66i2qkr0il4vl', '200319', 0, '', 0),
(125, 'or1us8aafr3guvv5gtkg05p61mumremi', '200319', 0, '', 0),
(126, 'jkrs75bkvdh4aes8vve8k3nvgtl19rjq', '200319', 0, '', 0),
(127, '6akrb7fg7ps9vv1cdeia42skl9qj5khc', '200319', 654789321, 'Mark', 1),
(128, 'tvpmidtk4fg8l279a6mq7bg0kf6e5so4', '240419', 333444555, 'Mark', 0),
(129, '1rs65kvbpd7558e4gifq0fj5oecp1cfb', '280519', 0, '', 0),
(130, '1rs65kvbpd7558e4gifq0fj5oecp1cfb', '280519', 0, '', 0),
(131, '1rs65kvbpd7558e4gifq0fj5oecp1cfb', '19-05-28', 0, '', 0),
(132, 'gvgdfusg1chofqtkdjk6vktcumr68bbr', '19-05-28', 0, '', 0),
(133, 'oqeoklb83o1eurr2sgait1f56jd581ai', '19-05-28', 0, '', 0),
(134, 'ldgh3uthg16h2drvjglbtfaue7t3hu9j', '19-05-28', 0, '', 0),
(135, 'ppccufsl43s7b0bif5b0egd95ta45h87', '19-05-28', 0, '', 0),
(136, 'vrr1fbi93loqh4235ddr14civqf9dsbv', '19-05-28', 0, '', 0),
(137, 'bp7h537go7patl6mflfn2b14q4b9b83s', '19-05-28', 0, '', 0),
(138, 'dblehth4pmkaa8q6k236jige52kg9rf0', '19-05-28', 0, '', 0),
(139, 'cbap5kmhmbpv77j6vkmdv87adcnpduej', '19-05-28', 0, '', 0),
(140, 'pibnkcqj2sdeculf6a5f45144v2vlc2o', '19-05-28', 0, '', 0),
(141, '20qh8a2gqnsjo0v22b6mgbip1s0hkn9p', '19-05-28', 0, '', 0),
(142, 'e8shi8bcootfeo125isp7jmgenapvqf7', '19-05-28', 0, '', 0),
(143, 'l73gvceus44ndl9ma11q1032p7db510m', '19-05-28', 0, '', 0),
(144, '44dbqj78t3hc5oaifmupctdem2d619u4', '19-05-28', 0, '', 0),
(145, 'ao4qe8dpo3pvqg0rj7rtk5se1si0sse3', '19-05-28', 0, '', 0),
(146, 'bt4gqjch9c5mrmm2gvskji85un6vddea', '19-05-28', 0, '', 0),
(147, '0lq8qgr3avrads1ld860s8slfjia5lqo', '19-05-28', 0, '', 0),
(148, '3s7kmnu3dem5hd9ogplfcuhrcpi6ftij', '19-05-28', 0, '', 0),
(149, 'nonahsd8k2dsq0b2qj2d48su902a43tf', '19-05-28', 77777777777, 'Dima', 0),
(150, 'klncm7upe0npmr4l3vjrgsvtk0afvcri', '19-05-28', 0, '', 0),
(151, 'nn5vjd7a7e8i8ppa2j00pirh506o8qom', '19-05-28', 0, '', 0),
(152, '9b01tllee4pjlp4qr1l9gncboocrp5ck', '19-05-28', 0, '', 0),
(153, 'jr941deojjavn4tgslt0ecuccqqhn2f1', '19-05-28', 0, '', 0),
(154, '6p2jphcuvsp6fbomd05r29qqo8cpg7cg', '19-05-28', 0, '', 0),
(155, 'vf46dkjlqii3ji45kp8iknqgkug82u18', '19-05-29', 0, '', 0),
(156, 'pnuocie2p1c1b1magjms38bu87da7f7r', '19-05-29', 0, '', 0),
(157, '913un6451jb5qpmug8usr8hlt0qmreai', '19-05-29', 0, '', 0),
(158, 'vaepgql2kusodqq0mn67t9d7qn4qm19p', '19-05-29', 0, '', 0),
(159, 'v0ap5ut2afm3ad4rog4r3p9k5an1iguk', '19-05-29', 0, '', 0),
(160, 'unfo420ifu3i4a5634g2o3p12ncmfd0g', '19-05-29', 0, '', 0),
(161, '08dphvd6h7lsq5nsp199p5aia9e613u6', '19-05-29', 0, '', 0),
(162, '3djlgqbgu55d8i1sagkg155ioo7nmts7', '19-05-29', 0, '', 0),
(163, '260n6df5k730ka72cpk2d0cknb7tr6th', '19-05-29', 0, '', 0),
(164, '2g6b31kme1u9prjm2cn86oerm77q0184', '19-05-29', 0, '', 0),
(165, 'u2sjc90iidvj6rlvtdb8uvmrhg95be3i', '19-05-29', 0, '', 0),
(166, '99lrikehunilflfcatvud68kb5lfscin', '19-05-29', 0, '', 0),
(167, 'oo85bhf8dcoivtmefgport5jsuo4nt1d', '19-05-29', 0, '', 0),
(168, 'o4l1726b3hj408cq1nej658snrijvnjk', '19-05-29', 0, '', 0),
(169, 'ochajgl0umpvrrosuuapng9nmvis5p95', '19-05-29', 0, '', 0),
(170, 'jgbautkrrhldr6uultp80v8rejpsoflv', '19-05-29', 0, '', 0),
(171, 'jbjbgm0mgf9hjruh264romg61mcfj42m', '19-05-29', 0, '', 0),
(172, 'p7qt2nphs6c2ju1premhqpv2kf0m8vni', '19-05-29', 0, '', 0),
(173, 'cvd2d83h44c85onrlo88bijc1vdeu2bb', '19-05-29', 0, '', 0),
(174, 'pr9392p808i7g3pr648e4p9r1gh1fb9e', '19-05-29', 0, '', 0),
(175, 'dktij99tu4rcsb3v756k51795v79omer', '19-05-29', 0, '', 0),
(176, '6b7gmglp5tm3col9iorhd89c023qgtua', '19-05-29', 0, '', 0),
(177, '77gsflt03m43l96th54chp60j6uuuh4l', '19-05-29', 0, '', 0),
(178, 'ci7t4p4e7a173qejul1da374gs240g7g', '19-05-29', 0, '', 0),
(179, 'vrrkt0nqc66k7nt27fato4tjl5mpv6dk', '19-05-29', 0, '', 0),
(180, 'd2292b0e60ibg8suj9044c1tmsvofedd', '19-05-29', 0, '', 0),
(181, '4nk4jonie6m3rn93nvkhsb7jknue1qaj', '19-05-29', 0, '', 0),
(183, 'ihg2voo72if2uelgtgdqb9vv7fb7fue9', '19-05-29', 0, '', 1),
(184, 'ikj08f2jol55tbilp64jmsl8e7e7crur', '19-05-29', 0, '', 0),
(185, '76nobbq9vapd86hte8odm11aul95jlas', '19-05-29', 0, '', 0),
(186, '25ec4g22m2r3m1rkf324hkd2ivh5rfeg', '19-05-29', 0, '', 0),
(187, 'cle1473059gr8n1t6iisdtig1icll039', '19-05-29', 0, '', 0),
(188, 'kd72lb0jcvsrb7o3vvp7kdnpt8ulujn1', '19-05-29', 0, '', 0),
(189, 'g6cf5vndnginpkvl5epij3lrdr99ro1o', '19-05-29', 0, '', 0),
(190, 'gl5cbffkttgs63c1emhih2qritbg0k08', '19-05-29', 0, '', 0),
(191, 'va1g7g7trgjed5flu0nv68co1b5dselg', '19-05-29', 0, '', 0),
(192, 'b93ti9mvo13k1cethdcb0vif51joa3m0', '19-05-29', 5555555, 'опопооп', 0),
(193, 's66ofa4klo9tngt839cnbvd82cke87o5', '19-05-29', 0, '', 0),
(194, 'mfli0837dlmq6bifrmi4td5gma6degiu', '19-05-29', 0, '', 0),
(195, 'nu0td8ub7b6po6a62mpa5874hp58ei4n', '19-05-29', 0, '', 0),
(196, 's58tr19ejbhi4587k23qju2o62m7kdim', '19-05-29', 0, '', 0),
(197, 'hrq181041pk8fcudcor5t1f6tlodcuc0', '19-05-29', 0, '', 0),
(198, 'e04b1d26v64j5nvfrnegsend5o09r842', '19-05-29', 0, '', 0),
(199, '1aghqthb8305u511gp5pbos0m54g72sb', '19-05-29', 0, '', 0),
(200, 'dsvqact0vm9o0acujtv0lpa8kln0frd2', '19-05-29', 0, '', 0),
(201, '8ju6vk9qfh4drnkvc136e0jgkkc3d900', '19-06-03', 0, '', 0),
(202, 'hih3blql3i6tavcpj1cb8drjsi1b5b7c', '19-06-03', 0, '', 0),
(203, 'n703piv86ibq29o5iqptl32tgdde2c5f', '19-06-03', 44444, 'aaaaa', 0),
(204, 'i4mjao3jccsdssro3rq0ob0m8oadham6', '19-06-03', 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `login` text NOT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `phone` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`, `hash`, `phone`) VALUES
(1, 'admin', '$2y$12$JV40M2R0XjdZNzA5KSgqM.EP0xbm6rSLi62eIxK8lRhufrunFiTRq', '21449529685c7a86a64297f5.33543390', 4545454545),
(2, 'Nick', '$2y$12$JV40M2R0XjdZNzA5KSgqM.dhibLq71Ttz8do2sEp88j4vVwWHZA3e', '14311512465c7a86ba771f39.64404278', 56565656565),
(3, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.v3yg6h0rxdEM5HfnNBRItBaH.4bjXc2', '12048450605c7a86c7aad1e8.65961781', 8989898989),
(5, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 5555555),
(7, 'bob2', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 5555555),
(8, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 88888888888),
(9, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 5555555),
(10, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 888888888),
(11, 'jack', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 88888888),
(12, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 888),
(13, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 4444444),
(14, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 111),
(15, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 2222222222222),
(16, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 33333),
(17, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 9999999),
(18, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 33333),
(19, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 33333),
(20, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 333),
(21, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 444),
(22, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 444),
(23, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 666),
(24, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 333),
(25, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 777),
(26, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 444),
(27, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 333),
(28, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 6),
(29, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 555),
(30, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 444),
(31, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 33333),
(32, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 5),
(33, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 1111),
(34, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.dhibLq71Ttz8do2sEp88j4vVwWHZA3e', '123', 222),
(35, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.dhibLq71Ttz8do2sEp88j4vVwWHZA3e', '123', 222),
(36, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.v3yg6h0rxdEM5HfnNBRItBaH.4bjXc2', '123', 333),
(37, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.tQU.Ih7q7RhnVxsicbFzWWtEA2ROrrK', '123', 777),
(38, 'jack', '$2y$12$JV40M2R0XjdZNzA5KSgqM.keL1Q0KsjfHh9to1A/cp3uGG64wAdhq', '123', 4444444),
(39, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.zCE4rgINm3pW8r0VkQVHScjEKGYotLe', '123', 5555),
(40, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.Nb/CaP3R/42NKFgGrmAt34IS/Xj.jlK', '123', 55),
(41, 'Mary', '$2y$12$JV40M2R0XjdZNzA5KSgqM.v3yg6h0rxdEM5HfnNBRItBaH.4bjXc2', '123', 33),
(42, 'Ann', '$2y$12$JV40M2R0XjdZNzA5KSgqM.0chTITLINdxfEFdV87xuGXlfOu2b7Mm', '123', 7777),
(43, 'bob2', '$2y$12$JV40M2R0XjdZNzA5KSgqM.zCE4rgINm3pW8r0VkQVHScjEKGYotLe', '123', 555),
(44, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 44),
(45, 'bob', '$2y$12$JV40M2R0XjdZNzA5KSgqM.v3yg6h0rxdEM5HfnNBRItBaH.4bjXc2', '123', 3),
(46, 'Mephodius', '$2y$12$JV40M2R0XjdZNzA5KSgqM.dhibLq71Ttz8do2sEp88j4vVwWHZA3e', '123', 123456789),
(47, 'Mary2', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 66332255),
(48, 'eeeee', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 8989898989),
(49, 'df', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 5555555),
(50, 'll', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 3333333),
(51, 'ааа', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 7777777),
(52, 'h', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 4444444),
(53, 'hghgh', '$2y$12$JV40M2R0XjdZNzA5KSgqM.WO5ss1.BiXksbyzYBcSSnWA4f2Klpeu', '123', 3333333);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`#`);

--
-- Индексы таблицы `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gallery_2`
--
ALTER TABLE `gallery_2`
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `the_order`
--
ALTER TABLE `the_order`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `cart`
--
ALTER TABLE `cart`
  MODIFY `#` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1050;

--
-- AUTO_INCREMENT для таблицы `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `gallery_2`
--
ALTER TABLE `gallery_2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `goods`
--
ALTER TABLE `goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `the_order`
--
ALTER TABLE `the_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
