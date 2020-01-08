-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 11:40 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytrack`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `episode_id` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `comment_date` datetime NOT NULL,
  `comment_id` int(11) NOT NULL,
  `comment_parentid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`episode_id`, `user_id`, `comment`, `comment_date`, `comment_id`, `comment_parentid`, `status`) VALUES
('tt0944947S1E7', 19, 'hey', '2019-09-12 20:09:19', 1, 0, 1),
('tt0944947S1E7', 19, 'i like this episode a lot', '2019-09-12 20:13:29', 2, 0, 1),
('tt0944947S1E5', 19, 'it was fine episode', '2019-09-12 20:45:20', 4, 0, 1),
('tt0944947S2E3', 19, 'It was fine but not that good', '2019-09-14 14:24:06', 19, 0, 1),
('tt0944947S1E1', 18, '  hey', '2019-09-18 20:52:07', 20, 0, 1),
('tt0944947S1E1', 19, '  hey', '2019-09-18 23:27:40', 21, 20, 0),
('tt0944947S1E1', 19, '  hey', '2019-09-19 00:21:06', 22, 0, 1),
('tt0944947S1E1', 18, 'sdfyguh', '2019-09-19 00:21:13', 23, 22, 1),
('tt0944947S1E1', 18, '  hello', '2019-09-19 00:25:20', 24, 20, 1),
('tt0944947S1E1', 19, 'its working\r\n', '2019-09-19 00:25:30', 25, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `folder_id` int(11) NOT NULL,
  `folder_name` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`folder_id`, `folder_name`, `user_id`) VALUES
(11, 'nitin', 19),
(12, 'Siddhi', 19),
(13, 'tanisha', 32);

-- --------------------------------------------------------

--
-- Table structure for table `friends`
--

CREATE TABLE `friends` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friends`
--

INSERT INTO `friends` (`user_id`, `friend_id`, `status`) VALUES
(19, 18, 2);

-- --------------------------------------------------------

--
-- Table structure for table `friendsuggest`
--

CREATE TABLE `friendsuggest` (
  `user_id` int(11) NOT NULL,
  `friend_id` int(11) NOT NULL,
  `imdb_id` varchar(20) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `friendsuggest`
--

INSERT INTO `friendsuggest` (`user_id`, `friend_id`, `imdb_id`, `Date`) VALUES
(19, 18, 'tt0944947', '2019-09-17'),
(19, 18, 'tt0903747', '2019-09-17'),
(18, 19, 'tt1844624', '2019-09-18');

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genid` int(11) NOT NULL,
  `genname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genid`, `genname`) VALUES
(12, 'Adventure'),
(14, 'Fantasy'),
(16, 'Animation'),
(18, 'Drama'),
(27, 'Horror'),
(28, 'Action'),
(35, 'Comedy'),
(36, 'History'),
(37, 'Western'),
(53, 'Thriller'),
(80, 'Crime'),
(99, 'Documentary'),
(878, 'Science Fiction'),
(9648, 'Mystery'),
(10402, 'Music'),
(10749, 'Romance'),
(10751, 'Family'),
(10752, 'War'),
(10759, 'Action & Adventure'),
(10762, 'Kids'),
(10763, 'News'),
(10764, 'Reality'),
(10765, 'Sci-Fi & Fantasy'),
(10766, 'Soap'),
(10767, 'Talk'),
(10768, 'War & Politics'),
(10770, 'TV Movie');

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `folder_id` int(11) NOT NULL,
  `show_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`folder_id`, `show_id`) VALUES
(10, 'tt6077448'),
(11, 'tt6077448'),
(13, 'tt0944947');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `episode_id` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`episode_id`, `user_id`, `rating`) VALUES
('tt0944947S1E1', 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `recovery`
--

CREATE TABLE `recovery` (
  `ID` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recovery`
--

