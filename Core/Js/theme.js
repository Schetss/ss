var jsTheme =
{
	// init, something like a constructor
	init: function()
	{
		jsTheme.mobileNav.init();
		jsTheme.forms.init();
		//console.log("javascript is locked and loaded!") // for testing purposes. Check your console. Delete after you finished reading this. :-)
	}
};


jsTheme.mobileNav =
{
	init: function()
	{
	
	}
};

jsTheme.forms =
{
	init: function()
	{
		$('.alert-box').on('click', function(e)
		{
			e.preventDefault();
			$(this).closest('.alert-box').fadeOut(300);
		});
	}

};

$(jsTheme.init);




//
// JQuery
//


// Set pixelRatio to 1 if the browser doesn't offer it up.
var pixelRatio = !!window.devicePixelRatio ? window.devicePixelRatio : 1;
 
// Rather than waiting for document ready, where the images
// have already loaded, we'll jump in as soon as possible.
$(window).on("load", function() {
    if (pixelRatio > 1) {
        $('.retina').each(function() {
 
            // Very naive replacement that assumes no dots in file names.
            $(this).attr('src', $(this).attr('src').replace(".","@2x."));
        });
    }

});




//
// Masonry
//



$(document).ready( function() {
 var $grid = $('.grid').masonry({
    itemSelector: '.grid-item',
    columnWidth: '.grid-sizer',
    percentPosition: true
  });
$grid.masonry();

   var iden_id2 = window.location.pathname;
   var iden_id = iden_id2.substr(0,15);
  
  	if(iden_id !== "/en/blog/detail") {
   	 	$(window).bind('resize', function() {
    		location.reload();
		});
   	}


//
// Blog
//

$('.grid-item').click(function(){
	window.location = $('.itemContent h3 a',this).attr("href");
});


});

 

//
// Social Media Blog
//


$(document).on("scroll", function(){
	if ($(document).scrollTop() > 510){
		$('.socialmedia').addClass('socialmediaFixed');
	}
	else
	{
		$('.socialmedia').removeClass('socialmediaFixed');
	}
});




	//
	// Over ons pnp to actius logo
	//
	//

	