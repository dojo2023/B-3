<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メモ一覧 | hydrangea</title>
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
<link rel="stylesheet" href="css/memo.css"><!-- メモ専用css -->
</head>
<body>
<header>
	<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" id="mamo_logo" ></a></h1><!-- メニュー画面に戻る -->
    <p id="title">メモ</p>
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

<div class="memolist">
<form method="POST" action="/hydrangea/DetailmemoServlet">
<table class="memo_table">
		<tr>
           <td><input type="text" name="MEMO_TITLE" value="題名" size="20"></td>
           <td><input type="submit" name="detail" value="詳細"></td>
        </tr>
</table>
</form>

<button id="createMemo" onclick="createMemo()" >+</button>

</div>

<div class="new_memo">
<div id="create_memo" style="display: none;">
<form method="POST" action="/hydrangea/NewcreatememoServlet">
<table class="new_memo_table">
	<tr style="text-align: right;">
        <td>
            <button onclick="close_newMemo()"  id="closenewMemo">×</button>
        </td>
    </tr>
    <tr>
        <td>
            <input type="text" size="20" placeholder="タイトル"><br>
        </td>
    </tr>
    <tr>
        <td>
            <textarea cols="40" rows="8" placeholder="メモ内容"></textarea><br>
        </td>
	<tr style="text-align: right;">
        <td><input type="submit" name="SUBMIT" value="保存"><br></td>
    </tr>

</table>
</form>
</div>
</div>
</div>

<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
<script src="/hydrangea/js/memo.js"></script>
</body>
</html>