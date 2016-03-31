//top offset from the top of the page
var tooltip_start_top;

//height in pixels of the selection areas
var tooltip_area_height = 140;
//margin in pixels at the bottom of the tooltip area
var tooltip_area_padding = 20;

//number of pixels to scroll per scroll event
var tooltip_scroll_rate = 10;

/*
initTooltipContent()
initializes tooltip_start_top and adds event listener for the tooltip area
*/
function initTooltipContent() {
	var tooltip = document.getElementById("tooltip");
	//initialize the top offset
	tooltip_start_top = tooltip.offsetTop;

	console.log(tooltip_start_top);

	/*
	add an event listener to the tooltip area that calls scrollTooltipContent
	with the event
	*/
	tooltip.addEventListener("wheel", function(event) {
		event.preventDefault();
		scrollTooltipContent(event);
	});
}

/*
updateTooltip(id)
id - course id corresponding to a course object in the courses array
Writes the course information associated with the provided course id to the
innerHTML of the element with id "tooltip"; If the id is an empty string, the
help info is displayed in the tooltip
*/
function updateTooltip(id = "") {
	var tooltip = document.getElementById("tooltip");
	var tooltip_info = "";

	if (id == "") {
		tooltip_info = help_info;
	} else {
		//get the course object based on id
		var course = findCourse(id);

		//format the course information from the course object
		tooltip_info += "<b>" + course.name + "</b><br />";
		tooltip_info += course.desc + "<br />";
		tooltip_info += "<b>Prerequisites</b><br />";

		//format the prerequisite courses
		var prereqs = course.prereqs;
		if (prereqs.length == 0) {
			tooltip_info += "None<br />"
		} else {
			/* 
			get the course objects for each prerequisite course and format the
			information from that course object
			*/
			for (var i = 0; i < prereqs.length; i++) {
				var prereq = findCourse(prereqs[i].id);
				tooltip_info += prereq.name + "<br />";
			}		
		}		
	}


	//write the course info to the innerHTML of the element with id "tooltip"
	tooltip.innerHTML = tooltip_info;

	adjustTooltipContent();
}

/*
adjustTooltipContent()
respositions the internal p of the tooltip area to the inital position
*/
function adjustTooltipContent() {
	var tooltip = document.getElementById("tooltip");
	tooltip.style.top = "10px";

}

/*
scrollTooltipContent(event, id)
event - a javascript wheel event object
repositions the tooltip based on the wheel event
*/
function scrollTooltipContent(event) {
	//get the tooltip area element
	var tooltip = document.getElementById("tooltip");
	//get the current offset height of the object
	var height = tooltip.offsetHeight;
	//compute the relative top offset based on that value and the start one
	var top = tooltip.offsetTop - tooltip_start_top + 10;

	//normalize the scroll delta
	var normal_delta = event.deltaY / event.deltaY;
	if (event.deltaY < 0) {
		normal_delta *= (-1);
	}

	//reverse the direction of the delta for scrolling
	var reverse_delta = normal_delta * (-1);

	//compute the distance in pixels to scroll
	var scroll_dist = reverse_delta * tooltip_scroll_rate;

	//compute the new top value
	var scroll = top + scroll_dist;

	//set the style if the top value is within specified bounds
	if (scroll <= 10 && scroll > ((height * (-1)) + 
		(tooltip_area_height - tooltip_area_padding))) {
		tooltip.style.top = scroll + "px";	
	}
}