<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
</head>
<body>
<h1>ログイン</h1>
<form method="POST" action="/hydrangea/LoginServlet" style="border: solid 3px; height: 40%;">
${message}
<p style="margin-top: 10px; margin-bottom: 3px;">ID・メールアドレス</p>
<input type="text" name="mail" style="width: 50%;"><br>
パスワード<br>
<input type="password" name="pass" style="width: 50%;"><br><br>
<a href="/hydrangea/AccountServlet">アカウント登録はこちら</a><br>
<button style="margin-top: 10px;">ログイン</button>
</form>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>