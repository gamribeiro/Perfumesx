<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<link type="text/css" href="resources/css/bootstrap.min.css" rel="stylesheet" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" language="javascript" src="resources/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" src="resources/js/dataTables.bootstrap.js"></script>

<meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Perfumesx - Cadastrar nova Marca</title>

</head>
<body style="padding:0px 40px 0px 40px">



<div class="page-header" styl>
<c:import url="menu_include.jsp" /><br>
    <h1>Marcas  <small>  Cadastrar nova Marca</small></h1>
</div>
<div style="margin-top:10px;">
<form:errors path="marca.nome" style="color:red;" />
<form action="adicionaMarca" method="post">

<fieldset>
  

  <div class="form-group">
    <label for="nome">Nome da Marca</label>
    <input type="text" class="form-control" id="nome" name="nome">
  </div>
</fieldset>

<button type="submit" class="btn btn-primary" style="background-color:green">
  <span class="glyphicon glyphicon-ok" style="color:white"></span>
  Cadastrar
</button>
</form>
<br><br>

</body>
</html>