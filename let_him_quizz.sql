-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 02 mars 2025 à 20:39
-- Version du serveur : 10.11.6-MariaDB-0+deb12u1
-- Version de PHP : 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `savary23`
--

-- --------------------------------------------------------

--
-- Structure de la table `FindThePlace`
--

CREATE TABLE `FindThePlace` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `reponse1` varchar(255) NOT NULL,
  `reponse2` varchar(255) NOT NULL,
  `reponse3` varchar(255) NOT NULL,
  `reponse4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `FindThePlace`
--

INSERT INTO `FindThePlace` (`id`, `img`, `reponse1`, `reponse2`, `reponse3`, `reponse4`) VALUES
(3, 'london.jpg', 'London', 'Liverpool', 'Copenhagen', 'Boston'),
(4, 'new_york.jpg', 'New York', 'Chicago', 'London', 'Charlotte'),
(5, 'tokyo.jpg', 'Tokyo', 'Kyoto', 'Seoul', 'Hong Kong'),
(6, 'singapore.jpg', 'Singapore', 'Miami', 'Los Santos', 'Auckland'),
(7, 'pretoria.jpg', 'Pretoria', 'Johannesburg', 'Cape Town', 'Durban'),
(8, 'stockholm.jpg', 'Stockholm', 'Copenhagen', 'Hamburg', 'Vienna'),
(9, 'bern.jpg', 'Bern', 'Zurich', 'Geneva', 'Lucerne'),
(10, 'manchester.jpg', 'Manchester', 'Berlin', 'London', 'Los Angeles'),
(11, 'paris.jpg', 'Paris', 'Berlin', 'London', 'Prague'),
(12, 'mexico.jpg', 'Mexico City', 'Mumbai', 'Madrid', 'Canberra'),
(13, 'chicago.jpg', 'Chicago', 'Denver', 'Portland', 'Indianapolis'),
(14, 'las_vegas.jpg', 'Las Vegas', 'Paris', 'Los Angeles', 'Brooklyn');

-- --------------------------------------------------------

--
-- Structure de la table `MCQ`
--

CREATE TABLE `MCQ` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `reponse1` varchar(255) NOT NULL,
  `reponse2` varchar(255) NOT NULL,
  `reponse3` varchar(255) NOT NULL,
  `reponse4` varchar(255) NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL,
  `category` enum('trivia','english') NOT NULL DEFAULT 'trivia'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `MCQ`
--

INSERT INTO `MCQ` (`id`, `question`, `reponse1`, `reponse2`, `reponse3`, `reponse4`, `difficulty`, `category`) VALUES
(1, 'What is the capital of France?', 'Paris', 'London', 'Berlin', 'Madrid', 'easy', 'trivia'),
(2, 'Which planet is known as the Red Planet?', 'Mars', 'Venus', 'Jupiter', 'Saturn', 'easy', 'trivia'),
(3, 'In which year did the French Revolution begin?', '1789', '1776', '1815', '1848', 'hard', 'trivia'),
(4, 'What is the largest planet in our solar system?', 'Jupiter', 'Saturn', 'Earth', 'Mars', 'easy', 'trivia'),
(5, 'Who developed the theory of relativity?', 'Albert Einstein', 'Isaac Newton', 'Galileo Galilei', 'Nikola Tesla', 'medium', 'trivia'),
(6, 'Which element has the chemical symbol \"O\"?', 'Oxygen', 'Gold', 'Silver', 'Iron', 'easy', 'trivia'),
(7, 'Who painted the Mona Lisa?', 'Leonardo da Vinci', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'medium', 'trivia'),
(8, 'What is the hardest natural substance on Earth?', 'Diamond', 'Gold', 'Iron', 'Quartz', 'easy', 'trivia'),
(9, 'What is the chemical formula of water?', 'H2O', 'CO2', 'O2', 'CH4', 'easy', 'trivia'),
(10, 'Who was the first president of the United States?', 'George Washington', 'Abraham Lincoln', 'Thomas Jefferson', 'John Adams', 'easy', 'trivia'),
(11, 'What is the capital of Japan?', 'Tokyo', 'Beijing', 'Seoul', 'Bangkok', 'easy', 'trivia'),
(12, 'Which country is known as the Land of the Rising Sun?', 'Japan', 'China', 'India', 'South Korea', 'easy', 'trivia'),
(13, 'What is the smallest country in the world?', 'Vatican City', 'Monaco', 'San Marino', 'Liechtenstein', 'medium', 'trivia'),
(14, 'Who discovered penicillin?', 'Alexander Fleming', 'Marie Curie', 'Louis Pasteur', 'Joseph Lister', 'medium', 'trivia'),
(15, 'Which planet is known as the Red Planet?', 'Mars', 'Venus', 'Jupiter', 'Saturn', 'easy', 'trivia'),
(16, 'What is the main ingredient in guacamole?', 'Avocado', 'Tomato', 'Onion', 'Lime', 'easy', 'trivia'),
(17, 'Which Shakespeare play features the character Othello?', 'Othello', 'Hamlet', 'Macbeth', 'King Lear', 'medium', 'trivia'),
(18, 'Who invented the telephone?', 'Alexander Graham Bell', 'Thomas Edison', 'Nikola Tesla', 'Guglielmo Marconi', 'medium', 'trivia'),
(19, 'What is the capital of Canada?', 'Ottawa', 'Toronto', 'Vancouver', 'Montreal', 'easy', 'trivia'),
(20, 'What is the square root of 144?', '12', '10', '14', '16', 'easy', 'trivia'),
(21, 'What is the longest river in the world?', 'Nile', 'Amazon', 'Yangtze', 'Mississippi', 'medium', 'trivia'),
(22, 'What is the tallest mountain in the world?', 'Mount Everest', 'K2', 'Kilimanjaro', 'Mont Blanc', 'easy', 'trivia'),
(23, 'Which organ pumps blood throughout the human body?', 'Heart', 'Liver', 'Lungs', 'Brain', 'easy', 'trivia'),
(24, 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Fe', 'Pb', 'medium', 'trivia'),
(25, 'Who was the first man to walk on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'Michael Collins', 'medium', 'trivia'),
(26, 'Which metal is liquid at room temperature?', 'Mercury', 'Gold', 'Silver', 'Iron', 'medium', 'trivia'),
(27, 'What is the tallest mountain in the world?', 'Mount Everest', 'K2', 'Kangchenjunga', 'Lhotse', 'easy', 'trivia'),
(28, 'Who is the author of \"1984\"?', 'George Orwell', 'Aldous Huxley', 'J.R.R. Tolkien', 'Mark Twain', 'medium', 'trivia'),
(29, 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Pb', 'Fe', 'easy', 'trivia'),
(30, 'Which planet is known as the \"Morning Star\"?', 'Venus', 'Mars', 'Jupiter', 'Saturn', 'medium', 'trivia'),
(31, 'Who discovered gravity?', 'Isaac Newton', 'Albert Einstein', 'Galileo Galilei', 'Nikola Tesla', 'easy', 'trivia'),
(32, 'What is the longest river in the world?', 'Nile', 'Amazon', 'Yangtze', 'Mississippi', 'medium', 'trivia'),
(33, 'Who painted \"The Starry Night\"?', 'Vincent van Gogh', 'Pablo Picasso', 'Claude Monet', 'Leonardo da Vinci', 'medium', 'trivia'),
(34, 'What is the smallest prime number?', '2', '1', '3', '5', 'easy', 'trivia'),
(35, 'What is the capital of Brazil?', 'Brasilia', 'Rio de Janeiro', 'São Paulo', 'Buenos Aires', 'medium', 'trivia'),
(36, 'Who wrote \"To Kill a Mockingbird\"?', 'Harper Lee', 'Ernest Hemingway', 'F. Scott Fitzgerald', 'Mark Twain', 'hard', 'trivia'),
(37, 'What is the square root of 225?', '15', '10', '20', '25', 'easy', 'trivia'),
(38, 'Who developed the polio vaccine?', 'Jonas Salk', 'Alexander Fleming', 'Marie Curie', 'Louis Pasteur', 'hard', 'trivia'),
(39, 'What year did World War II end?', '1945', '1939', '1941', '1950', 'easy', 'trivia'),
(40, 'Which gas is most abundant in the Earth’s atmosphere?', 'Nitrogen', 'Oxygen', 'Carbon Dioxide', 'Hydrogen', 'medium', 'trivia'),
(41, 'What is the national animal of Canada?', 'Beaver', 'Moose', 'Bear', 'Eagle', 'easy', 'trivia'),
(42, 'What is the main ingredient in hummus?', 'Chickpeas', 'Lentils', 'Beans', 'Corn', 'easy', 'trivia'),
(43, 'Who was the first person to walk on the moon?', 'Neil Armstrong', 'Buzz Aldrin', 'Yuri Gagarin', 'Michael Collins', 'easy', 'trivia'),
(44, 'Which continent is the driest?', 'Antarctica', 'Africa', 'Australia', 'Asia', 'hard', 'trivia'),
(45, 'What is the capital of South Korea?', 'Seoul', 'Tokyo', 'Beijing', 'Bangkok', 'easy', 'trivia'),
(46, 'How many notes are there on a standard grand piano?', '88', '98', '108', '78', 'hard', 'trivia'),
(47, 'Named after the mallow flower, mauve is a shade of what?', 'Purple', 'Red', 'Brown', 'Pink', 'easy', 'trivia'),
(48, 'Which of the following languages does NOT use gender as a part of its grammar?', 'Turkish', 'German', 'Danish', 'Polish', 'hard', 'trivia'),
(49, 'What was Bank of America originally established as?', 'Bank of Italy', 'Bank of Long Island', 'Bank of Charlotte', 'Bank of Pennsylvania', 'hard', 'trivia'),
(50, 'What year was Queen Elizabeth II born?', '1926', '1923', '1929', '1930', 'hard', 'trivia'),
(51, 'The words \'bungalow\' and  \'shampoo\' originate from the languages of which country?', 'India', 'Papua New Guinea', 'Ethiopia', 'China', 'hard', 'trivia'),
(52, 'How many calories are in a 355 ml can of Pepsi Cola?', '150', '200', '100', '155', 'hard', 'trivia'),
(53, 'Sciophobia is the fear of what?', 'Shadows', 'Eating', 'Driving', 'Teleportation', 'hard', 'trivia'),
(54, 'Which of the following is not another name for the eggplant?', 'Potimarron', 'Brinjal', 'Guinea Squash', 'Melongene', 'hard', 'trivia'),
(55, 'Which of the following is an existing family in \'The Sims\'?', 'The Goth Family', 'The Family', 'Jhon\'s Family', 'The Proud Family', 'hard', 'trivia'),
(56, 'Located in Chile, El Teniente is the world\'s largest underground mine for what metal?', 'Copper', 'Iron', 'Nickel', 'Silver', 'hard', 'trivia'),
(57, 'What percentage of Australians were born overseas?', '28%', '13%', '20%', '7%', 'hard', 'trivia'),
(58, 'What is the square root of 64?', '8', '6', '7', '9', 'easy', 'trivia'),
(59, 'How many continents are there on Earth?', '7', '5', '6', '8', 'easy', 'trivia'),
(60, 'What is the chemical symbol for gold?', 'Au', 'Ag', 'Pb', 'Fe', 'easy', 'trivia'),
(61, 'Which animal is known as the King of the Jungle?', 'Lion', 'Tiger', 'Elephant', 'Cheetah', 'easy', 'trivia'),
(62, 'What is the main ingredient in bread?', 'Flour', 'Sugar', 'Salt', 'Butter', 'easy', 'trivia'),
(63, 'What is the capital of Italy?', 'Rome', 'Milan', 'Venice', 'Naples', 'easy', 'trivia'),
(64, 'How many legs does a spider have?', '8', '6', '10', '12', 'easy', 'trivia'),
(65, 'What gas do plants absorb from the atmosphere?', 'Carbon dioxide', 'Oxygen', 'Nitrogen', 'Hydrogen', 'medium', 'trivia'),
(66, 'Which country is famous for the Eiffel Tower?', 'France', 'Germany', 'Italy', 'Spain', 'easy', 'trivia'),
(67, 'Which organ pumps blood in the human body?', 'Heart', 'Liver', 'Brain', 'Lungs', 'easy', 'trivia'),
(68, 'What is the smallest planet in our solar system?', 'Mercury', 'Mars', 'Venus', 'Pluto', 'medium', 'trivia'),
(69, 'What is the longest river in the world?', 'Nile', 'Amazon', 'Yangtze', 'Mississippi', 'medium', 'trivia'),
(70, 'Who discovered penicillin?', 'Alexander Fleming', 'Marie Curie', 'Louis Pasteur', 'Isaac Newton', 'hard', 'trivia'),
(71, 'Which is the largest desert in the world?', 'Antarctica', 'Sahara', 'Gobi', 'Kalahari', 'medium', 'trivia'),
(72, 'How many bones are in the adult human body?', '206', '195', '212', '250', 'hard', 'trivia'),
(73, 'Which planet has the most moons?', 'Saturn', 'Jupiter', 'Uranus', 'Neptune', 'medium', 'trivia'),
(74, 'What is the name of the deepest ocean trench?', 'Mariana Trench', 'Tonga Trench', 'Java Trench', 'Puerto Rico Trench', 'medium', 'trivia'),
(75, 'Which physicist developed the uncertainty principle?', 'Werner Heisenberg', 'Niels Bohr', 'Max Planck', 'Richard Feynman', 'hard', 'trivia'),
(76, 'In what year did the Roman Empire fall?', '476 AD', '1492', '1066', '1215', 'medium', 'trivia'),
(77, 'Who was the first person to reach the South Pole?', 'Roald Amundsen', 'Robert Falcon Scott', 'Ernest Shackleton', 'James Cook', 'hard', 'trivia'),
(78, 'What is the capital of Bhutan?', 'Thimphu', 'Kathmandu', 'Dhaka', 'Colombo', 'hard', 'trivia'),
(79, 'What is the rarest blood type?', 'AB negative', 'O negative', 'A negative', 'B negative', 'hard', 'trivia'),
(80, 'Which element has the highest melting point?', 'Tungsten', 'Carbon', 'Platinum', 'Osmium', 'hard', 'trivia'),
(81, 'Who was the first mathematician to calculate pi?', 'Archimedes', 'Euclid', 'Pythagoras', 'Eratosthenes', 'hard', 'trivia'),
(82, 'Which battle marked the end of Napoleon’s reign?', 'Battle of Waterloo', 'Battle of Austerlitz', 'Battle of Trafalgar', 'Battle of Leipzig', 'hard', 'trivia'),
(83, 'What is the largest internal organ in the human body?', 'Liver', 'Brain', 'Lungs', 'Heart', 'hard', 'trivia'),
(84, 'What is the capital of Canada?', 'Ottawa', 'Toronto', 'Vancouver', 'Montreal', 'easy', 'trivia'),
(85, 'What is the capital of Australia?', 'Canberra', 'Sydney', 'Melbourne', 'Brisbane', 'easy', 'trivia'),
(86, 'What is the capital of Russia?', 'Moscow', 'Saint Petersburg', 'Novosibirsk', 'Yekaterinburg', 'easy', 'trivia'),
(87, 'What is the capital of India?', 'New Delhi', 'Mumbai', 'Bangalore', 'Hyderabad', 'easy', 'trivia'),
(88, 'What is the capital of China?', 'Beijing', 'Shanghai', 'Guangzhou', 'Shenzhen', 'easy', 'trivia'),
(89, 'Who is known as the King of Pop?', 'Michael Jackson', 'Elvis Presley', 'Prince', 'Madonna', 'easy', 'trivia'),
(90, 'Which band released the album \"Dark Side of the Moon\"?', 'Pink Floyd', 'The Beatles', 'Led Zeppelin', 'Queen', 'medium', 'trivia'),
(91, 'Who is the lead singer of the band U2?', 'Bono', 'Sting', 'Freddie Mercury', 'Mick Jagger', 'medium', 'trivia'),
(92, 'What is the highest female voice type?', 'Soprano', 'Alto', 'Tenor', 'Bass', 'easy', 'trivia'),
(93, 'In which year did the Titanic sink?', '1912', '1905', '1915', '1920', 'medium', 'trivia'),
(94, 'Who was the British Prime Minister during World War II?', 'Winston Churchill', 'Neville Chamberlain', 'Clement Attlee', 'Harold Macmillan', 'medium', 'trivia'),
(95, 'Which ancient civilization built the pyramids?', 'Egyptians', 'Romans', 'Greeks', 'Mayans', 'easy', 'trivia'),
(96, 'What was the name of the ship that brought the Pilgrims to America in 1620?', 'Mayflower', 'Santa Maria', 'Endeavour', 'Beagle', 'medium', 'trivia'),
(97, 'Who was the first Emperor of China?', 'Qin Shi Huang', 'Liu Bang', 'Kublai Khan', 'Sun Yat-sen', 'hard', 'trivia'),
(98, 'In which year did the Berlin Wall fall?', '1989', '1982', '1993', '1995', 'hard', 'trivia'),
(99, 'Who was the longest-reigning British monarch before Queen Elizabeth II?', 'Queen Victoria', 'King George III', 'Queen Elizabeth I', 'King Henry VIII', 'hard', 'trivia'),
(100, 'What was the name of the first artificial Earth satellite?', 'Sputnik 1', 'Explorer 1', 'Vanguard 1', 'Luna 1', 'hard', 'trivia'),
(101, 'Who was the last Tsar of Russia?', 'Nicholas II', 'Alexander III', 'Peter the Great', 'Ivan the Terrible', 'hard', 'trivia'),
(102, 'What is the term for the speed of a piece of music?', 'Tempo', 'Pitch', 'Dynamics', 'Harmony', 'easy', 'trivia'),
(103, 'In music theory, what is the symbol for a sharp note?', '#', 'b', 'x', 'n', 'medium', 'trivia'),
(104, 'What is the term for gradually getting louder in music?', 'Crescendo', 'Decrescendo', 'Staccato', 'Legato', 'easy', 'trivia'),
(105, 'What is the term for a musical composition for four performers?', 'Quartet', 'Trio', 'Duet', 'Quintet', 'easy', 'trivia'),
(106, 'What is the term for the distance between two pitches?', 'Interval', 'Chord', 'Scale', 'Key', 'medium', 'trivia'),
(107, 'What is the best-selling video game of all time?', 'Minecraft', 'Tetris', 'Grand Theft Auto V', 'Wii Sports', 'medium', 'trivia'),
(108, 'Who is the main character in the Legend of Zelda series?', 'Link', 'Zelda', 'Ganon', 'Sheik', 'easy', 'trivia'),
(109, 'Which video game franchise features characters such as Sub-Zero and Scorpion?', 'Mortal Kombat', 'Street Fighter', 'Tekken', 'Soulcalibur', 'medium', 'trivia'),
(110, 'What is the name of the fictional city where the game Grand Theft Auto V is set?', 'Los Santos', 'Liberty City', 'Vice City', 'San Fierro', 'medium', 'trivia'),
(111, 'In which game do players compete in a battle royale on an island called Erangel?', 'PUBG', 'Fortnite', 'Apex Legends', 'Call of Duty: Warzone', 'hard', 'trivia'),
(112, 'What is the name of the main character in the game God of War?', 'Kratos', 'Ares', 'Zeus', 'Hades', 'medium', 'trivia'),
(113, 'Which video game console is produced by Sony?', 'PlayStation', 'Xbox', 'Nintendo Switch', 'Sega Genesis', 'easy', 'trivia'),
(114, 'Which game features a character named Nathan Drake?', 'Uncharted', 'The Last of Us', 'Tomb Raider', 'Assassin\'s Creed', 'medium', 'trivia'),
(115, 'What is the largest ocean on Earth?', 'Pacific', 'Atlantic', 'Indian', 'Arctic', 'easy', 'trivia'),
(116, 'What is the value of pi to two decimal places?', '3.14', '3.15', '3.13', '3.16', 'easy', 'trivia'),
(117, 'What is the square root of 64?', '8', '6', '7', '9', 'easy', 'trivia'),
(118, 'What is the formula for the area of a circle?', 'PIr^2', '2PIr', 'PId', 'r^2', 'medium', 'trivia'),
(119, 'What is the derivative of x^2?', '2x', 'x', 'x^2', '2', 'medium', 'trivia'),
(120, 'What is the value of the mathematical constant e?', '2.718', '3.142', '1.618', '1.414', 'hard', 'trivia'),
(121, 'What is the sum of the angles in a triangle?', '180 degrees', '90 degrees', '270 degrees', '360 degrees', 'easy', 'trivia'),
(122, 'Which city is known as the \"Steel City\"?', 'Sheffield', 'Leeds', 'Bristol', 'Newcastle', 'medium', 'trivia'),
(123, 'Which city is famous for its university, founded in 1209?', 'Cambridge', 'Oxford', 'Durham', 'Exeter', 'medium', 'trivia'),
(124, 'Which city is home to the Beatles?', 'Liverpool', 'Manchester', 'Birmingham', 'Leeds', 'easy', 'trivia'),
(125, 'Which city is known for its Roman baths?', 'Bath', 'York', 'Chester', 'Canterbury', 'medium', 'trivia'),
(126, 'Who wrote the novel \"Pride and Prejudice\"?', 'Jane Austen', 'Charlotte Bronte', 'Emily Bronte', 'Mary Shelley', 'medium', 'trivia'),
(127, 'Who directed the movie \"Inception\"?', 'Christopher Nolan', 'Steven Spielberg', 'James Cameron', 'Quentin Tarantino', 'medium', 'trivia'),
(128, 'Which movie features the song \"My Heart Will Go On\"?', 'Titanic', 'The Bodyguard', 'Pretty Woman', 'Ghost', 'easy', 'trivia'),
(129, 'Who played the character of Jack Sparrow in \"Pirates of the Caribbean\"?', 'Johnny Depp', 'Orlando Bloom', 'Leonardo DiCaprio', 'Brad Pitt', 'easy', 'trivia'),
(130, 'Which movie won the Oscar for Best Picture in 2020?', 'Parasite', '1917', 'Joker', 'Babylon', 'hard', 'trivia'),
(131, 'Who played the character of Forrest Gump?', 'Tom Hanks', 'Robin Williams', 'Tom Cruise', 'Matt Damon', 'easy', 'trivia'),
(132, 'Which movie is based on the life of mathematician John Nash?', 'A Beautiful Mind', 'The Imitation Game', 'Good Will Hunting', 'The Theory of Everything', 'hard', 'trivia'),
(133, 'Who directed the movie \"Pulp Fiction\"?', 'Quentin Tarantino', 'Martin Scorsese', 'Francis Ford Coppola', 'Ridley Scott', 'medium', 'trivia'),
(134, 'Which movie features the character of Tony Montana?', 'Scarface', 'The Godfather', 'Goodfellas', 'Casino', 'medium', 'trivia'),
(135, 'Who played the character of Neo in \"The Matrix\"?', 'Keanu Reeves', 'Will Smith', 'Brad Pitt', 'Tom Cruise', 'easy', 'trivia'),
(136, 'Which movie is set in the fictional African country of Wakanda?', 'Black Panther', 'Coming to America', 'The Lion King', 'Blood Diamond', 'easy', 'trivia'),
(137, 'Who won the Nobel Prize in Literature in 2016?', 'Bob Dylan', 'Haruki Murakami', 'Philip Roth', 'Margaret Atwood', 'hard', 'trivia'),
(138, 'Who is the author of the Harry Potter series?', 'J.K. Rowling', 'Stephen King', 'George R.R. Martin', 'Tolkien', 'easy', 'trivia'),
(159, 'What is the synonym of \"happy\"?', 'Joyful', 'Sad', 'Angry', 'Tired', 'easy', 'english'),
(160, 'What is the antonym of \"big\"?', 'Small', 'Large', 'Huge', 'Gigantic', 'easy', 'english'),
(161, 'Which word is a noun?', 'Apple', 'Run', 'Quickly', 'Beautiful', 'easy', 'english'),
(162, 'Which word is an adjective?', 'Beautiful', 'Run', 'Apple', 'Quickly', 'easy', 'english'),
(163, 'What is the past tense of \"go\"?', 'Went', 'Go', 'Gone', 'Going', 'easy', 'english'),
(164, 'What is the synonym of \"fast\"?', 'Quick', 'Slow', 'Lazy', 'Late', 'easy', 'english'),
(165, 'What is the antonym of \"hot\"?', 'Cold', 'Warm', 'Boiling', 'Scorching', 'easy', 'english'),
(166, 'Which word is a verb?', 'Run', 'Apple', 'Beautiful', 'Quickly', 'easy', 'english'),
(167, 'What is the past tense of \"eat\"?', 'Ate', 'Eat', 'Eating', 'Eaten', 'easy', 'english'),
(168, 'What is the synonym of \"smart\"?', 'Intelligent', 'Dumb', 'Slow', 'Lazy', 'easy', 'english'),
(169, 'What is the antonym of \"early\"?', 'Late', 'Soon', 'Quick', 'Fast', 'easy', 'english'),
(170, 'Which word is an adverb?', 'Quickly', 'Run', 'Apple', 'Beautiful', 'easy', 'english'),
(171, 'What is the past tense of \"see\"?', 'Saw', 'See', 'Seen', 'Seeing', 'easy', 'english'),
(172, 'What is the synonym of \"angry\"?', 'Mad', 'Happy', 'Joyful', 'Calm', 'easy', 'english'),
(173, 'What is the antonym of \"light\"?', 'Heavy', 'Bright', 'Shiny', 'Luminous', 'easy', 'english'),
(174, 'Which word is a pronoun?', 'He', 'Run', 'Apple', 'Beautiful', 'easy', 'english'),
(175, 'What is the past tense of \"take\"?', 'Took', 'Take', 'Taken', 'Taking', 'easy', 'english'),
(176, 'What is the synonym of \"difficult\"?', 'Hard', 'Easy', 'Simple', 'Basic', 'easy', 'english'),
(177, 'What is the antonym of \"old\"?', 'Young', 'Ancient', 'Aged', 'Elderly', 'easy', 'english'),
(178, 'Which word is a conjunction?', 'And', 'Run', 'Apple', 'Beautiful', 'easy', 'english'),
(179, 'What is the synonym of \"quick\"?', 'Fast', 'Slow', 'Lazy', 'Late', 'medium', 'english'),
(180, 'What is the antonym of \"bright\"?', 'Dull', 'Shiny', 'Luminous', 'Radiant', 'medium', 'english'),
(181, 'Which word is a preposition?', 'Under', 'Run', 'Apple', 'Beautiful', 'medium', 'english'),
(182, 'What is the past tense of \"write\"?', 'Wrote', 'Write', 'Written', 'Writing', 'medium', 'english'),
(183, 'What is the synonym of \"brave\"?', 'Courageous', 'Cowardly', 'Fearful', 'Timid', 'medium', 'english'),
(184, 'What is the antonym of \"strong\"?', 'Weak', 'Powerful', 'Mighty', 'Robust', 'medium', 'english'),
(185, 'Which word is an interjection?', 'Wow', 'Run', 'Apple', 'Beautiful', 'medium', 'english'),
(186, 'What is the past tense of \"sing\"?', 'Sang', 'Sing', 'Sung', 'Singing', 'medium', 'english'),
(187, 'What is the synonym of \"calm\"?', 'Peaceful', 'Agitated', 'Nervous', 'Anxious', 'medium', 'english'),
(188, 'What is the antonym of \"cheap\"?', 'Expensive', 'Affordable', 'Inexpensive', 'Reasonable', 'medium', 'english'),
(189, 'What is the synonym of \"complex\"?', 'Complicated', 'Simple', 'Easy', 'Basic', 'hard', 'english'),
(190, 'What is the antonym of \"increase\"?', 'Decrease', 'Grow', 'Expand', 'Enlarge', 'hard', 'english'),
(191, 'Which word is a gerund?', 'Running', 'Run', 'Apple', 'Beautiful', 'hard', 'english'),
(192, 'What is the past tense of \"begin\"?', 'Began', 'Begin', 'Begun', 'Beginning', 'hard', 'english'),
(193, 'What is the synonym of \"elaborate\"?', 'Detailed', 'Simple', 'Basic', 'Plain', 'hard', 'english'),
(194, 'What is the antonym of \"frequent\"?', 'Rare', 'Common', 'Usual', 'Regular', 'hard', 'english'),
(195, 'Which word is a participle?', 'Taken', 'Run', 'Apple', 'Beautiful', 'hard', 'english'),
(196, 'What is the past tense of \"swim\"?', 'Swam', 'Swim', 'Swum', 'Swimming', 'hard', 'english'),
(197, 'What is the synonym of \"obscure\"?', 'Unclear', 'Clear', 'Obvious', 'Evident', 'hard', 'english'),
(198, 'What is the antonym of \"abundant\"?', 'Scarce', 'Plentiful', 'Ample', 'Sufficient', 'hard', 'english');

-- --------------------------------------------------------

--
-- Structure de la table `SortItOut`
--

CREATE TABLE `SortItOut` (
  `difficulty` enum('easy','medium','hard') NOT NULL,
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `reponse1` varchar(255) NOT NULL,
  `reponse2` varchar(255) NOT NULL,
  `reponse3` varchar(255) NOT NULL,
  `reponse4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `SortItOut`
