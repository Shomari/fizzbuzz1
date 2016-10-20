$(document).ready(function(){

  var index = 1
  for (var i=1; i < 101; i++){
    $.ajax({
      type: "POST",
      url: "/check",
      dataType: "json",
      data: {i},
      success:function(result){
        console.log(result)
        var output  = result["output"]
        if(output == null){
          output = ""
        }
        $('.output').append("<p>" + index + ": " + output + "</p>")
        index = index + 1
      },
      failure:function(result){
        $('.output').append("<p> 422 Unprocessable Entity </p>")
      }
    });
  }
});
