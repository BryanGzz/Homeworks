<%

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Info</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flexboxgrid/6.3.1/flexboxgrid.min.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
        <link rel="stylesheet" href="Style.css">
        <script type="text/javascript">
            function validar() {
                var todo_correcto = true;
                if(document.getElementById('user').value.length ==0 || document.getElementByID('pass').value.length == 0 ){
                    todo_correcto = false;
                }
                if(!todo_correcto){
                    alert('Los campos estan vacios');
                }
            }
        </script>
    </head>
    <body>
        <div class="row main-container middle-xs center-xs">
            <div class="col-md-8 col-sm-10 col-xs-11 col-lg-10">
                <div class="box">
                    <div class="card animated fadeInUp">
                        <header class="main-header">
                        <nav class="main-nav">
                            <a href="index.html" class="nav-link">Inicio</a>
                            <a href="" class="nav-link">Acerca de</a>
                            <a href="http://localhost:8080/Proyecto/login.jsp" class="nav-link">Iniciar sesión</a>
                        </nav>
                    </header>
        
                    <article class="body animated fadeInDown">
                        <header class="text-center">
                            <img src="descarga.png" height="100" alt="logo">
                            <h1 class="color-text muli title">HackTools</h1>
                        </header>
                    </article>
                        
                        <div class="tools">
                            <div class="row center-xs">
                                <div class="col-xs-10 col-sm-6 col-md-4 tool">
                                    <div class="card">
                                        <h2 class="color-text2 multi title2">Inicia Sesión</h2>
                                        </br>
                                        <form action="" method="POST" onsubmit="validar()">
                                            <label class="color-text2 muli title3 center-xs">Usuario:</label>
                                            <input type="text" name="user" class="muli title4 center-xs" id="user">
                                            </br>
                                            <label class="color-text2 muli title3 center-xs">Contraseña:</label>
                                            <input type="password" name="pass" class="muli title4 center-xs" id="pass">
                                            </br>
                                            <input type="submit" name="Iniciar">
                                            </br>
                                            <label class="color-text2 muli title3 center-xs">¿Aún no tienes cuenta?</label>
                                            </br>
                                            <a href="http://localhost:8080/Proyecto/register.jsp" class="title3">Registrate</a>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>    
    </body>
</html>

