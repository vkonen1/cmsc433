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
			<button type="button" id="computer-button" class="tab-button" onclick="changeTab('cmsc')">Computer</button>
			<button type="button" id="math-button" class="tab-button" onclick="changeTab('math')">Math</button>
			<button type="button" id="science-button" class="tab-button" onclick="changeTab('sci')">Science</button>
		</div>

		<div id="northEast">
			<textarea disabled>
			Tooltip?
			</textarea>
		</div>

		<div class="clear"></div>

		<!-- Select Boxes -->
		<!-- Computer Science -->
		<div id="cmsc">
			<div class="course-section">
				<select id="cmsc-course-available" size="18"></select>
				<p>Class Available</p>
			</div>

			<div class="course-section">
				<select id="cmsc-course-taken" size="18"></select>
				<p>Classes Taken</p>
			</div>

			<div class="course-section">
				<select id="cmsc-course-options" size="18"></select>
				<p>Class Options</p>
			</div>
		</div>
		<!-- Math -->
		<div id="math" style="display: none;">
			<div class="course-section">
				<select id="math-course-available" size="18"></select>
				<p>Class Available</p>
			</div>

			<div class="course-section">
				<select id="math-course-taken" size="18"></select>
				<p>Classes Taken</p>
			</div>

			<div class="course-section">
				<select id="math-course-options" size="18"></select>
				<p>Class Options</p>
			</div>
		</div>
		<!-- Science -->
		<div id="sci" style="display: none;">
			<div class="course-section">
				<select id="sci-course-available" size="18"></select>
				<p>Class Available</p>
			</div>

			<div class="course-section">
				<select id="sci-course-taken" size="18"></select>
				<p>Classes Taken</p>
			</div>

			<div class="course-section">
				<select id="sci-course-options" size="18"></select>
				<p>Class Options</p>
			</div>
		</div>
		<!-- End of Select Boxes -->

		<!-- For debugging class population -->
		<div class="clear"></div>
		<div id="main"></div>
	</body>
</html>