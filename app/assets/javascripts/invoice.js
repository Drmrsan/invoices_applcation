function calcAmount(){
  
  $('.nested-fields').each(function(){
    amount = $('.rate').val() * $('.qty').val();

    var result = isNaN(amount);

    if(result){
        $('.amount').val("");
    }
    else{
      $('.amount').val(amount);
    }
  });
}
  
  

function bindCalcAmount(){
  $('.rate').blur(calcAmount);
  $('.qty').blur(calcAmount);
}


  // $('.rate, .qty').keyup(function(){

  //   var rate = parseInt($('.rate').val());
  //   var qty = parseInt($('.qty').val());
  //   var result = isNaN(qty * rate);

  //       // if it's not a number put empty string, else calculate result
  //   if(result){
  //     $('.amount').val("");
  //   }
  //   else{
  //     $('.amount').val(qty * rate);
  //   }
  // }).keyup();
  

