<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <!-- Barra lateral -->
            <div class="bg-dark col-auto col-md-2 min-vh-100">
                <div class="bg-dark p-2">
                    <a class="d-flex text-decoration-none mt-1 align-items-center text-white">
                        <span class="fs-4 d-none d-sm-inline">Boingg</span>
                    </a>                 
                    <ul class="nav nav-pills flex-column mt-4">
                        <li class="nav-item">
                            <a href="" class="nav-link text-white">
                                <i class="fs-5 fa fa-guage"></i><span class="fs-4 d-none d-sm-inline">Perfil</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link text-white">
                                <i class="fs-5 fa fa-guage"></i><span class="fs-4 d-none d-sm-inline">Mensajes</span>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link text-white">
                                <i class="fs-5 fa fa-guage"></i><span class="fs-4 d-none d-sm-inline">Amigos</span>
                            </a>
                        </li>
                     
                       
                    </ul>
                    <a href="/logout" class="btn btn-danger mt-5">Cerrar Sesion</a>
                </div>    
            </div>

            <!-- Contenido principal -->
            <main class="col-md-10">
            	<div>
            	   <h1>¡Bienvenid@! ${usuarioEnSesion.nombre}</h1>
            	   <a class="btn btn-info" href="/nueva/publicacion">Crear publicacion</a>
            	</div>
             
                
            </main>
        </div>
    </div>



</body>
</html>
