<!DOCTYPE html>
<html>
<head>
	<title>CMSC Degree Tracker</title>
	<link rel="stylesheet" href="css/index.css">
	<!-- get the encoded json from php for javascript -->
	<script type="text/javascript">var courses_json = <?php echo($courses_json); ?>;</script>
	<script type="text/javascript" src="js/courses.js"></script>
</head>

<body>
<h1>CMSC Degree Tracker</h1>

<div id="northWest">
<form>
	ID #:
	<input type="text" name="idnum">
	<input type="submit" value="Submit">
	<br> <br> <br>
</form>
<form>
	<input type="submit" class="optionButton" value="CMSC">
	<input type="submit" class="optionButton" value="SCI">
</form>
</div>

<div id="northEast">
<textarea disabled>
Tooltip?
</textarea>
</div>

<p id="clearLeft"></p>

<!--  Select Box -->
<div id="south">
<select size="18">

</select>
<p>Class Available</p>
</div>

<div id="south">
<select size="18">

</select>
<p>Classes Taken</p>
</div>

<div id="south">
<select size="18">
	
</select>
<p>Class Options</p>
</div>
<!-- End of Select Box-->
<div style="clear: both;"></div>
<div id="main"></div>
</body>
</html>