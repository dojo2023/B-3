<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
<link rel="stylesheet" href="css/login.css"><!-- ログイン画面用css -->
</head>
<body>

<div class="back-img">
<h1><img src="img/logo_cha.png" alt="アプリロゴ" height="242" ></h1>
<div class=logintext>
<form method="POST" action="/hydrangea/AdminLoginServlet" >

<p class="loginMessage">${message}<p>

<p>管理者用ID・メールアドレス</p>
<input type="text" name="admin_id" ><br>

パスワード<br>
<input type="password" name="admin_pass"><br>

<input type="submit" name="login" value="ログイン" class="input" ><br>

</form>
</div>
<!--  <a href="/hydrangea/AccountServlet">アカウント登録はこちら</a>-->
</div>


<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</body>
</html>

