function calcSubTotal() {
  var subtotal = 0;
  $('.amount').each(function(i){
    var amount = $(this).val();
    if (!isNaN(amount)){
      subtotal += Number(amount);
    }  
  });

  $('#invoice_subtotal').val(subtotal);

  calcTotal();
}

function calcTotal() {
  var subtotal = $('.subtotal').val();
  var tax = $('#invoice_tax').val();

  percentage = Number((tax / 100) * subtotal);

  var total = Number(subtotal) + percentage;

  total = total.toFixed(2);
  $('.total').val(total);
}


function calcAmount(){
  
  var row = $(this).closest('.nested-fields');
  var rate = row.find('.rate').val();
  var qty = row.find('.qty').val();

  amount = (rate * qty).toFixed(2);

  var result = isNaN(amount);
    if(result){
        row.find('.amount').val("");
    }
    else{
      row.find('.amount').val(amount);
    }

  calcSubTotal();
}
  
function bindCalcAmount(){
  $('.rate').blur(calcAmount);
  $('.qty').blur(calcAmount);
}
