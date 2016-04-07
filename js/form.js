function processForm() {
	var hidden_content = "";

	if (!coursesTaken()) {
		var message = "Please select at least one class as taken.";
		toggleGlobalWarning(true, message);
		return;
	}

	//generate the hidden form fields for each course taken
	for (var i = 0; i < courses_taken["cmsc"].length; i++) {
		hidden_content += generateHidden(courses_taken["cmsc"][i], "taken");
	}
	for (var i = 0; i < courses_taken["math"].length; i++) {
		hidden_content += generateHidden(courses_taken["math"][i], "taken");
	}
	for (var i = 0; i < courses_taken["sci"].length; i++) {
		hidden_content += generateHidden(courses_taken["sci"][i], "taken");
	}

	//generate the hidden form fields for each course option
	for (var i = 0; i < courses_options["cmsc"].length; i++) {
		hidden_content += generateHidden(courses_options["cmsc"][i], "options");
	}
	for (var i = 0; i < courses_options["math"].length; i++) {
		hidden_content += generateHidden(courses_options["math"][i], "options");
	}
	for (var i = 0; i < courses_options["sci"].length; i++) {
		hidden_content += generateHidden(courses_options["sci"][i], "options");
	}

	//set the hidden content element
	document.getElementById("hidden").innerHTML = hidden_content;

	//submit the form
	document.getElementById("form").submit();
}

function coursesTaken() {
	return courses_taken["cmsc"].length != 0 ||
		courses_taken["math"].length != 0 ||
		courses_taken["sci"].length != 0;
}

function generateHidden(course, type) {
	return "<input type=\"hidden\" name=\"courses_" + type + "[]\" value=\"" + course.id + "\" />";
}