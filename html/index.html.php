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
			<button class="tab-button" onclick="changeTab('cmsc')">Computer</button>
			<button class="tab-button" onclick="changeTab('math')">Math</button>
			<button class="tab-button" onclick="changeTab('sci')">Science</button>
		</div>

		<div id="northEast">
			<textarea id="tooltip" disabled></textarea>
		</div>

		<div class="clear"></div>

		<!-- Select Boxes -->
		<!-- Computer Science -->
		<div id="cmsc-tab" class="tab">
			<div class="course-section">
				<select id="cmsc-available" size="18"></select>
				<p>Class Available</p>
			</div>

			<div class="course-section">
				<select id="cmsc-taken" size="18"></select>
				<p>Classes Taken</p>
			</div>

			<div class="course-section">
				<select id="cmsc-options" size="18"></select>
				<p>Class Options</p>
			</div>
		</div>
		<!-- Math -->
		<div id="math-tab" class="tab" style="display: none;">
			<div class="course-section">
				<select id="math-available" size="18"></select>
				<p>Class Available</p>
			</div>

			<div class="course-section">
				<select id="math-taken" size="18"></select>
				<p>Classes Taken</p>
			</div>

			<div class="course-section">
				<select id="math-options" size="18"></select>
				<p>Class Options</p>
			</div>
		</div>
		<!-- Science -->
		<div id="sci-tab" class="tab" style="display: none;">
			<div class="course-section">
				<select id="sci-available" size="18"></select>
				<p>Class Available</p>
			</div>

			<div class="course-section">
				<select id="sci-taken" size="18"></select>
				<p>Classes Taken</p>
			</div>

			<div class="course-section">
				<select id="sci-options" size="18"></select>
				<p>Class Options</p>
			</div>
		</div>
		<!-- End of Select Boxes -->

		<!-- DEBUG -->
		<div class="clear"></div>
		<div id="main"></div>
		<!-- END DEBUG -->
	</body>
</html>