-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 27, 2016 at 03:07 AM
-- Server version: 5.5.44-0+deb8u1
-- PHP Version: 5.6.17-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cmsc433`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE IF NOT EXISTS `Courses` (
  `course_id` varchar(6) NOT NULL COMMENT 'Course Id Number',
  `course_type` varchar(4) NOT NULL COMMENT 'Type of Course [cmsc, math, sci]',
  `course_credits` int(11) NOT NULL COMMENT 'Number of Credits',
  `course_required` tinyint(1) NOT NULL COMMENT 'Required Course for The Major',
  `course_name` text COMMENT 'Course Name',
  `course_desc` text COMMENT 'Course Description',
  `course_prereqs` int(11) NOT NULL COMMENT 'Number of Prerequisites Courses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`course_id`, `course_type`, `course_credits`, `course_required`, `course_name`, `course_desc`, `course_prereqs`) VALUES
('052879', 'cmsc', 4, 1, 'CMSC 201 - Computer Science I for Majors', 'An introduction to computer science through problem solving and computer programming. Programming techniques covered by this course include modularity, abstraction, top-down design, specifications documentation, debugging and testing. The core material for this course includes control structures, functions, lists, strings, abstract data types, file I/O, and recursion.', 0),
('052881', 'cmsc', 4, 1, 'CMSC 202 - Computer Science II for Majors', 'This course continues the student''s development of programming and problem-solving skills by providing an introduction to object-oriented design and programming (OOP). The primary focus is on OOP principles and techniques, including encapsulation, composition, inheritance, and polymorphism. Other OOP topics such as exception handling, containers, and generic programming are also covered.', 2),
('052883', 'cmsc', 3, 1, 'CMSC 203 - Discrete Structures', 'This course introduces the fundamental tools, topics and concepts of discrete mathematics needed to study computer science. This course emphasizes counting methods, proof techniques and problem solving strategies. Topics include Boolean algebra; set theory; symbolic logic; predicate calculus; number theory; the methods of direct, indirect and inductive proofs; objective functions; equivalence relations; graphs; set partitions; combinatorics; modular arithmetic; summations; and recurrences.', 1),
('052907', 'cmsc', 3, 1, 'CMSC 304 - Social and Ethical Issues in Information Technology', 'A survey course that reviews social issues and the ethical impact of information technology throughout the world. The course examines the policy issues that relate to the use of information technology, such as persona, privacy, rights of access, security, transborder information flow and confidentiality.', 1),
('052911', 'cmsc', 3, 1, 'CMSC 313 - Computer Organization and Assembly Language Programming', 'This course introduces the student to the low-level abstraction of a computer system from a programmer''s point of view, with an emphasis on low-level programming. Topics include data representation, assembly language programming, C programming, the process of compiling and linking, low-level memory management, exceptional control flow, and basic processor architecture.', 2),
('052913', 'cmsc', 3, 1, 'CMSC 331 - Principles of Programming Language', 'This course examines the theory, design and implementation of programming languages and provides students with an introduction to programming languages that are likely to be new to them. Topics include specifications of syntax and semantics, declarations, binding, allocation, data structures, data types, control structures, control and data flow, concurrency, and the implementation and execution of programs. The major language paradigms will be described and explored, including imperative, object-oriented, functional, logic programming, concurrent and others. Programming projects will provide experience in several languages.', 2),
('052914', 'cmsc', 3, 1, 'CMSC 341 - Data Structures', 'An examination of a range of advanced data structures, with an emphasis on an object-oriented approach. Topics include asymptotic analysis; various binary search trees, including red-black and splay trees; skip lists as alternatives to binary search trees; data structures for multidimensional data such as K-D trees; heaps and priority queues, including binary heaps, binomial heaps, leftist heaps (and/or other mergeable heaps); B-trees for external storage; other commonly used data structures, such as hash tables and disjoint sets. Programming projects in this course will focus on implementation issues for data structures and on empirical analysis of their asymptotic performance.', 2),
('052940', 'cmsc', 3, 1, 'CMSC 441 - Design and Analysis of Algorithms.', 'This course studies fundamental algorithms, strategies for designing algorithms, and mathematical tools for analyzing algorithms. Fundamental algorithms studied in this course include algorithms for sorting and searching, hashing, and graph algorithms. Mathematical tools include asymptotic notations and methods for solving recurrences. Algorithm design strategies include the greedy method, divide-and-conquer, dynamic programming, and randomization.', 3),
('055205', 'math', 4, 1, 'MATH 151 - Calculus and Analytic Geometry I', 'Topics of this course include limits, continuity, the rate of change, derivatives, differentiation formulas for algebraic, trigonometric, logarithmic, and exponential functions, maxima and minima, integration and computation of areas, the Fundamental Theorem of Calculus, areas and volumes of solids of revolution, and applications.', 0),
('055208', 'math', 4, 1, 'MATH 152 - Calculus and Analytic Geometry II', 'Topics of this course include inverse functions, methods of integration, improper integrals, hyperbolic functions, sequences and infinite series, power series, Taylor series, conic sections, polar coordinates, and applications.', 1),
('055216', 'math', 3, 1, 'MATH 221 - Introduction to Linear Algebra', 'Topics of this course include: linear equations, Gauss-Jordan reduction, matrices and determinants and their properties, vector spaces and subspaces, basis and dimension, linear transformations, kernel and range, eigenvalues and eigenvectors, and matrix diagonalization.', 1),
('057054', 'math', 4, 1, 'STAT 355 - Introduction to Probability and Statistics for Scientists and Engineers', 'An introduction to applied statistics designed for science majors and others with demonstrated quantitative ability. Topics include nature of statistical methods, random variables and their distribution functions, general principles of estimation and hypothesis testing. A laboratory introduces students to computer techniques in statistical analysis.', 1),
('100315', 'sci', 4, 0, 'BIOL 141 - Foundations of Biology: Cells, Energy and Organisms', 'This course for majors provides a broad overview of contemporary biological concepts. Major topics include structure and synthesis of nucleic acids and proteins, molecular genetics, prokaryotic and eukaryotic cell structure and function, biochemistry of energy transformation, and animal and plant development and physiology.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Courses_Prereqs`
--

