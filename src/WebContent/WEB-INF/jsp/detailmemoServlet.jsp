<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>メモ詳細｜hydrangea</title>
<link rel="stylesheet" href="css/header_footer.css"><!-- ヘッダーフッター用css -->
<link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
<link rel="stylesheet" href="css/memo.css"><!-- メモ専用css -->
</head>
<body>
<header>
<h1><a href="/hydrangea/MenuServlet"><img src="img/logo.png" alt="アプリロゴ" ></a></h1><!-- メニュー画面に戻る -->
<p id="title">メモ内容</p>
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


<form method="POST" action="/hydrangea/MemoServlet">
<a href="/hydrangea/MemoServlet">＜メモ一覧</a><br>
  <table class="detail_memo_table">
  <tr>
 	<td>
       <input type="text" name="MEMO_TITLE" value="題名" size="20">
	</td>
   </tr>
   <tr>
    <td>
       <textarea name="MEMO"  cols="50" rows="8"> </textarea>
	</td>
   <tr>
</table>
</form>

</div>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</body>
</html>