-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: May 28, 2025 at 06:09 PM
-- Server version: 8.0.31
-- PHP Version: 8.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_timetabling`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE `courses` (
  `course_id` bigint NOT NULL,
  `common_id` varchar(255) DEFAULT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `room_spec` varchar(255) DEFAULT NULL,
  `semester` int DEFAULT NULL,
  `year` int DEFAULT NULL,
  `dept_id` bigint NOT NULL,
  `instructor_id` bigint NOT NULL,
  `programme_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `courses`
--

TRUNCATE TABLE `courses`;
--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `common_id`, `course_code`, `course_name`, `room_spec`, `semester`, `year`, `dept_id`, `instructor_id`, `programme_id`) VALUES
(1, '0', 'CSC111', 'Introduction to Computer Systems', NULL, 1, 1, 1, 1, 1),
(2, '0', 'CSC112', 'Introduction to Programming', NULL, 1, 1, 1, 2, 1),
(3, '0', 'CSC113', 'Discrete Mathematics', 'SLT', 1, 1, 1, 3, 1),
(4, '0', 'CSC115', 'Programming Lab �', 'LAB', 1, 1, 1, 4, 1),
(5, '0', 'CSC126', 'Physics for Computing Systems', NULL, 1, 1, 1, 5, 1),
(6, '1', 'CCS001', 'Communication Skills', 'HALL', 1, 1, 1, 6, 1),
(7, '0', 'CCS009', 'Elements of Economics�', NULL, 1, 1, 1, 7, 1),
(8, '0', 'CSC122�', 'Database Systems', NULL, 2, 1, 1, 8, 1),
(9, '0', 'CSC123', 'Data Communications', NULL, 2, 1, 1, 9, 1),
(10, '0', '�CSC125', 'Linear Algebra�', NULL, 2, 1, 1, 10, 1),
(11, '0', 'CSC127', 'Object Oriented Programming', NULL, 2, 1, 1, 11, 1),
(12, '0', 'CSC211', '�Data Structures and Algorithms', NULL, 2, 1, 1, 12, 1),
(13, '0', 'CSC214', 'Digital Electronics �', NULL, 2, 1, 1, 13, 1),
(14, '0', 'CCS010', 'HIV/AIDS �', NULL, 2, 1, 1, 14, 1),
(15, '0', 'CSC114', 'Differential and Integral Calculus', NULL, 1, 2, 1, 15, 1),
(16, '0', 'CSC212�', 'Systems Analysis and Design', NULL, 1, 2, 1, 16, 1),
(17, '0', 'CSC213�', 'Computer Architecture', NULL, 1, 2, 1, 17, 1),
(18, '0', 'CSC217�', 'Knowledge-based Systems & Programming �', NULL, 1, 2, 1, 1, 1),
(19, '0', 'CSC223�', 'Operating Systems �', NULL, 1, 2, 1, 2, 1),
(20, '0', 'CSC224�', 'Software Engineering', NULL, 1, 2, 1, 3, 1),
(21, '0', 'CSC225�', '�Computer Networks �', NULL, 1, 2, 1, 4, 1),
(22, '0', 'CSC124', 'Probability and Statistics', NULL, 2, 2, 1, 5, 1),
(23, '0', 'CSC216�', 'Assembly Language Programming', NULL, 2, 2, 1, 6, 1),
(24, '0', 'CSC222�', 'Automata Theory', NULL, 2, 2, 1, 7, 1),
(25, '0', 'CSC227�', 'Programming Project�', NULL, 2, 2, 1, 8, 1),
(26, '0', 'CSC228�', 'Web and Services Programming �', NULL, 2, 2, 1, 9, 1),
(27, '0', 'CSC229�', 'Machine Learning Algorithms & Programming�', NULL, 2, 2, 1, 10, 1),
(28, '0', 'CSC313�', 'Foundations of Human Computer Interaction', NULL, 2, 2, 1, 11, 1),
(29, '0', 'CSC311�', 'Analysis and Design of Algorithms', NULL, 1, 3, 1, 12, 1),
(30, '0', 'CSC314�', 'Computer Graphics �', NULL, 1, 3, 1, 13, 1),
(31, '0', 'CSC315�', 'Distributed Systems', NULL, 1, 3, 1, 14, 1),
(32, '0', 'CSC316�', 'Intro to Organizations and Management �', NULL, 1, 3, 1, 15, 1),
(33, '0', 'CSC317�', 'Artificial Intelligence Applications', NULL, 1, 3, 1, 16, 1),
(34, '0', 'CSC318�', 'Network Design Implementation and Management', NULL, 1, 3, 1, 17, 1),
(35, '0', 'CSC319�', 'Innovation & Entrepreneurship', NULL, 1, 3, 1, 1, 1),
(36, '0', 'CSC321�', 'ICT Project Management', NULL, 2, 3, 1, 2, 1),
(37, '0', 'CSC322�', 'Network and Distributed Programming', NULL, 2, 3, 1, 3, 1),
(38, '0', 'CSC326�', 'Compiler Construction', NULL, 2, 3, 1, 4, 1),
(39, '0', 'CSC327�', 'Embedded Systems & Mobile Programming', NULL, 2, 3, 1, 5, 1),
(40, '0', 'CSC328�', 'Business Intelligence & Analytics', NULL, 2, 3, 1, 6, 1),
(41, '0', 'CSC411�', 'Computer Network Security', NULL, 2, 3, 1, 7, 1),
(42, '0', 'CSC414', 'ICTs and Society�', NULL, 1, 4, 1, 8, 1),
(43, '0', 'CSC417�', 'Information Systems and Organizations', NULL, 1, 4, 1, 9, 1),
(44, '0', 'CSC418�', 'Emerging Technologies Bootcamps', NULL, 1, 4, 1, 10, 1),
(45, '0', 'CSC451�', 'Distributed Databases�', NULL, 1, 4, 1, 11, 1),
(46, '0', 'CSC481�', 'Computer Games Programming', NULL, 1, 4, 1, 12, 1),
(47, '0', 'CSC416�', 'Computer Systems Project �', NULL, 1, 4, 1, 13, 1),
(48, '0', 'CSC416', 'Computer Systems Project', NULL, 2, 4, 1, 14, 1),
(49, '0', 'CSC434�', 'Cloud Computing and Services', NULL, 2, 4, 1, 15, 1),
(50, '0', 'CSC452�', 'Information Systems Control Audit �', NULL, 2, 4, 1, 16, 1),
(51, '0', 'CSC455�', 'Information for Emerging Online Solutions�', NULL, 2, 4, 1, 17, 1),
(52, '0', 'SMA3101', 'Basic Mathematics', NULL, 1, 1, 2, 18, 2),
(53, '0', 'SMA3103', 'Calculus I', NULL, 1, 1, 2, 19, 2),
(54, '0', 'SMA3105', 'Geometry I', NULL, 1, 1, 2, 20, 2),
(55, '0', 'STA3101', 'Introduction to Probability and Statistics', NULL, 1, 1, 2, 21, 2),
(56, '0', 'SCS3101', 'Introduction to Computer Systems', NULL, 1, 1, 2, 22, 2),
(57, '0', 'SCS3103', 'Introduction to Programming', NULL, 1, 1, 2, 23, 2),
(58, '0', 'SMA3104', 'Calculus II', NULL, 2, 1, 2, 24, 2),
(59, '0', 'SMA3116', 'Geometry II', NULL, 2, 1, 2, 25, 2),
(60, '0', 'SMA3108', 'Discrete Mathematics I', NULL, 2, 1, 2, 26, 2),
(61, '0', 'SDS3102', 'Foundations of Data Science', NULL, 2, 1, 2, 27, 2),
(62, '0', 'CCS011', 'HIV/AIDS �', NULL, 2, 1, 2, 28, 2),
(63, '0', 'SMA3201', 'Advanced Calculus', NULL, 1, 2, 2, 29, 2),
(64, '0', 'SMA3203', 'Linear Algebra I', NULL, 1, 2, 2, 30, 2),
(65, '0', 'SMA3251', 'Discrete Mathematics II', NULL, 1, 2, 2, 18, 2),
(66, '0', 'STA3201', 'Probability and Statistics I', NULL, 1, 2, 2, 19, 2),
(67, '0', 'SDS3201', 'Database Systems', NULL, 1, 2, 2, 20, 2),
(68, '0', 'SDS3203', 'Data Structures and Algorithms', NULL, 2, 2, 2, 21, 2),
(69, '0', 'SMA3204', 'Linear Algebra II', NULL, 2, 2, 2, 22, 2),
(70, '0', 'SMA3206', 'Introduction to Analysis', NULL, 2, 2, 2, 23, 2),
(71, '0', 'SMA3208', 'Ordinary Differential Equations I', NULL, 2, 2, 2, 24, 2),
(72, '0', 'STA3202', 'Statistical Inference I', NULL, 2, 2, 2, 25, 2),
(73, '0', 'STA3222', 'Time Series Analysis', NULL, 2, 2, 2, 26, 2),
(74, '0', 'SDS3204', 'Data Mining and Visualization', NULL, 1, 2, 2, 27, 2),
(75, '0', 'STA3301', 'Probability and Statistics II', NULL, 1, 3, 2, 28, 2),
(76, '0', 'SMA3351', 'Optimization Methods', NULL, 1, 3, 2, 29, 2),
(77, '0', 'SDS3301', 'Artificial Intelligence', NULL, 1, 3, 2, 30, 2),
(78, '0', 'SDS3303', 'Systems Analysis and Design', NULL, 1, 3, 2, 18, 2),
(79, '0', 'SDS3311', 'Numerical Methods and Convex Optimisation', NULL, 2, 3, 2, 19, 2),
(80, '0', 'STA3302', 'Linear Modeling', NULL, 2, 3, 2, 20, 2),
(81, '0', 'STA3308', 'Sample Survey Methods', NULL, 2, 3, 2, 21, 2),
(82, '0', 'STA3318', 'Statistical Inference II', NULL, 2, 3, 2, 22, 2),
(83, '0', 'SDS3304', 'Software Engineering', NULL, 2, 3, 2, 23, 2),
(84, '0', 'SDS3306', 'Machine Learning', NULL, 2, 3, 2, 24, 2),
(85, '1', 'CCS002', 'Communication Skills', NULL, 1, 1, 3, 31, 3),
(86, '0', 'ICT1101', 'Introduction to Information Systems', NULL, 1, 1, 3, 32, 3),
(87, '0', 'ACC1101', 'Introduction to Accounting I', NULL, 1, 1, 3, 33, 3),
(88, '0', 'BAM1101', 'Business Studies', NULL, 1, 1, 3, 34, 3),
(89, '0', 'BAM1102', 'Principles of Management', NULL, 1, 1, 3, 35, 3),
(90, '0', 'MAT1102', 'Management Mathematics I', NULL, 1, 1, 3, 36, 3),
(91, '0', 'CUU002', 'Information Literacy', NULL, 1, 1, 3, 37, 3),
(92, '0', 'CUU0001', 'Health Awareness & Life Skills', NULL, 2, 1, 3, 38, 3),
(93, '0', 'BAM1204', 'Business Law I', NULL, 2, 1, 3, 39, 3),
(94, '0', 'BAM1205', 'Development Sudies and Ethics', NULL, 2, 1, 3, 40, 3),
(95, '0', 'ACC1202', 'Introduction to Accounting II', NULL, 2, 1, 3, 41, 3),
(96, '0', 'ECO11201', 'Introduction to Macroeconomics', NULL, 2, 1, 3, 42, 3),
(97, '0', 'MKT1101', 'Principles of Marketing', NULL, 2, 1, 3, 43, 3),
(98, '0', 'MAT1203', 'Management Mathematics II', NULL, 2, 1, 3, 44, 3),
(99, '0', 'ACC1303', 'Introduction to Taxation', NULL, 1, 2, 3, 45, 3),
(100, '0', 'ACC1304', 'Intermediate Accounting I', NULL, 1, 2, 3, 31, 3),
(101, '0', 'FIN1301', 'Business Finance', NULL, 1, 2, 3, 32, 3),
(102, '0', 'STA1305', 'Business Statistics I', NULL, 1, 2, 3, 33, 3),
(103, '0', 'ECO1302', 'Introduction to Macroeconomics', NULL, 1, 2, 3, 34, 3),
(104, '0', 'HRM1302', 'Introduction to Human Resource Management', NULL, 1, 2, 3, 35, 3),
(105, '0', 'ICT2104', 'E-Commerce', NULL, 2, 2, 3, 36, 3),
(106, '0', 'ACC2101', 'Introduction to Cost Accounting', NULL, 2, 2, 3, 37, 3),
(107, '0', 'FIN2101', 'Insurance and Risk Management', NULL, 2, 2, 3, 38, 3),
(108, '0', 'STA2101', 'Business Statistics II', NULL, 2, 2, 3, 39, 3),
(109, '0', 'HRM2102', 'Organization Behavior', NULL, 2, 2, 3, 40, 3),
(110, '0', 'FIN 2102', 'Financial Management', NULL, 2, 2, 3, 41, 3),
(111, '0', 'BAM2201', 'Total Quality Management', NULL, 1, 3, 3, 42, 3),
(112, '0', 'BAM2202', 'Company Law', NULL, 1, 3, 3, 43, 3),
(113, '0', 'BAM2204', 'Strategic Management', NULL, 1, 3, 3, 44, 3),
(114, '0', 'BAM2205', 'Project Management', NULL, 1, 3, 3, 45, 3),
(115, '0', 'ICT2203', 'Computer Application Software', NULL, 1, 3, 3, 31, 3),
(116, '0', 'BAM2206', 'Career Management', NULL, 1, 3, 3, 32, 3),
(117, '0', 'ENT2306', 'Entreprenuership', NULL, 2, 3, 3, 33, 3),
(118, '0', 'BAM2313', 'International Relations', NULL, 2, 3, 3, 34, 3),
(119, '0', 'BAM2314', 'International Business Strategy', NULL, 2, 3, 3, 35, 3),
(120, '0', 'HRM2309', 'Compenstation and Reward Management', NULL, 2, 3, 3, 36, 3),
(121, '0', 'HRM2310', 'Industrial Safety and Health', NULL, 2, 3, 3, 37, 3),
(122, '0', 'HRM2311', 'Training and Development', NULL, 2, 3, 3, 38, 3),
(123, '0', 'HRM3118', 'Labour Law & Economics', NULL, 1, 4, 3, 39, 3),
(124, '0', 'HRM3108', 'Human Resource Planning', NULL, 1, 4, 3, 40, 3),
(125, '0', 'HRM3123', 'Strategic Human Resource Management', NULL, 1, 4, 3, 41, 3),
(126, '0', 'CFU3100', 'Research Methodology', NULL, 1, 4, 3, 42, 3),
(127, '0', 'HRM3119', 'Human Resource Information Systems', NULL, 1, 4, 3, 43, 3),
(128, '0', 'HRM3221', 'Global HRM', NULL, 2, 4, 3, 44, 3),
(129, '0', 'HRM3215', 'Perfomance-Based Management', NULL, 2, 4, 3, 45, 3),
(130, '0', 'CFU3204', 'Research Project', NULL, 2, 4, 3, 31, 3),
(131, '0', 'HRM3211', 'Employee relations', NULL, 2, 4, 3, 32, 3);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `dept_id` bigint NOT NULL,
  `dept_code` varchar(255) DEFAULT NULL,
  `dept_name` varchar(255) DEFAULT NULL,
  `faculty_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `departments`
--

TRUNCATE TABLE `departments`;
--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_code`, `dept_name`, `faculty_id`) VALUES
(1, 'I18', 'computer science', 2),
(2, 'I20', 'mathematics', 2),
(3, 'B17', 'commerce', 4);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
CREATE TABLE `faculties` (
  `faculty_id` bigint NOT NULL,
  `faculty_code` varchar(255) NOT NULL,
  `faculty_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `faculties`
--

TRUNCATE TABLE `faculties`;
--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`faculty_id`, `faculty_code`, `faculty_name`) VALUES
(1, 'FHS', 'Faculty of Health Sciences'),
(2, 'FST', 'Faculty of Science And Technology'),
(3, 'FVM', 'Faculty of Veterinary Medicine'),
(4, 'FBMS', 'Faculty of Business and Management Sciences');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

DROP TABLE IF EXISTS `instructors`;
CREATE TABLE `instructors` (
  `instructor_id` bigint NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `dept_id` bigint NOT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `instructors`
--

TRUNCATE TABLE `instructors`;
--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`instructor_id`, `first_name`, `last_name`, `dept_id`, `user_id`) VALUES
(1, 'Justina', 'Rattray', 1, 1),
(2, 'Hildegaard', 'Daintrey', 1, 2),
(3, 'Errol', 'Belfelt', 1, 3),
(4, 'Denny', 'Huyton', 1, 4),
(5, 'Robby', 'Jacobovitch', 1, 5),
(6, 'Priscilla', 'Bulley', 1, 6),
(7, 'Yuri', 'Heisler', 1, 7),
(8, 'Hermia', 'Raynard', 1, 8),
(9, 'Cesare', 'Booth-Jarvis', 1, 9),
(10, 'Coleen', 'McClifferty', 1, 10),
(11, 'Terese', 'Murtagh', 1, 11),
(12, 'Sharona', 'Kemwall', 1, 12),
(13, 'Juliane', 'Waddilow', 1, 13),
(14, 'Romy', 'Lowdham', 1, 14),
(15, 'Joan', 'Baseley', 1, 15),
(16, 'Vernen', 'Prandini', 1, 16),
(17, 'Terencio', 'Skewes', 1, 17),
(18, 'Haslett', 'Borrows', 2, 18),
(19, 'Hersch', 'Feragh', 2, 19),
(20, 'Lexine', 'Shutle', 2, 20),
(21, 'Nancey', 'Fierro', 2, 21),
(22, 'Merlina', 'Threadgall', 2, 22),
(23, 'Betsey', 'Gatley', 2, 23),
(24, 'Andy', 'Grigs', 2, 24),
(25, 'Beverie', 'Guitt', 2, 25),
(26, 'Neel', 'Romaine', 2, 26),
(27, 'Vinita', 'Thulborn', 2, 27),
(28, 'Rana', 'Viccary', 2, 28),
(29, 'Bondie', 'Pryell', 2, 29),
(30, 'Avram', 'Lademann', 2, 30),
(31, 'Susie', 'Eastgate', 3, 31),
(32, 'Ferdinande', 'Piele', 3, 32),
(33, 'Brander', 'Daltrey', 3, 33),
(34, 'Myrilla', 'Croxon', 3, 34),
(35, 'Jacinda', 'Edgin', 3, 35),
(36, 'Avis', 'Dosedale', 3, 36),
(37, 'Umberto', 'Fourcade', 3, 37),
(38, 'Jesselyn', 'Haggart', 3, 38),
(39, 'Yettie', 'Eglese', 3, 39),
(40, 'Ruttger', 'Castellini', 3, 40),
(41, 'Lucienne', 'Howels', 3, 41),
(42, 'Issi', 'Bracer', 3, 42),
(43, 'Garvy', 'Livezley', 3, 43),
(44, 'Sergent', 'Dixon', 3, 44),
(45, 'Fannie', 'Ayers', 3, 45);

-- --------------------------------------------------------

--
-- Table structure for table `instructor_preferences`
--

DROP TABLE IF EXISTS `instructor_preferences`;
CREATE TABLE `instructor_preferences` (
  `instructor_id` bigint NOT NULL,
  `timeslot_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `instructor_preferences`
--

TRUNCATE TABLE `instructor_preferences`;
--
-- Dumping data for table `instructor_preferences`
--

INSERT INTO `instructor_preferences` (`instructor_id`, `timeslot_id`) VALUES
(8, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `programmes`
--

DROP TABLE IF EXISTS `programmes`;
CREATE TABLE `programmes` (
  `programme_id` bigint NOT NULL,
  `programme_code` varchar(255) DEFAULT NULL,
  `programme_name` varchar(255) DEFAULT NULL,
  `faculty_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `programmes`
--

TRUNCATE TABLE `programmes`;
--
-- Dumping data for table `programmes`
--

INSERT INTO `programmes` (`programme_id`, `programme_code`, `programme_name`, `faculty_id`) VALUES
(1, 'P15', 'Bachelor of Science Computer Science', 2),
(2, 'I17', 'Bachelor of Science In Data Science', 2),
(3, 'B22', 'Bachelor of Commerce(Human Resource)', 4);

-- --------------------------------------------------------

--
-- Table structure for table `program_enrollments`
--

DROP TABLE IF EXISTS `program_enrollments`;
CREATE TABLE `program_enrollments` (
  `enrollment_id` bigint NOT NULL,
  `enrollment_number` int NOT NULL,
  `enrollment_year` int NOT NULL,
  `program_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `program_enrollments`
--

TRUNCATE TABLE `program_enrollments`;
--
-- Dumping data for table `program_enrollments`
--

INSERT INTO `program_enrollments` (`enrollment_id`, `enrollment_number`, `enrollment_year`, `program_id`) VALUES
(2, 100, 1, 1),
(3, 100, 2, 1),
(4, 100, 3, 1),
(5, 100, 4, 1),
(6, 100, 1, 2),
(7, 100, 2, 2),
(8, 100, 3, 2),
(9, 100, 1, 3),
(10, 100, 2, 3),
(11, 100, 3, 3),
(12, 100, 4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
CREATE TABLE `rooms` (
  `room_id` bigint NOT NULL,
  `room_capacity` int DEFAULT NULL,
  `is_available` bit(1) DEFAULT NULL,
  `room_name` varchar(255) DEFAULT NULL,
  `room_type` varchar(255) DEFAULT NULL,
  `dept_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `rooms`
--

TRUNCATE TABLE `rooms`;
--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_capacity`, `is_available`, `room_name`, `room_type`, `dept_id`) VALUES
(1, 120, b'1', '1st Year Computer Lab', 'LAB', 1),
(2, 120, b'1', '2nd Year Computer Lab', 'LAB', 1),
(3, 120, b'1', '3rd Year Computer Lab', 'LAB', 1),
(4, 120, b'1', '4th Year Computer Lab', 'LAB', 1),
(5, 120, b'1', 'SCI Room 100', 'SLT', 1),
(6, 120, b'1', 'SCI Room 200', 'SLT', 1),
(7, 120, b'1', 'SCI Room 300', 'SLT', 1),
(8, 120, b'1', 'SCI Room 400', 'SLT', 1),
(9, 279, b'1', 'DS Room 100', 'SLT', 2),
(10, 135, b'1', 'DS Room 200', 'LT', 2),
(11, 374, b'1', 'DS Room 300', 'LT', 2),
(12, 94, b'1', 'DS Room 400', 'LT', 2),
(13, 230, b'1', 'Bcom Room 100', 'LT', 3),
(14, 104, b'1', 'Bcom Room 200', 'LT', 3),
(15, 495, b'1', 'Bcom Room 300', 'LT', 3),
(16, 193, b'1', 'Bcom Room 400', 'SLT', 3),
(17, 800, b'1', 'Millenium Hall 1234', 'HALL', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rooms_occupied_time_slots`
--

DROP TABLE IF EXISTS `rooms_occupied_time_slots`;
CREATE TABLE `rooms_occupied_time_slots` (
  `room_room_id` bigint NOT NULL,
  `occupied_time_slots_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `rooms_occupied_time_slots`
--

TRUNCATE TABLE `rooms_occupied_time_slots`;
-- --------------------------------------------------------

--
-- Table structure for table `room_department`
--

DROP TABLE IF EXISTS `room_department`;
CREATE TABLE `room_department` (
  `room_id` bigint NOT NULL,
  `dept_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `room_department`
--

TRUNCATE TABLE `room_department`;
--
-- Dumping data for table `room_department`
--

INSERT INTO `room_department` (`room_id`, `dept_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(17, 1),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(17, 2),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` bigint NOT NULL,
  `course_id` bigint DEFAULT NULL,
  `room_id` bigint DEFAULT NULL,
  `section_id` bigint DEFAULT NULL,
  `time_slot_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule`
--

TRUNCATE TABLE `schedule`;
-- --------------------------------------------------------

--
-- Table structure for table `schedule_results`
--

DROP TABLE IF EXISTS `schedule_results`;
CREATE TABLE `schedule_results` (
  `id` bigint NOT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule_results`
--

TRUNCATE TABLE `schedule_results`;
--
-- Dumping data for table `schedule_results`
--

INSERT INTO `schedule_results` (`id`, `message`) VALUES
(1, 'No courses to schedule.'),
(2, 'No courses to schedule.'),
(3, 'No courses to schedule.'),
(4, 'No courses to schedule.'),
(5, 'No courses to schedule.'),
(6, 'No courses to schedule.'),
(7, 'No courses to schedule.'),
(8, 'No courses to schedule.'),
(9, 'No courses to schedule.'),
(10, 'No courses to schedule.'),
(11, 'No courses to schedule.'),
(12, 'No courses to schedule.');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_results_seq`
--

DROP TABLE IF EXISTS `schedule_results_seq`;
CREATE TABLE `schedule_results_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule_results_seq`
--

TRUNCATE TABLE `schedule_results_seq`;
--
-- Dumping data for table `schedule_results_seq`
--

INSERT INTO `schedule_results_seq` (`next_val`) VALUES
(101),
(1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_result_course_codes`
--

DROP TABLE IF EXISTS `schedule_result_course_codes`;
CREATE TABLE `schedule_result_course_codes` (
  `schedule_result_id` bigint NOT NULL,
  `course_codes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule_result_course_codes`
--

TRUNCATE TABLE `schedule_result_course_codes`;
-- --------------------------------------------------------

--
-- Table structure for table `schedule_result_instructor_names`
--

DROP TABLE IF EXISTS `schedule_result_instructor_names`;
CREATE TABLE `schedule_result_instructor_names` (
  `schedule_result_id` bigint NOT NULL,
  `instructor_names` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule_result_instructor_names`
--

TRUNCATE TABLE `schedule_result_instructor_names`;
-- --------------------------------------------------------

--
-- Table structure for table `schedule_result_room_names`
--

DROP TABLE IF EXISTS `schedule_result_room_names`;
CREATE TABLE `schedule_result_room_names` (
  `schedule_result_id` bigint NOT NULL,
  `room_names` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule_result_room_names`
--

TRUNCATE TABLE `schedule_result_room_names`;
-- --------------------------------------------------------

--
-- Table structure for table `schedule_result_time_slots`
--

DROP TABLE IF EXISTS `schedule_result_time_slots`;
CREATE TABLE `schedule_result_time_slots` (
  `schedule_result_id` bigint NOT NULL,
  `time_slots` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule_result_time_slots`
--

TRUNCATE TABLE `schedule_result_time_slots`;
-- --------------------------------------------------------

--
-- Table structure for table `schedule_status`
--

DROP TABLE IF EXISTS `schedule_status`;
CREATE TABLE `schedule_status` (
  `id` bigint NOT NULL,
  `semester` int NOT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `schedule_status`
--

TRUNCATE TABLE `schedule_status`;
--
-- Dumping data for table `schedule_status`
--

INSERT INTO `schedule_status` (`id`, `semester`, `status`) VALUES
(1, 1, 'COMPLETED');

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE `sections` (
  `section_id` bigint NOT NULL,
  `number_of_classes` int NOT NULL,
  `course_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `sections`
--

TRUNCATE TABLE `sections`;
--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`section_id`, `number_of_classes`, `course_id`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 2, 11),
(12, 2, 12),
(13, 2, 13),
(14, 1, 14),
(15, 2, 15),
(16, 2, 16),
(17, 2, 17),
(18, 2, 18),
(19, 2, 19),
(20, 2, 20),
(21, 2, 21),
(22, 2, 22),
(23, 2, 23),
(24, 2, 24),
(25, 2, 25),
(26, 2, 26),
(27, 2, 27),
(28, 2, 28),
(29, 2, 29),
(30, 2, 30),
(31, 2, 31),
(32, 2, 32),
(33, 2, 33),
(34, 2, 34),
(35, 2, 35),
(36, 2, 36),
(37, 2, 37),
(38, 2, 38),
(39, 2, 39),
(40, 2, 40),
(41, 2, 41),
(42, 2, 42),
(43, 2, 43),
(44, 2, 44),
(45, 2, 45),
(46, 4, 46),
(47, 4, 47),
(48, 2, 48),
(49, 2, 49),
(50, 2, 50),
(51, 2, 51),
(52, 2, 52),
(53, 2, 53),
(54, 2, 54),
(55, 2, 55),
(56, 2, 56),
(57, 2, 57),
(58, 2, 58),
(59, 2, 59),
(60, 2, 60),
(61, 2, 61),
(62, 1, 62),
(63, 2, 63),
(64, 2, 64),
(65, 2, 65),
(66, 2, 66),
(67, 2, 67),
(68, 2, 68),
(69, 2, 69),
(70, 2, 70),
(71, 2, 71),
(72, 2, 72),
(73, 2, 73),
(74, 2, 74),
(75, 2, 75),
(76, 2, 76),
(77, 2, 77),
(78, 2, 78),
(79, 2, 79),
(80, 2, 80),
(81, 2, 81),
(82, 2, 82),
(83, 2, 83),
(84, 1, 84),
(85, 2, 85),
(86, 2, 86),
(87, 2, 87),
(88, 2, 88),
(89, 2, 89),
(90, 2, 90),
(91, 2, 91),
(92, 2, 92),
(93, 2, 93),
(94, 2, 94),
(95, 2, 95),
(96, 2, 96),
(97, 2, 97),
(98, 2, 98),
(99, 2, 99),
(100, 2, 100),
(101, 2, 101),
(102, 2, 102),
(103, 2, 103),
(104, 2, 104),
(105, 2, 105),
(106, 2, 106),
(107, 2, 107),
(108, 2, 108),
(109, 2, 109),
(110, 2, 110),
(111, 2, 111),
(112, 2, 112),
(113, 2, 113),
(114, 2, 114),
(115, 2, 115),
(116, 2, 116),
(117, 2, 117),
(118, 2, 118),
(119, 2, 119),
(120, 2, 120),
(121, 2, 121),
(122, 2, 122),
(123, 2, 123),
(124, 2, 124),
(125, 2, 125),
(126, 2, 126),
(127, 2, 127),
(128, 2, 128),
(129, 2, 129),
(130, 4, 130),
(131, 2, 131);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` bigint NOT NULL,
  `year` int NOT NULL,
  `program_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `students`
--

TRUNCATE TABLE `students`;
-- --------------------------------------------------------

--
-- Table structure for table `time_slots`
--

DROP TABLE IF EXISTS `time_slots`;
CREATE TABLE `time_slots` (
  `id` bigint NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `start_time` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `time_slots`
--

TRUNCATE TABLE `time_slots`;
--
-- Dumping data for table `time_slots`
--

INSERT INTO `time_slots` (`id`, `day`, `end_time`, `start_time`) VALUES
(1, 'Monday', '09:00:00', '10:45:00'),
(2, 'Tuesday', '09:00:00', '10:45:00'),
(3, 'Wednesday', '09:00:00', '10:45:00'),
(4, 'Thursday', '09:00:00', '10:45:00'),
(5, 'Friday', '09:00:00', '10:45:00'),
(6, 'Monday', '11:15:00', '13:00:00'),
(7, 'Tuesday', '11:15:00', '13:00:00'),
(8, 'Wednesday', '11:15:00', '13:00:00'),
(9, 'Thursday', '11:15:00', '13:00:00'),
(10, 'Friday', '11:15:00', '13:00:00'),
(11, 'Monday', '14:00:00', '15:45:00'),
(12, 'Tuesday', '14:00:00', '15:45:00'),
(13, 'Wednesday', '14:00:00', '15:45:00'),
(14, 'Thursday', '14:00:00', '15:45:00'),
(15, 'Friday', '14:00:00', '15:45:00'),
(16, 'Monday', '15:45:00', '17:30:00'),
(17, 'Tuesday', '15:45:00', '17:30:00'),
(18, 'Wednesday', '15:45:00', '17:30:00'),
(19, 'Thursday', '15:45:00', '17:30:00'),
(20, 'Friday', '15:45:00', '17:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `user_type` varchar(31) NOT NULL,
  `id` bigint NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_type`, `id`, `password`, `role`, `username`) VALUES
('User', 1, '$2a$10$dowZkUNLAq8ye65r04N64OxVJqFNkJGgcOlqTOE97qOZ6V1aZF7L6', 'INSTRUCTOR', 'John Doe'),
('Instructor', 2, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Hildegaard'),
('Instructor', 3, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Errol'),
('Instructor', 4, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Denny'),
('Instructor', 5, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Robby'),
('Instructor', 6, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Priscilla'),
('Instructor', 7, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Yuri'),
('Instructor', 8, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Hermia'),
('Instructor', 9, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Cesare'),
('Instructor', 10, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Coleen'),
('Instructor', 11, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Terese'),
('Instructor', 12, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Sharona'),
('Instructor', 13, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Juliane'),
('Instructor', 14, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Romy'),
('Instructor', 15, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Joan'),
('Instructor', 16, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Vernen'),
('Instructor', 17, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Terencio'),
('Instructor', 18, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Haslett'),
('Instructor', 19, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Hersch'),
('Instructor', 20, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Lexine'),
('Instructor', 21, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Nancey'),
('Instructor', 22, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Merlina'),
('Instructor', 23, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Betsey'),
('Instructor', 24, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Andy'),
('Instructor', 25, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Beverie'),
('Instructor', 26, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Neel'),
('Instructor', 27, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Vinita'),
('Instructor', 28, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Rana'),
('Instructor', 29, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Bondie'),
('Instructor', 30, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Avram'),
('Instructor', 31, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Susie'),
('Instructor', 32, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Ferdinande'),
('Instructor', 33, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Brander'),
('Instructor', 34, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Myrilla'),
('Instructor', 35, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Jacinda'),
('Instructor', 36, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Avis'),
('Instructor', 37, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Umberto'),
('Instructor', 38, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Jesselyn'),
('Instructor', 39, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Yettie'),
('Instructor', 40, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Ruttger'),
('Instructor', 41, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Lucienne'),
('Instructor', 42, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Issi'),
('Instructor', 43, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Garvy'),
('Instructor', 44, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Sergent'),
('Instructor', 45, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'INSTRUCTOR', 'Fannie'),
('Student', 46, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Kyalo'),
('Student', 47, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Wanyoro'),
('Student', 48, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Kaseve'),
('Student', 49, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Yvette'),
('Student', 50, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Maurice'),
('Student', 51, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Mativo'),
('Student', 52, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Jeff'),
('Student', 53, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Kimingi'),
('Student', 54, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Mercy'),
('Student', 55, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Brendah'),
('Student', 56, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'STUDENT', 'Sandrah'),
('', 57, '$2a$12$j.TqM7nzk22e.Fj1FUISO.Hso7.dYw3tlEgL3xqR8x4E0NS7VZbmy', 'ADMIN', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `UK_p02ts69sh53ptd62m3c67v0` (`course_code`),
  ADD KEY `FKfbpnfwnna2ddy59snm98r4jut` (`dept_id`),
  ADD KEY `FK1kswo6qqebbdy2kq0kx6udof7` (`instructor_id`),
  ADD KEY `FK1y6c2tx4p18e355ehp1cwqn2u` (`programme_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`),
  ADD KEY `FK6xpnvjcfa3l9gnqqb3x8v28iv` (`faculty_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`faculty_id`),
  ADD UNIQUE KEY `UK_3ff9r9bpq7fpqejwxylgy24v9` (`faculty_code`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`instructor_id`),
  ADD KEY `FKmfmdqpfuu5awu6jo4l9ah5hkc` (`dept_id`),
  ADD KEY `FKds2m3jgxj98sd5mr1qw23ecjp` (`user_id`);

--
-- Indexes for table `instructor_preferences`
--
ALTER TABLE `instructor_preferences`
  ADD PRIMARY KEY (`instructor_id`,`timeslot_id`),
  ADD KEY `FKn18p0ks2pcbtx4r37jjbejylb` (`timeslot_id`);

--
-- Indexes for table `programmes`
--
ALTER TABLE `programmes`
  ADD PRIMARY KEY (`programme_id`),
  ADD KEY `FK36pf99hdmtersiklnn3575vap` (`faculty_id`);

--
-- Indexes for table `program_enrollments`
--
ALTER TABLE `program_enrollments`
  ADD PRIMARY KEY (`enrollment_id`),
  ADD KEY `FK4pjk1bgv28nptpwpslr7r86q` (`program_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `FKrcu23ic8sl5spuctkur8x5cph` (`dept_id`);

--
-- Indexes for table `rooms_occupied_time_slots`
--
ALTER TABLE `rooms_occupied_time_slots`
  ADD KEY `FKqyxfeh2u0ix5adr3jo57dasti` (`occupied_time_slots_id`),
  ADD KEY `FKbuauac2j381gvqf5l9jfpf2q6` (`room_room_id`);

--
-- Indexes for table `room_department`
--
ALTER TABLE `room_department`
  ADD KEY `FKqmtmby5nv9bkv1yntbcjy3tje` (`dept_id`),
  ADD KEY `FKs6pxx3dkfnglc2k9dqytpmmu4` (`room_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKppjam3yvgq9ycpd8s708tdtll` (`course_id`),
  ADD KEY `FK7tq1xwrwg75e8oexk7b6tq012` (`room_id`),
  ADD KEY `FKdodnow7sftb05kghmxg67tajt` (`section_id`),
  ADD KEY `FKrr6s6xv8vp1knhcm1fvsnkgub` (`time_slot_id`);

--
-- Indexes for table `schedule_results`
--
ALTER TABLE `schedule_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_result_course_codes`
--
ALTER TABLE `schedule_result_course_codes`
  ADD KEY `FKklltntgdt9pb2i5s3cmd8b0tq` (`schedule_result_id`);

--
-- Indexes for table `schedule_result_instructor_names`
--
ALTER TABLE `schedule_result_instructor_names`
  ADD KEY `FKjwbv8exa4mgun03k15od9iuba` (`schedule_result_id`);

--
-- Indexes for table `schedule_result_room_names`
--
ALTER TABLE `schedule_result_room_names`
  ADD KEY `FKfleegajlhqgxfr6o4ty0r2gn` (`schedule_result_id`);

--
-- Indexes for table `schedule_result_time_slots`
--
ALTER TABLE `schedule_result_time_slots`
  ADD KEY `FK771x4mbm9byeq1v7ffgcfru2h` (`schedule_result_id`);

--
-- Indexes for table `schedule_status`
--
ALTER TABLE `schedule_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`section_id`),
  ADD KEY `FK7ty9cevpq04d90ohtso1q8312` (`course_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3jcmg5bqyegres625j1p6rfxf` (`program_id`),
  ADD KEY `FKdt1cjx5ve5bdabmuuf3ibrwaq` (`user_id`);

--
-- Indexes for table `time_slots`
--
ALTER TABLE `time_slots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `faculty_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `instructor_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `programmes`
--
ALTER TABLE `programmes`
  MODIFY `programme_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `program_enrollments`
--
ALTER TABLE `program_enrollments`
  MODIFY `enrollment_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `schedule_status`
--
ALTER TABLE `schedule_status`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `section_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_slots`
--
ALTER TABLE `time_slots`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `FK1kswo6qqebbdy2kq0kx6udof7` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`instructor_id`),
  ADD CONSTRAINT `FK1y6c2tx4p18e355ehp1cwqn2u` FOREIGN KEY (`programme_id`) REFERENCES `programmes` (`programme_id`),
  ADD CONSTRAINT `FKfbpnfwnna2ddy59snm98r4jut` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`);

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `FK6xpnvjcfa3l9gnqqb3x8v28iv` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`faculty_id`);

--
-- Constraints for table `instructors`
--
ALTER TABLE `instructors`
  ADD CONSTRAINT `FKds2m3jgxj98sd5mr1qw23ecjp` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FKmfmdqpfuu5awu6jo4l9ah5hkc` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`);

--
-- Constraints for table `instructor_preferences`
--
ALTER TABLE `instructor_preferences`
  ADD CONSTRAINT `FKn18p0ks2pcbtx4r37jjbejylb` FOREIGN KEY (`timeslot_id`) REFERENCES `time_slots` (`id`),
  ADD CONSTRAINT `FKol28jxoodnultbbomkjl073mu` FOREIGN KEY (`instructor_id`) REFERENCES `instructors` (`instructor_id`);

--
-- Constraints for table `programmes`
--
ALTER TABLE `programmes`
  ADD CONSTRAINT `FK36pf99hdmtersiklnn3575vap` FOREIGN KEY (`faculty_id`) REFERENCES `faculties` (`faculty_id`);

--
-- Constraints for table `program_enrollments`
--
ALTER TABLE `program_enrollments`
  ADD CONSTRAINT `FK4pjk1bgv28nptpwpslr7r86q` FOREIGN KEY (`program_id`) REFERENCES `programmes` (`programme_id`);

--
-- Constraints for table `rooms`
--
ALTER TABLE `rooms`
  ADD CONSTRAINT `FKrcu23ic8sl5spuctkur8x5cph` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`);

--
-- Constraints for table `rooms_occupied_time_slots`
--
ALTER TABLE `rooms_occupied_time_slots`
  ADD CONSTRAINT `FKbuauac2j381gvqf5l9jfpf2q6` FOREIGN KEY (`room_room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `FKqyxfeh2u0ix5adr3jo57dasti` FOREIGN KEY (`occupied_time_slots_id`) REFERENCES `time_slots` (`id`);

--
-- Constraints for table `room_department`
--
ALTER TABLE `room_department`
  ADD CONSTRAINT `FKqmtmby5nv9bkv1yntbcjy3tje` FOREIGN KEY (`dept_id`) REFERENCES `departments` (`dept_id`),
  ADD CONSTRAINT `FKs6pxx3dkfnglc2k9dqytpmmu4` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `FK7tq1xwrwg75e8oexk7b6tq012` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`room_id`),
  ADD CONSTRAINT `FKdodnow7sftb05kghmxg67tajt` FOREIGN KEY (`section_id`) REFERENCES `sections` (`section_id`),
  ADD CONSTRAINT `FKppjam3yvgq9ycpd8s708tdtll` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`),
  ADD CONSTRAINT `FKrr6s6xv8vp1knhcm1fvsnkgub` FOREIGN KEY (`time_slot_id`) REFERENCES `time_slots` (`id`);

--
-- Constraints for table `schedule_result_course_codes`
--
ALTER TABLE `schedule_result_course_codes`
  ADD CONSTRAINT `FKklltntgdt9pb2i5s3cmd8b0tq` FOREIGN KEY (`schedule_result_id`) REFERENCES `schedule_results` (`id`);

--
-- Constraints for table `schedule_result_instructor_names`
--
ALTER TABLE `schedule_result_instructor_names`
  ADD CONSTRAINT `FKjwbv8exa4mgun03k15od9iuba` FOREIGN KEY (`schedule_result_id`) REFERENCES `schedule_results` (`id`);

--
-- Constraints for table `schedule_result_room_names`
--
ALTER TABLE `schedule_result_room_names`
  ADD CONSTRAINT `FKfleegajlhqgxfr6o4ty0r2gn` FOREIGN KEY (`schedule_result_id`) REFERENCES `schedule_results` (`id`);

--
-- Constraints for table `schedule_result_time_slots`
--
ALTER TABLE `schedule_result_time_slots`
  ADD CONSTRAINT `FK771x4mbm9byeq1v7ffgcfru2h` FOREIGN KEY (`schedule_result_id`) REFERENCES `schedule_results` (`id`);

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `FK7ty9cevpq04d90ohtso1q8312` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `FK3jcmg5bqyegres625j1p6rfxf` FOREIGN KEY (`program_id`) REFERENCES `programmes` (`programme_id`),
  ADD CONSTRAINT `FKdt1cjx5ve5bdabmuuf3ibrwaq` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