--

INSERT INTO `SortItOut` (`difficulty`, `id`, `question`, `reponse1`, `reponse2`, `reponse3`, `reponse4`) VALUES
('easy', 1, 'Sort these historical events chronologically', 'Hundred Years War § 1337-1453 ', 'World War I § 1914-1918', 'World War II § 1939-1945', 'Cold War § 1947-1991'),
('easy', 2, 'Sort these planets from the Sun (Closest to farthest)', 'Mercury', 'Venus', 'Earth ', 'Mars'),
('medium', 3, 'Sort these mathematicians chronologically', 'Euclid § 325 BC', 'Newton § 1643', 'Gauss § 1777', 'Einstein § 1879'),
('medium', 4, 'Sort these U.S. presidents from earliest to latest', 'George Washington § 1789 ', 'Abraham Lincoln § 1861 ', 'Franklin D. Roosevelt § 1933 ', 'John F. Kennedy § 1961'),
('hard', 5, 'Sort these elements by atomic number', 'Hydrogen § 1', 'Helium § 2', 'Oxygen § 8', 'Iron § 26'),
('hard', 6, 'Sort these Shakespearean plays by publication date', 'Hamlet § 1603 ', 'Othello § 1604', 'Macbeth § 1623', 'King Lear § 1606'),
('easy', 11, 'Sort these world capitals from north to south', 'Moscow', 'Berlin', 'Rome', 'Cairo'),
('hard', 12, 'Sort these famous books by publication year', 'Pride and Prejudice § 1813', 'Moby Dick § 1851', 'The Great Gatsby § 1925', 'Harry Potter § 1997'),
('easy', 14, 'Sort these planets by size (smallest to largest)', 'Mercury § 4 879,4 km', 'Mars § 6 779 km', 'Earth § 12 756 km', 'Jupiter § 139 820 km'),
('hard', 15, 'Sort these economic systems by historical development', 'Feudalism § 1030', 'Mercantilism § 1500', 'Capitalism § 1770', 'Socialism § 1830'),
('medium', 16, 'Sort these US states by size (largest to smallest)', 'Alaska § 1,723 million km²', 'Texas § 695 662 km²', 'California § 423 970 km²', 'Montana § 381 156 km²'),
('medium', 18, 'Sort these elements by atomic number (lowest to highest)', 'Hydrogen § 1', 'Carbon § 6', 'Iron § 26', 'Uranium § 92'),
('hard', 20, 'Sort these Olympic host cities by year', 'Athens § 1896', 'Berlin § 1936', 'Tokyo § 1964', 'Los Angeles § 1984'),
('medium', 21, 'Sort these planets by size (largest to smallest)', 'Jupiter § 139 820 km', 'Saturn § 116 460 km', 'Uranus § 50 724 km', 'Neptune § 49 244 km'),
('medium', 23, 'Sort these inventors chronologically', 'Leonardo da Vinci § 1452 ', 'Isaac Newton § 1643', 'Lumière brothers § 1862', 'Steve Jobs § 1955'),
('medium', 24, 'Sort these countries by population (highest to lowest)', 'India § 1,429 milliard', 'China § 1,411 milliard', 'USA § 334,9 millions', 'Indonesia § 277,5 millions'),
('medium', 26, 'Sort these programming languages by release date', 'C § 1972', 'Python § 1980 ', 'Java § 1995', 'Rust § 2006'),
('easy', 27, 'Sort these European capitals alphabetically', 'Berlin', 'London', 'Madrid', 'Paris'),
('easy', 28, 'Sort these social media platforms by launch date', 'Facebook § 2004', 'Twitter § 2006', 'Instagram § 2010', 'TikTok § 2016'),
('medium', 29, 'Sort these car brands by founding year', 'Ford § 1893', 'Mercedes-Benz § 1926', 'Toyota § 1937', 'Tesla § 2003'),
('easy', 30, 'Sort these Disney movies by release date', 'Snow White § 1937', 'The Lion King § 1994', 'Frozen § 2013', 'Encanto § 2021'),
('medium', 31, 'Sort these football World Cup winners chronologically', 'Brazil § 2002', 'Italy § 2006', 'Germany § 2014', 'France § 2018'),
('hard', 32, 'Sort these space missions by date', 'Apollo 11 § 1969', 'Voyager 1 § 1977', 'Hubble Space Telescope § 1990', 'Mars Rover § 2003'),
('easy', 34, 'Sort these video game consoles chronologically', 'Nintendo 64 § 1996', 'PlayStation 2 § 2000', 'Xbox 360 § 2005', 'PlayStation 5 § 2020'),
('medium', 35, 'Sort these Netflix series by release date', 'House of Cards § 2013', 'Stranger Things § 2016', 'The Witcher § 2019', 'Squid Game § 2021'),
('easy', 37, 'Sort these animals by size (smallest to largest)', 'Mouse', 'Dog', 'Horse', 'Elephant'),
('easy', 39, 'Sort these European countries by population (smallest to largest)', 'Iceland', 'Norway', 'France', 'Germany'),
('easy', 41, 'Sort these types of transportation from slowest to fastest', 'Walking', 'Bicycle', 'Car', 'Airplane'),
('medium', 42, 'Sort these colors in rainbow order', 'Red', 'Yellow', 'Blue', 'Violet'),
('easy', 43, 'Sort these common beverages by temperature (coldest to warmest)', 'Ice water', 'Soda', 'Tea', 'Coffee'),
('easy', 44, 'Sort these musical notes in ascending order', 'Do', 'Re', 'Mi', 'Fa'),
('medium', 46, 'Sort these oceans by size (smallest to largest)', 'Arctic § 15M km²', 'Indian § 70M km²', 'Atlantic § 85M km²', 'Pacific § 168M km²'),
('easy', 47, 'Sort these major U.S. cities from west to east', 'Los Angeles § 118°W', 'Denver § 105°W', 'Chicago § 87°W', 'New York § 74°W'),
('easy', 48, 'Sort these scientific units by size (smallest to largest)', 'Nanometer § 10^-9m', 'Millimeter § 10^-3m', 'Meter § 1m', 'Kilometer § 10^3m'),
('medium', 49, 'Sort these classical music composers by birth year', 'Vivaldi § 1678', 'Bach § 1685', 'Beethoven § 1770', 'Chopin § 1810'),
('hard', 50, 'Sort these books by publication year', 'The Catcher in the Rye § 1951', 'To Kill a Mockingbird § 1960', '1984 § 1949', 'The Great Gatsby § 1925'),
('medium', 51, 'Sort these famous inventions chronologically', 'Light Bulb § 1879', 'Radio § 1895', 'Television § 1927', 'Internet § 1960s'),
('medium', 52, 'Sort these continents by area (smallest to largest)', 'Europe § 10.18M km²', 'Antarctica § 14M km²', 'North America § 24.71M km²', 'Asia § 44.58M km²'),
('medium', 53, 'Sort these programming languages by release year', 'JavaScript § 1995', 'PHP § 1995', 'Ruby § 1995', 'Swift § 2014'),
('medium', 54, 'Sort these Marvel movies by release date', 'Iron Man § 2008', 'The Avengers § 2012', 'Black Panther § 2018', 'Spider-Man: No Way Home § 2021'),
('medium', 55, 'Sort these famous scientists by contribution date', 'Galileo § 1609', 'Newton § 1687', 'Darwin § 1859', 'Curie § 1898'),
('hard', 56, 'Sort these historical empires by founding date', 'Roman Empire § 27 BC', 'Byzantine Empire § 330 AD', 'Ottoman Empire § 1299', 'British Empire § 1583'),
('hard', 57, 'Sort these programming paradigms chronologically', 'Procedural § 1950s', 'Object-Oriented § 1960s', 'Functional § 1970s', 'Reactive § 2000s'),
('hard', 58, 'Sort these ancient civilizations by peak influence', 'Sumerians § 3000 BC', 'Ancient Egypt § 2500 BC', 'Greek Empire § 500 BC', 'Roman Empire § 117 AD'),
('hard', 59, 'Sort these famous artworks chronologically', 'Mona Lisa § 1503', 'The Starry Night § 1889', 'Guernica § 1937', 'The Persistence of Memory § 1931'),
('hard', 60, 'Sort these scientific discoveries chronologically', 'Penicillin § 1928', 'DNA Structure § 1953', 'Theory of Relativity § 1905', 'Higgs Boson § 2012'),
('hard', 61, 'Sort these economic crises by occurrence', 'Great Depression § 1929', 'Dot-Com Bubble § 2000', '2008 Financial Crisis § 2008', 'COVID-19 Recession § 2020'),
('hard', 62, 'Sort these philosophers by birth year', 'Plato § 427 BC', 'Descartes § 1596', 'Kant § 1724', 'Nietzsche § 1844'),
('hard', 63, 'Sort these space missions by success date', 'Sputnik 1 § 1957', 'Apollo 11 § 1969', 'Voyager 1 § 1977', 'Curiosity Rover § 2012');

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `score` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`id`, `username`, `score`) VALUES
(44, 'TEST', 500),
(45, 'BASTIENGGGG', 1400),
(46, 'POULE', 600),
(47, 'ERIC', 1800),
(51, 'OLIVIER', 1800),
(53, 'ENGUERRAN', 2300),
(54, 'BRAD', 2600),
(55, 'ENGUERRAN', 2800),
(57, 'TIBO', 300),
(59, 'LETHIMQUIZZ', 600),
(60, 'BRAD', 3100),
(61, 'BASTIENGG', 1500),
(62, 'AUDREY', 1500),
(63, 'CRICRI', 100),
(64, 'AMAURY', 1100),
(65, 'BRAD', 1200);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `FindThePlace`
--
ALTER TABLE `FindThePlace`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `MCQ`
--
ALTER TABLE `MCQ`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `SortItOut`
--
ALTER TABLE `SortItOut`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`) USING BTREE;

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `FindThePlace`
--
ALTER TABLE `FindThePlace`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `MCQ`
--
ALTER TABLE `MCQ`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT pour la table `SortItOut`
--
ALTER TABLE `SortItOut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
