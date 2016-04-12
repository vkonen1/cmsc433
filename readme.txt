Computer Science Degree Tracker
/------------------------------------------------------------------------------/
This file will serve to document the web server and database details as well as
the php, html, css, and javascript files that comprise the project
/------------------------------------------------------------------------------/
The project is avialable for use at the following domain

http://datahole.ddns.net/cmsc433/main/index.php
/------------------------------------------------------------------------------/
The database structure and contents can be viewed and manipulated via phpmyadmin
at the following domain with the following login credentials

http://datahole.ddns.net/phpmyadmin/
Username: cmsc433
Password: CMSC433group
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
course_required - 
course_senior 	-
course_name 	-
course_desc 	-
course_prereqs 	-