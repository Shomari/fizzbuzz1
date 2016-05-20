$(document).ready(function () { 
$.ajax({
    url: "/fizz/numbers",
    cache: false,
    success: function(html){
      $(".fizz").append(html);
    }
});

 });