INSERT INTO `recovery` (`ID`, `user_id`, `code`, `status`, `createdAt`) VALUES
(9, 18, '5474764f375fe5ca69d6da5d6', '1', '2019-09-20 01:06:09');

-- --------------------------------------------------------

--
-- Table structure for table `shows`
--

CREATE TABLE `shows` (
  `show_id` varchar(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `last_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shows`
--

INSERT INTO `shows` (`show_id`, `user_id`, `status`, `last_update`) VALUES
('tt0944947', 19, 0, '2019-09-20 00:45:32'),
('tt2085059', 19, 0, '2019-09-20 00:46:20'),
('tt8712204', 19, 0, '2019-09-20 00:46:50');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task` varchar(2000) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task`, `user_id`) VALUES
(4, 'sacred games', 19),
(5, 'Game of Thrones Season 8', 19);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_events`
--

CREATE TABLE `tbl_events` (
  `user_id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_events`
--

INSERT INTO `tbl_events` (`user_id`, `title`, `start`, `end`, `id`) VALUES
(18, 'American Horror Story', '2019-09-18 00:00:00', '2019-09-18 00:00:00', 4),
(19, 'Arrow', '2019-10-15 00:00:00', '2019-10-15 00:00:00', 5),
(19, 'Batwoman', '2019-10-06 00:00:00', '2019-10-06 00:00:00', 6),
(19, 'American Horror Story', '2019-09-18 00:00:00', '2019-09-18 00:00:00', 10),
(19, 'Webster Finals', '2019-09-20 00:00:00', '2019-09-21 00:00:00', 11),
(19, 'American Horror Story', '2019-09-25 00:00:00', '2019-09-25 00:00:00', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tv`
--

CREATE TABLE `tv` (
  `show_id` varchar(12) NOT NULL,
  `show_name` varchar(500) NOT NULL,
  `show_url` varchar(1000) NOT NULL,
  `show_genre` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv`
--

INSERT INTO `tv` (`show_id`, `show_name`, `show_url`, `show_genre`) VALUES
('tt0020143', 'Marianne', 'https://m.media-amazon.com/images/M/MV5BMDhmN2QwNDAtMDNiOS00MjY0LThmNzgtN2JmZmIxMzYxZTBiXkEyXkFqcGdeQXVyMjQ3MTQ1MTg@._V1_SX300.jpg', 'Drama, Romance'),
('tt0069658', 'The Young and the Restless', 'https://m.media-amazon.com/images/M/MV5BYjcwN2M5YmQtYjhkNy00Mzg5LWJiYmEtZWE0OTY1NWRlYWNhXkEyXkFqcGdeQXVyODMyMDQwNjI@._V1_SX300.jpg', 'Drama, Romance'),
('tt0108778', 'Friends', 'https://m.media-amazon.com/images/M/MV5BNDVkYjU0MzctMWRmZi00NTkxLTgwZWEtOWVhYjZlYjllYmU4XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', 'Comedy, Romance'),
('tt0251497', 'Big Brother', 'https://m.media-amazon.com/images/M/MV5BZGMxZTYwMmMtYmMxZi00YTkyLWE1NGMtNDBmNmEzNDg0Yzc4XkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SX300.jpg', 'Game-Show, Reality-TV'),
('tt0283103', 'Undone', 'N/A', 'Short'),
('tt0364845', 'NCIS', 'https://m.media-amazon.com/images/M/MV5BYmJmNDM4NzAtMWViMy00MDU0LWI5M2YtNzYxY2VlMTBiODM5XkEyXkFqcGdeQXVyNjg4NzAyOTA@._V1_SX300.jpg', 'Action, Crime, Drama, Mystery, Thriller'),
('tt0374463', 'The Pacific', 'https://m.media-amazon.com/images/M/MV5BNmEwNmI1MjItNjNjYy00NDE5LWJiNTYtM2QxMTI5ZjllZTBhL2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg', 'Action, Adventure, Drama, History, War'),
('tt0417299', 'Avatar: The Last Airbender', 'https://m.media-amazon.com/images/M/MV5BNzZlZmQyYTgtOWNmMy00NTNhLTgyOTYtNjhiOTllOGU2MDg5XkEyXkFqcGdeQXVyMjYxMzY2NDk@._V1_SX300.jpg', 'Animation, Action, Adventure, Family, Fantasy, Mystery'),
('tt0423713', 'Plus belle la vie', 'https://m.media-amazon.com/images/M/MV5BOGI1OWE0ZjgtOTQxZi00OTMyLWFmMDQtYjQzMTA1NTc3ZmNjXkEyXkFqcGdeQXVyMjAzMzQ2MzA@._V1_SX300.jpg', 'Romance, Comedy, Drama'),
('tt0460681', 'Supernatural', 'https://m.media-amazon.com/images/M/MV5BMjZmYWYwNWMtNGVjNy00NjA4LTgwODQtMThjODNlNjA4ZDdlXkEyXkFqcGdeQXVyNjg3MDMxNzU@._V1_SX300.jpg', 'Drama, Fantasy, Horror, Mystery, Thriller'),
('tt0489974', 'Carnival Row', 'https://m.media-amazon.com/images/M/MV5BMzIwM2FkMmEtNjQyZC00YThmLTg3ZjQtZGIyMWE3NjQwYTU4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Crime, Drama, Fantasy, Mystery, Thriller'),
('tt0903747', 'Breaking Bad', 'https://m.media-amazon.com/images/M/MV5BMjhiMzgxZTctNDc1Ni00OTIxLTlhMTYtZTA3ZWFkODRkNmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', 'Crime, Drama, Thriller'),
('tt0944947', 'Game of Thrones', 'https://m.media-amazon.com/images/M/MV5BMjA5NzA5NjMwNl5BMl5BanBnXkFtZTgwNjg2OTk2NzM@._V1_SX300.jpg', 'Action, Adventure, Drama, Fantasy, Romance'),
('tt10312776', 'Bluff City Law', 'https://m.media-amazon.com/images/M/MV5BNjA3NWNmYzQtOGYzZC00ZjZjLTk1YzYtYTg5MTM1YzFhNmM0XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Drama'),
('tt1043813', 'Titans', 'https://m.media-amazon.com/images/M/MV5BOGIxMzE1MTEtMzViYi00MWI5LTllOTUtMmZkYzM3NmIyNTZlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Action, Adventure, Crime, Drama, Fantasy, Sci-Fi'),
('tt1197624', 'Law Abiding Citizen', 'https://m.media-amazon.com/images/M/MV5BMTMyODY1NTg1N15BMl5BanBnXkFtZTcwMTUyODI4Mg@@._V1_SX300.jpg', 'Action, Crime, Drama, Thriller'),
('tt1305826', 'Adventure Time', 'https://m.media-amazon.com/images/M/MV5BMjE2MzE1MDI2M15BMl5BanBnXkFtZTgwNzUyODQxMDE@._V1_SX300.jpg', 'Animation, Action, Adventure, Comedy, Family, Fantasy, Sci-Fi'),
('tt1405406', 'The Vampire Diaries', 'https://m.media-amazon.com/images/M/MV5BMDk3YzgxNDQtNTEzOS00NDMyLWFlYmYtYTZlMDk1NDkxNmMyXkEyXkFqcGdeQXVyNzA5NjUyNjM@._V1_SX300.jpg', 'Drama, Fantasy, Horror, Mystery, Romance, Thriller'),
('tt1436480', 'Undefined', 'https://m.media-amazon.com/images/M/MV5BMTgzNzkxMzk5Nl5BMl5BanBnXkFtZTgwMTQ2MzA2MDE@._V1_SX300.jpg', 'Drama'),
('tt1492179', 'Strike Back', 'https://m.media-amazon.com/images/M/MV5BMTEwNzExNTQ4NDFeQTJeQWpwZ15BbWU4MDczNzY5NTQz._V1_SX300.jpg', 'Action, Drama, Thriller'),
('tt1600194', 'Hawaii Five-0', 'https://m.media-amazon.com/images/M/MV5BOGMxNDUxMzMtNTgwZS00ZjVlLTkyNmUtNGEzYzQ0YjY3OTAxXkEyXkFqcGdeQXVyMTYzMDM0NTU@._V1_SX300.jpg', 'Action, Crime, Drama'),
('tt1632701', 'Suits', 'https://m.media-amazon.com/images/M/MV5BNmVmMmM5ZmItZDg0OC00NTFiLWIxNzctZjNmYTY5OTU3ZWU3XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', 'Comedy, Drama'),
('tt1837492', '13 Reasons Why', 'https://m.media-amazon.com/images/M/MV5BMTA2OTQxNzQtMDQ5OC00NDczLWFhYjEtN2UyMmIwNGZlZDM4XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Drama, Mystery'),
('tt1844624', 'American Horror Story', 'https://m.media-amazon.com/images/M/MV5BYzRjNjlmMDUtMWFlOS00MmEwLTgwNjItNDI0YmY5NTY2M2YwXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Drama, Horror, Thriller'),
('tt1846197', 'The Sandhamn Murders', 'https://m.media-amazon.com/images/M/MV5BOGJkMTlkNGItYzc2MS00MTAzLWJlMjYtZWFlM2Y1ZWM0MjNiXkEyXkFqcGdeQXVyMTMwOTMzNzU@._V1_SX300.jpg', 'Crime, Drama, Romance, Thriller'),
('tt2085059', 'Black Mirror', 'https://m.media-amazon.com/images/M/MV5BYTM3YWVhMDMtNjczMy00NGEyLWJhZDctYjNhMTRkNDE0ZTI1XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Drama, Sci-Fi, Thriller'),
('tt2193021', 'Arrow', 'https://m.media-amazon.com/images/M/MV5BZDc5N2M3OTMtYmJmMy00MzczLWJmMTktZGNkYzlhNDczZWEzXkEyXkFqcGdeQXVyNjg3MDMxNzU@._V1_SX300.jpg', 'Action, Adventure, Crime, Drama, Mystery, Sci-Fi'),
('tt2375692', 'Black Sails', 'https://m.media-amazon.com/images/M/MV5BMjA5NjAyOTk5MV5BMl5BanBnXkFtZTgwNTI4OTMyMDI@._V1_SX300.jpg', 'Adventure, Drama'),
('tt2442560', 'Peaky Blinders', 'https://m.media-amazon.com/images/M/MV5BMTkzNjEzMDEzMF5BMl5BanBnXkFtZTgwMDI0MjE4MjE@._V1_SX300.jpg', 'Crime, Drama'),
('tt2467372', 'Brooklyn Nine-Nine', 'https://m.media-amazon.com/images/M/MV5BMGU3NGYyYTYtYjIzMS00ZmUwLTlmMjAtZDhhMzFiNWI0NzNkXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SX300.jpg', 'Comedy, Crime'),
('tt2647258', 'Hostages', 'https://m.media-amazon.com/images/M/MV5BMjA0MzkzOTI5Ml5BMl5BanBnXkFtZTgwNzI1MjAwMDE@._V1_SX300.jpg', 'Drama, Mystery, Thriller'),
('tt2741602', 'The Blacklist', 'https://m.media-amazon.com/images/M/MV5BYTZlMDg3NjUtNmRkYS00NDNmLTk1YTQtZDQ1ZjJiMmQ0N2Y5XkEyXkFqcGdeQXVyODUxOTU0OTg@._V1_SX300.jpg', 'Crime, Drama, Mystery, Thriller'),
('tt2891574', 'Ballers', 'https://m.media-amazon.com/images/M/MV5BMWU3NmVjZTUtMTgxOC00NzRiLWI1ZDgtMjdkNDFmNGMyNzA3XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Comedy, Drama, Sport'),
('tt2922300', 'Monogatari Series: Second Season', 'https://m.media-amazon.com/images/M/MV5BNGM3MTVkNzctZDFkYi00M2RiLTg5MDEtZmIzYjZkMTFlZGI1XkEyXkFqcGdeQXVyNjU4MzAyMDI@._V1_SX300.jpg', 'Animation, Adventure, Comedy, Fantasy, Romance'),
('tt3006802', 'Outlander', 'https://m.media-amazon.com/images/M/MV5BMTU1NDc3NzYxN15BMl5BanBnXkFtZTgwMTgyMjQyNjM@._V1_SX300.jpg', 'Drama, Fantasy, Romance'),
('tt3107288', 'The Flash', 'https://m.media-amazon.com/images/M/MV5BMjI1MDAwNDM4OV5BMl5BanBnXkFtZTgwNjUwNDIxNjM@._V1_SX300.jpg', 'Action, Adventure, Drama, Sci-Fi'),
('tt3281796', 'Power', 'https://m.media-amazon.com/images/M/MV5BYjllZjcwNjItMzc1OC00YjRkLWI5YzUtODM1YmEzNjFiYzNhXkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_SX300.jpg', 'Crime, Drama'),
('tt3743822', 'Fear the Walking Dead', 'https://m.media-amazon.com/images/M/MV5BYzgxNTBmNjQtZjExMS00ODczLTliMjktNmZlOWQzMmFlMjVhXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_SX300.jpg', 'Drama, Horror, Sci-Fi, Thriller'),
('tt3749900', 'Gotham', 'https://m.media-amazon.com/images/M/MV5BMTU5NjQ2MTU4NV5BMl5BanBnXkFtZTgwOTYyNTAwNzM@._V1_SX300.jpg', 'Action, Crime, Drama, Mystery, Sci-Fi, Thriller'),
('tt4016454', 'Supergirl', 'https://m.media-amazon.com/images/M/MV5BMjE0MzgxNjYzOV5BMl5BanBnXkFtZTgwMzk3NDUyNTM@._V1_SX300.jpg', 'Action, Adventure, Drama, Sci-Fi'),
('tt4052886', 'Lucifer', 'https://m.media-amazon.com/images/M/MV5BZTA2NTBkYWUtMzM4Zi00YzhlLTk4NWItY2U1ODczNDMyNDAzXkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_SX300.jpg', 'Crime, Drama, Fantasy'),
('tt4254242', 'The Magicians', 'https://m.media-amazon.com/images/M/MV5BMDhjY2JjNjYtYzU0OS00NGViLWE1YWEtNjcxYWM5ZWYxODZlXkEyXkFqcGdeQXVyNDE5ODIyNDk@._V1_SX300.jpg', 'Drama, Fantasy, Mystery'),
('tt4474344', 'Blindspot', 'https://m.media-amazon.com/images/M/MV5BMDIyYzUwNjgtNDA1Mi00ZmQ3LThhNWQtN2RjZjczNjRlZmQ3XkEyXkFqcGdeQXVyNjMxNzcwOTI@._V1_SX300.jpg', 'Action, Crime, Drama, Mystery, Thriller'),
('tt4530422', 'Overlord', 'https://m.media-amazon.com/images/M/MV5BYTUzYmJlNDgtMzM2ZS00N2ZkLWJjY2ItNzM0ZmVjMWU5OTA3XkEyXkFqcGdeQXVyMjQwMDg0Ng@@._V1_SX300.jpg', 'Action, Adventure, Horror, Mystery, Sci-Fi, War'),
('tt4766568', 'Halfworlds', 'https://m.media-amazon.com/images/M/MV5BMzY0MDg0MzQ1OV5BMl5BanBnXkFtZTgwODQ3OTQ0NzE@._V1_SX300.jpg', 'Fantasy, Horror, Mystery'),
('tt5154296', 'The Disguiser', 'https://m.media-amazon.com/images/M/MV5BNWVhYzlkYmYtNGMxNy00MzU1LTk3MzktNjhkYmQ2ZDE4YzdiXkEyXkFqcGdeQXVyMjg0MTI5NzQ@._V1_SX300.jpg', 'Drama'),
('tt5332206', 'Signal', 'https://m.media-amazon.com/images/M/MV5BMzBiMzgxYjctODhhYi00ZDE3LWJkZWMtNWI4MWViMzJiOGUyXkEyXkFqcGdeQXVyMzE4MDkyNTA@._V1_SX300.jpg', 'Crime, Drama, Fantasy, Sci-Fi, Thriller'),
('tt5952634', 'The Spy', 'https://m.media-amazon.com/images/M/MV5BM2ZmYjUxZDYtMmZlMi00YjlkLTkwNTItMjcxZDRlOTI3ZTNmXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_SX300.jpg', 'Drama, History'),
('tt6077448', 'Sacred Games', 'https://m.media-amazon.com/images/M/MV5BMjJlMjJlMzYtNmU5Yy00N2MwLWJmMjEtNWUwZWIyMGViZDgyXkEyXkFqcGdeQXVyOTAzMTc2MjA@._V1_SX300.jpg', 'Action, Crime, Drama, Thriller'),
('tt6468322', 'Money Heist', 'https://m.media-amazon.com/images/M/MV5BNmYxZWNlMDAtYzczZC00M2ViLWIwYjctMDg3M2QyN2E1MzlmXkEyXkFqcGdeQXVyNjE4ODA3NTY@._V1_SX300.jpg', 'Action, Crime, Mystery, Thriller'),
('tt6473300', 'Mirzapur', 'https://m.media-amazon.com/images/M/MV5BMWUyYWNiODItNjdmNS00ZDhlLWE0YjQtNGEyMDg3ODJiMTM3XkEyXkFqcGdeQXVyODQ5NDUwMDk@._V1_SX300.jpg', 'Action, Crime, Drama, Thriller'),
('tt6905542', 'The Dark Crystal: Age of Resistance', 'https://m.media-amazon.com/images/M/MV5BNjVjODZmYWEtNjZhNC00MTdkLTgyMGYtNDBiODRmMzJkMDdjXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_SX300.jpg', 'Adventure, Drama, Family, Fantasy, Sci-Fi'),
('tt7134908', 'Elite', 'https://m.media-amazon.com/images/M/MV5BOTgyOTIwODk3MV5BMl5BanBnXkFtZTgwNTE2MzEzNjM@._V1_SX300.jpg', 'Crime, Drama, Thriller'),
('tt7909970', 'Unbelievable', 'https://m.media-amazon.com/images/M/MV5BN2Q3OWQ1Y2UtN2E3OS00ODA2LWE1Y2EtYmY5OWMzNWYzMDZmXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_SX300.jpg', 'Drama'),
('tt8712204', 'Batwoman', 'https://m.media-amazon.com/images/M/MV5BNTFlYjVlZmEtODhhMS00MjA4LWI1MjEtNGJkMWQ1YWZiY2QzXkEyXkFqcGdeQXVyNDQ0MTYzMDA@._V1_SX300.jpg', 'Action, Adventure, Crime, Drama, Sci-Fi'),
('tt9067020', 'The I-Land', 'https://m.media-amazon.com/images/M/MV5BZWM2MWUzZDQtZjljNC00ZmI5LTlhOWItMDdlMzA1MTcwZDM3XkEyXkFqcGdeQXVyMjYwNDA2MDE@._V1_SX300.jpg', 'Adventure, Drama, Mystery, Sci-Fi');

-- --------------------------------------------------------

--
-- Table structure for table `tv_shows`
--

CREATE TABLE `tv_shows` (
  `user_id` int(11) NOT NULL,
  `show_id` varchar(10) NOT NULL,
  `episodes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tv_shows`
--

INSERT INTO `tv_shows` (`user_id`, `show_id`, `episodes`) VALUES
(19, 'tt0944947', 'S1E1'),
(19, 'tt0944947', 'S1E2'),
(19, 'tt0944947', 'S1E3'),
(19, 'tt0944947', 'S1E4'),
(19, 'tt0944947', 'S1E5'),
(19, 'tt0944947', 'S1E6'),
(19, 'tt0944947', 'S1E7'),
(19, 'tt0944947', 'S1E8');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(40) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `descr` varchar(5000) NOT NULL DEFAULT 'No description',
  `joined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` datetime NOT NULL,
  `gender` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `email`, `password`, `username`, `firstName`, `lastName`, `descr`, `joined`, `birthday`, `gender`) VALUES
(18, 'siddhimahawar@gmail.com', '$2y$10$fsGR3r6jWm7lHgGGA83NguFw27etVku05lyaMlitKFvW2GmeZNUMW', 'Siddhi', 'Siddhi', 'Mahawar', 'Sci-fi', '2019-09-18 19:50:55', '0000-00-00 00:00:00', ''),
(19, 'siddhi@mnnit.ac.in', '$2y$10$sAH0yJ5a2VPuPQIEVG7Kju/tniSnDzt8OPsp9NgJ82/6j4rBc5Et.', 'Yashi', 'Yashi', 'Mahawar', 'Sci-fi', '2019-09-18 19:52:27', '0000-00-00 00:00:00', ''),
(40, 'teameuphony00@gmail.com', '35d427916168ee0fe350349b32163794', 'Team', 'Team', 'Euphony', 'No description', '2019-09-19 11:57:05', '0000-00-00 00:00:00', ''),
(41, 'tanishakumb@gmail.com', '$2y$10$X45Dq7CCREdSIjIq.NVFeOY6x09OJnN8Fssc3hG6iUGaxHKyhzuDe', 'tanisha', 'Tanisha', 'Kumbhakar', 'Sci-fi', '2019-09-20 00:58:12', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `user_id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`user_id`, `code`, `status`, `createdAt`) VALUES
(19, '71a734cb8905a474345526064', '0', '2019-09-20 03:03:47'),
(18, '20998d70a0c8f16a52716ea62', '1', '2019-09-20 03:05:32'),
(19, 'c1a6743e906fc8dd2d22fc37d', '1', '2019-09-20 03:06:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indexes for table `friends`
--
ALTER TABLE `friends`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `friendsuggest`
--
ALTER TABLE `friendsuggest`
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genid`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`folder_id`,`show_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`episode_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `recovery`
--
ALTER TABLE `recovery`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `shows`
--
ALTER TABLE `shows`
  ADD PRIMARY KEY (`show_id`,`user_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tv`
--
ALTER TABLE `tv`
  ADD PRIMARY KEY (`show_id`);

--
-- Indexes for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD PRIMARY KEY (`user_id`,`show_id`,`episodes`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `folder_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `recovery`
--
ALTER TABLE `recovery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_events`
--
ALTER TABLE `tbl_events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `friends`
--
ALTER TABLE `friends`
  ADD CONSTRAINT `friends_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `friendsuggest`
--
ALTER TABLE `friendsuggest`
  ADD CONSTRAINT `friendsuggest_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `recovery`
--
ALTER TABLE `recovery`
  ADD CONSTRAINT `recovery_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `shows`
--
ALTER TABLE `shows`
  ADD CONSTRAINT `shows_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_events`
--
ALTER TABLE `tbl_events`
  ADD CONSTRAINT `tbl_events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `tv_shows`
--
ALTER TABLE `tv_shows`
  ADD CONSTRAINT `tv_shows_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `verification`
--
ALTER TABLE `verification`
  ADD CONSTRAINT `verification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
