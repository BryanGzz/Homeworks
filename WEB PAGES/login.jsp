<%-- 
    Document   : login
    Created on : 19/02/2017, 12:18:25 AM
    Author     : Goldi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <header>
            <h1>Bienvenido!</h1>
        </header>
        
        <form action="loginController" method="POST">
            <div>
                <label>Usuario:</label>
                <input type="text" name="usuario">
            </div>
            
            <div>
                <label>Contraseña:</label>
                <input type="password" name="pswrd">
            </div>
            
            <div>
                <input type="submit" value="Iniciar Sesion">
            </div>
        </form>
    </body>
</html>
