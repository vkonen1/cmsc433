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
		<div id="top-section">
			<div id="form">
				<form>
					<div class="form-section">
						<label for="first_name">First Name:</label><br />
						<input type="text" name="first_name"><br />
						<label for="last_name">Last Name:</label><br />
						<input type="text" name="last_name"><br />
					</div>

					<div class="form-section">
						<label for="email">Email:</label><br />
						<input type="text" name="email"><br />
						<label for="id">Student ID:</label><br />
						<input type="text" name="id">
					</div>

					<div id="hidden"></div>
					<div class="clear"></div>
					<div id="form-submit" onclick="processForm()">Submit</div>
				</form>	
			</div>

			<div id="tooltip-div"><p id="tooltip"></p></div>
		</div>

		<div id="cmsc-tab-button" class="tab-button tab-button-active" onclick="changeTab('cmsc')"><p>Computer Science</p></div>
		<div id="math-tab-button" class="tab-button" onclick="changeTab('math')"><p>Math</p></div>
		<div id="sci-tab-button" class="tab-button" onclick="changeTab('sci')"><p>Science</p></div>

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