<!DOCTYPE html>
<html>
	<head>
		<title>Computer Science Degree Tracker</title>
		<link rel="stylesheet" href="css/index.css">
		<!-- get the encoded json from php for javascript -->
		<script type="text/javascript">var courses_json = <?php echo($courses_json); ?>;</script>
		<script type="text/javascript" src="js/courses.js"></script>
		<script type="text/javascript" src="js/tab-content.js"></script>
	</head>

	<body>
		<h1>Computer Science Degree Tracker</h1>

		<div id="global-warning" style="display: none;" onmouseover="toggleGlobalWarning(false)"></div>

		<div id="north-west">
			<form>
				<label for="student_id">ID #:</label>
				<input type="text" name="student_id">
				<div id="hidden"></div>
				<input type="submit" value="Submit">
			</form>
			<br /><br /><br />
			<button class="tab-button" onclick="changeTab('cmsc')">Computer</button>
			<button class="tab-button" onclick="changeTab('math')">Math</button>
			<button class="tab-button" onclick="changeTab('sci')">Science</button>
		</div>

		<div id="north-east">
			<textarea id="tooltip" disabled></textarea>
		</div>

		<div class="clear"></div>

		<!-- Tab Content -->
		<div id="tab-content">
			<!-- Computer Science -->
			<div id="cmsc-tab" class="tab">
				<div class="course-section">
					<div id="cmsc-available" class="course-select cmsc-select"></div>
				</div>

				<div class="course-section">
					<div id="cmsc-taken" class="course-select cmsc-select"></div>
				</div>

				<div class="course-section">
					<div id="cmsc-options" class="course-select cmsc-select"></div>
				</div>
			</div>
			<!-- Math -->
			<div id="math-tab" class="tab" style="display: none;">
				<div class="course-section">
					<div id="math-available" class="course-select math-select"></div>
				</div>

				<div class="course-section">
					<div id="math-taken" class="course-select math-select"></div>
				</div>

				<div class="course-section">
					<div id="math-options" class="course-select math-select"></div>
				</div>
			</div>
			<!-- Science -->
			<div id="sci-tab" class="tab" style="display: none;">
				<div class="course-section">
					<div id="sci-available" class="course-select sci-select"></div>
				</div>

				<div class="course-section">
					<div id="sci-taken" class="course-select sci-select"></div>
				</div>

				<div class="course-section">
					<div id="sci-options" class="course-select sci-select"></div>
				</div>
			</div>
		</div>
		<!-- End of Tab Content -->

		<!-- DEBUG -->
		<div class="clear"></div>
		<div id="main"></div>
		<!-- END DEBUG -->
	</body>
</html>