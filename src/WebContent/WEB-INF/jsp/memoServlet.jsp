<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>幹事サポート</title>
<link rel="stylesheet" href="css/menu.css">
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
        <!--ここまでメニュー-->
  </div>
</header>
<body>

<h1>メモ一覧</h1>
<hr>
<a href="/hydrangea/NewcreatememoServlet">新規作成</a>
<form method="POST" action="/hydrangea/DetailmemoServlet">


<table>

			<tr>
                  <td>
                    <label>題名<br>
                    <input type="text" name="MEMO_TITLE" >
                    </label>
                  </td>
           </tr>
           <tr><td><input type="submit" name="detail" value="詳細"></td></tr>


</table>

</form>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>