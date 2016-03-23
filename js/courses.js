//wait until everything is done loading
window.onload = init;

//array for all of the courses from the json
var courses;

//arrays to keep track of classes
var courses_available = [];
courses_available["cmsc"] = [];
courses_available["math"] = [];
courses_available["sci"] = [];

var courses_taken = [];
courses_taken["cmsc"] = [];
courses_taken["math"] = [];
courses_taken["sci"] = [];

var courses_options = [];
courses_options["cmsc"] = [];
courses_options["math"] = [];
courses_options["sci"] = [];

//arrays to keep track of class objects for manipulation
var courses_available_objs = [];
courses_available_objs["cmsc"] = [];
courses_available_objs["math"] = [];
courses_available_objs["sci"] = [];

//this function is run after everything loads
function init() {
	//parse the json that was passed by php (courses_json)
	courses = JSON.parse(courses_json);
	courses = courses["courses"];

	//define a set ordering variable for each course
	for (var i = 0; i < courses.length; i++) {
		courses[i].order = i;
	}

	/* DEBUG 
	//get the div with id main for debug writing
	var main = document.getElementById("main");	
	//generate the complete list of string representations of the course
	var course_list = getCoursesDebug();
	for (var i = 0; i < course_list.length; i++) {
		main.innerHTML += "<p>" + course_list[i] + "</p>\n";
	}
	 END DEBUG */

	//setup the arrays for the classes
	courses_available["cmsc"] = getCourses("cmsc");
	courses_available["math"] = getCourses("math");
	courses_available["sci"] = getCourses("sci");

	//update the html select boxes
	courses_available_objs["cmsc"] = updateSelections("cmsc");
	courses_available_objs["maths"] = updateSelections("math");
	courses_available_objs["sci"] = updateSelections("sci");
}

/*
changes the current active boxes to type
*/
function changeTab(type) {
	var tabs = document.getElementsByClassName("tab");

	for (var i = 0; i < tabs.length; i++) {
		tabs[i].style.display = "none";
	}
	
	document.getElementById(type + "-tab").style.display = "inline";
}

/*
returns an array of all courses with course_type matching type
*/
function getCourses(type) {
	var course_list = []
	//iterate over all of the courses in the courses array
	for (var i = 0; i < courses.length; i++) {
		//skip the dummy course (prereq for cmsc447)
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
returns the object representing the course from the array of courses with a course id of id
*/
function findCourse(id) {
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
returns the index in course_list that holds the course object with id of id
*/
function findCourseIndex(id, course_list) {
	//search through the courses provided
	for (var i = 0; i < course_list.length; i++) {
		//found the course, return the index
		if (course_list[i].id == id) {
			return i;
		}
	}
	//not in array
	return -1;
}

/*
updates the html of the select boxes for type with data from the passed in arrays
*/
function updateSelections(type) {
	var available_select = document.getElementById(type + "-available");
	var taken_select = document.getElementById(type + "-taken");
	var options_select = document.getElementById(type + "-options");

	var available_select_content = "";
	var taken_select_content = "";
	var options_select_content = "";

	//update available courses
	for (var i = 0; i < courses_available[type].length; i++) {
		available_select_content += "<option value=\"";
		available_select_content += courses_available[type][i].id;
		available_select_content += "\" onclick=\"classTaken('";
		available_select_content += courses_available[type][i].id;
		available_select_content += "', '";
		available_select_content += type;
		available_select_content += "')\" class=\"";
		available_select_content += type;
		available_select_content += "\">";
		available_select_content += courses_available[type][i].name;
		available_select_content += "</option>";
	}

	//update taken courses
	for (var i = 0; i < courses_taken[type].length; i++) {
		taken_select_content += "<option value=\"";
		taken_select_content += courses_taken[type][i].id;
		taken_select_content += "\">";
		taken_select_content += courses_taken[type][i].name;
		taken_select_content += "</option>";
	}

	//update options courses
	for (var i = 0; i < courses_options[type].length; i++) {
		options_select_content += "<option value=\"";
		options_select_content += courses_options[type][i].id;
		options_select_content += "\">";
		options_select_content += courses_options[type][i].name;
		options_select_content += "</option>";
	}

	//set the contents
	available_select.innerHTML = available_select_content;
	taken_select.innerHTML = taken_select_content;
	options_select.innerHTML = options_select_content;

	//return the objects generated
	return document.getElementsByClassName(type);
}

function classTaken(id, type) {
	var course = findCourse(id);
	var idx = findCourseIndex(id, courses_available[type]);

	if (idx == -1) {
		return;
	}

	courses_available[type].splice(idx, 1);
	insertClass(course, courses_taken[type]);

	var prereqs = course.prereqs;
	for (var i = 0; i < prereqs.length; i++) {
		var prereq = findCourse(prereqs[i].id);
		classTaken(prereq.id, prereq.type)
	}

	updateSelections(type);
}

function insertClass(course, course_list) {
	for (var i = 0; i < course_list.length; i++) {
		if (course.order < course_list[i].order) {
			course_list.splice(i, 0, course);
			return;
		}
	}

	//push to the end of the array if it was not inserted
	course_list.push(course);
}

/*
returns an array of string representations of all of the courses for debug
*/
function getCoursesDebug() {
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
				var prereq = findCourse(prereqs[j].id);
				course += "&nbsp;&nbsp;&nbsp;&nbsp;" + prereq.name + "<br />";
			}			
		}
		//add it to the array
		course_list.push(course);
	}

	return course_list;
}