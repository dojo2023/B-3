<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート</title>
<link rel="stylesheet" href="menu/common.css">
</head>
<header>
    <div class="hamburger-menu">
        <input type="checkbox" id="menu-btn-check">
        <label for="menu-btn-check" class="menu-btn"><span></span></label>
        <!--ここからメニュー-->
        <div class="menu-content">
            <ul>
                <li>
                    <a href="/hydrangea/MenuServlet">トップ</a>
                </li>
                <li>
                    <a href="/hydrangea/RegistServlet">登録</a>
                </li>
                <li>
                    <a href="/hydrangea/HistoryServlet">履歴</a>
                </li>
                <li>
                    <a href="/hydrangea/PositionmemoServlet">役職メモ</a>
                </li>
                <li>
                    <a href="/hydrangea/MemoServlet">メモ</a>
                </li>
                <li>
                    <a href="/hydrangea/CalenderServlet">カレンダー</a>
                </li>
        <li>
                    <a href="/hydrangea/NotificationServlet">通知文テンプレート</a>
                </li>
        <li>
                    <a href="/hydrangea/ExpensesServlet">経費申請書テンプレート</a>
                </li>
        <li>
                    <a href="/hydrangea/LoginServlet">ログアウト</a>
                </li>
            </ul>
        </div>
        </div>
        <!--ここまでメニュー-->

</header>

<body>
<h1>履歴</h1>
<hr>
<form method="POST" action="">
<table id="">

    <p>最近閲覧したお店</p>

    <ul>
      <li><a href="https://example.com">おいしいお店</a></li>
      <li><a href="https://example.com">焼肉屋</a></li>
      <li><a href="https://example.com">寿司屋</a></li>
    </ul>

    <p>最近予約されたお店</p>

<ul>
  <li><a href="https://example.com">よく行く店</a></li>
  <li><a href="https://example.com">イタリアン</a></li>
  <li><a href="https://example.com">中華料理</a></li>
</ul>


</table>

</form>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>