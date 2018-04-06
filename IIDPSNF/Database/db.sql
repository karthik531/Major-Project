/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - iidps
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `iidps`;

USE `iidps`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `files` */

DROP TABLE IF EXISTS `files`;

CREATE TABLE `files` (
  `fid` int(11) NOT NULL,
  `filename` varchar(100) DEFAULT NULL,
  `file_` longblob,
  `user` varchar(100) DEFAULT NULL,
  `keywords` varchar(100) DEFAULT NULL,
  `active_` varchar(100) DEFAULT 'Yes',
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `files` */

insert  into `files`(`fid`,`filename`,`file_`,`user`,`keywords`,`active_`) values (3793591,'java.txt','Java programming language was originally developed by Sun Microsystems which was initiated by James Gosling and released in 1995 as core component of Sun Microsystems\' Java platform (Java 1.0 [J2SE]).\r\nJava JDK 8\r\n\r\nThe latest release of the Java Standard Edition is Java SE 8. With the advancement of Java and its widespread popularity, multiple configurations were built to suit various types of platforms. For example: J2EE for Enterprise Applications, J2ME for Mobile Applications.\r\n\r\nThe new J2 versions were renamed as Java SE, Java EE, and Java ME respectively. Java is guaranteed to be Write Once, Run Anywhere.\r\n\r\nJava is -\r\n\r\nObject Oriented - In Java, everything is an Object. Java can be easily extended since it is based on the Object model.\r\nJava JDK 8\r\n\r\nPlatform Independent - Unlike many other programming languages including C and C++, when Java is compiled, it is not compiled into platform specific machine, rather into platform independent byte code. This byte code is distributed over the web and interpreted by the Virtual Machine (JVM) on whichever platform it is being run on.\r\n\r\nSimple - Java is designed to be easy to learn. If you understand the basic concept of OOP Java, it would be easy to master.\r\n\r\nSecure - With Java\'s secure feature it enables to develop virus-free, tamper-free systems. Authentication techniques are based on public-key encryption.\r\n\r\nArchitecture-neutral - Java compiler generates an architecture-neutral object file format, which makes the compiled code executable on many processors, with the presence of Java runtime system.\r\n\r\nPortable - Being architecture-neutral and having no implementation dependent aspects of the specification makes Java portable. Compiler in Java is written in ANSI C with a clean portability boundary, which is a POSIX subset.\r\n\r\nRobust - Java makes an effort to eliminate error prone situations by emphasizing mainly on compile time error checking and runtime checking.\r\n\r\nMultithreaded - With Java\'s multithreaded feature it is possible to write programs that can perform many tasks simultaneously. This design feature allows the developers to construct interactive applications that can run smoothly.\r\n\r\nInterpreted - Java byte code is translated on the fly to native machine instructions and is not stored anywhere. The development process is more rapid and analytical since the linking is an incremental and light-weight process.\r\nJava JDK 8\r\n\r\nHigh Performance - With the use of Just-In-Time compilers, Java enables high performance.\r\n\r\nDistributed - Java is designed for the distributed environment of the internet.\r\n\r\nDynamic - Java is considered to be more dynamic than C or C++ since it is designed to adapt to an evolving environment. Java programs can carry extensive amount of run-time information that can be used to verify and resolve accesses to objects on run-time.\r\n\r\nHistory of Java\r\nJames Gosling initiated Java language project in June 1991 for use in one of his many set-top box projects. The language, initially called ‘Oak’ after an oak tree that stood outside Gosling\'s office, also went by the name ‘Green’ and ended up later being renamed as Java, from a list of random words.\r\n\r\nSun released the first public implementation as Java 1.0 in 1995. It promised Write Once, Run Anywhere (WORA), providing no-cost run-times on popular platforms.\r\n\r\nOn 13 November, 2006, Sun released much of Java as free and open source software under the terms of the GNU General Public License (GPL).\r\nJava JDK 8\r\n\r\nOn 8 May, 2007, Sun finished the process, making all of Java\'s core code free and open-source, aside from a small portion of code to which Sun did not hold the copyright.\r\n\r\nTools You Will Need\r\nFor performing the examples discussed in this tutorial, you will need a Pentium 200-MHz computer with a minimum of 64 MB of RAM (128 MB of RAM recommended).\r\n\r\nYou will also need the following softwares -\r\n\r\nLinux 7.1 or Windows xp/7/8 operating system\r\nJava JDK 8\r\nMicrosoft Notepad or any other text editor\r\nThis tutorial will provide the necessary skills to create GUI, networking, and web applications using Java.\r\n\r\nTry It Option\r\nWe have provided you with an option to compile and execute available code online. Just click the Try it button avaiable at the top-right corner of the code window to compile and execute the available code. There are certain examples which cannot be executed online, so we have skipped those examples.','swamy@gmail.com','java, jdk','Yes'),(7302311,'JAVA3.txt','Java programs are compiled by the Java compiler into bytecode. The Java virtual machine interprets this bytecode and executes the Java program.\r\n\r\n1.4. Java Runtime Environment vs. Java Development Kit\r\nA Java distribution typically comes in two flavors, the Java Runtime Environment (JRE) and the Java Development Kit (JDK).\r\n\r\nThe JRE consists of the JVM and the Java class libraries. Those contain the necessary functionality to start Java programs.\r\n\r\nThe JDK additionally contains the development tools necessary to create Java programs. The JDK therefore consists of a Java compiler, the Java virtual machine and the Java class libraries.\r\n\r\n1.5. Development Process with Java\r\nJava source files are written as plain text documents. The programmer typically writes Java source code in an Integrated Development Environment (IDE) for programming. An IDE supports the programmer in the task of writing code, e.g., it provides auto-formating of the source code, highlighting of the important keywords, etc.\r\n\r\nAt some point the programmer (or the IDE) calls the Java compiler ( javac ). The Java compiler creates the bytecode instructions. These instructions are stored in .class files and can be executed by the Java Virtual Machine.\r\n\r\n1.6. Garbage collector\r\nThe JVM automatically re-collects the memory which is not referred to by other objects. The Java garbage collector checks all object references and finds the objects which can be automatically released.\r\n\r\nWhile the garbage collector relieves the programmer from the need to explicitly manage memory, the programmer still need to ensure that he does not keep unneeded object references, otherwise the garbage collector cannot release the associated memory. Keeping unneeded object references are typically called memory leaks.\r\n\r\n1.7. Classpath\r\nThe classpath defines where the Java compiler and Java runtime look for .class files to load. These instructions can be used in the Java program.\r\n\r\nFor example, if you want to use an external Java library you have to add this library to your classpath to use it in your program.\r\n\r\n2. Installation of Java\r\n2.1. Check installation\r\nTo run Java programs on your computer you must at least have the Java runtime environment (JRE) installed. This might already be the case on your machine. You can test is the JRE is installed and in your current path by opening a console (if you are using Windows: Win+R, enter cmd and press Enter) and by typing in the following command:\r\n\r\njava -version\r\nIf the JRE is installed and within your path, this commands prints information about your Java installation. In this case you can skip the Java installation description.\r\n\r\nIf the command line returns the information that the program could not be found, you have to install Java.\r\n\r\nHow can you tell you are using a 32 bit or 64 bit version of Java?\r\nYou can run a 32 bit or a 64 bit version of Java on a 64 bit system. If you use java -version and the output contains the \"64-Bit\" string you are using the 64 bit version of Java otherwise your are using the 32 bit version. The following is the output of a 64-bit version.\r\n\r\nopenjdk version \"1.8.0_45-internal\"\r\nOpenJDK Runtime Environment (build 1.8.0_45-internal-b14)\r\nOpenJDK 64-Bit Server VM (build 25.45-b02, mixed mode)\r\n2.2. Install Java on Ubuntu\r\nOn Ubuntu you can install Java 8 via the following command on the command line. These commands might change over time, if they do not work anymore please Google for the installation.\r\n\r\n# install Java from the OpenJDK project\r\nsudo apt-get install openjdk-8-jdk\r\n\r\n# in case you prefer the Oracle Java distribution\r\n# you can alternatively use the following commands\r\nsudo add-apt-repository ppa:webupd8team/java\r\nsudo apt-get update\r\nsudo apt-get install oracle-java8-installer\r\n2.3. Install Java on MS Windows\r\nFor Microsofts Windows, Oracle provides a native installer which can be found on the Oracle website. The central website for installing Java is located under the following URL and also contains instructions how to install Java for other platforms: http://java.com.\r\n\r\n2.4. Installation problems and other operating systems\r\nIf you have problems installing Java on your system, search via Google for How to install JDK on YOUR OS. This should result in helpful links. Replace YOUR OS with your operating system, e.g., Windows, Ubuntu, Mac OS X, etc.\r\n\r\n2.5. Validate installation\r\nSwitch again to the command line and run the following command.\r\n\r\njava -version\r\nThe output should be similar to the following output.\r\n\r\nopenjdk version \"1.8.0_45-internal\"\r\nOpenJDK Runtime Environment (build 1.8.0_45-internal-b14)\r\nOpenJDK 64-Bit Server VM (build 25.45-b02, mixed mode)\r\n3. Exercise: Write, compile and run a Java program\r\n3.1. Write source code\r\nThe following Java program is developed under Linux using a text editor and the command line. The process on other operating system should be similar, but is not covered in this description.\r\n\r\nSelect or create a new directory which will be used for your Java development. In this description the path \\home\\vogella\\javastarter is used. On Microsoft Windows you might want to use c:\\temp\\javastarter. This path is called javadir in the following description.\r\n\r\nOpen a text editor which supports plain text, e.g., gedit under Linux or Notepad under Windows and write the following source code.','swamy@gmail.com','java j2ee','Yes'),(7735883,'debug.log','[480:7804:0420/145024:INFO:wow_nt_service_impl.cc(179)] Current process doesn\'t have full admin rights.\r\n[480:7804:0420/145024:INFO:wow_nt_service_impl.cc(240)] Process\'s session ID: 14\r\n[480:7804:0420/145024:INFO:wow_proxy_process_delegate.cc(72)] Elevate process from proxy process.\r\n\r\nFile updated\r\n','sajid24x7@gmail.com','cloud, testing','No'),(7828368,'cloud.txt','Cloud computing is a type of Internet-based computing that provides shared computer processing resources and data to computers and other devices on demand. It is a model for enabling ubiquitous, on-demand access to a shared pool of configurable computing resources (e.g., computer networks, servers, storage, applications and services),[1][2] which can be rapidly provisioned and released with minimal management effort. Cloud computing and storage solutions provide users and enterprises with various capabilities to store and process their data in either privately owned, or third-party data centers[3] that may be located far from the user–ranging in distance from across a city to across the world. Cloud computing relies on sharing of resources to achieve coherence and economy of scale, similar to a utility (like the electricity grid) over an electricity network.\r\n\r\nAdvocates claim that cloud computing allows companies to avoid up-front infrastructure costs (e.g., purchasing servers). As well, it enables organizations to focus on their core businesses instead of spending time and money on computer infrastructure.[4] Proponents also claim that cloud computing allows enterprises to get their applications up and running faster, with improved manageability and less maintenance, and enables Information technology (IT) teams to more rapidly adjust resources to meet fluctuating and unpredictable business demand.[4][5][6] Cloud providers typically use a \"pay as you go\" model. This will lead to unexpectedly high charges if administrators do not adapt to the cloud pricing model.[7]\r\n\r\nIn 2009, the availability of high-capacity networks, low-cost computers and storage devices as well as the widespread adoption of hardware virtualization, service-oriented architecture, and autonomic and utility computing led to a growth in cloud computing.[8][9][10] Companies can scale up as computing needs increase and then scale down again as demands decrease.[11] In 2013, it was reported that cloud computing had become a highly demanded service or utility due to the advantages of high computing power, cheap cost of services, high performance, scalability, accessibility as well as availability. Some cloud vendors are experiencing growth rates of 50% per year,[12] but being still in a stage of infancy, it has pitfalls that need to be addressed to make cloud computing services more reliable and user friendly.[13][14]','swamy@gmail.com','cloud, data','Yes'),(8888108,'debug.log','[480:7804:0420/145024:INFO:wow_nt_service_impl.cc(179)] Current process doesn\'t have full admin rights.\n[480:7804:0420/145024:INFO:wow_nt_service_impl.cc(240)] Process\'s session ID: 14\n[480:7804:0420/145024:INFO:wow_proxy_process_delegate.cc(72)] Elevate process from proxy process.\"C:\\Program Files (x86)\\UCBrowser\\Application\\UCBrowser.exe\" --type=wow-updater -cenumupdatemode:updatemode_aliimtimer, with session ID: 14, hide: 1\n','swamy@gmail.com','cloud testing','Yes');

/*Table structure for table `habit_data` */

DROP TABLE IF EXISTS `habit_data`;

CREATE TABLE `habit_data` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `sccalls` varchar(1000) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `habit_data` */

insert  into `habit_data`(`sno`,`user`,`sccalls`,`count`) values (9,'swamy@gmail.com','profile',1),(10,'alinowinhyd@gmail.com','fileupload open viewfile download open send open search getlist viewfile download search getlist viewfile download open viewfile update open viewfile open delete open profile chgmod profile',3),(11,'sajid24x7@gmail.com','fileupload open viewfile download open send open search getlist viewfile download search getlist viewfile download open viewfile update open viewfile open delete open profile chgmod profile',1);

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `sno` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `attackedby` varchar(100) DEFAULT NULL,
  `date_` varchar(100) DEFAULT NULL,
  `ip_` varchar(100) DEFAULT NULL,
  `level_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `result` */

insert  into `result`(`sno`,`user`,`attackedby`,`date_`,`ip_`,`level_`) values (8,'sajid24x7@gmail.com','alinowinhyd@gmail.com','2017.12.27','183.83.84.164','Type 2'),(9,'sajid24x7@gmail.com','Attacker','2017.12.27','183.83.84.164','Type 2');

/*Table structure for table `send` */

DROP TABLE IF EXISTS `send`;

CREATE TABLE `send` (
  `user` varchar(100) DEFAULT NULL,
  `fid` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `sname` varchar(100) DEFAULT NULL,
  `semail` varchar(100) DEFAULT NULL,
  `date_` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `send` */

insert  into `send`(`user`,`fid`,`fname`,`sname`,`semail`,`date_`) values ('alinowinhyd@gmail.com','7735883','debug.log','MD SAJID','sajid24x7@gmail.com','2017/12/27 at 11:30:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tele` varchar(100) DEFAULT NULL,
  `gen` varchar(10) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uid`,`name`,`pwd`,`email`,`tele`,`gen`,`zip`,`addr`) values (1,'ANK Swamy','sajid','swamy@gmail.com','8121953811','male','500016','#304, Siri Towers, Maitrivanam'),(2,'Ali','SAJID','alinowinhyd@gmail.com','9052830804','male','500016','#304, Siri Towers, Maitrivanam'),(3,'MD SAJID','sajid','sajid24x7@gmail.com','8121953811','male','500022','#304, Siri Towers, Maitrivanam');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
