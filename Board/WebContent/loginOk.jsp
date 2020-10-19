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
	session = request.getSession();
	String memberID= (String)session.getAttribute("memberID");
%>

<form action="logoutCheck" method="post">
	 <div class="info_area">
            <div class="infobox">
                <span id="nick_name"><%=memberID %>님</span> <input type="submit" value="로그아웃" id="logoutBtn">
                <div class="email" id="email">5550304@naver.com</div>
           </div>
  	</div>
  </form>
 <%

 System.out.println(memberID);
 %>
</body>
</html>