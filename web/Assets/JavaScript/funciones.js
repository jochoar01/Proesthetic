$(document).ready(function(){
    $("#myBtn").click(function(){
            $("#myModal").modal();
    });
    /* Cifrar la contraseña index */
    $("#searchForm").submit(function(){
        var pass = md5($("#psw").val());
        $("#psw").val(pass);
    });
    /* Cifrar la contraseña Creación de usuarios */
    $("#FormCrear").submit(function() {
        $("#contrasena").val( md5($("#contrasena").val()) );
    });
});