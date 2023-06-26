<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <title>管理者ホーム</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/menu.css"><!-- ハンバーガーメニュー用css -->
    <link rel="stylesheet" href="css/header_footer.css"><!-- ハンバーガーメニュー用css -->
    <link rel="stylesheet" href="css/calendar.css"><!-- ハンバーガーメニュー用css -->

</head>
<body>
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
                    <a href="/hydrangea/LogoutServlet">ログアウト</a>
                </li>
            </ul>
            </div>
            <!--ここまでメニュー-->
        </div>
    </header>

<h1>管理者用ページ</h1>
        <button onclick="location.href='/hydrangea/NewShopServlet'" id="button1" class="retu" style="vertical-align: middle;">ページ作成<br>編集</button>
        <button onclick="location.href='/hydrangea/InformationCreateServlet'" id="button1" class="retu">通知</button>
        <button onclick="location.href='/hydrangea/RegistServlet'" id="button1" class="retu">登録</button>
        <form action="submit" class="retu" id="form" style="vertical-align: middle;"><input type="text" style="margin-right: 3px; border: solid 2px cornflowerblue; height: 26%;" placeholder="フリーワード検索"><button style="border: solid 2px cornflowerblue">検索</button>
            <br><p style="border: solid 2px cornflowerblue;">喫煙&nbsp;&nbsp;<input type="radio" name="ke" value="">可<input type="radio" name="ke" value="">不可</p>
        </form>
        <br>
        <div id="yoko"></div>
        <button onclick="location.href='/hydrangea/CalendarServlet'" id="button2">カレンダー</button>
        <button onclick="location.href='/hydrangea/HistoryServlet'" id="button2">履歴</button>
        <button onclick="location.href='/hydrangea/MemoServlet'" id="button2">メモ</button>
</body>
<footer>
    <p>Copyright &copy; 2023 Hydrangea All Rights Reserved.</p>
</footer>
</html>