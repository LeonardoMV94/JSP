<%-- 
    Document   : index
    Created on : 23-04-2019, 20:53:17
    Author     : sistemas
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="cl.model.ServicioLocal"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! ServicioLocal servicio;%>
<%
    InitialContext contx = new InitialContext();
    servicio = (ServicioLocal) contx.lookup("java:global/Ejemplo1EJB/Servicio!cl.model.ServicioLocal");
%>
<c:set var="servicio" scope="page" value="<%=servicio%>"/>

<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
        <div class="row">
            <div class="col s6 offset-s3">
                <div class="card-panel">
                    <p class="center-align">Registro Clientes</p>

                    <form action="control.do" method="post">
                        <div class="input-field">
                            <input id="nombre" type="text" class="validate">
                            <label for="nombre">Nombre:</label>
                        </div>
                        <div class="input-field">
                            <input id="apellido" type="text" class="validate">
                            <label for="apellido">Apellido</label>
                        </div>


                        <button class="btn waves-effect waves-light right-align" type="submit">Enviar
                            <i class="material-icons right">Summit</i>
                        </button>

                    </form>

                    <table class="bordered highlight">
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                        </tr>
                        <c:forEach items="${servicio.clientes}" var="cli">
                            <tr>
                                <td>${cli.nombre}</td>
                                <td>${cli.apellido}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>




        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
    </body>
</html>
