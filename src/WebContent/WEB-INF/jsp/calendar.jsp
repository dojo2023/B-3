<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>カレンダー</title>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
	<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
	<link rel="stylesheet" href="css/calendar.css"><!-- カレンダー用css -->
</head>
<body>
<head>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
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
                    <a href="/hydrangea/LogoutServlet">ログアウト</a>
                </li>
            </ul>
            </div>
        <!--ここまでメニュー-->
    </div>
</head>

<h1>カレンダー</h1>
<button id="prev" type="button">前の月</button>
<button id="next" type="button">次の月</button>
<div id="calendar"></div>
<br><br><br><br><br>

<footer>
  <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>

<script src="/hydrangea/js/calendar.js"></script>

</body>
</html>