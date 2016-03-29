var start_top;
var scroll_rate = 20;

function initTabContent() {
	start_top = document.getElementById("cmsc-available").offsetTop;
	
	document.getElementById("cmsc-available").addEventListener("wheel", function(event) {
		scrollTabContent(event, "cmsc-available");
	});
	document.getElementById("cmsc-taken").addEventListener("wheel", function(event) {
		scrollTabContent(event, "cmsc-taken");
	});
	document.getElementById("cmsc-options").addEventListener("wheel", function(event) {
		scrollTabContent(event, "cmsc-options");
	});

	document.getElementById("math-available").addEventListener("wheel", function(event) {
		scrollTabContent(event, "math-available");
	});
	document.getElementById("math-taken").addEventListener("wheel", function(event) {
		scrollTabContent(event, "math-taken");
	});
	document.getElementById("math-options").addEventListener("wheel", function(event) {
		scrollTabContent(event, "math-options");
	});

	document.getElementById("sci-available").addEventListener("wheel", function(event) {
		scrollTabContent(event, "sci-available");
	});
	document.getElementById("sci-taken").addEventListener("wheel", function(event) {
		scrollTabContent(event, "sci-taken");
	});
	document.getElementById("sci-options").addEventListener("wheel", function(event) {
		scrollTabContent(event, "sci-options");
	});
}

function scrollTabContent(event, id) {
	var selection = document.getElementById(id);
	var height = selection.offsetHeight;
	var top = selection.offsetTop - start_top;

	var normal_delta = event.deltaY / event.deltaY;
	if (event.deltaY < 0) {
		normal_delta *= (-1);
	}

	var reverse_delta = normal_delta * (-1);

	var scroll_dist = reverse_delta * scroll_rate;

	var scroll = top + scroll_dist;

	if (scroll <= 0 && scroll > ((height * (-1)) + 385)) {
		selection.style.top = scroll + "px";	
	}

}

function adjustScrollContent(type) {
	var selections = document.getElementsByClassName(type + "-select");

	for (var i = 0; i < selections.length; i++) {
		var height = selections[i].offsetHeight;
		var top = selections[i].offsetTop - start_top;

		if (top < (height * (-1)) + 400) {
			top = (height * (-1)) + 400;
		}

		if (top > 0) {
			top = 0;
		}

		selections[i].style.top = top + "px";
	}

}