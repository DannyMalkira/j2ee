<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import = "java.util.Date" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.7.1.js"
  integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
  crossorigin="anonymous"></script>
  <script>
  	$(document).ready(function(){
  		$("#enviar").click(function(){
  			$("#resultado").load("http://localhost:8080/Proyecto5/Controlador?nombre="+$("#nombre").val()+"&telefono="+$("#telefono").val()+"&email="+$("#email").val())
  		})
  	})
  </script>
</head>
<body>
	<%
		out.println("Hoy es " + new Date());
	%>
	<br>
		<!-- http://localhost:8080/Proyecto5/Controlador -->
		
		<input type="text" name="nombre" placeholder="Introduce tu nombre" id="nombre">
		<br><br>
		<input type="text" name="telefono" placeholder="Introduce tu telefono" id="telefono">
		<br><br>
		<input type="text" name="email" placeholder="Introduce tu email" id="email">
		<br><br>
		<input type="submit" value="Enviar" id="enviar">
		<div id="resultado"></div>
</body>
</html>