function calcAmount(){
  
  // var row = $('.form-item').parent();
  // var row = $('.nested-fields');
  var rate = $('.rate').val();
  var qty = $('.qty').val();

  amount = rate * qty;

  var result = isNaN(amount);
    if(result){
        $('.amount').val("");
    }
    else{
      $('.amount').val(amount);
    }
}
  
function bindCalcAmount(){
  $('.rate').blur(calcAmount);
  $('.qty').blur(calcAmount);
}
