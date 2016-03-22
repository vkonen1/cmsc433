//wait until everything is done loading
window.onload = init;

//this function is run after everything loads
function init() {
	//parse the json that was passed by php (courses_json)
	var courses = JSON.parse(courses_json);
	courses = courses["courses"];

	//get the div with id main for debug writing
	var main = document.getElementById("main");	

	//generate the complete list of string representations of the course
	var course_list = getCoursesDebug(courses);

	//write all of them for debug
	for (var i = 0; i < course_list.length; i++) {
		main.innerHTML += "<p>" + course_list[i] + "</p>\n";
	}

	//setup the arrays for the classes
	//cmsc
	var cmsc_courses_available = getCourses(courses, "cmsc");
	var cmsc_courses_taken = [];
	var cmsc_courses_options = [];
	//math
	var math_courses_available = getCourses(courses, "math");
	var math_courses_taken = [];
	var math_courses_options = [];
	//sci
	var sci_courses_available = getCourses(courses, "sci");
	var sci_courses_taken = [];
	var sci_courses_options = [];

	//update the html
	updateSelections("cmsc", cmsc_courses_available, cmsc_courses_taken, cmsc_courses_options)
	updateSelections("math", math_courses_available, math_courses_taken, math_courses_options)
	updateSelections("sci", sci_courses_available, sci_courses_taken, sci_courses_options)
}

/*
returns an array of all courses with course_type matching type
*/
function getCourses(courses, type) {
	var course_list = []
	//iterate over all of the courses in the courses array
	for (var i = 0; i < courses.length; i++) {
		//skip the dummy course
		if (courses[i].id == "000004") {
			continue;
		}
		if (courses[i].type == type) {
			course_list.push(courses[i]);
		}
	}
	return course_list;
}

/*
returns the object representing the course from the list of type with a course id of id
*/
function findCourse(courses, id) {
	//search through the courses
	for (var i = 0; i < courses.length; i++) {
		//found the course, return it
		if (courses[i].id == id) {
			return courses[i];
		}
	}
	//doesn't exist (should never happen)
	return null;
}

/*
updates the html of the select boxes for type with data from the passed in arrays
*/
function updateSelections(type, available, taken, options) {
	var available_select = document.getElementById(type + "-course-available");
	var taken_select = document.getElementById(type + "-course-taken");
	var options_select = document.getElementById(type + "-course-options");

	//reset the contents
	available_select_content = "";
	taken_select_content = "";
	options_select_content = "";

	//update available courses
	for (var i = 0; i < available.length; i++) {
		available_select_content += "<option value=\"";
		available_select_content += available[i].name;
		available_select_content += "\">";
		available_select_content += available[i].name;
		available_select_content += "</option>";
	}
	available_select.innerHTML = available_select_content;

	//update taken courses
	for (var i = 0; i < taken.length; i++) {
		taken_select_content += "<option value=\"";
		taken_select_content += taken[i].name;
		taken_select_content += "\">";
		taken_select_content += taken[i].name;
		taken_select_content += "</option>";
	}
	taken_select.innerHTML = taken_select_content;

	//update options courses
	for (var i = 0; i < options.length; i++) {
		options_select_content += "<option value=\"";
		options_select_content += options[i].name;
		options_select_content += "\">";
		options_select_content += options[i].name;
		options_select_content += "</option>";
	}
	options_select.innerHTML = options_select_content;
}

/*
changes the current active boxes to type
*/
function changeTab(type) {
	document.getElementById("cmsc").style.display = "none";
	document.getElementById("math").style.display = "none";
	document.getElementById("sci").style.display = "none";
	
	document.getElementById(type).style.display = "inline";
}

/*
returns an array of string representations of all of the courses
*/
function getCoursesDebug(courses) {
	var course_list = [];
	//iterate over all of the courses in the courses array
	for (var i = 0; i < courses.length; i++) {
		//skip the dummy course
		if (courses[i].id == "000004") {
			continue;
		}
		//add its attributes to the string representation
		var course = "<b>Course ID:</b> " + courses[i].id + "<br />";
		course += "<b>Type:</b> " + courses[i].type + "<br />";
		course += "<b>Credits:</b> " + courses[i].credits + "<br />";
		course += "<b>Required:</b> " + courses[i].required + "<br />";
		course += "<b>Senior:</b> " + courses[i].senior + "<br />";
		course += "<b>Course Name:</b> " + courses[i].name + "<br />";
		course += "<b>Course Description:</b><br />" + courses[i].desc + "<br />";

		//add all of the names of its prerequisites
		course += "<b>Prerequisites:</b><br />";
		var prereqs = courses[i].prereqs;
		//no prerequisites
		if (prereqs.length == 0) {
			course += "&nbsp;&nbsp;&nbsp;&nbsp;None<br />";
		//has prerequisites
		} else {
			//get the course name of the prerequisite using its course id
			for (var j = 0; j < prereqs.length; j++) {
				var prereq = findCourse(courses, prereqs[j].id);
				course += "&nbsp;&nbsp;&nbsp;&nbsp;" + prereq.name + "<br />";
			}			
		}
		//add it to the array
		course_list.push(course);
	}

	return course_list;
}