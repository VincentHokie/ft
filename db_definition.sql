create database if not exists `fine_tune`;

USE `fine_tune`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;

/* Table structure for table `fine_tune` */

CREATE TABLE IF NOT EXISTS `student` (

  `student_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
   PRIMARY KEY  (`student_id`)

);

CREATE TABLE IF NOT EXISTS `teacher` (

  `teacher_id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL default '',
   PRIMARY KEY  (`teacher_id`)

);

CREATE TABLE IF NOT EXISTS `class` (

  `class_id` int(11) NOT NULL auto_increment,
  `teacher_id` int(11) NOT NULL default '0',
  `name` varchar(250)  NOT NULL default '',
   PRIMARY KEY  (`class_id`),
   FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)

);

CREATE TABLE IF NOT EXISTS `student_class` (

  `student_class_id` int(11) NOT NULL auto_increment,
  `student_id` int(11) NOT NULL default '0',
  `class_id` int(11)  NOT NULL default '',
   PRIMARY KEY  (`student_class_id`),
   FOREIGN KEY (student_id) REFERENCES student(student_id),
   FOREIGN KEY (class_id) REFERENCES class(class_id)

);

CREATE TABLE IF NOT EXISTS `quiz` (

  `quiz_id` int(11) NOT NULL auto_increment,
  `teacher_id` int(11) NOT NULL default '0',
  `name` varchar(200)  NOT NULL default '',
   PRIMARY KEY  (`quiz_id`),
   FOREIGN KEY (teacher_id) REFERENCES teacher(teacher_id)

);

CREATE TABLE IF NOT EXISTS `assignment` (

  `assignment_id` int(11) NOT NULL auto_increment,
  `quiz_id` int(11) NOT NULL default '0',
  `student_id`  int(11) NOT NULL default '0',
  `completed` BOOLEAN  default '0',
  `grade`  varchar(100) NOT NULL default '',
   PRIMARY KEY  (`assignment_id`),
   FOREIGN KEY (quiz_id) REFERENCES quiz(quiz_id),
   FOREIGN KEY (student_id) REFERENCES student(student_id)

);

CREATE TABLE IF NOT EXISTS `question` (

  `question_id` int(11) NOT NULL auto_increment,
  `answer` varchar(100) NOT NULL default '',
  `option_1` varchar(100) NOT NULL default '',
  `option_2` varchar(100) NOT NULL default '',
  `option_3` varchar(100) NOT NULL default '',
  `option_4`  varchar(100) NOT NULL default '',
   PRIMARY KEY  (`question_id`)

);

CREATE TABLE IF NOT EXISTS `quiz_question` (

  `quiz_question_id` int(11) NOT NULL auto_increment,
  `quiz_id` int(11) NOT NULL default '0',
  `question_id` int(11) NOT NULL default '0',
   PRIMARY KEY  (`quiz_question_id`),
   FOREIGN KEY (quiz_id) REFERENCES quiz(quiz_id),
   FOREIGN KEY (question_id) REFERENCES question(question_id)

);
