$(document).ready(function(){
	$("#myBtn").click(function(){
		$("#myModal").modal();
	});
//	//Eventos formulario
//	$("#searchForm").submit(function(event){
//		// Stop form from submitting normally
//		event.preventDefault();
//		//Get form
//		var $user = $("#usrname").val();
//		var $pass = $("#psw").val();
//		
//		if ($user == "admin" && $pass == "admin"){
//			window.location.href="inicio.html";
//		}else{
//			alert("Error, usuario y clave incorrectos");
//		}
//	});
});