<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
  <h2>Condensed Table</h2>
  <p>The .table-condensed class makes a table more compact by cutting cell padding in half:</p>            
  <table class="table table-condensed">
    <thead>
      <tr>
        <th>Id</th>
        <th>Nome</th>
        <th>Email</th>
        <th>Senha<th>
      </tr>
    </thead>
    <tbody>
      <c:forEach items="${usuarios}" var="usuario">
		<tr id="usuario_${usuario.id}">
			<td>${usuario.id}</td>
			<td>${usuario.nome}</td>
			<td>${usuario.login}</td>
			<td>${usuario.senha}</td>
			
			<td><a href="removeUsuario?id=${usuario.id}">Remover</a></td>
			<td><a href="mostraUsuario?id=${usuario.id}">Alterar</a></td>
			
			</tr>
			</c:forEach>
    </tbody>
  </table>
</div>

	<a href="criarLogin">Criar novo Login</a>

</body>
</html>