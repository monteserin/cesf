<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<s:form action="altaLibro">
<s:textfield name="libro.isbn" label="isbn" />
<s:textfield name="libro.titulo" label="titulo" id="titulo"/>
<s:textfield name="libro.precio" label="precio"/>
<s:submit />
</s:form>


<script
			  src="https://code.jquery.com/jquery-3.3.1.min.js"
			  integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
			  crossorigin="anonymous"></script>
			  
			  
			  
<script>
jQuery.ajaxSettings.traditional = true; 


$(document).ready(inicializar);

function inicializar(){
	$("#titulo").on("keyup", teclaPulsada)
}

function teclaPulsada(){
	var valor= $("#titulo").val();
	$.get("compruebaSiExiste.action", {valor:valor}, resultadoDeLaPeticion);
}

function resultadoDeLaPeticion(data){
	console.log(data)
	if($.trim(data)=="true" ){
		$("#titulo").css("background","green")
	}else{
		$("#titulo").css("background","red")
	}
}
</script>
</body>
</html>