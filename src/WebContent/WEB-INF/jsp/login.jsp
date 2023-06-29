<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!--  style="background-image:url(img/izakaya.jpg); background-size: cover;" -->
<head>
<meta charset="UTF-8">
<title>ログイン</title>
<link rel="stylesheet" href="css/login.css"><!-- ログイン画面用css -->
</head>
<body >

<div class="back-img">
<h1><img src="img/logo_cha.png" alt="アプリロゴ" height="242" ></h1>
<div class=logintext>
<form method="POST" action="/hydrangea/LoginServlet" autocomplete="off" >

<p class="loginMessage">${message}<p>

ID・メールアドレス<br>
<input type="text" name="mail" ><br>

パスワード<br>
<input type="password" name="pass"><br>

<input type="submit" name="login" value="ログイン" class="input" ><br>

</form>
</div>
<a href="/hydrangea/AccountServlet" class="registAccount">アカウント登録はこちら</a><br>
<a href="/hydrangea/AdminLoginServlet">管理者ログインはこちら</a>
</div>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

</body>

</html>