<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--comentario em JSP aqui: nossa primeira pagina JSP --%>

<% String mensagem = "bem vindo ao sistema de agenda fj-21!" ; %>

<% out.println(mensagem); %>

<br/>

<% String desenvolvido = "desenvolvido por tiago" ;%>

<%= desenvolvido %>

<% System.out.println("tudo foi executado! "); %>


</body>
</html>