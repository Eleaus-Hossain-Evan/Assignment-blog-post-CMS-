-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2020 at 09:38 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `cid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `comment_date` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `postid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`cid`, `comment`, `comment_date`, `username`, `postid`) VALUES
(1, 'New comment', 'August-12, 2020', 'Evan', 14),
(2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.!\r\n', 'August-13, 2020', 'rahim', 14),
(3, 'hi', 'August-15, 2020', 'admin', 14),
(4, 'how are you?', 'August-15, 2020', 'admin', 14),
(5, 'good morning', 'August-15, 2020', 'admin', 14),
(6, 'good morning again', 'August-15, 2020', 'admin', 14),
(7, 'hi', 'August-15, 2020', 'admin', 14),
(8, 'anybody here??', 'August-28, 2020', 'admin', 18),
(9, 'yes...how are you', 'August-28, 2020', 'Evan', 18),
(11, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent eget felis in enim suscipit commodo.', 'August-28, 2020', 'Rahim', 18),
(12, 'Curabitur vehicula feugiat venenatis.', 'August-29, 2020', 'Evan', 18),
(13, 'Curabitur vehicula feugiat venenatis.', 'August-29, 2020', 'Evan', 16),
(14, 'Curabitur vehicula feugiat venenatis.', 'August-29, 2020', 'Evan', 15),
(15, 'Curabitur vehicula feugiat venenatis.', 'August-29, 2020', 'Evan', 13),
(16, 'Neque porro quisquam est qui', 'August-29, 2020', 'korim', 18),
(17, 'Neque porro quisquam est qui', 'August-29, 2020', 'korim', 17),
(18, 'Neque porro quisquam est qui', 'August-29, 2020', 'korim', 15),
(19, 'Neque porro quisquam est qui', 'August-29, 2020', 'korim', 12),
(20, 'Neque porro quisquam est qui', 'August-29, 2020', 'korim', 11),
(21, 'Phasellus blandit ipsum justo, et viverra ex tincidunt eget', 'August-29, 2020', 'rahim', 18),
(22, 'Phasellus blandit ipsum justo, et viverra ex tincidunt eget', 'August-29, 2020', 'rahim', 17),
(23, 'Phasellus blandit ipsum justo, et viverra ex tincidunt eget', 'August-29, 2020', 'rahim', 16),
(24, 'Phasellus blandit ipsum justo, et viverra ex tincidunt eget', 'August-29, 2020', 'rahim', 15),
(25, 'Phasellus blandit ipsum justo, et viverra ex tincidunt eget', 'August-29, 2020', 'rahim', 13),
(26, 'Phasellus blandit ipsum justo, et viverra ex tincidunt eget', 'August-29, 2020', 'rahim', 11);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `ID` int(11) NOT NULL,
  `post_title` text NOT NULL,
  `post_content` longtext NOT NULL,
  `post_date` varchar(255) NOT NULL,
  `post_username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`ID`, `post_title`, `post_content`, `post_date`, `post_username`) VALUES
(1, 'Lorem ipsum post........', 'Donec sed pharetra mauris. Cras tempor elit vitae massa lobortis, finibus rhoncus nisi ultricies. Nulla efficitur pellentesque orci, a ullamcorper nunc placerat mollis. Duis id egestas sapien. Fusce sit amet.', 'August-08, 2020', 'admin'),
(2, 'Lorem ipsum post........', 'Duis convallis faucibus placerat. Aliquam vehicula libero velit. Curabitur sem augue, aliquam sed tempor quis, tincidunt eu diam. \r\nMaecenas fringilla massa non nibh finibus, non feugiat leo rutrum. Sed convallis odio ac dui pharetra fringilla. Nullam faucibus quis nisi sed tristique. Fusce malesuada malesuada est semper pretium. Morbi in vestibulum nisi, eget tincidunt leo. \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. \r\nDonec sollicitudin risus eu quam maximus suscipit. Vestibulum.', 'August-09, 2020', 'Evan'),
(3, 'Lorem ipsum post........', 'Curabitur vehicula feugiat venenatis. Nullam sit amet lacus vel tellus lacinia molestie. Fusce sagittis lorem feugiat nisl aliquam, sed convallis leo cursus. Vestibulum lectus tellus, gravida eget scelerisque a, cursus eget elit. Integer elit neque, malesuada quis ligula id, posuere ultrices felis. Integer pharetra elementum enim, placerat porta felis hendrerit auctor. Donec tellus lorem, lacinia eu pharetra et, consectetur sit amet ex. Fusce ornare magna vel tellus luctus, vel vehicula.', 'August-10, 2020', 'rahim'),
(4, 'Lorem ipsum post........', 'Donec sed pharetra mauris. Cras tempor elit vitae massa lobortis, finibus rhoncus nisi ultricies. Nulla efficitur pellentesque orci, a ullamcorper nunc placerat mollis. Duis id egestas sapien. Fusce sit amet.', 'August-11, 2020', 'korim'),
(5, 'Lorem ipsum post........', 'Duis convallis faucibus placerat. Aliquam vehicula libero velit. Curabitur sem augue, aliquam sed tempor quis, tincidunt eu diam. \r\nMaecenas fringilla massa non nibh finibus, non feugiat leo rutrum. Sed convallis odio ac dui pharetra fringilla. Nullam faucibus quis nisi sed tristique. Fusce malesuada malesuada est semper pretium. Morbi in vestibulum nisi, eget tincidunt leo. \r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. \r\nDonec sollicitudin risus eu quam maximus suscipit. Vestibulum.', 'August-12, 2020', 'Evan'),
(6, 'Lorem ipsum post........', 'Donec sed pharetra mauris. Cras tempor elit vitae massa lobortis, finibus rhoncus nisi ultricies. Nulla efficitur pellentesque orci, a ullamcorper nunc placerat mollis. Duis id egestas sapien. Fusce sit amet.', 'August-12, 2020', 'admin'),
(7, 'A nice thing that i found...', 'Quisque sed dignissim diam, ac pellentesque tortor. Morbi rutrum mollis interdum. Sed luctus in nibh quis varius. Ut egestas risus nec ex pulvinar rutrum nec a lacus. Etiam fermentum hendrerit blandit. Sed quis urna a neque porttitor pellentesque. Vestibulum et libero magna. Etiam non nulla eget mi pharetra lacinia sed non nunc. Curabitur ipsum massa, consectetur a ipsum a, fermentum sodales metus. Proin dignissim massa ac nibh semper, nec laoreet sem gravida.\r\n\r\nQuisque a turpis luctus, consectetur lectus ut, euismod velit. Donec non augue pretium, imperdiet nunc et, tincidunt felis. Vivamus porttitor, elit in cursus ornare, libero sapien tincidunt orci.', 'August-12, 2020', 'korim'),
(9, 'hello every one....', 'Mauris eu facilisis nulla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. \r\nSuspendisse purus odio, commodo et arcu quis, sagittis suscipit sapien. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Morbi feugiat tortor lacus, nec sagittis tellus fringilla nec. Nullam sit amet vulputate metus. Aliquam ut nisi et lectus malesuada ultrices. \r\nAliquam egestas arcu odio, et suscipit dolor dapibus id. Quisque et ligula vitae augue ultricies tincidunt. Ut tristique dolor sed dui egestas pulvinar. Aenean dictum ex elit, vel tempor nisi luctus quis. Maecenas ut massa ante. Cras in consectetur elit. Vivamus eu congue ligula.', 'August-12, 2020', 'Evan'),
(10, 'Lorem ipsum post........', 'Praesent ac auctor lorem. Donec vulputate quam nisl, at molestie magna porttitor eget. Mauris convallis massa id eros euismod tempus at id magna. In dictum sapien at elit faucibus iaculis. Vestibulum sodales finibus nisl, eu fringilla ex dictum vitae. Quisque bibendum, massa aliquet mattis pretium, felis risus sodales magna, sit amet consequat tellus tortor quis nisl. Integer placerat, nunc quis sodales tempor, dui sapien maximus tortor, eget scelerisque diam ex et turpis. Etiam sem sem, blandit eu eros at, consequat.', 'August-12, 2020', 'Evan'),
(11, 'Lorem ipsum post........', 'Sed vestibulum porta sem ut pharetra. Integer mattis placerat elit nec volutpat. Sed faucibus rutrum nulla efficitur bibendum. Integer lacinia nulla vitae eros pharetra dictum. Aliquam elementum placerat sem in gravida. Nam congue ligula ut lorem auctor egestas. Aliquam eu felis at velit semper dignissim. Nunc laoreet pretium dolor, sit amet volutpat velit placerat sit amet. Vivamus quis lectus felis.', 'August-12, 2020', 'admin'),
(12, 'hello every one....', 'Donec vel sapien consequat sapien tempor tincidunt sit amet at libero. Praesent quis fermentum massa. Etiam id dolor maximus, vestibulum justo sed, commodo sem. Vivamus venenatis, turpis a dapibus posuere, mauris dui imperdiet ex, sit amet hendrerit diam nulla sed.', 'August-12, 2020', 'fahim'),
(13, 'A nice thing that i found...', 'Sed euismod fringilla arcu, tempus egestas urna euismod faucibus. Sed sagittis eget lectus id volutpat. Integer sed eleifend libero, sagittis convallis lacus. Mauris efficitur euismod cursus. Nunc ante felis, molestie sed eros vitae, egestas bibendum mauris. Praesent auctor finibus semper. Maecenas semper dignissim nibh, a fringilla mauris elementum at. Pellentesque.', 'August-15, 2020', 'fahim'),
(14, 'Post testing and blogging', 'Nunc turpis ligula, commodo ac pulvinar ut, commodo id ipsum. Donec congue sapien ac augue suscipit rutrum. Mauris in pharetra metus. \r\nQuisque nunc leo, imperdiet ut luctus et, tristique eget leo. Vivamus at sem maximus, imperdiet eros eu, mattis ante. Vestibulum hendrerit eros vitae consectetur consequat. Maecenas tempor egestas tempor. Morbi ac quam ac nibh mattis sagittis. Aliquam erat volutpat. Donec fermentum nisl ac sapien efficitur venenatis.\r\nDonec id augue bibendum, elementum nibh non, varius purus. Aliquam ultricies lacus at imperdiet molestie. Proin condimentum, turpis laoreet laoreet luctus, augue ipsum cursus risus, in fringilla mi sapien vitae eros. Phasellus ultrices, tortor id aliquet vulputate, est elit tempor nibh, vitae consectetur nisl mi et libero. Pellentesque ornare justo ultricies, vulputate turpis nec, fermentum nulla. Maecenas et sem quis mi feugiat porta eget a mi. Vestibulum fringilla ante nec tincidunt tincidunt. Morbi vel porttitor augue, et venenatis magna. Cras elementum ultrices massa.', 'August-12, 2020', 'korim'),
(15, 'One special news found!', 'Donec sit amet elementum enim. Nunc vel dolor ut ex dictum scelerisque. Cras quis diam quis tellus scelerisque rhoncus. Nullam mattis a quam vitae ultrices. Quisque aliquet, orci id feugiat porttitor, nulla nibh vestibulum nulla, vel convallis neque sem vel eros. Donec dui ante, blandit non dui at, eleifend malesuada.\r\n\r\n\r\nUt auctor mollis est, congue pulvinar arcu ultrices pulvinar. Pellentesque venenatis felis vitae nisi finibus, a porta mauris consequat. Curabitur pulvinar aliquam quam, eget pellentesque lacus posuere sit amet. Sed sed blandit mauris. Pellentesque tincidunt et purus non blandit. Suspendisse accumsan orci et cursus dignissim. Vestibulum nulla eros, ultrices vel porttitor eget, pharetra lobortis dolor. \r\n\r\nNullam rutrum rhoncus lectus eget ultrices. Pellentesque volutpat fringilla gravida. Aliquam erat volutpat. Maecenas ullamcorper lectus eu ipsum iaculis, at tempor enim ultricies. In condimentum turpis sit amet turpis varius placerat. Praesent cursus scelerisque volutpat. ', 'August-15, 2020', 'Evan'),
(16, 'Nothing to say in title', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi in faucibus mauris. Cras eu pellentesque dui. Sed mattis a tellus condimentum ultricies. Cras sed dui imperdiet, laoreet diam cursus, egestas lorem. \r\n\r\nDonec in consectetur ex. In urna dui, tristique eu molestie vitae, pellentesque quis tortor. Phasellus imperdiet ex augue, quis malesuada arcu sagittis quis. Maecenas molestie neque id nulla luctus mollis. Fusce laoreet et felis sit amet aliquet. Mauris a velit tellus. In ut sodales velit. Integer eu enim mauris. Etiam commodo quis est at consequat.', 'August-15, 2020', 'admin'),
(17, 'Don\'t read, you will miss a big thing', 'Morbi semper, elit et pharetra interdum, augue magna ultricies sapien, nec accumsan ligula nisl sed ex. In sit amet ex turpis. Morbi aliquet nec lacus id porttitor. Mauris ornare congue mi, sed finibus nulla congue quis. Mauris pellentesque est at arcu viverra malesuada. Maecenas orci urna, varius vel mollis in.', 'August-15, 2020', 'rahim'),
(18, 'What do you say??..', 'Nunc turpis ligula, commodo ac pulvinar ut, commodo id ipsum. Donec congue sapien ac augue suscipit rutrum. Mauris in pharetra metus. Quisque nunc leo, imperdiet ut luctus et, tristique eget leo. Vivamus at sem maximus, imperdiet eros eu, mattis ante. Vestibulum hendrerit eros vitae consectetur consequat. Maecenas tempor egestas tempor. Morbi ac quam ac nibh mattis sagittis. Aliquam erat volutpat. Donec fermentum nisl ac sapien efficitur venenatis.\r\n\r\nDLorem ipsum dolor sit amet, Maecenas nec ligula eget lectus feugiat molestie eu id purus. \r\nDonec mollis massa interdum risus aliquam, vel blandit dui molestie. Ut faucibus non metus non consectetur. Nulla facilisi. Quisque mollis odio ut lorem imperdiet pretium. Maecenas nisi ante, tempor a ante at, egestas vestibulum risus. \r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ut dolor dapibus, tincidunt enim fringilla, dapibus est. Suspendisse ac diam metus. Morbi faucibus pretium ex, et commodo metus. Donec tincidunt congue leo, sit amet eleifend felis maximus ac. Ut tincidunt ultrices pellentesque. \r\nPhasellus nunc tortor, tincidunt sed accumsan sed, pharetra quis.', 'August-28, 2020', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `block` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `email`, `password`, `designation`, `block`) VALUES
(1, 'admin', 'admin@admin.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'admin', 0),
(2, 'Evan', 'evan@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', 'Modarator', 0),
(3, 'rahim', 'rahim@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Premium User', 0),
(4, 'korim', 'korim@exmple.com', '81dc9bdb52d04dc20036dbd8313ed055', 'User', 0),
(6, 'fahim', 'example@example.com', '81dc9bdb52d04dc20036dbd8313ed055', 'Blocked User', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
