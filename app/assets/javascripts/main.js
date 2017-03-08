$(document).ready(function(){

     // Invoice nested forms calculations

     
    $("#invoice_item_qty > input").on('keyup', function(){
        var qty_id = $('#invoice_item_qty > input').attr('id');
        var qty = $('#' + qty_id).val();
        console.log(qty);
    })



	(function($) {
    "use strict"; // Start of use strict
    // Closes the Responsive Menu on Menu Item Click
    $('.navbar-collapse ul li a').click(function(){ 
        $('.navbar-toggle:visible').click();
    });

    // Offset for Main Navigation
    $('#mainNav').affix({
        offset: {
            top: 100
        }
    })
	})(jQuery); // End of use strict

    setTimeout(function(){
        $('.flash-message').fadeOut('slow', function(){
            $(this).remove();
        })
    }, 5000);

    $('#new_invoice')
      .on('cocoon:before-insert', function(e,task_to_be_added) {
        task_to_be_added.fadeIn('slow');
      });

});