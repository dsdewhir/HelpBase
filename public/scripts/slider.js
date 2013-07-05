// Speed of the automatic slideshow
var slideshowSpeed = 6000;

// Variable to store the images we need to set as background
// which also includes some text and url's.
var photos = [ {
		"screenie" : '<div class="grid half"><img src="/assets/screen-home.jpg" class="screenshot" /></div><div class="grid half last"><h4>Get started quickly and inexpensively.</h4><p>Cloud-based software is hassle-free, constantly enhanced and automatically updated.</p><ul><li>Provide a logo and pick a color</li><li>Give us a CSV of your providers to import</li><li>We\'ll brand it to you, install the software on our servers, and you\'re up and running</li></ul><div class="button"><a href="#demo">Request a demo today<span class="arrow">&rarr;</span></a></div></div><div class="clear"></div>',
	}, {
		"screenie" : '<div class="grid half"><img src="/assets/services-search.jpg" class="screenshot" /></div><div class="grid half last"><h4>Get started quickly and inexpensively.</h4><p>Cloud-based software is hassle-free, constantly enhanced and automatically updated.</p><ul><li>Provide a logo and pick a color</li><li>Give us a CSV of your providers to import</li><li>We\'ll brand it to you, install the software on our servers, and you\'re up and running</li></ul><div class="button"><a href="#demo">Request a demo today<span class="arrow">&rarr;</span></a></div></div><div class="clear"></div>',
	}, 
	
];

$(document).ready(function($) {
		
	// Backwards navigation
	$("#buttonPrevious").click(function() {
		stopAnimation();
		navigate("next");
	});
	
	// Forward navigation
	$("#buttonNext").click(function() {
		stopAnimation();
		navigate("back");
	});

	
	var interval;
	
	
	var activeContainer = 1;	
	var currentImg = 0;
	var animating = false;
	var navigate = function(direction) {
		// Check if no animation is running. If it is, prevent the action
		if(animating) {
			return;
		}
		
		console.log("currentImg: " + currentImg);
		
		
		// Check which current image we need to show
		if(direction == "next") {
			currentImg++;
			if(currentImg == photos.length + 1) {
				currentImg = 1;
			}
		} else {
			currentImg--;
			if(currentImg == -1) { currentImg = 3; }
			if(currentImg == 0) {
				currentImg = photos.length;
			}
		}
		
		// Check which container we need to use
		var currentContainer = activeContainer;
		if(activeContainer == 1) {
			activeContainer = 2;
		} else {
			activeContainer = 1;
		}
		
		showImage(photos[currentImg - 1], currentContainer, activeContainer);
		
		//if(currentImg == 1) { grow(0); }
		
	};
	
	var currentZindex = -1;
	var showImage = function(photoObject, currentContainer, activeContainer) {
		animating = true;
		currentZindex--;
		
		// Fade everything out
		$(".screenie img").animate({ opacity: .01 }, 1000, function() {});
		$(".screenie").fadeOut(1000, function() {
			$(".screenie").html(photoObject.hero);
		});
		
		//setTimeout(1000);
		//Fade everything back in
		$(".screenie img").animate({ opacity: 1 }, 1000);
		$(".screenie").fadeIn('slow');
		animating = false;
	};
	
	var stopAnimation = function() {
		// Change the background image to "play"
		$("#control").css({ "background-image" : "url(images/btn_play.png)" });
		
		// Clear the interval
		clearInterval(interval);
	};
	
	// We should statically set the first image
	//navigate("next");
	
	// Start playing the animation
	
	interval = setInterval(function() {
		navigate("next");
	}, slideshowSpeed);
	
	
	//Play the first one
	navigate("next");
	console.log(currentImg);
});



