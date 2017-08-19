$(document).ready(function(){
    $("#myBtn").click(function(){
            $("#myModal").modal();
    });
    /* Cifrar la contraseña */
    $("#searchForm").submit(function(){
        var pass = md5($("#psw").val());
        $("#psw").val(pass);
    });
});