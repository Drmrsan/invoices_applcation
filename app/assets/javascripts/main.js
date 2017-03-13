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


    $('#new_invoice')
      .on('cocoon:before-insert', function(e,task_to_be_added) {
        task_to_be_added.fadeIn('slow');
      }).on('cocoon:after-insert', function(){

        var qtyId = $('.invoice_items_qty > input').attr('id');
        var rateId = $('.invoice_items_rate > input').attr('id');
        var amountId = $('.invoice_items_amount > input').attr('id');

        var qtySelect = $('#' + qtyId);
        var rateSelect = $('#' + rateId);
        var amountSelect = $('#' + amountId);


        $(qtySelect, rateSelect).keyup(function(){
            var $qty = parseInt(qtySelect.val());
            var $rate = parseInt(rateSelect.val());
            var $result = isNaN($qty * $rate);

            if($result){
                $(amountSelect).val("");
            }else{
                $(amountSelect).val($qty * $rate)
            }
        
        }).keyup();
      });

});