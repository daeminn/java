$(document).ready(function(){
  $.ajax({
      url:"header.jsp",
        dataType:"html",
        success:function(data){
            aa = $("#header").html(data).find("header, #all-menu,.login-form");
            $("#header").html(aa);
    	}
  })
  $.ajax({
        url:"footer.jsp",
        dataType:"html",
        success:function(data){
            bb = $("#footer").html(data).find("footer");
            $("#footer").html(bb);
        }
    })
})