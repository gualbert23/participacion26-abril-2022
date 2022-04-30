<%@page import="com.emergentes.modelo.Usuario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : frmusuario
    Created on : 30 abr. 2022, 15:29:15
    Author     : Gualbert
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Usuario usuario = (Usuario) request.getAttribute("usuario");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>Usuarios</title>
    </head>
    <body>
        <div class="container"> 
            
            <ul class="nav nav-pills">
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="AvisoController">Avisos</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">Dropdown</a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Separated link</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="UsuarioController">Usuarios</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            
            <h1>
                <c:if test="${request.getParameter('action')=='add'}" var="res" scope="request">
                    Registro de 
                </c:if>
                <c:if test="${requestScope.action=='edit'}" var="res" scope="request">
                    actualizacion de 
                </c:if>
                    
                Usuario
            
            </h1>
            
            <form action="UsuarioController" method="POST">
                <input type="hidden" name="id" value="${usuario.id}" />
                <div class="form-group">
                    <label class="form-label"> Nombre</label>
                    <input class="form-control" type="text" name="nombre" value="${usuario.nombre}" />
                </div>

                <div class="form-group">
                    <label class="form-label"> Correo</label>
                    <input class="form-control" type="email" name="correo" value="${usuario.correo}" />
                </div>
                <div class="form-group">
                    <label class="form-label"> Clave</label>
                    <input class="form-control" type="password" name="clave" value="${usuario.clave}" />
                </div>

                <div class="form-group">
                    <input class="btn-primary"c type="submit" value="Enviar" />
                </div>
                </table>

            </form>
        </div>     
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    </body>
</html>

