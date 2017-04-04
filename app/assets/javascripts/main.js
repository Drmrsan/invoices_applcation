$(document).ready(function(){

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

	// Nested forms

	$('#new_invoice')
		.on('cocoon:before-insert', function(e,new_item) {
			new_item.fadeIn('slow');
		})
		.on('cocoon:after-insert', function(e, added_item){
			bindCalcAmount();
		})
		.on('cocoon:after-remove', function(e, removed_item){
			calcSubTotal();
		});
		bindCalcAmount();

	$('#invoice_tax').blur(calcTotal);
	
	$('#invoice_currency').selectize({
		placeholder: "Select Currency"
	});

	$('#invoice_client_id').selectize({
		placeholder: "Select Client"
	});

	$('#invoice_currency').on('change', function(){
		var currency = $(this).val();
		$('.input-group-addon').empty();
		$('.input-group-addon').append(currency);
	});

});