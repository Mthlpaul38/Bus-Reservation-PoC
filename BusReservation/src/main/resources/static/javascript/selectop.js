/*$('#btn1').click(function(e){
    e.preventDefault();
    
	var e1 = document.getElementById("select1");
	var strUser = e1.options[e1.selectedIndex].value;
console.log('in pagetype '+strUser);
	var divStyle=document.getElementById(strUser);
	console.log(divStyle);
	divStyle.style.display="block";

});*/


$(document).ready(function(){
 console.log("values are");
  var sel = $("#select1");
  
  sel.data("prev",sel.val());

  sel.change(function(data){
	  console.log("values change");
     var jqThis = $(this);
     console.log(jqThis.data("prev"));
     
     var divStyle=document.getElementById(jqThis.data("prev"));
     divStyle.style.display="none";
     
    // alert(jqThis.data("prev"));
    // var divStyle=document.getElementById(;
     jqThis.data("prev",jqThis.val());
   //  alert(jqThis.data("prev"));
     console.log(sel.val());
     var divStyle1=document.getElementById(jqThis.data("prev"));
     divStyle1.style.display="block";
     
  });
});