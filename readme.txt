Computer Science Degree Tracker
/------------------------------------------------------------------------------/
This file will serve to document the web server and database details as well as
the PHP, HTML, CSS, and JavaScript files that comprise the project
/------------------------------------------------------------------------------/
The project is avialable for use at the following domain

http://datahole.ddns.net/cmsc433/main/index.php
/------------------------------------------------------------------------------/
The database structure and contents can be viewed and manipulated via phpMyAdmin
at the following domain with the following login credentials

http://datahole.ddns.net/phpmyadmin
Username: cmsc433
Password: CMSC433group
Database Name: cmsc433
/------------------------------------------------------------------------------/
The Web Server

Standard LAMP stack setup with Apache, PHP5, MySQL, and phpMyAdmin

The provided domain is hosted on a Raspberry Pi 2 Model B+ running Raspbian
which is a Debian based Linux distribution designed for the Raspberry Pi
/------------------------------------------------------------------------------/
The Database Structure and Contents

A backup of the database is provided: db_backups/cmsc433_backup_final.sql

Courses are stored in the database as entries in the Courses table with the
following columns

course_id       - unique course id from the UMBC course catalog left padded with
				  zeroes to a length of 6
course_type 	- type of course for tab association (cmsc, math, sci)
course_credits 	- number of credits (unused information)
course_required - course required for the major or not (1 or 0)
course_senior 	- course counts as a CMSC 400 level course or not (1 or 0), used
				  to determine if one CMSC 400 level course prerequisite is
				  fulfilled for CMSC 447
course_name 	- name of the course from the UMBC course catalog
course_desc 	- description of the course from the UMBC course catalog
course_prereqs 	- number of prerequisite courses (used for building JSON)

All course ids are additionally stored as entries in the Prereqs table

Courses_Prereqs forms the associations between courses and their prerequisite
courses via linking a course_id from the Courses table with a prereq_id from
the Prereqs table; For each prerequisite to a course, there is an entry
associating that prerequisite course id to the course's id and there is an entry
associating the course's id to itself

* All of the course information needed for this project is already correctly
  entered into the database within the table structure described above

These tables described below are used to store the data entered by the user

Students are stored in the database as entries in the Students table with the
following columns

student_id		   - unique student UMBC id
student_first_name - first name of the student
student_last_name  - last name of the student
student_email	   - email address of the student
date_modified	   - date this entry was last modified (automatically updated
					 with CURRENT_TIMESTAMP)
date_added		   - date this entry was added (need to provide
					 CURRENT_TIMESTAMP on insert)

Both the Students_Courses_Options and Students_Courses_Taken tables have entries
for every course a student has as an option and every course a student has taken
which consist of the student's id and a course id
/------------------------------------------------------------------------------/
PHP Files (*.php)

* functions.php *
This script is intended to have all necessary functions for the project
This script is required at the top of index.php
The only function it contains is test_input which is used to clean user input
during post data processing

* json_update.php *
This script gets the course data from the database and converts it into a JSON
string which is then written to json/courses.json
This script is required in index.php if the form page needs to be displayed

DEBUG
The debugging for this script was done separately in the json_tester directory
The final result of building this component can be viewed at the following
domain which processes the resulting JSON with javascript and writes the data
to the html with javascript
http://datahole.ddns.net/cmsc433/main/json_tester/json_tester.php

* index.php *
This is the main script for the project that uses the above scripts as needed,
processes and validates post data, stores user input in the database, sets up
the variables to be passed to the JavaScript, and requires the appropriate HTML
template files based on the state of the page
/------------------------------------------------------------------------------/
HTML/PHP Files (html/*.html.php)

* index.html.php *
