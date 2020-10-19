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
<link rel="stylesheet" type="text/CSS" href="css/logOut.css">
<title>혜멍's 게시판</title>
</head>
<body>

	<div id="account" class="account">
	<form action="loginCheck" method="post">
	        <p class="login_msg">로그인 후 게시판을 이용해주세요.</p>
	        <input type="text" id="id" name="userID" placeholder='아이디'>
	       	<input type="password" id="pw" name="userPW" placeholder='비밀번호'>
	        <div id="buttons" class="buttons">
	            <input id="loginBtn" type="submit" value="로그인" >
	            <input id="joinBtn" type="button" value="회원가입">
	        </div>
	</form>
	</div>
</body>
</html>