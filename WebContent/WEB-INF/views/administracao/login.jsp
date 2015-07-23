<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>

<%
response.setHeader("Cache-Control","no-cache"); 
response.setHeader("Pragma","no-cache"); 
response.setDateHeader ("Expires", -1); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="resources/css/bootstrap-theme.css" rel="stylesheet" />
<link type="text/css" href="resources/css/bootstrap.min.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Cache-control" content="no-cache">
<title>Perfumes X</title>
</head>
<body style="background:#98FB98;">

<div class="container" style="margin-top:100px;">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Administração Loja Perfumesx</h1>
            <div class="account-wall">
                <img src="resources/imagens/Logo.png" style="border:0px;width:100%;float:left;margin-bottom:10px">
                <form class="form-signin" action="efetuaLogin" method="post">
                
                <input type="text" class="form-control" placeholder="Email" required autofocus name="login">
                <input type="password" class="form-control" placeholder="senha" required name="senha">
                <button class="btn btn-lg btn-primary btn-block" type="submit" style="margin-top:10px;">
                    Entrar</button>
                
                <a href="#" class="pull-right need-help">Esqueci minha senha? </a><span class="clearfix"></span>
                </form>
            </div>
            
        </div>
    </div>
</div>

</body>
</html>