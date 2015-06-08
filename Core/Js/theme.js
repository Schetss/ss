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

});




	



	//
	// Blog
	//

	$('.grid-item').click(function(){
		window.location = $('.itemContent h3 a',this).attr("href");
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

	