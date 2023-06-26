<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン</title>
</head>
<body>
<h1>管理者ログイン</h1>
<form method="POST" action="/hydrangea/AdminLoginServlet" >
${message}
<p>ID・メールアドレス</p>
<input type="text" name="mail" ><br>
パスワード<br>
<input type="password" name="pass"><br><br>

<button>ログイン</button><br>
</form>

<a href="/hydrangea/AccountServlet">アカウント登録はこちら</a>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>