<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート</title>
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
<link rel="stylesheet" href="css/history.css"><!-- 履歴用css -->
</head>
<body>
<header>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
	<p id="title">履歴</p>
    <div class="hamburger-menu"> <!--ハンバーガーメニュー-->
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
                    <a href="/hydrangea/CalendarServlet">カレンダー</a>
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
</header>
<div class="contents">
	<div class="etsuran">
    <p>最近閲覧したお店</p>

    <ul>
      <li><a href="https://example.com">おいしいお店</a></li>
      <li><a href="https://example.com">焼肉屋</a></li>
      <li><a href="https://example.com">寿司屋</a></li>
    </ul>
	</div>

	<div class="yoyaku">
    <p>最近予約されたお店</p>

	<ul>
  <li><a href="https://example.com">よく行く店</a></li>
  <li><a href="https://example.com">イタリアン</a></li>
  <li><a href="https://example.com">中華料理</a></li>
	</ul>
	</div>

</div>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</body>
</html>