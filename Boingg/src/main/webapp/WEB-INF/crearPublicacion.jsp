<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div class="container mt-5">
	    <h2>Crear Nueva Publicación</h2>
	
	    <!-- Formulario de Publicación -->
	    <form:form method="POST" modelAttribute="nuevaPublicacion" action="/crearPublicacion">

						<div>
							<form:label path="contenido">Contenido:</form:label>
							<form:input path="contenido" class="form-control"/>
							<form:errors path="contenido" class="text-danger"></form:errors>
						</div>
							
						
						<input type="submit" value="Crear publicacion" class="btn btn-success mt-3">
					</form:form>
	</div>



</body>
</html>