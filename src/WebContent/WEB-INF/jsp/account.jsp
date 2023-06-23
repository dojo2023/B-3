<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>アカウント登録</title>
</head>
<body>
<body style="text-align: center; margin-left: 35%; margin-right: 35%;">
<h1>アカウント登録</h1>
<form method = "POST" action="/hydrangea/AccountServlet" style="border: solid 3px; height: auto; padding-bottom: 10px;">
<p style="margin-top: 5px; margin-bottom: 3px;">名前</p><input type="text" name="name" style="width: 50%;">
<p style="margin-top: 5px; margin-bottom: 3px;">メールアドレス</p><input type="text" name="mail" style="width: 50%;">
<p style="margin-top: 5px; margin-bottom: 3px;">パスワード</p><input type="password" name="pass" style="width: 50%; margin-bottom: 5px;">
<p style="margin-top: 5px; margin-bottom: 3px;">部署</p><input type="text" name="department" style="width: 50%; margin-bottom: 5px;"><br>
<a href="/hydrangea/LoginServlet">ログインはこちら</a><br>
<input type="submit" value="登録"  style="margin-top: 10px;">
</form>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>