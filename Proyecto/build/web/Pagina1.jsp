<%-- 

--%>
<%@page import="models.ComentariosPOJO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Metasploit Info</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flexboxgrid/6.3.1/flexboxgrid.min.css" type="text/css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
        <link rel="stylesheet" href="Style.css">
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
                                        <h2 class="color-text2 multi title2">Metasploit Penetrating Testing Framework</h2>
                                        </br>
                                        
                                        <iframe width="560" height="315" src="https://www.youtube.com/embed/IgbJcu1Tj_0" frameborder="0" allowfullscreen></iframe>
                                        </br>
                                        <h3 class="color-text2 muli title3">Video Tutorial recomendado de Metasploit</h3>
                                        </br>
                                        
                                            <h2 class="color-text2 muli title2">¿Qué es un Metasploit?</h2>
                                            Metasploit Es un proyecto open source de seguridad informática que proporciona información acerca de vulnerabilidades de seguridad y ayuda en tests de penetración y en el desarrollo de firmas para Sistemas de Detección de Intrusos.
                                            </br>
                                            
                                            <h2 class="color-text2 muli title2">¿Es Gratis?</h2>
                                            Sí y no ... el Metasploit Framework es gratuito y se puede descargar,Desde que la herramienta fue adquirida por Rapid7 hay dos principales ediciones propietarias llamadas Metasploit Pro y Metasploit Express. Si eres nuevo en el pentesting y estás buscando empezar en Seguridad Informática, entonces te recomendamos que empieces con el Metasploit Framework porque aprenderás absolutamente de todo.
                                            </br>
                                            <h2 class="color-text2 muli title2">¿Cuál es la diferencia entre Metasploit Framework y Metasploit Pro Framework?</h2>
                                            Aunque Metasploit Framework es gratuito, su funcionalidad es relativamente básica. Los investigadores de seguridad profesional, pentesters y hackers éticos probablemente preferirían usar Metasploit Pro ya que es la solución de seguridad más completa para programas de seguridad y pruebas avanzadas de penetración para las PYMES y organizaciones de nivel empresarial. Measploit Pro se utiliza para la auditoría de seguridad de TI en profundidad.
                                            </br>
                                            <h2 class="color-text2 muli title2">¿Metasploit funciona con cualquier Sistema Operativo?</h2>
                                            Metasploit se ejecuta en Unix (incluyendo Linux y Mac OS X) y en Windows, y el Metasploit Framework se ha traducido a decenas de idiomas.
                                            </br>
                                            
                                            <h2 class="color-text2 muli title2">Enlace de Descarga</h2>
                                            <a href="https://www.rapid7.com/products/metasploit/download/" class="title3">Link</a>
                                            
                                            </br>

                                            <form action="commentsController" method="POST" onsubmit="validar()">
                                                
                                                <label class="color-text2 muli title3">Comentarios</label>
                                                </br>
                                                <textarea class="text-comment" rows="3" cols="50"></textarea>
                                                <input type="submit" name="enviar">
            
                                                <input type="hidden" name="accion" value="buscar">
                                            </form>
                                            <% if(session != null){
                                                List comentarios = (List) session.getAttribute("comentarios");
                                                    if(comentarios != null){
                                            %>
                                                <table border ="1">
                                                    <tr>
                                                        <th>Nombre</th>
                                                        <th>Comentario</th>
                                                    </tr>
                                             <%
                                                for(Object o : comentarios){
                                                ComentariosPOJO comentario  = (ComentariosPOJO) o;
                                              %>
                                                    <tr>
                                                        <td><%= comentario.getNombre()%></td>
                                                        <td><%= comentario.getComentario()%></td>
                                                    </tr>
                                                <% }
                                                    %>
                                                </table>
                                                <% }
                                                } %> 
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
