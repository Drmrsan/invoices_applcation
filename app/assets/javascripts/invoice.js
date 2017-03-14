function calcAmount(){
	// Grab input ID's
  var qtyId = $('.invoice_items_qty > input').attr('id');
  var rateId = $('.invoice_items_rate > input').attr('id');
  var amountId = $('.invoice_items_amount > input').attr('id');
  // Create input ID's variables
  var qtySelect = $('#' + qtyId);
  var rateSelect = $('#' + rateId);
  var amountSelect = $('#' + amountId);

	$(qtySelect, rateSelect).keyup(function(){
  
    var qty = parseInt(qtySelect.val());
    var rate = parseInt(rateSelect.val());
    var result = isNaN(qty * rate);

		// if it's not a number put empty string, else calculate result
    if(result){
      $(amountSelect).val("");
    }
    else{
      $(amountSelect).val(qty * rate);
    }
	}).keyup();
}

