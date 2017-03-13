function calcAmount () {
	var qty_id = $('.invoice_items_qty > input').attr('id');
	var rate_id = $('.invoice_items_rate_id > input').attr('id');
	var amount_id = $('.invoice_items_amount_id > input').attr('id');

	var qty = $('#' + qty_id).val();
	var rate = $('#' + rate_id).val();
	// var amount = $('#' + amount_id).val();

	amount = qty * rate;

	amount = amount.toFixed(2);
}

function bindCalcAmount() {
	$('.invoice_items_qty > input').attr('id').blur(calcAmount);
	$('.invoice_items_rate_id > input').attr('id').bind(calcAmount);
}
