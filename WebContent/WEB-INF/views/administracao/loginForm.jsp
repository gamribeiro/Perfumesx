<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  
    </head>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
  <h2>Form control: input</h2>
  <p>The form below contains two input elements; one of type text and one of type password:</p>
  <form action="adicionaUsuario" data-toggle="validator" role="form" id="contactForm">
    <div class="form-group">
      <label for="usr">Name:</label>
      <input name="nome" type="text" class="form-control" id="usr">
    </div>
  <div class="form-group">
    <label for="eml" class="control-label">E-mail:</label>
    <input name="login" type="email" class="form-control" id="eml">
  </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input name="senha" type="password" class="form-control" id="pwd">
    </div>
    
      	<input type="submit" value="Adicionar">
</div>

</body>
</html>