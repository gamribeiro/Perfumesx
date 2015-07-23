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
  <h2>Altera Usuario - ${usuario.nome}</h2>
  
  <form action="alteraUsuario" role="form" method="post">
  		<input type="hidden" name="id" value="${usuario.id}" />
  
    <div class="form-group">
      <label for="usr">Name:</label>
      <input name="nome" type="text" class="form-control" id="usr" value="${usuario.nome}">
    </div>
    <div class="form-group">
      <label for="eml">E-mail:</label>
      <input name="login" type="text" class="form-control" id="eml" value="${usuario.login}">
    </div>
    <div class="form-group">
      <label for="">Password:</label>
      <input name="senha" type="password" class="form-control" id="pwd" value="${usuario.senha}">
    </div>
    
      	<input type="submit" value="Alterar">
    
  </form>
  
  
</div>
</body>
</html>