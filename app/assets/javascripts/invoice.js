// var qtyId = $('.invoice_items_qty > input').attr('id');
// var rateId = $('.invoice_items_rate > input').attr('id');
// var amountId = $('.invoice_items_amount > input').attr('id');

// var qtySelect = $('#' + qtyId);
// var rateSelect = $('#' + rateId);
// var amountSelect = $('#' + amountId);

// function calcInvoice(){

//   $(qtySelect, rateSelect).keyup(function(){
//       var $qty = parseInt(qtySelect.val());
//       var $rate = parseInt(rateSelect.val());
//       var $result = isNaN($qty * $rate);

//       if($result){
//           $(amountSelect).val("");
//       }else{
//           $(amountSelect).val($qty * $rate)
//       }
  
//   }).keyup();
// }

// function calcInvoiceBind(){
// 	$(qtySelect).blur(calcInvoice);
// }