CREATE TABLE IF NOT EXISTS `Courses_Prereqs` (
  `course_id` varchar(6) NOT NULL,
  `prereq_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Courses_Prereqs`
--

INSERT INTO `Courses_Prereqs` (`course_id`, `prereq_id`) VALUES
('052879', '052879'),
('052881', '052879'),
('052881', '052881'),
('052881', '055205'),
('052883', '052883'),
('052883', '055205'),
('052907', '052881'),
('052907', '052907'),
('052911', '052881'),
('052911', '052883'),
('052911', '052911'),
('052913', '052881'),
('052913', '052883'),
('052913', '052913'),
('052914', '052881'),
('052914', '052883'),
('052914', '052914'),
('052940', '052914'),
('052940', '052940'),
('052940', '055208'),
('052940', '057054'),
('055205', '055205'),
('055208', '055205'),
('055208', '055208'),
('055216', '055205'),
('055216', '055216'),
('057054', '055208'),
('057054', '057054'),
('100315', '055205'),
('100315', '100315');

-- --------------------------------------------------------

--
-- Table structure for table `Prereqs`
--

CREATE TABLE IF NOT EXISTS `Prereqs` (
  `prereq_id` varchar(6) NOT NULL COMMENT 'Course Id Number',
  `prereq_type` varchar(4) NOT NULL COMMENT 'Type of Course [cmsc, math, sci]'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Prereqs`
--

INSERT INTO `Prereqs` (`prereq_id`, `prereq_type`) VALUES
('052879', 'cmsc'),
('052881', 'cmsc'),
('052883', 'cmsc'),
('052907', 'cmsc'),
('052911', 'cmsc'),
('052913', 'cmsc'),
('052914', 'cmsc'),
('052940', 'cmsc'),
('055205', 'math'),
('055208', 'math'),
('055216', 'math'),
('057054', 'math'),
('100315', 'sci');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
 ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `Courses_Prereqs`
--
ALTER TABLE `Courses_Prereqs`
 ADD PRIMARY KEY (`course_id`,`prereq_id`);

--
-- Indexes for table `Prereqs`
--
ALTER TABLE `Prereqs`
 ADD PRIMARY KEY (`prereq_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
