function calcAmount(){
  
  var row = $(this).closest('.nested-fields');
  var rate = row.find('.rate').val();
  var qty = row.find('.qty').val();

  amount = rate * qty;

  var result = isNaN(amount);
    if(result){
        row.find('.amount').val("");
    }
    else{
      row.find('.amount').val(amount);
    }
}
  
function bindCalcAmount(){
  $('.rate').blur(calcAmount);
  $('.qty').blur(calcAmount);
}
