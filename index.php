<?php
//defined functions
require("functions.php");

//database connection variables
$db_server = "localhost";
$db_username = "cmsc433";
$db_password = "CMSC433group";
$db_dbname = "cmsc433";

//used for post data validation
$error = false;
$first_name = $last_name = $email = $id = "";
$first_nameErr = $last_nameErr = $emailErr = $idErr = "";

//validate the post data
if ($_SERVER["REQUEST_METHOD"] == "POST") {
	//first name
	if (empty($_POST["first_name"])) {
		$error = true;
		$first_nameErr = "Required";
	} else {
		$first_name = test_input($_POST["first_name"]);
		if (!preg_match("/^[a-zA-Z]*$/", $first_name)) {
			$error = true;
			$first_nameErr = "Invalid";
		}
	}

	//last name
	if (empty($_POST["last_name"])) {
		$error = true;
		$last_nameErr = "Required";
	} else {
		$last_name = test_input($_POST["last_name"]);
		if (!preg_match("/^[a-zA-Z\-]*$/", $last_name)) {
			$error = true;
			$last_nameErr = "Invalid";
		}
	}

	//email address
	if (empty($_POST["email"])) {
		$error = true;
		$emailErr = "Required";
	} else {
		$email = test_input($_POST["email"]);
		if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
			$error = true;
			$emailErr = "Invalid";
		}
	}

	//student id number
	if (empty($_POST["id"])) {
		$error = true;
		$idErr = "Required";
	} else {
		$id = test_input($_POST["id"]);
		if (!preg_match("/^[A-Z]{2}[0-9]{6}$/", $id)) {
			$error = true;
			$idErr = "Invalid";
		}
	}

	//add entry to the database if no form errors
	if (!$error) {
		//connect to the mysql server
		$mysql = mysql_connect($db_server, $db_username, $db_password);
		if (!$mysql) {
			die("Could not connect to the database: " . mysql_error());
		}
		//select the database
		$db = mysql_select_db($db_dbname, $mysql);
	}
}

//grab the help information for the tooltip for javascript
$help_info = str_replace("\n", "<br />", file_get_contents("data/help_info.txt"));

//update the json file using the mysql server database
require("json_update.php");

//grab the contents of the json file and encode them for sending to javascript
$courses_json = json_encode(file_get_contents("json/courses.json"));

//include the html file for the page
require("html/index.html.php");
?>