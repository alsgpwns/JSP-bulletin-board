<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="description" content="HTML Study">
<meta name="keywords" content="HTML,CSS,XML,JavaScript">
<meta name="author" content="Hyemoeng">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
</head>
<body>

<%
	if(session.getAttribute("memberID")!=null)
	{
%>
		<%@ include file="loginOk.jsp" %>
		<%@ include file="list.jsp" %>
<%
	}
%>
<%
	if(session.getAttribute("memberID")==null){
%>
		<%@ include file="logOut.jsp" %>
		<%@ include file="list.jsp" %>
<%
	}

%>


</body>
</html>