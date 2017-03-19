function calcSubTotal (){
  var subtotal = 0;
  $('.amount').each(function(i){
    var amount = $(this).val();
    console.log(amount);
    if (!isNaN(amount)){
      subtotal += Number(amount);
    }  
  });

  $('#invoice_subtotal').val(subtotal);
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
