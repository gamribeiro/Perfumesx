<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
    <%
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", -1); 
response.setCharacterEncoding("ISO-8859-1");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<link type="text/css" href="resources/css/bootstrap.min.css" rel="stylesheet" />
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
    <script type="text/javascript" language="javascript"  charset="ISO-8859-1" src="resources/js/jquery.dataTables.min.js"></script>
	<script type="text/javascript" language="javascript" charset="ISO-8859-1"src="resources/js/dataTables.bootstrap.js"></script>

<meta http-equiv="Cache-control" content="no-cache">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<title>Perfumesx - Lista de Marcas</title>
<script>
$(document).ready(function() {
    $('#marca').dataTable();
} );
</script>
</head>
<body style="padding:0px 40px 0px 40px">



<div class="page-header" styl>
<c:import url="menu_include.jsp" /><br>
    <h1>Marcas  <small>Lista de marcas</small></h1>
</div>
<div style="margin-top:10px;">
<a href="novaMarca"><button type="button" style="float:left;" class="btn btn-success">Adicionar Marca</button></a>
<br><br>
<table id="marca" class="table table-striped table-bordered" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th style="width:100px;">Código</th>
                <th>Nome</th>
                <th style="width:50px;">Alterar</th>
             <th style="width:50px;">Excluir</th>
            </tr>
            </thead>
            
            <tbody>
            <c:forEach items="${marca }" var="marca">
            <tr>
                <td>${marca.id }</td>
                <td>${marca.nome }</td>
                <td><center><a href="exibeMarca?id=${marca.id}"><span class="glyphicon glyphicon-pencil" style="color:green;"></span></a></center></td>
                <td><center><a href="removeMarca?id=${marca.id}"><span class="glyphicon glyphicon-remove" style="color:red"></span></a></center></td>
            </tr>
            </c:forEach>
        </tbody>
</table> 
</div>
</body>
</html>