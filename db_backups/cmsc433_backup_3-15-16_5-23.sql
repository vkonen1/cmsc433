-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 15, 2016 at 04:54 AM
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
  `course_senior` tinyint(1) NOT NULL DEFAULT '0' COMMENT '400 Level Course?',
  `course_name` text COMMENT 'Course Name',
  `course_desc` text COMMENT 'Course Description',
  `course_prereqs` int(11) NOT NULL COMMENT 'Number of Prerequisites Courses'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Courses`
--

INSERT INTO `Courses` (`course_id`, `course_type`, `course_credits`, `course_required`, `course_senior`, `course_name`, `course_desc`, `course_prereqs`) VALUES
('000004', 'cmsc', 0, 1, 1, 'CMSC 400-level course', 'CMSC 400-level course', 0),
('050049', 'cmsc', 3, 0, 0, 'CMSC 352 - Women, Gender, and Information Technology', 'This course examines important issues concerning women, gender and information technology (IT). Students will consider such topics as the history of women''s involvement with IT; how women are impacted by technology; how women and girls fare in the educational setting as well as online; and the way gender intersects with IT in relation to other dimensions of women''s experience, such as race, class and age. Students will connect issues relevant to women and IT to their own career choices, interact with women in the IT field and utilize technology for research and presentation. ', 1),
('052879', 'cmsc', 4, 1, 0, 'CMSC 201 - Computer Science I for Majors', 'An introduction to computer science through problem solving and computer programming. Programming techniques covered by this course include modularity, abstraction, top-down design, specifications documentation, debugging and testing. The core material for this course includes control structures, functions, lists, strings, abstract data types, file I/O, and recursion.', 0),
('052881', 'cmsc', 4, 1, 0, 'CMSC 202 - Computer Science II for Majors', 'This course continues the student''s development of programming and problem-solving skills by providing an introduction to object-oriented design and programming (OOP). The primary focus is on OOP principles and techniques, including encapsulation, composition, inheritance, and polymorphism. Other OOP topics such as exception handling, containers, and generic programming are also covered.', 2),
('052883', 'cmsc', 3, 1, 0, 'CMSC 203 - Discrete Structures', 'This course introduces the fundamental tools, topics and concepts of discrete mathematics needed to study computer science. This course emphasizes counting methods, proof techniques and problem solving strategies. Topics include Boolean algebra; set theory; symbolic logic; predicate calculus; number theory; the methods of direct, indirect and inductive proofs; objective functions; equivalence relations; graphs; set partitions; combinatorics; modular arithmetic; summations; and recurrences.', 1),
('052896', 'cmsc', 2, 0, 0, 'CMSC 232 - Advanced Java Techniques', 'Advanced programming techniques in Java will be presented. The use of networking, threaded programs and techniques for object reflection and persistence will be discussed in class and will be the motivation for homework assignments. Additional topics will include distributed computation facilities in Java, including remote method invocation (RM), and distributed service architectures such as Jini and space-based computations in Java Spaces also will be examined. As time permits, Java security issues will be presented.', 1),
('052903', 'cmsc', 0, 0, 0, 'CMSC 291 - Special Topics in Computer Science', 'Topics: Programming Topics: C++, Basic Circuit Thoery Lab, Principles Of Digi Dsn, Introduction To C++, Java/Scientists/Engineer, Circuits Lab, Introduction To UNIX, Advanced Java Techniques, Adv Scientific Computing, Intro UNIX & Shell Prog, Intro To System Program, Comprehensive Java, Adv Java Techniques, Basic Circuit Theory Lab, Principles Of EE Lab, Prin Digital Design Lab, Transfer Success Seminar, Intro To UNIX, Prog Microcontrollers, Anatomy Of A Video Game, Java For Scientists/Engr, Programming In LISP, Java For C++ Programmers, C++ Programming, Advanced Techniques Java, Intro To UNIX And Shell, C Language for computer engine', 0),
('052904', 'cmsc', 0, 0, 0, 'CMSC 299 - Independent Study in Computer Science', 'A student may enroll in this course to study computer science topics that are not available in a regular course. The student and the faculty member supervising the independent study must determine the objectives of the project, the number of credits to be earned and the evaluation criteria for the project. Students are limited to two independent study courses in computer science. Variable credit course is repeatable up to 4 credits. ', 0),
('052907', 'cmsc', 3, 1, 0, 'CMSC 304 - Social and Ethical Issues in Information Technology', 'A survey course that reviews social issues and the ethical impact of information technology throughout the world. The course examines the policy issues that relate to the use of information technology, such as persona, privacy, rights of access, security, transborder information flow and confidentiality.', 1),
('052911', 'cmsc', 3, 1, 0, 'CMSC 313 - Computer Organization and Assembly Language Programming', 'This course introduces the student to the low-level abstraction of a computer system from a programmer''s point of view, with an emphasis on low-level programming. Topics include data representation, assembly language programming, C programming, the process of compiling and linking, low-level memory management, exceptional control flow, and basic processor architecture.', 2),
('052913', 'cmsc', 3, 1, 0, 'CMSC 331 - Principles of Programming Language', 'This course examines the theory, design and implementation of programming languages and provides students with an introduction to programming languages that are likely to be new to them. Topics include specifications of syntax and semantics, declarations, binding, allocation, data structures, data types, control structures, control and data flow, concurrency, and the implementation and execution of programs. The major language paradigms will be described and explored, including imperative, object-oriented, functional, logic programming, concurrent and others. Programming projects will provide experience in several languages.', 2),
('052914', 'cmsc', 3, 1, 0, 'CMSC 341 - Data Structures', 'An examination of a range of advanced data structures, with an emphasis on an object-oriented approach. Topics include asymptotic analysis; various binary search trees, including red-black and splay trees; skip lists as alternatives to binary search trees; data structures for multidimensional data such as K-D trees; heaps and priority queues, including binary heaps, binomial heaps, leftist heaps (and/or other mergeable heaps); B-trees for external storage; other commonly used data structures, such as hash tables and disjoint sets. Programming projects in this course will focus on implementation issues for data structures and on empirical analysis of their asymptotic performance.', 2),
('052920', 'cmsc', 0, 0, 0, 'CMSC 391 - Special Topics in Computer Science', 'Special topics in computer science. Variable credit course is repeatable. ', 0),
('052921', 'cmsc', 3, 0, 1, 'CMSC 404 - The History of Computers and Computing', 'None', 0),
('052922', 'cmsc', 3, 1, 1, 'CMSC 411 - Computer Architecture', 'This course covers the design of complex computer systems making heavy use of the components and techniques discussed in CMSC 313, CMPE 212 and CMPE 310. All parts of the computer system - CPU, memory and input/output - are discussed in detail. Topics include information representation, floating-point arithmetic, instructions set design issues (RISC vs. CISC), microprogrammed control, hardwired control, pipelining, memory cashes, bus control and timing,input/output mechanism and issues in the construction of parallel processors.', 1),
('052928', 'cmsc', 3, 1, 1, 'CMSC 421 - Principles of Operating Systems', 'An introduction to the fundamentals of operating systems. Topics include interprocess communication, process scheduling, deadlock, memory management, virtual memory, file systems and distributed systems. Formal principles are illustrated with examples and case studies of one or more contemporary operating systems.', 2),
('052931', 'cmsc', 3, 0, 1, 'CMSC 426 - Principles of Computer Security', 'This course will provide an introduction to computer security, with specific focus on the computing aspects. Topics covered will include: Basics of computer security including an overview of threat, attack, and adversary models; social engineering; essentials of cryptography; traditional computing security models; malicious software; secure programming; Operating system security in practice; trusted operating system design; public policy issues including legal, privacy, and ethical issues; network and database security overview.', 1),
('052932', 'cmsc', 3, 0, 1, 'CMSC 427 - Wearable Computing', 'This course covers fundamental concepts, methodologies, and algorithms related to wearable computing, including the following: Emotional Design, Convergent Design Processes, Wearability Considerations, Wearable Sensors Networks, Wearable Networks, Physiological Wearable Sensors, Innovation Processes, Marketing and business considerations, Human Aware Computing, Context Awareness, Wearable Communities, Future Mobility and Wearable Systems Applications.', 1),
('052933', 'cmsc', 3, 0, 1, 'CMSC 431 - Compiler Design Principles', 'A detailed study of the design and implementation of a compiler for a high-level programming language. Topics include lexical analysis, parsing techniques (including LL and LR parsers), semantic routines,run-time storage allocation, code generation and optimization. ', 3),
('052934', 'cmsc', 3, 0, 1, 'CMSC 432 - Object-Oriented Programming Languages and Systems', 'This course covers the concepts of object-oriented programming (OOP) languages and systems, including an introduction to fundamental abstraction, modularity and encapsulation mechanisms in OOP from a software engineering and representational perspective. Basic OOP concepts covered in this course include polymorphism and operator overloading, message passing via generic functions, late- vs. early-binding times, and inheritance mechanisms and their relationship to the type systems of programming languages. Other topics include a survey of OOP languages and systems, OOP languages vs. imperative programming languages and contrasting pure OOP environments vs. mixed paradigm languages.', 2),
('052935', 'cmsc', 3, 0, 1, 'CMSC 433 - Scripting Languages', 'This course is a study of a class of programming languages and tools known as scripting languages. Topics include: writing scripts to control and connect other programs, strengths and weaknesses of interpreted languages, extending scripting languages to include new functionality, embedding functions of a scripting language in other tools, and the syntax and usage of regular expressions. Programming projects in multiple languages will be required. ', 1),
('052936', 'cmsc', 3, 0, 1, 'CMSC 435 - Computer Graphics', 'An introduction to the fundamentals of interactive computer graphics. Topics include graphics hardware, line drawing, area filling, clipping, two-dimensional and three-dimensional geometrical transforms, three-dimensional perspective viewing, hidden surface removal, illumination, color and shading models.', 3),
('052937', 'cmsc', 3, 0, 1, 'CMSC 436 - Data Visualization', 'This course addresses the theoretical and practical issues in creating visual representations of large amounts of data. It covers the core topics in data visualization: data representation, visualization toolkits, scientific visualization, medical visualization, information visualization, and volume rendering techniques. Additionally, the related topics of applied human perception and advanced display devices are introduced. Open to computer science students with a background in computer graphics or students in data-intensive fields who are familiar with the use of the computer for data collection, storage or analysis. ', 1),
('052938', 'cmsc', 3, 0, 1, 'CMSC 437 - Graphical User Interface Programming', 'This is a practical, hands-on course in how to program interactive 2-D graphical user interfaces using the X11/Motif package and OpenGL. Graphical user interfaces are taken here to mean not just standard widget sets, but also various interactive, pointer-based techniques that comprise the modern desktop metaphor. This course also will introduce some of the concepts and software techniques used to implement such applications. In addition, it briefly will review some of the larger issues, history and future directions of programming graphical interfaces.While the primary emphasis of the course is on 2-D interfaces, there will be a short introduction to some of the 3-D capabilities of OpenGL,as well as a discussion of 3-D interaction and virtual reality. ', 2),
('052940', 'cmsc', 3, 1, 1, 'CMSC 441 - Design and Analysis of Algorithms.', 'This course studies fundamental algorithms, strategies for designing algorithms, and mathematical tools for analyzing algorithms. Fundamental algorithms studied in this course include algorithms for sorting and searching, hashing, and graph algorithms. Mathematical tools include asymptotic notations and methods for solving recurrences. Algorithm design strategies include the greedy method, divide-and-conquer, dynamic programming, and randomization.', 3),
('052941', 'cmsc', 3, 0, 1, 'CMSC 442 - Information and Coding Theory', 'An introduction to information and coding theory. Topics include error-control coding problems, entropy, channels, Shannon''s theorems, error-correcting codes, applications of coding theory, algebraic codingtheory, block codes, linear codes, cyclic codes, decoding algorithms, BCH codes, convolutional codes, linear sequential circuits and sequential decoding.', 2),
('052942', 'cmsc', 3, 0, 1, 'CMSC 443 - Cryptology', 'An introduction to cryptology, the science of making and breaking codes and ciphers. Topics include: conventional and public-key cryptosystems, including DES, RSA, shift register systems and selected classical systems; examples of cryptanalytic techniques; digital signatures; pseudo-random number generation; cryptographic protocols and their applications; and an introduction to the theories of cryptographic strength based on information theory and complexity theory.', 3),
('052943', 'cmsc', 3, 0, 1, 'CMSC 444 - Information Assurance', 'Selected recent research topics in information assurance, such as social engineering, buffer overflow, malicious code, spyware, denial of service, information warfare, computer forensics, recovery and response, enterprise security, clandestine channels and emissions security, security analysis, security models and formal techniques, best practices, and national policy for information assurance. Taking a broad, practical view of security - including people, policies and procedures, and technology - this course will help students devise and implement security solutions that meaningfully raise the level of confidence in computer systems. This course will minimize discussion of intrusion detection, firewalls, operating systems security, and mathematical cryptology, which are emphasized in other CMSC security courses.', 2),
('052944', 'cmsc', 3, 0, 0, 'CMSC 448 - Software Engineering II', 'A continuation of the study of software engineering with emphasis on topics not fully covered in CMSC 345 and CMSC 447. Topics may include software maintenance; metrics; quality assurance; configuration management; deployment; project planning and management; and modern software development processes, techniques and tools. Students will be given multiple individual and cooperative hands-on assignments.', 1),
('052945', 'cmsc', 3, 0, 1, 'CMSC 446 - Introduction to Design Patterns', 'This course is an introduction to software design patterns. Each pattern represents a best practice solution to a software problem in some context. The course will cover the rationale and benefits of object-oriented software design patterns. Several example problems will be studied to investigate the development of good design patterns. Specific patterns, such as observer, state, adapter, strategy, decorator and abstract factory will be discussed. Programming projects in the Java language will provide experience in the use of these patterns. In addition, distributed object frameworks, such as RMI and Jini, will be studied for their effective use of design patterns', 2),
('052947', 'cmsc', 3, 0, 1, 'CMSC 451 - Automata Theory and Formal Languages', 'This course introduces the basic concepts in the theory of formal languages. Topics include regular grammars and finite automata, context-free grammars and push-down automata, Turing machines and the halting problem, and an introductory treatment of computable and non-computable functions.', 2),
('052948', 'cmsc', 3, 0, 1, 'CMSC 452 - Logic for Computer Science', 'This course covers the fundamental topics in sentential and first-order logic, including models, logical consequence, deduction and the completeness theorem. Other topics include: undecidability theorems, including Goedel''s incompleteness theorem and Tarski''s theorem; Herbrand''s theorem; and applications including resolution, logic programming, automatic deduction, program specification and program verification. ', 1),
('052949', 'cmsc', 3, 0, 1, 'CMSC 453 - Applied Combinatorics and Graph Theory', 'An introduction to the application of combinatorial methods to computer science. Topics include enumeration methods, recurrence relations, generating functions, graph theory and graph algorithms, and connectivity, Euler tours, Hamiltonian cycles, flow graphs and transport networks, matching theory, planarity, Kuratowski''s theorem and NP-complete combinatorial problems.', 3),
('052951', 'cmsc', 3, 0, 1, 'CMSC 455 - Numerical Computations', 'Topics include numerical linear algebra, interpolation, solving non-linear systems and the numerical solution of differential equations. This course also provides some emphasis on numerical algorithms andcomputation in a parallel environment.', 3),
('052952', 'cmsc', 3, 0, 1, 'CMSC 456 - Symbolic Computation', 'The theme of this course is abstract algebra from an algorithmic perspective. Algorithms for computing in groups, rings, fields, ideals, quotient rings and other algebraic objects are studied. For example, the Coxeter coset enumeration and the Groebner basis algorithms are studied. Algebraic varieties play a key role in this course. The course also covers many applications of symbolic computation, such as applications to algebraic coding theory, robotics and automatic theorem proving. There are various projects using a symbolic computation package such as Maple or Mathematica.', 3),
('052954', 'cmsc', 3, 0, 1, 'CMSC 461 - Database Management Systems', 'This course covers database management and the different data models used to structure the logical view of databases. The course also covers database design and implementation techniques, including file organization, query processing, concurrency control, recovery, integrity and security.', 1),
('052955', 'cmsc', 3, 0, 1, 'CMSC 465 - Introduction to Electronic Commerce', 'Electronic commerce is the use of electronic means to pursue business objectives. It relies on a wide range of modern technologies, such as the World Wide Web, telecommunications, database technologies, agent technologies, business intelligence, multimedia and user interfaces. This course puts special emphasis on the student''s ability to do research in existing and emerging technology and to summarize and present findings clearly. An important part of this course is the development of technical writing skills. The second part of the course concentrates on the issues that are not solely technical, such as trust management, privacy and personalization, and the role of electronic market in revolutionizing traditional industries.', 2),
('052956', 'cmsc', 3, 0, 1, 'CMSC 466 - Electronic Commerce Technology', 'This course is designed to prepare students to be e-commerce developers. It introduces students to the changing and competitive landscape of e-commerce technology, products and solutions. It begins with an introduction to WWW technology and an overview of Web applications and services. It further discusses networking technologies with the view toward mobile and wireless commerce and object orientation and Web programming. An overview of Java language and relational databases is given. Database-Web connectivity is discussed. The course proceeds with the study of inter-process communications in a distributed environment concentrating on Java RMI and COBRA technologies. Development of interactive Web pages with JavaScript and dynamic HTML, one of the basic skills in the area of e-commerce development, is covered.', 2),
('052958', 'cmsc', 3, 0, 1, 'CMSC 471 - Introduction to Artificial Intelligence', 'This course provides a broad introduction to artificial intelligence, its sub-fields and their applications. Topics include problem-solving approaches, problem spaces and search, knowledge representation and reasoning, logic and deduction, planning, expert systems, handling uncertainty, learning and natural language understanding.', 1),
('052960', 'cmsc', 3, 0, 1, 'CMSC 473 - Introduction to Natural Language Processing', 'Natural language processing (NLP), the first non-numerical application of computing, was first studied more than 50 years ago. The ultimate goal of NLP is to enable computers to communicate with people the same way that people communicate among themselves. To do so, the computers must be able to understand and generate text. The course will introduce the students to the problems, methods, and applications of NLP.', 1),
('052962', 'cmsc', 3, 0, 1, 'CMSC 475 - Introduction to Neural Networks', 'This course is an in-depth introduction to neural networks. Topics include: characteristics of neural network computing; major neural network models and their related algorithms; supervised, unsupervised and reinforcement learning; and neural network application in function approximation, pattern analysis, optimization and associative memories', 1),
('052963', 'cmsc', 3, 0, 1, 'CMSC 476 - Information Retrieval', 'This course is an introduction to the theory and implementation of software systems designed to search through large collections of text. The first course objective is to cover the fundamentals of Information Retrieval (IR): retrieval models, search algorithms and IR evaluation. The second is to give a taste of the implementation issues through the construction and use of a text search engine. ', 1),
('052964', 'cmsc', 3, 0, 1, 'CMSC 477 - Agent Architectures and Multi-Agent Systems', 'This course covers fundamental techniques for developing intelligent agents and multi-agent systems, including cognitive, logic-based, reactive and belief-desire-intention architectures; inter-agent communication languages and protocols; distributed problem-solving, planning and constraint satisfaction methods; distributed models of rational behavior; and learning and adaptation in multi-agent systems.', 1),
('052965', 'cmsc', 3, 0, 1, 'CMSC 478 - Introduction to Machine Learning', 'This course covers fundamental concepts, methodologies, and algorithms related to machine learning,which is the study of computer programs that improve some task with experience. Topics covered include decision trees, perceptrons, logistic regression, linear discriminant analysis, linear and non-linear regression, basic functions, support vector machines, neural networks, genetic algorithms, reinforcement learning, naive Bayes and Bayesian networks, bias/variance theory, ensemble methods, clustering, evaluation methodologies, and experiment design.', 1),
('052966', 'cmsc', 3, 0, 1, 'CMSC 479 - Introduction to Robotics', 'This course covers fundamental concepts, methodologies, and algorithms related to autonomous mobile robotics, touching on mechanical, motor, sensory, perceptual, and cognitive aspects of the problem of building robots that move about and decide what to do on their own. Specific topics covered include legged and wheeled location, kinematic models and constraints, mobile robot maneuverability, motion control, sensors and sensing, perception, localization, belief representations, map representations, probabilistic map-based localization, autonomous map building, planning, reacting, and navigation architectures.', 1),
('052968', 'cmsc', 3, 0, 1, 'CMSC 481 - Computer Networks', 'This course introduces the fundamentals of data communication and computer networking, including circuit and packet switching; network architectures and protocols; local/metropolitan/wide-area networks, OSI and TCP/IP standards; network programming and applications; and network management.', 1),
('052970', 'cmsc', 3, 0, 1, 'CMSC 483 - Parallel and Distributed Processing', 'This course provides a project and applications-oriented approach to parallel and distributed programming. Students will learn a specific parallel language and programming environment and will complete a large programming project. Topics include a selected parallel programming language, a survey of parallel and distributed architectures and associated programming styles, an introduction to parallel and distributed algorithms, and a study of trade-offs between computation and communication in parallel processing.', 1),
('052971', 'cmsc', 3, 0, 1, 'CMSC 484 - Java Server Technologies', 'This course is an in-depth look at several of the technologies currently in use to develop applications for the Web. Topics include the use of Java Servlets and Java Server Pages (JSP) and their benefits over traditional CGI programs, the development of web services using SOAP and XML, the use of Enterprise Java Beans to encapsulate server-side business logic and the use of application servers. Several programming projects will be done using these technologies and an appropriate Webserver, such as Apache Tomcat. In addition, several related technologies, such as PHP and Javascript, will be covered.', 1),
('052972', 'cmsc', 3, 0, 1, 'CMSC 486 - Mobile Telephony Communications', 'This course provides a technical introduction to mobile radio telephony. Topics include: the evolution of mobile radio communications, transforming signal representation between time and frequency domains, allocation and assignment of communication channels for cellular phones, signal modulation techniques and wireless networks. An in-depth study of the GSM and IS-95 CDMA cellular phone systems also will be presented.', 2),
('052973', 'cmsc', 3, 0, 1, 'CMSC 487 - Introduction To Network Security', 'The objective of this course is to teach the fundamental concepts, architectures, and protocols related to network security. Topics covered include: Overview of network security; Basics of cryptography; Threat models; Authentication and Authorization Mechanisms and Standards; Public Key Infrastructure; Electronic Mail Security; Network Layer Security; Transport layer and web security; Packet filtering; Firewalls; Intrusion Detection, and Virtual Private Networks; Recent topics in Network Security.', 2),
('052975', 'cmsc', 3, 0, 1, 'CMSC 491 - Special Topics in Computer Science', 'Special Topics in Computer Science', 0),
('052976', 'cmsc', 3, 0, 1, 'CMSC 493 - Capstone Games Group Project', 'The computer games capstone course is designed to allow students completing the computer science games track to engage in a complete group project development experience. This will help them to integrate the various technical concepts they have learned in earlier courses. The course aims to impart a foundation in team leadership and project management ability that will allow graduates to function effectively within multi-disciplinary teams.', 2),
('052977', 'cmsc', 3, 0, 1, 'CMSC 495 - Honors Thesis', 'Under the supervision of a faculty advisor, students in the Computer Science Honors Program will write and submit a scholarly paper reporting on their senior project.', 0),
('052980', 'cmsc', 3, 0, 1, 'CMSC 498 - Independent Study in Computer Science for CMSC Interns and Coop Students', 'Consult the department Web page on CMSC 498 for more information.', 0),
('052981', 'cmsc', 0, 0, 1, 'CMSC 499 - Independent Study in Computer Science', 'A student may enroll in this course to study computer science topics that are not available in a regular course. The student and the faculty member supervising the independent study must determine the objectives of the project, the number of credits to be earned and the evaluation criteria for the project. Students are limited to two independent study courses in computer science. Variable credit course repeatable up to 4 credits.', 0),
('055205', 'math', 4, 1, 0, 'MATH 151 - Calculus and Analytic Geometry I', 'Topics of this course include limits, continuity, the rate of change, derivatives, differentiation formulas for algebraic, trigonometric, logarithmic, and exponential functions, maxima and minima, integration and computation of areas, the Fundamental Theorem of Calculus, areas and volumes of solids of revolution, and applications.', 0),
('055208', 'math', 4, 1, 0, 'MATH 152 - Calculus and Analytic Geometry II', 'Topics of this course include inverse functions, methods of integration, improper integrals, hyperbolic functions, sequences and infinite series, power series, Taylor series, conic sections, polar coordinates, and applications.', 1),
('055216', 'math', 3, 1, 0, 'MATH 221 - Introduction to Linear Algebra', 'Topics of this course include: linear equations, Gauss-Jordan reduction, matrices and determinants and their properties, vector spaces and subspaces, basis and dimension, linear transformations, kernel and range, eigenvalues and eigenvectors, and matrix diagonalization.', 1),
('057054', 'math', 4, 1, 0, 'STAT 355 - Introduction to Probability and Statistics for Scientists and Engineers', 'An introduction to applied statistics designed for science majors and others with demonstrated quantitative ability. Topics include nature of statistical methods, random variables and their distribution functions, general principles of estimation and hypothesis testing. A laboratory introduces students to computer techniques in statistical analysis.', 1),
('100191', 'cmsc', 3, 0, 1, 'CMSC 457 - Quantum Computation', 'The course begins with a brief overview of those topics in quantum mechanics and mathematics needed for the understanding of quantum computation. It will then focus on quantum algorithms, covering such topics as quantum superposition and quantum entanglement, quantum decoherence, quantum teleportation, quantum Turing machines, Shor''s Algorithm, Grover''s algorithm, Hallgren''s algorithm, quantum information theory, quantum data compression, quantum cryptographic protocols, quantum error-correcting codes, implementation issues.', 2),
('100315', 'sci', 4, 0, 0, 'BIOL 141 - Foundations of Biology: Cells, Energy and Organisms', 'This course for majors provides a broad overview of contemporary biological concepts. Major topics include structure and synthesis of nucleic acids and proteins, molecular genetics, prokaryotic and eukaryotic cell structure and function, biochemistry of energy transformation, and animal and plant development and physiology.', 1),
('100316', 'sci', 4, 0, 0, 'BIOL 142 - Foundations of Biology: Ecology and Evolution', 'This course provides a broad overview of contemporary biological concepts. Major topics include fundamental concepts in ecology and evolution and emphasizes the fundamental interrelationship between these two fields of study. Concepts in evolution include a general description of the diversity of life, a review of Mendelian genetics, the causes and consequences of speciation, natural selection and genetic drift. Concepts in ecology will focus on ecological and evolutionary factors that govern population growth and regulation, species distributions, community and ecosystem ecology.', 2),
('101927', 'cmsc', 3, 1, 1, 'CMSC 447 - Software Engineering I', 'This course introduces the basic concepts of software engineering, including software life cycle, requirements analysis and software design methods. Professional ethics in computer science and the social impact of computing are discussed as an integral part of the software development process. Additional topics may include tools for software development, software testing, software metrics and software maintenance.', 2);

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
('000004', '000004'),
('050049', '050049'),
('050049', '052879'),
('052879', '052879'),
('052881', '052879'),
('052881', '052881'),
('052881', '055205'),
('052883', '052883'),
('052883', '055205'),
('052896', '052881'),
('052896', '052896'),
('052903', '052903'),
('052904', '052904'),
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
('052920', '052920'),
('052921', '052921'),
('052922', '052911'),
('052922', '052922'),
('052928', '052911'),
('052928', '052914'),
('052928', '052928'),
('052931', '052928'),
('052931', '052931'),
('052932', '052914'),
('052932', '052932'),
('052933', '052911'),
('052933', '052913'),
('052933', '052914'),
('052933', '052933'),
('052934', '052913'),
('052934', '052914'),
('052934', '052934'),
('052935', '052913'),
('052935', '052935'),
('052936', '052911'),
('052936', '052914'),
('052936', '052936'),
('052936', '055216'),
('052937', '052914'),
('052937', '052937'),
('052938', '052914'),
('052938', '052938'),
('052938', '055216'),
('052940', '052914'),
('052940', '052940'),
('052940', '055208'),
('052940', '057054'),
('052941', '052883'),
('052941', '052941'),
('052941', '055216'),
('052942', '052914'),
('052942', '052942'),
('052942', '055216'),
('052942', '057054'),
('052943', '052928'),
('052943', '052943'),
('052943', '052968'),
('052944', '052944'),
('052944', '101927'),
('052945', '052913'),
('052945', '052914'),
('052945', '052945'),
('052947', '052881'),
('052947', '052883'),
('052947', '052947'),
('052948', '052883'),
('052948', '052948'),
('052949', '052914'),
('052949', '052949'),
('052949', '055208'),
('052949', '055216'),
('052951', '052914'),
('052951', '052951'),
('052951', '055208'),
('052951', '055216'),
('052952', '052914'),
('052952', '052952'),
('052952', '055208'),
('052952', '055216'),
('052954', '052914'),
('052954', '052954'),
('052955', '052954'),
('052955', '052955'),
('052955', '052968'),
('052956', '052954'),
('052956', '052956'),
('052956', '052968'),
('052958', '052914'),
('052958', '052958'),
('052960', '052913'),
('052960', '052960'),
('052962', '052914'),
('052962', '052962'),
('052963', '052914'),
('052963', '052963'),
('052964', '052958'),
('052964', '052964'),
('052965', '052958'),
('052965', '052965'),
('052966', '052958'),
('052966', '052966'),
('052968', '052914'),
('052968', '052968'),
('052970', '052928'),
('052970', '052970'),
('052971', '052881'),
('052971', '052971'),
('052972', '052881'),
('052972', '052972'),
('052972', '055208'),
('052973', '052928'),
('052973', '052968'),
('052973', '052973'),
('052975', '052975'),
('052976', '052936'),
('052976', '052958'),
('052976', '052976'),
('052977', '052977'),
('052980', '052980'),
('052981', '052981'),
('055205', '055205'),
('055208', '055205'),
('055208', '055208'),
('055216', '055205'),
('055216', '055216'),
('057054', '055208'),
('057054', '057054'),
('100191', '052883'),
('100191', '055216'),
('100191', '100191'),
('100315', '055205'),
('100315', '100315'),
('100316', '055205'),
('100316', '100315'),
('100316', '100316'),
('101927', '000004'),
('101927', '052914'),
('101927', '101927');

-- --------------------------------------------------------

--
-- Table structure for table `Prereqs`
--

CREATE TABLE IF NOT EXISTS `Prereqs` (
  `prereq_id` varchar(6) NOT NULL COMMENT 'Course Id Number'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Prereqs`
--

INSERT INTO `Prereqs` (`prereq_id`) VALUES
('000004'),
('050049'),
('052879'),
('052881'),
('052883'),
('052896'),
('052903'),
('052904'),
('052907'),
('052911'),
('052913'),
('052914'),
('052920'),
('052921'),
('052922'),
('052928'),
('052931'),
('052932'),
('052933'),
('052934'),
('052935'),
('052936'),
('052937'),
('052938'),
('052940'),
('052941'),
('052942'),
('052943'),
('052944'),
('052945'),
('052947'),
('052948'),
('052949'),
('052951'),
('052952'),
('052954'),
('052955'),
('052956'),
('052958'),
('052960'),
('052962'),
('052963'),
('052964'),
('052965'),
('052966'),
('052968'),
('052970'),
('052971'),
('052972'),
('052973'),
('052975'),
('052976'),
('052977'),
('052980'),
('052981'),
('055205'),
('055208'),
('055216'),
('057054'),
('100191'),
('100315'),
('100316'),
('101927');

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
